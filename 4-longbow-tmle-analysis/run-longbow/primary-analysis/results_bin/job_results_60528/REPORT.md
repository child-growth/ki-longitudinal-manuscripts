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

agecat        studyid          country                        exclfeed36    pers_wast   n_cell      n
------------  ---------------  -----------------------------  -----------  ----------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          1                     0        9      9
0-24 months   CMC-V-BCS-2002   INDIA                          1                     1        0      9
0-24 months   CMC-V-BCS-2002   INDIA                          0                     0        0      9
0-24 months   CMC-V-BCS-2002   INDIA                          0                     1        0      9
0-24 months   EE               PAKISTAN                       1                     0        4      9
0-24 months   EE               PAKISTAN                       1                     1        0      9
0-24 months   EE               PAKISTAN                       0                     0        5      9
0-24 months   EE               PAKISTAN                       0                     1        0      9
0-24 months   GMS-Nepal        NEPAL                          1                     0      369    528
0-24 months   GMS-Nepal        NEPAL                          1                     1       54    528
0-24 months   GMS-Nepal        NEPAL                          0                     0       90    528
0-24 months   GMS-Nepal        NEPAL                          0                     1       15    528
0-24 months   IRC              INDIA                          1                     0        0      4
0-24 months   IRC              INDIA                          1                     1        0      4
0-24 months   IRC              INDIA                          0                     0        3      4
0-24 months   IRC              INDIA                          0                     1        1      4
0-24 months   JiVitA-3         BANGLADESH                     1                     0     5957   8221
0-24 months   JiVitA-3         BANGLADESH                     1                     1      363   8221
0-24 months   JiVitA-3         BANGLADESH                     0                     0     1788   8221
0-24 months   JiVitA-3         BANGLADESH                     0                     1      113   8221
0-24 months   JiVitA-4         BANGLADESH                     1                     0     3231   4495
0-24 months   JiVitA-4         BANGLADESH                     1                     1      251   4495
0-24 months   JiVitA-4         BANGLADESH                     0                     0      908   4495
0-24 months   JiVitA-4         BANGLADESH                     0                     1      105   4495
0-24 months   Keneba           GAMBIA                         1                     0      572   1927
0-24 months   Keneba           GAMBIA                         1                     1       21   1927
0-24 months   Keneba           GAMBIA                         0                     0     1250   1927
0-24 months   Keneba           GAMBIA                         0                     1       84   1927
0-24 months   LCNI-5           MALAWI                         1                     0       42    240
0-24 months   LCNI-5           MALAWI                         1                     1        0    240
0-24 months   LCNI-5           MALAWI                         0                     0      195    240
0-24 months   LCNI-5           MALAWI                         0                     1        3    240
0-24 months   MAL-ED           BANGLADESH                     1                     0       32    247
0-24 months   MAL-ED           BANGLADESH                     1                     1        0    247
0-24 months   MAL-ED           BANGLADESH                     0                     0      202    247
0-24 months   MAL-ED           BANGLADESH                     0                     1       13    247
0-24 months   MAL-ED           BRAZIL                         1                     0       14    217
0-24 months   MAL-ED           BRAZIL                         1                     1        0    217
0-24 months   MAL-ED           BRAZIL                         0                     0      201    217
0-24 months   MAL-ED           BRAZIL                         0                     1        2    217
0-24 months   MAL-ED           INDIA                          1                     0        8    238
0-24 months   MAL-ED           INDIA                          1                     1        1    238
0-24 months   MAL-ED           INDIA                          0                     0      209    238
0-24 months   MAL-ED           INDIA                          0                     1       20    238
0-24 months   MAL-ED           NEPAL                          1                     0        4    236
0-24 months   MAL-ED           NEPAL                          1                     1        1    236
0-24 months   MAL-ED           NEPAL                          0                     0      228    236
0-24 months   MAL-ED           NEPAL                          0                     1        3    236
0-24 months   MAL-ED           PERU                           1                     0        7    282
0-24 months   MAL-ED           PERU                           1                     1        0    282
0-24 months   MAL-ED           PERU                           0                     0      274    282
0-24 months   MAL-ED           PERU                           0                     1        1    282
0-24 months   MAL-ED           SOUTH AFRICA                   1                     0        3    271
0-24 months   MAL-ED           SOUTH AFRICA                   1                     1        0    271
0-24 months   MAL-ED           SOUTH AFRICA                   0                     0      266    271
0-24 months   MAL-ED           SOUTH AFRICA                   0                     1        2    271
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        4    249
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        0    249
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      245    249
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        0    249
0-24 months   PROVIDE          BANGLADESH                     1                     0      160    639
0-24 months   PROVIDE          BANGLADESH                     1                     1        2    639
0-24 months   PROVIDE          BANGLADESH                     0                     0      464    639
0-24 months   PROVIDE          BANGLADESH                     0                     1       13    639
0-24 months   SAS-FoodSuppl    INDIA                          1                     0        0    166
0-24 months   SAS-FoodSuppl    INDIA                          1                     1        0    166
0-24 months   SAS-FoodSuppl    INDIA                          0                     0      136    166
0-24 months   SAS-FoodSuppl    INDIA                          0                     1       30    166
0-6 months    CMC-V-BCS-2002   INDIA                          1                     0        8      9
0-6 months    CMC-V-BCS-2002   INDIA                          1                     1        1      9
0-6 months    CMC-V-BCS-2002   INDIA                          0                     0        0      9
0-6 months    CMC-V-BCS-2002   INDIA                          0                     1        0      9
0-6 months    EE               PAKISTAN                       1                     0        4      9
0-6 months    EE               PAKISTAN                       1                     1        0      9
0-6 months    EE               PAKISTAN                       0                     0        5      9
0-6 months    EE               PAKISTAN                       0                     1        0      9
0-6 months    GMS-Nepal        NEPAL                          1                     0      380    520
0-6 months    GMS-Nepal        NEPAL                          1                     1       37    520
0-6 months    GMS-Nepal        NEPAL                          0                     0       86    520
0-6 months    GMS-Nepal        NEPAL                          0                     1       17    520
0-6 months    IRC              INDIA                          1                     0        0      4
0-6 months    IRC              INDIA                          1                     1        0      4
0-6 months    IRC              INDIA                          0                     0        4      4
0-6 months    IRC              INDIA                          0                     1        0      4
0-6 months    JiVitA-3         BANGLADESH                     1                     0       11     19
0-6 months    JiVitA-3         BANGLADESH                     1                     1        2     19
0-6 months    JiVitA-3         BANGLADESH                     0                     0        6     19
0-6 months    JiVitA-3         BANGLADESH                     0                     1        0     19
0-6 months    Keneba           GAMBIA                         1                     0      527   1793
0-6 months    Keneba           GAMBIA                         1                     1       12   1793
0-6 months    Keneba           GAMBIA                         0                     0     1210   1793
0-6 months    Keneba           GAMBIA                         0                     1       44   1793
0-6 months    MAL-ED           BANGLADESH                     1                     0       31    247
0-6 months    MAL-ED           BANGLADESH                     1                     1        1    247
0-6 months    MAL-ED           BANGLADESH                     0                     0      209    247
0-6 months    MAL-ED           BANGLADESH                     0                     1        6    247
0-6 months    MAL-ED           BRAZIL                         1                     0       14    217
0-6 months    MAL-ED           BRAZIL                         1                     1        0    217
0-6 months    MAL-ED           BRAZIL                         0                     0      202    217
0-6 months    MAL-ED           BRAZIL                         0                     1        1    217
0-6 months    MAL-ED           INDIA                          1                     0        8    237
0-6 months    MAL-ED           INDIA                          1                     1        1    237
0-6 months    MAL-ED           INDIA                          0                     0      210    237
0-6 months    MAL-ED           INDIA                          0                     1       18    237
0-6 months    MAL-ED           NEPAL                          1                     0        4    236
0-6 months    MAL-ED           NEPAL                          1                     1        1    236
0-6 months    MAL-ED           NEPAL                          0                     0      225    236
0-6 months    MAL-ED           NEPAL                          0                     1        6    236
0-6 months    MAL-ED           PERU                           1                     0        7    282
0-6 months    MAL-ED           PERU                           1                     1        0    282
0-6 months    MAL-ED           PERU                           0                     0      275    282
0-6 months    MAL-ED           PERU                           0                     1        0    282
0-6 months    MAL-ED           SOUTH AFRICA                   1                     0        3    270
0-6 months    MAL-ED           SOUTH AFRICA                   1                     1        0    270
0-6 months    MAL-ED           SOUTH AFRICA                   0                     0      265    270
0-6 months    MAL-ED           SOUTH AFRICA                   0                     1        2    270
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        4    249
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        0    249
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      245    249
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        0    249
0-6 months    PROVIDE          BANGLADESH                     1                     0      160    637
0-6 months    PROVIDE          BANGLADESH                     1                     1        1    637
0-6 months    PROVIDE          BANGLADESH                     0                     0      463    637
0-6 months    PROVIDE          BANGLADESH                     0                     1       13    637
6-24 months   CMC-V-BCS-2002   INDIA                          1                     0        9      9
6-24 months   CMC-V-BCS-2002   INDIA                          1                     1        0      9
6-24 months   CMC-V-BCS-2002   INDIA                          0                     0        0      9
6-24 months   CMC-V-BCS-2002   INDIA                          0                     1        0      9
6-24 months   EE               PAKISTAN                       1                     0        4      9
6-24 months   EE               PAKISTAN                       1                     1        0      9
6-24 months   EE               PAKISTAN                       0                     0        5      9
6-24 months   EE               PAKISTAN                       0                     1        0      9
6-24 months   GMS-Nepal        NEPAL                          1                     0      369    528
6-24 months   GMS-Nepal        NEPAL                          1                     1       54    528
6-24 months   GMS-Nepal        NEPAL                          0                     0       90    528
6-24 months   GMS-Nepal        NEPAL                          0                     1       15    528
6-24 months   IRC              INDIA                          1                     0        0      4
6-24 months   IRC              INDIA                          1                     1        0      4
6-24 months   IRC              INDIA                          0                     0        3      4
6-24 months   IRC              INDIA                          0                     1        1      4
6-24 months   JiVitA-3         BANGLADESH                     1                     0     5957   8221
6-24 months   JiVitA-3         BANGLADESH                     1                     1      363   8221
6-24 months   JiVitA-3         BANGLADESH                     0                     0     1788   8221
6-24 months   JiVitA-3         BANGLADESH                     0                     1      113   8221
6-24 months   JiVitA-4         BANGLADESH                     1                     0     3231   4495
6-24 months   JiVitA-4         BANGLADESH                     1                     1      251   4495
6-24 months   JiVitA-4         BANGLADESH                     0                     0      908   4495
6-24 months   JiVitA-4         BANGLADESH                     0                     1      105   4495
6-24 months   Keneba           GAMBIA                         1                     0      572   1927
6-24 months   Keneba           GAMBIA                         1                     1       21   1927
6-24 months   Keneba           GAMBIA                         0                     0     1250   1927
6-24 months   Keneba           GAMBIA                         0                     1       84   1927
6-24 months   LCNI-5           MALAWI                         1                     0       42    240
6-24 months   LCNI-5           MALAWI                         1                     1        0    240
6-24 months   LCNI-5           MALAWI                         0                     0      195    240
6-24 months   LCNI-5           MALAWI                         0                     1        3    240
6-24 months   MAL-ED           BANGLADESH                     1                     0       32    247
6-24 months   MAL-ED           BANGLADESH                     1                     1        0    247
6-24 months   MAL-ED           BANGLADESH                     0                     0      202    247
6-24 months   MAL-ED           BANGLADESH                     0                     1       13    247
6-24 months   MAL-ED           BRAZIL                         1                     0       14    217
6-24 months   MAL-ED           BRAZIL                         1                     1        0    217
6-24 months   MAL-ED           BRAZIL                         0                     0      201    217
6-24 months   MAL-ED           BRAZIL                         0                     1        2    217
6-24 months   MAL-ED           INDIA                          1                     0        8    238
6-24 months   MAL-ED           INDIA                          1                     1        1    238
6-24 months   MAL-ED           INDIA                          0                     0      209    238
6-24 months   MAL-ED           INDIA                          0                     1       20    238
6-24 months   MAL-ED           NEPAL                          1                     0        4    236
6-24 months   MAL-ED           NEPAL                          1                     1        1    236
6-24 months   MAL-ED           NEPAL                          0                     0      228    236
6-24 months   MAL-ED           NEPAL                          0                     1        3    236
6-24 months   MAL-ED           PERU                           1                     0        7    282
6-24 months   MAL-ED           PERU                           1                     1        0    282
6-24 months   MAL-ED           PERU                           0                     0      274    282
6-24 months   MAL-ED           PERU                           0                     1        1    282
6-24 months   MAL-ED           SOUTH AFRICA                   1                     0        3    271
6-24 months   MAL-ED           SOUTH AFRICA                   1                     1        0    271
6-24 months   MAL-ED           SOUTH AFRICA                   0                     0      266    271
6-24 months   MAL-ED           SOUTH AFRICA                   0                     1        2    271
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0        4    249
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        0    249
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      245    249
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        0    249
6-24 months   PROVIDE          BANGLADESH                     1                     0      160    639
6-24 months   PROVIDE          BANGLADESH                     1                     1        2    639
6-24 months   PROVIDE          BANGLADESH                     0                     0      464    639
6-24 months   PROVIDE          BANGLADESH                     0                     1       13    639
6-24 months   SAS-FoodSuppl    INDIA                          1                     0        0    166
6-24 months   SAS-FoodSuppl    INDIA                          1                     1        0    166
6-24 months   SAS-FoodSuppl    INDIA                          0                     0      136    166
6-24 months   SAS-FoodSuppl    INDIA                          0                     1       30    166


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
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/888e4b26-828d-4463-9ad7-66d139d46d27/b86264d2-af24-41f8-bcd7-2a286e4d654b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/888e4b26-828d-4463-9ad7-66d139d46d27/b86264d2-af24-41f8-bcd7-2a286e4d654b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/888e4b26-828d-4463-9ad7-66d139d46d27/b86264d2-af24-41f8-bcd7-2a286e4d654b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/888e4b26-828d-4463-9ad7-66d139d46d27/b86264d2-af24-41f8-bcd7-2a286e4d654b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.1272190   0.0952963   0.1591418
0-24 months   GMS-Nepal   NEPAL        0                    NA                0.1373563   0.0682096   0.2065031
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0573424   0.0504411   0.0642437
0-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0597389   0.0484724   0.0710054
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0746445   0.0642198   0.0850693
0-24 months   JiVitA-4    BANGLADESH   0                    NA                0.0945412   0.0752590   0.1138235
0-24 months   Keneba      GAMBIA       1                    NA                0.0361982   0.0213172   0.0510792
0-24 months   Keneba      GAMBIA       0                    NA                0.0630380   0.0499999   0.0760762
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0891449   0.0618144   0.1164754
0-6 months    GMS-Nepal   NEPAL        0                    NA                0.1707474   0.1006688   0.2408260
0-6 months    Keneba      GAMBIA       1                    NA                0.0226953   0.0099838   0.0354068
0-6 months    Keneba      GAMBIA       0                    NA                0.0348127   0.0246858   0.0449396
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.1270025   0.0950929   0.1589122
6-24 months   GMS-Nepal   NEPAL        0                    NA                0.1365188   0.0676674   0.2053703
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0573290   0.0504368   0.0642213
6-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0597234   0.0484516   0.0709953
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0746717   0.0641985   0.0851449
6-24 months   JiVitA-4    BANGLADESH   0                    NA                0.0918427   0.0729546   0.1107309
6-24 months   Keneba      GAMBIA       1                    NA                0.0355491   0.0206395   0.0504588
6-24 months   Keneba      GAMBIA       0                    NA                0.0630011   0.0499596   0.0760427


### Parameter: E(Y)


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        NA                   NA                0.1306818   0.1019052   0.1594584
0-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0579005   0.0521352   0.0636658
0-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0791991   0.0699871   0.0884111
0-24 months   Keneba      GAMBIA       NA                   NA                0.0544888   0.0443519   0.0646258
0-6 months    GMS-Nepal   NEPAL        NA                   NA                0.1038462   0.0776009   0.1300914
0-6 months    Keneba      GAMBIA       NA                   NA                0.0312326   0.0231789   0.0392862
6-24 months   GMS-Nepal   NEPAL        NA                   NA                0.1306818   0.1019052   0.1594584
6-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0579005   0.0521352   0.0636658
6-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.0791991   0.0699871   0.0884111
6-24 months   Keneba      GAMBIA       NA                   NA                0.0544888   0.0443519   0.0646258


### Parameter: RR


agecat        studyid     country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  ----------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-24 months   GMS-Nepal   NEPAL        0                    1                 1.079684   0.6144758   1.897093
0-24 months   JiVitA-3    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   JiVitA-3    BANGLADESH   0                    1                 1.041793   0.8281110   1.310613
0-24 months   JiVitA-4    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   JiVitA-4    BANGLADESH   0                    1                 1.266553   0.9955577   1.611314
0-24 months   Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
0-24 months   Keneba      GAMBIA       0                    1                 1.741468   1.0990540   2.759382
0-6 months    GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-6 months    GMS-Nepal   NEPAL        0                    1                 1.915391   1.1466205   3.199597
0-6 months    Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
0-6 months    Keneba      GAMBIA       0                    1                 1.533916   0.8158177   2.884099
6-24 months   GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL        0                    1                 1.074930   0.6116613   1.889076
6-24 months   JiVitA-3    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   JiVitA-3    BANGLADESH   0                    1                 1.041766   0.8279803   1.310752
6-24 months   JiVitA-4    BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   JiVitA-4    BANGLADESH   0                    1                 1.229953   0.9655298   1.566793
6-24 months   Keneba      GAMBIA       1                    1                 1.000000   1.0000000   1.000000
6-24 months   Keneba      GAMBIA       0                    1                 1.772226   1.1101041   2.829272


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.0034628   -0.0114545   0.0183801
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0005581   -0.0025762   0.0036924
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0045546   -0.0003186   0.0094277
0-24 months   Keneba      GAMBIA       1                    NA                0.0182906    0.0045737   0.0320075
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0147012   -0.0008104   0.0302128
0-6 months    Keneba      GAMBIA       1                    NA                0.0085373   -0.0029296   0.0200041
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.0036793   -0.0112079   0.0185665
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0005715   -0.0025618   0.0037047
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0045274   -0.0004425   0.0094973
6-24 months   Keneba      GAMBIA       1                    NA                0.0189397    0.0052080   0.0326714


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.0264980   -0.0945404   0.1341515
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0096390   -0.0461380   0.0624421
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0575078   -0.0064675   0.1174166
0-24 months   Keneba      GAMBIA       1                    NA                0.3356767    0.0411876   0.5397165
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.1415674   -0.0170972   0.2754807
0-6 months    Keneba      GAMBIA       1                    NA                0.2733454   -0.1935358   0.5575945
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.0281545   -0.0926439   0.1355980
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0098698   -0.0458878   0.0626549
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.0571648   -0.0081086   0.1182118
6-24 months   Keneba      GAMBIA       1                    NA                0.3475886    0.0514792   0.5512585
