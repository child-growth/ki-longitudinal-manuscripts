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

unadjusted

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
![](/tmp/0b138d44-8520-427d-bae7-b7f699acace4/396b77d2-fe43-465c-93e8-69524a867d6a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0b138d44-8520-427d-bae7-b7f699acace4/396b77d2-fe43-465c-93e8-69524a867d6a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0b138d44-8520-427d-bae7-b7f699acace4/396b77d2-fe43-465c-93e8-69524a867d6a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0b138d44-8520-427d-bae7-b7f699acace4/396b77d2-fe43-465c-93e8-69524a867d6a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                0.3238771   0.2792403   0.3685138
0-24 months   GMS-Nepal   NEPAL        0                    NA                0.3904762   0.2970739   0.4838785
0-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0929154   0.0867215   0.0991094
0-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0998230   0.0887485   0.1108975
0-24 months   JiVitA-4    BANGLADESH   1                    NA                0.1501976   0.1369386   0.1634567
0-24 months   JiVitA-4    BANGLADESH   0                    NA                0.2034384   0.1777322   0.2291446
0-24 months   Keneba      GAMBIA       1                    NA                0.1392000   0.1120551   0.1663449
0-24 months   Keneba      GAMBIA       0                    NA                0.1877761   0.1670000   0.2085523
0-24 months   PROVIDE     BANGLADESH   1                    NA                0.1111111   0.0626790   0.1595432
0-24 months   PROVIDE     BANGLADESH   0                    NA                0.1488470   0.1168799   0.1808140
0-6 months    GMS-Nepal   NEPAL        1                    NA                0.0425532   0.0232995   0.0618068
0-6 months    GMS-Nepal   NEPAL        0                    NA                0.1047619   0.0461297   0.1633941
0-6 months    JiVitA-3    BANGLADESH   1                    NA                0.0404969   0.0362674   0.0447263
0-6 months    JiVitA-3    BANGLADESH   0                    NA                0.0397304   0.0326260   0.0468348
0-6 months    JiVitA-4    BANGLADESH   1                    NA                0.0221277   0.0161062   0.0281491
0-6 months    JiVitA-4    BANGLADESH   0                    NA                0.0433498   0.0305591   0.0561404
0-6 months    Keneba      GAMBIA       1                    NA                0.0208000   0.0096086   0.0319914
0-6 months    Keneba      GAMBIA       0                    NA                0.0360825   0.0261610   0.0460039
6-24 months   GMS-Nepal   NEPAL        1                    NA                0.3151659   0.2707981   0.3595336
6-24 months   GMS-Nepal   NEPAL        0                    NA                0.3557692   0.2636714   0.4478671
6-24 months   JiVitA-3    BANGLADESH   1                    NA                0.0873600   0.0802752   0.0944449
6-24 months   JiVitA-3    BANGLADESH   0                    NA                0.0923913   0.0787548   0.1060278
6-24 months   JiVitA-4    BANGLADESH   1                    NA                0.1366337   0.1242318   0.1490355
6-24 months   JiVitA-4    BANGLADESH   0                    NA                0.1861804   0.1617832   0.2105777
6-24 months   Keneba      GAMBIA       1                    NA                0.1381693   0.1100542   0.1662844
6-24 months   Keneba      GAMBIA       0                    NA                0.1781132   0.1575065   0.1987199
6-24 months   PROVIDE     BANGLADESH   1                    NA                0.1118421   0.0616970   0.1619872
6-24 months   PROVIDE     BANGLADESH   0                    NA                0.1258134   0.0955152   0.1561117


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
0-24 months   GMS-Nepal   NEPAL        0                    1                 1.2056309   0.9147894   1.588940
0-24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3    BANGLADESH   0                    1                 1.0743424   0.9474567   1.218221
0-24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4    BANGLADESH   0                    1                 1.3544714   1.1648336   1.574983
0-24 months   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   Keneba      GAMBIA       0                    1                 1.3489665   1.0780245   1.688005
0-24 months   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE     BANGLADESH   0                    1                 1.3396226   0.8240395   2.177795
0-6 months    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal   NEPAL        0                    1                 2.4619048   1.1987106   5.056246
0-6 months    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3    BANGLADESH   0                    1                 0.9810734   0.8000788   1.203013
0-6 months    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4    BANGLADESH   0                    1                 1.9590754   1.3173110   2.913493
0-6 months    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    Keneba      GAMBIA       0                    1                 1.7347343   0.9480166   3.174315
6-24 months   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal   NEPAL        0                    1                 1.1288317   0.8407269   1.515666
6-24 months   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3    BANGLADESH   0                    1                 1.0575922   0.9008368   1.241625
6-24 months   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4    BANGLADESH   0                    1                 1.3626248   1.1637486   1.595487
6-24 months   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   Keneba      GAMBIA       0                    1                 1.2890943   1.0200648   1.629077
6-24 months   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE     BANGLADESH   0                    1                 1.1249203   0.6762279   1.871330


### Parameter: PAR


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0132441   -0.0074670   0.0339553
0-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0015307   -0.0012038   0.0042653
0-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0121471    0.0057312   0.0185630
0-24 months   Keneba      GAMBIA       1                    NA                 0.0332660    0.0098355   0.0566965
0-24 months   PROVIDE     BANGLADESH   1                    NA                 0.0281690   -0.0151684   0.0715064
0-6 months    GMS-Nepal   NEPAL        1                    NA                 0.0123711   -0.0000831   0.0248252
0-6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0001699   -0.0019742   0.0016345
0-6 months    JiVitA-4    BANGLADESH   1                    NA                 0.0047446    0.0016193   0.0078699
0-6 months    Keneba      GAMBIA       1                    NA                 0.0104658    0.0002188   0.0207127
6-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0080280   -0.0122316   0.0282877
6-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0011556   -0.0022117   0.0045229
6-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0112798    0.0051487   0.0174110
6-24 months   Keneba      GAMBIA       1                    NA                 0.0277971    0.0035251   0.0520691
6-24 months   PROVIDE     BANGLADESH   1                    NA                 0.0105070   -0.0335558   0.0545698


### Parameter: PAF


agecat        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0392860   -0.0241518   0.0987943
0-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0162075   -0.0131959   0.0447576
0-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0748229    0.0344005   0.1135531
0-24 months   Keneba      GAMBIA       1                    NA                 0.1928842    0.0459277   0.3172049
0-24 months   PROVIDE     BANGLADESH   1                    NA                 0.2022472   -0.1756242   0.4586624
0-6 months    GMS-Nepal   NEPAL        1                    NA                 0.2252384   -0.0207122   0.4119249
0-6 months    JiVitA-3    BANGLADESH   1                    NA                -0.0042118   -0.0499404   0.0395251
0-6 months    JiVitA-4    BANGLADESH   1                    NA                 0.1765609    0.0501653   0.2861369
0-6 months    Keneba      GAMBIA       1                    NA                 0.3347355   -0.0725904   0.5873757
6-24 months   GMS-Nepal   NEPAL        1                    NA                 0.0248397   -0.0398991   0.0855482
6-24 months   JiVitA-3    BANGLADESH   1                    NA                 0.0130555   -0.0256402   0.0502912
6-24 months   JiVitA-4    BANGLADESH   1                    NA                 0.0762596    0.0338146   0.1168399
6-24 months   Keneba      GAMBIA       1                    NA                 0.1674865    0.0083852   0.3010606
6-24 months   PROVIDE     BANGLADESH   1                    NA                 0.0858772   -0.3550077   0.3833094
