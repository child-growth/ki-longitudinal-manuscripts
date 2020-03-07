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

unadjusted

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



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/b16098c9-798e-4da0-9a72-d8190dc435b5/3d52fcd7-1f9f-4395-99ea-e20409a7cc1b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b16098c9-798e-4da0-9a72-d8190dc435b5/3d52fcd7-1f9f-4395-99ea-e20409a7cc1b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b16098c9-798e-4da0-9a72-d8190dc435b5/3d52fcd7-1f9f-4395-99ea-e20409a7cc1b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b16098c9-798e-4da0-9a72-d8190dc435b5/3d52fcd7-1f9f-4395-99ea-e20409a7cc1b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.1285714   0.0965311   0.1606118
0-24 months   GMS-Nepal   NEPAL        0                    NA                0.1597222   0.0998333   0.2196111
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0563884   0.0501098   0.0626670
0-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0577367   0.0478393   0.0676341
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0719780   0.0618245   0.0821316
0-24 months   JiVitA-4    BANGLADESH   0                    NA                0.1032448   0.0839678   0.1225219
0-24 months   Keneba      GAMBIA       1                    NA                0.0405954   0.0263633   0.0548275
0-24 months   Keneba      GAMBIA       0                    NA                0.0644928   0.0515302   0.0774553
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0942029   0.0660393   0.1223665
0-6 months    GMS-Nepal   NEPAL        0                    NA                0.1510791   0.0914897   0.2106686
0-6 months    Keneba      GAMBIA       1                    NA                0.0207006   0.0095620   0.0318392
0-6 months    Keneba      GAMBIA       0                    NA                0.0362654   0.0260846   0.0464463
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.1285714   0.0965311   0.1606118
6-24 months   GMS-Nepal   NEPAL        0                    NA                0.1597222   0.0998333   0.2196111
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0563884   0.0501098   0.0626670
6-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0577367   0.0478393   0.0676341
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0719780   0.0618245   0.0821316
6-24 months   JiVitA-4    BANGLADESH   0                    NA                0.1032448   0.0839678   0.1225219
6-24 months   Keneba      GAMBIA       1                    NA                0.0405954   0.0263633   0.0548275
6-24 months   Keneba      GAMBIA       0                    NA                0.0644928   0.0515302   0.0774553


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
0-24 months   GMS-Nepal   NEPAL        0                    1                 1.242284   0.7919442   1.948710
0-24 months   JiVitA-3    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   JiVitA-3    BANGLADESH   0                    1                 1.023912   0.8297690   1.263478
0-24 months   JiVitA-4    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   JiVitA-4    BANGLADESH   0                    1                 1.434394   1.1388388   1.806652
0-24 months   Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
0-24 months   Keneba      GAMBIA       0                    1                 1.588672   1.0605487   2.379784
0-6 months    GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-6 months    GMS-Nepal   NEPAL        0                    1                 1.603763   0.9776782   2.630780
0-6 months    Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
0-6 months    Keneba      GAMBIA       0                    1                 1.751899   0.9548414   3.214305
6-24 months   GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL        0                    1                 1.242284   0.7919442   1.948710
6-24 months   JiVitA-3    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   JiVitA-3    BANGLADESH   0                    1                 1.023912   0.8297690   1.263478
6-24 months   JiVitA-4    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   JiVitA-4    BANGLADESH   0                    1                 1.434394   1.1388388   1.806652
6-24 months   Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
6-24 months   Keneba      GAMBIA       0                    1                 1.588672   1.0605487   2.379784


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.0079534   -0.0094244   0.0253312
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0003094   -0.0024558   0.0030746
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0068281    0.0021319   0.0115243
0-24 months   Keneba      GAMBIA       1                    NA                0.0155632    0.0030169   0.0281094
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0142962   -0.0023980   0.0309904
0-6 months    Keneba      GAMBIA       1                    NA                0.0104844    0.0003144   0.0206544
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.0079534   -0.0094244   0.0253312
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0003094   -0.0024558   0.0030746
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0068281    0.0021319   0.0115243
6-24 months   Keneba      GAMBIA       1                    NA                0.0155632    0.0030169   0.0281094


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.0582560   -0.0775707   0.1769619
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0054563   -0.0446171   0.0531295
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0866440    0.0243608   0.1449512
0-24 months   Keneba      GAMBIA       1                    NA                0.2771290    0.0219224   0.4657454
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.1317633   -0.0335189   0.2706132
0-6 months    Keneba      GAMBIA       1                    NA                0.3361996   -0.0679646   0.5874105
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.0582560   -0.0775707   0.1769619
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0054563   -0.0446171   0.0531295
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0866440    0.0243608   0.1449512
6-24 months   Keneba      GAMBIA       1                    NA                0.2771290    0.0219224   0.4657454
