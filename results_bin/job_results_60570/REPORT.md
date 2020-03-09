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

**Outcome Variable:** ever_co

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

agecat        studyid          country                        exclfeed36    ever_co   n_cell       n
------------  ---------------  -----------------------------  -----------  --------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          1                   0        8       9
0-24 months   CMC-V-BCS-2002   INDIA                          1                   1        1       9
0-24 months   CMC-V-BCS-2002   INDIA                          0                   0        0       9
0-24 months   CMC-V-BCS-2002   INDIA                          0                   1        0       9
0-24 months   EE               PAKISTAN                       1                   0        3       9
0-24 months   EE               PAKISTAN                       1                   1        1       9
0-24 months   EE               PAKISTAN                       0                   0        5       9
0-24 months   EE               PAKISTAN                       0                   1        0       9
0-24 months   GMS-Nepal        NEPAL                          1                   0      286     528
0-24 months   GMS-Nepal        NEPAL                          1                   1      137     528
0-24 months   GMS-Nepal        NEPAL                          0                   0       64     528
0-24 months   GMS-Nepal        NEPAL                          0                   1       41     528
0-24 months   IRC              INDIA                          1                   0        0       4
0-24 months   IRC              INDIA                          1                   1        0       4
0-24 months   IRC              INDIA                          0                   0        3       4
0-24 months   IRC              INDIA                          0                   1        1       4
0-24 months   JiVitA-3         BANGLADESH                     1                   0     9001   12748
0-24 months   JiVitA-3         BANGLADESH                     1                   1      922   12748
0-24 months   JiVitA-3         BANGLADESH                     0                   0     2543   12748
0-24 months   JiVitA-3         BANGLADESH                     0                   1      282   12748
0-24 months   JiVitA-4         BANGLADESH                     1                   0     3010    4589
0-24 months   JiVitA-4         BANGLADESH                     1                   1      532    4589
0-24 months   JiVitA-4         BANGLADESH                     0                   0      834    4589
0-24 months   JiVitA-4         BANGLADESH                     0                   1      213    4589
0-24 months   Keneba           GAMBIA                         1                   0      538    1983
0-24 months   Keneba           GAMBIA                         1                   1       87    1983
0-24 months   Keneba           GAMBIA                         0                   0     1103    1983
0-24 months   Keneba           GAMBIA                         0                   1      255    1983
0-24 months   LCNI-5           MALAWI                         1                   0       44     272
0-24 months   LCNI-5           MALAWI                         1                   1        3     272
0-24 months   LCNI-5           MALAWI                         0                   0      212     272
0-24 months   LCNI-5           MALAWI                         0                   1       13     272
0-24 months   MAL-ED           BANGLADESH                     1                   0       29     251
0-24 months   MAL-ED           BANGLADESH                     1                   1        4     251
0-24 months   MAL-ED           BANGLADESH                     0                   0      183     251
0-24 months   MAL-ED           BANGLADESH                     0                   1       35     251
0-24 months   MAL-ED           BRAZIL                         1                   0       15     224
0-24 months   MAL-ED           BRAZIL                         1                   1        1     224
0-24 months   MAL-ED           BRAZIL                         0                   0      206     224
0-24 months   MAL-ED           BRAZIL                         0                   1        2     224
0-24 months   MAL-ED           INDIA                          1                   0        9     239
0-24 months   MAL-ED           INDIA                          1                   1        1     239
0-24 months   MAL-ED           INDIA                          0                   0      176     239
0-24 months   MAL-ED           INDIA                          0                   1       53     239
0-24 months   MAL-ED           NEPAL                          1                   0        5     236
0-24 months   MAL-ED           NEPAL                          1                   1        0     236
0-24 months   MAL-ED           NEPAL                          0                   0      209     236
0-24 months   MAL-ED           NEPAL                          0                   1       22     236
0-24 months   MAL-ED           PERU                           1                   0       10     286
0-24 months   MAL-ED           PERU                           1                   1        0     286
0-24 months   MAL-ED           PERU                           0                   0      265     286
0-24 months   MAL-ED           PERU                           0                   1       11     286
0-24 months   MAL-ED           SOUTH AFRICA                   1                   0        4     276
0-24 months   MAL-ED           SOUTH AFRICA                   1                   1        0     276
0-24 months   MAL-ED           SOUTH AFRICA                   0                   0      250     276
0-24 months   MAL-ED           SOUTH AFRICA                   0                   1       22     276
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        5     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      222     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       23     250
0-24 months   PROVIDE          BANGLADESH                     1                   0      144     639
0-24 months   PROVIDE          BANGLADESH                     1                   1       18     639
0-24 months   PROVIDE          BANGLADESH                     0                   0      406     639
0-24 months   PROVIDE          BANGLADESH                     0                   1       71     639
0-24 months   SAS-FoodSuppl    INDIA                          1                   0        0     184
0-24 months   SAS-FoodSuppl    INDIA                          1                   1        0     184
0-24 months   SAS-FoodSuppl    INDIA                          0                   0      111     184
0-24 months   SAS-FoodSuppl    INDIA                          0                   1       73     184
0-6 months    CMC-V-BCS-2002   INDIA                          1                   0        8       9
0-6 months    CMC-V-BCS-2002   INDIA                          1                   1        1       9
0-6 months    CMC-V-BCS-2002   INDIA                          0                   0        0       9
0-6 months    CMC-V-BCS-2002   INDIA                          0                   1        0       9
0-6 months    EE               PAKISTAN                       1                   0        3       9
0-6 months    EE               PAKISTAN                       1                   1        1       9
0-6 months    EE               PAKISTAN                       0                   0        5       9
0-6 months    EE               PAKISTAN                       0                   1        0       9
0-6 months    GMS-Nepal        NEPAL                          1                   0      405     528
0-6 months    GMS-Nepal        NEPAL                          1                   1       18     528
0-6 months    GMS-Nepal        NEPAL                          0                   0       94     528
0-6 months    GMS-Nepal        NEPAL                          0                   1       11     528
0-6 months    IRC              INDIA                          1                   0        0       4
0-6 months    IRC              INDIA                          1                   1        0       4
0-6 months    IRC              INDIA                          0                   0        3       4
0-6 months    IRC              INDIA                          0                   1        1       4
0-6 months    JiVitA-3         BANGLADESH                     1                   0     9501   12721
0-6 months    JiVitA-3         BANGLADESH                     1                   1      401   12721
0-6 months    JiVitA-3         BANGLADESH                     0                   0     2707   12721
0-6 months    JiVitA-3         BANGLADESH                     0                   1      112   12721
0-6 months    JiVitA-4         BANGLADESH                     1                   0     3447    4540
0-6 months    JiVitA-4         BANGLADESH                     1                   1       78    4540
0-6 months    JiVitA-4         BANGLADESH                     0                   0      971    4540
0-6 months    JiVitA-4         BANGLADESH                     0                   1       44    4540
0-6 months    Keneba           GAMBIA                         1                   0      612    1983
0-6 months    Keneba           GAMBIA                         1                   1       13    1983
0-6 months    Keneba           GAMBIA                         0                   0     1309    1983
0-6 months    Keneba           GAMBIA                         0                   1       49    1983
0-6 months    LCNI-5           MALAWI                         1                   0       47     272
0-6 months    LCNI-5           MALAWI                         1                   1        0     272
0-6 months    LCNI-5           MALAWI                         0                   0      225     272
0-6 months    LCNI-5           MALAWI                         0                   1        0     272
0-6 months    MAL-ED           BANGLADESH                     1                   0       32     251
0-6 months    MAL-ED           BANGLADESH                     1                   1        1     251
0-6 months    MAL-ED           BANGLADESH                     0                   0      210     251
0-6 months    MAL-ED           BANGLADESH                     0                   1        8     251
0-6 months    MAL-ED           BRAZIL                         1                   0       15     224
0-6 months    MAL-ED           BRAZIL                         1                   1        1     224
0-6 months    MAL-ED           BRAZIL                         0                   0      208     224
0-6 months    MAL-ED           BRAZIL                         0                   1        0     224
0-6 months    MAL-ED           INDIA                          1                   0       10     239
0-6 months    MAL-ED           INDIA                          1                   1        0     239
0-6 months    MAL-ED           INDIA                          0                   0      210     239
0-6 months    MAL-ED           INDIA                          0                   1       19     239
0-6 months    MAL-ED           NEPAL                          1                   0        5     236
0-6 months    MAL-ED           NEPAL                          1                   1        0     236
0-6 months    MAL-ED           NEPAL                          0                   0      223     236
0-6 months    MAL-ED           NEPAL                          0                   1        8     236
0-6 months    MAL-ED           PERU                           1                   0       10     286
0-6 months    MAL-ED           PERU                           1                   1        0     286
0-6 months    MAL-ED           PERU                           0                   0      275     286
0-6 months    MAL-ED           PERU                           0                   1        1     286
0-6 months    MAL-ED           SOUTH AFRICA                   1                   0        4     276
0-6 months    MAL-ED           SOUTH AFRICA                   1                   1        0     276
0-6 months    MAL-ED           SOUTH AFRICA                   0                   0      268     276
0-6 months    MAL-ED           SOUTH AFRICA                   0                   1        4     276
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        5     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      241     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        4     250
0-6 months    PROVIDE          BANGLADESH                     1                   0      160     639
0-6 months    PROVIDE          BANGLADESH                     1                   1        2     639
0-6 months    PROVIDE          BANGLADESH                     0                   0      450     639
0-6 months    PROVIDE          BANGLADESH                     0                   1       27     639
0-6 months    SAS-FoodSuppl    INDIA                          1                   0        0     183
0-6 months    SAS-FoodSuppl    INDIA                          1                   1        0     183
0-6 months    SAS-FoodSuppl    INDIA                          0                   0      157     183
0-6 months    SAS-FoodSuppl    INDIA                          0                   1       26     183
6-24 months   CMC-V-BCS-2002   INDIA                          1                   0        8       9
6-24 months   CMC-V-BCS-2002   INDIA                          1                   1        1       9
6-24 months   CMC-V-BCS-2002   INDIA                          0                   0        0       9
6-24 months   CMC-V-BCS-2002   INDIA                          0                   1        0       9
6-24 months   EE               PAKISTAN                       1                   0        3       9
6-24 months   EE               PAKISTAN                       1                   1        1       9
6-24 months   EE               PAKISTAN                       0                   0        5       9
6-24 months   EE               PAKISTAN                       0                   1        0       9
6-24 months   GMS-Nepal        NEPAL                          1                   0      289     526
6-24 months   GMS-Nepal        NEPAL                          1                   1      133     526
6-24 months   GMS-Nepal        NEPAL                          0                   0       67     526
6-24 months   GMS-Nepal        NEPAL                          0                   1       37     526
6-24 months   IRC              INDIA                          1                   0        0       4
6-24 months   IRC              INDIA                          1                   1        0       4
6-24 months   IRC              INDIA                          0                   0        3       4
6-24 months   IRC              INDIA                          0                   1        1       4
6-24 months   JiVitA-3         BANGLADESH                     1                   0     6195    8812
6-24 months   JiVitA-3         BANGLADESH                     1                   1      593    8812
6-24 months   JiVitA-3         BANGLADESH                     0                   0     1837    8812
6-24 months   JiVitA-3         BANGLADESH                     0                   1      187    8812
6-24 months   JiVitA-4         BANGLADESH                     1                   0     3052    4577
6-24 months   JiVitA-4         BANGLADESH                     1                   1      483    4577
6-24 months   JiVitA-4         BANGLADESH                     0                   0      848    4577
6-24 months   JiVitA-4         BANGLADESH                     0                   1      194    4577
6-24 months   Keneba           GAMBIA                         1                   0      499    1904
6-24 months   Keneba           GAMBIA                         1                   1       80    1904
6-24 months   Keneba           GAMBIA                         0                   0     1089    1904
6-24 months   Keneba           GAMBIA                         0                   1      236    1904
6-24 months   LCNI-5           MALAWI                         1                   0       42     258
6-24 months   LCNI-5           MALAWI                         1                   1        3     258
6-24 months   LCNI-5           MALAWI                         0                   0      200     258
6-24 months   LCNI-5           MALAWI                         0                   1       13     258
6-24 months   MAL-ED           BANGLADESH                     1                   0       26     239
6-24 months   MAL-ED           BANGLADESH                     1                   1        4     239
6-24 months   MAL-ED           BANGLADESH                     0                   0      178     239
6-24 months   MAL-ED           BANGLADESH                     0                   1       31     239
6-24 months   MAL-ED           BRAZIL                         1                   0       12     207
6-24 months   MAL-ED           BRAZIL                         1                   1        0     207
6-24 months   MAL-ED           BRAZIL                         0                   0      193     207
6-24 months   MAL-ED           BRAZIL                         0                   1        2     207
6-24 months   MAL-ED           INDIA                          1                   0        8     232
6-24 months   MAL-ED           INDIA                          1                   1        1     232
6-24 months   MAL-ED           INDIA                          0                   0      177     232
6-24 months   MAL-ED           INDIA                          0                   1       46     232
6-24 months   MAL-ED           NEPAL                          1                   0        4     234
6-24 months   MAL-ED           NEPAL                          1                   1        0     234
6-24 months   MAL-ED           NEPAL                          0                   0      214     234
6-24 months   MAL-ED           NEPAL                          0                   1       16     234
6-24 months   MAL-ED           PERU                           1                   0        6     270
6-24 months   MAL-ED           PERU                           1                   1        0     270
6-24 months   MAL-ED           PERU                           0                   0      253     270
6-24 months   MAL-ED           PERU                           0                   1       11     270
6-24 months   MAL-ED           SOUTH AFRICA                   1                   0        2     256
6-24 months   MAL-ED           SOUTH AFRICA                   1                   1        0     256
6-24 months   MAL-ED           SOUTH AFRICA                   0                   0      234     256
6-24 months   MAL-ED           SOUTH AFRICA                   0                   1       20     256
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        4     243
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     243
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      218     243
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1       21     243
6-24 months   PROVIDE          BANGLADESH                     1                   0      135     613
6-24 months   PROVIDE          BANGLADESH                     1                   1       17     613
6-24 months   PROVIDE          BANGLADESH                     0                   0      403     613
6-24 months   PROVIDE          BANGLADESH                     0                   1       58     613
6-24 months   SAS-FoodSuppl    INDIA                          1                   0        0     176
6-24 months   SAS-FoodSuppl    INDIA                          1                   1        0     176
6-24 months   SAS-FoodSuppl    INDIA                          0                   0      111     176
6-24 months   SAS-FoodSuppl    INDIA                          0                   1       65     176


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
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
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
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
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
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/9394bdf5-b94c-41bb-b4a7-f6cf9700d885/9588c8a7-ec99-4a09-bdaf-6f860c73e0c7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9394bdf5-b94c-41bb-b4a7-f6cf9700d885/9588c8a7-ec99-4a09-bdaf-6f860c73e0c7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9394bdf5-b94c-41bb-b4a7-f6cf9700d885/9588c8a7-ec99-4a09-bdaf-6f860c73e0c7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9394bdf5-b94c-41bb-b4a7-f6cf9700d885/9588c8a7-ec99-4a09-bdaf-6f860c73e0c7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.3235333   0.2788517   0.3682149
0-24 months   GMS-Nepal   NEPAL        0                    NA                0.3941899   0.2994145   0.4889654
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0935439   0.0874222   0.0996655
0-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0972476   0.0865468   0.1079485
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.1552298   0.1417780   0.1686817
0-24 months   JiVitA-4    BANGLADESH   0                    NA                0.1835029   0.1590003   0.2080054
0-24 months   Keneba      GAMBIA       1                    NA                0.1417332   0.1150433   0.1684231
0-24 months   Keneba      GAMBIA       0                    NA                0.1859895   0.1655475   0.2064314
0-24 months   PROVIDE     BANGLADESH   1                    NA                0.1083440   0.0595587   0.1571293
0-24 months   PROVIDE     BANGLADESH   0                    NA                0.1491563   0.1171418   0.1811708
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0429895   0.0236888   0.0622901
0-6 months    GMS-Nepal   NEPAL        0                    NA                0.1111898   0.0536921   0.1686875
0-6 months    JiVitA-3    BANGLADESH   1                    NA                0.0403334   0.0360876   0.0445792
0-6 months    JiVitA-3    BANGLADESH   0                    NA                0.0402304   0.0331024   0.0473584
0-6 months    JiVitA-4    BANGLADESH   1                    NA                0.0216760   0.0157156   0.0276363
0-6 months    JiVitA-4    BANGLADESH   0                    NA                0.0435309   0.0305815   0.0564803
0-6 months    Keneba      GAMBIA       1                    NA                0.0211477   0.0097852   0.0325103
0-6 months    Keneba      GAMBIA       0                    NA                0.0358522   0.0259561   0.0457482
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.3142493   0.2699087   0.3585899
6-24 months   GMS-Nepal   NEPAL        0                    NA                0.3562644   0.2638146   0.4487141
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0870246   0.0799603   0.0940889
6-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0936991   0.0805530   0.1068452
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.1411603   0.1285794   0.1537411
6-24 months   JiVitA-4    BANGLADESH   0                    NA                0.1635020   0.1397499   0.1872542
6-24 months   Keneba      GAMBIA       1                    NA                0.1403609   0.1125595   0.1681622
6-24 months   Keneba      GAMBIA       0                    NA                0.1764902   0.1561143   0.1968660
6-24 months   PROVIDE     BANGLADESH   1                    NA                0.1155357   0.0653914   0.1656799
6-24 months   PROVIDE     BANGLADESH   0                    NA                0.1260699   0.0957412   0.1563986


### Parameter: E(Y)


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        NA                   NA                0.3371212   0.2967611   0.3774814
0-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0944462   0.0888980   0.0999944
0-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.1623447   0.1503363   0.1743531
0-24 months   Keneba      GAMBIA       NA                   NA                0.1724660   0.1558341   0.1890978
0-24 months   PROVIDE     BANGLADESH   NA                   NA                0.1392801   0.1124135   0.1661468
0-6 months    GMS-Nepal   NEPAL        NA                   NA                0.0549242   0.0354725   0.0743760
0-6 months    JiVitA-3    BANGLADESH   NA                   NA                0.0403270   0.0366289   0.0440252
0-6 months    JiVitA-4    BANGLADESH   NA                   NA                0.0268722   0.0213332   0.0324113
0-6 months    Keneba      GAMBIA       NA                   NA                0.0312658   0.0236039   0.0389276
6-24 months   GMS-Nepal   NEPAL        NA                   NA                0.3231939   0.2831873   0.3632006
6-24 months   JiVitA-3    BANGLADESH   NA                   NA                0.0885157   0.0819350   0.0950963
6-24 months   JiVitA-4    BANGLADESH   NA                   NA                0.1479135   0.1367519   0.1590750
6-24 months   Keneba      GAMBIA       NA                   NA                0.1659664   0.1492505   0.1826823
6-24 months   PROVIDE     BANGLADESH   NA                   NA                0.1223491   0.0963874   0.1483108


### Parameter: RR


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal   NEPAL        0                    1                 1.2183905   0.9236656   1.607157
0-24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3    BANGLADESH   0                    1                 1.0395938   0.9203900   1.174236
0-24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4    BANGLADESH   0                    1                 1.1821364   1.0134012   1.378967
0-24 months   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   Keneba      GAMBIA       0                    1                 1.3122506   1.0582290   1.627249
0-24 months   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE     BANGLADESH   0                    1                 1.3766916   0.8357694   2.267707
0-6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal   NEPAL        0                    1                 2.5864424   1.3020985   5.137618
0-6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3    BANGLADESH   0                    1                 0.9974464   0.8136971   1.222690
0-6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4    BANGLADESH   0                    1                 2.0082564   1.3535674   2.979603
0-6 months    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    Keneba      GAMBIA       0                    1                 1.6953197   0.9267617   3.101238
6-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL        0                    1                 1.1336998   0.8442783   1.522336
6-24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3    BANGLADESH   0                    1                 1.0766967   0.9247800   1.253569
6-24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4    BANGLADESH   0                    1                 1.1582725   0.9773662   1.372664
6-24 months   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   Keneba      GAMBIA       0                    1                 1.2574029   1.0025250   1.577080
6-24 months   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE     BANGLADESH   0                    1                 1.0911774   0.6649598   1.790587


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0135879   -0.0070515   0.0342273
0-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0009023   -0.0016978   0.0035025
0-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0071149    0.0006035   0.0136263
0-24 months   Keneba      GAMBIA       1                    NA                 0.0307328    0.0079992   0.0534664
0-24 months   PROVIDE     BANGLADESH   1                    NA                 0.0309361   -0.0127331   0.0746053
0-6 months    GMS-Nepal   NEPAL        1                    NA                 0.0119348   -0.0005907   0.0244603
0-6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0000064   -0.0018208   0.0018081
0-6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0051963    0.0021322   0.0082604
0-6 months    Keneba      GAMBIA       1                    NA                 0.0101180   -0.0002630   0.0204991
6-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0089446   -0.0112121   0.0291013
6-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0014911   -0.0017340   0.0047161
6-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0067532    0.0003448   0.0131617
6-24 months   Keneba      GAMBIA       1                    NA                 0.0256055    0.0019148   0.0492962
6-24 months   PROVIDE     BANGLADESH   1                    NA                 0.0068134   -0.0371994   0.0508263


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0403056   -0.0229339   0.0996356
0-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0095538   -0.0183672   0.0367093
0-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0438258    0.0028497   0.0831182
0-24 months   Keneba      GAMBIA       1                    NA                 0.1781961    0.0360711   0.2993657
0-24 months   PROVIDE     BANGLADESH   1                    NA                 0.2221144   -0.1616046   0.4790775
0-6 months    GMS-Nepal   NEPAL        1                    NA                 0.2172951   -0.0300781   0.4052617
0-6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0001581   -0.0461772   0.0438367
0-6 months    JiVitA-4    BANGLADESH   1                    NA                 0.1933700    0.0690252   0.3011067
0-6 months    Keneba      GAMBIA       1                    NA                 0.3236134   -0.0899847   0.5802704
6-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0276756   -0.0367432   0.0880918
6-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0168453   -0.0201791   0.0525259
6-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0456566    0.0013748   0.0879748
6-24 months   Keneba      GAMBIA       1                    NA                 0.1542814   -0.0006432   0.2852198
6-24 months   PROVIDE     BANGLADESH   1                    NA                 0.0556885   -0.3817109   0.3546232
