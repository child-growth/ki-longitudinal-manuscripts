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

**Outcome Variable:** ever_swasted

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

agecat                        studyid          country                        exclfeed36    ever_swasted   n_cell       n
----------------------------  ---------------  -----------------------------  -----------  -------------  -------  ------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                        0        9       9
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                        1        0       9
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                        0        0       9
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                        1        0       9
0-24 months (no birth wast)   EE               PAKISTAN                       1                        0        4       9
0-24 months (no birth wast)   EE               PAKISTAN                       1                        1        0       9
0-24 months (no birth wast)   EE               PAKISTAN                       0                        0        4       9
0-24 months (no birth wast)   EE               PAKISTAN                       0                        1        1       9
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                        0      330     524
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                        1       90     524
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                        0       74     524
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                        1       30     524
0-24 months (no birth wast)   IRC              INDIA                          1                        0        0       4
0-24 months (no birth wast)   IRC              INDIA                          1                        1        0       4
0-24 months (no birth wast)   IRC              INDIA                          0                        0        3       4
0-24 months (no birth wast)   IRC              INDIA                          0                        1        1       4
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                        0     9404   12568
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                        1      370   12568
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                        0     2698   12568
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                        1       96   12568
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                        0     3378    4559
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                        1      142    4559
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                        0      989    4559
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                        1       50    4559
0-24 months (no birth wast)   Keneba           GAMBIA                         1                        0      544    1974
0-24 months (no birth wast)   Keneba           GAMBIA                         1                        1       79    1974
0-24 months (no birth wast)   Keneba           GAMBIA                         0                        0     1115    1974
0-24 months (no birth wast)   Keneba           GAMBIA                         0                        1      236    1974
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                        0       47     271
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                        1        0     271
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                        0      222     271
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                        1        2     271
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                        0       31     251
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                        1        2     251
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                        0      208     251
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                        1       10     251
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                        0       16     224
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                        1        0     224
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                        0      204     224
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                        1        4     224
0-24 months (no birth wast)   MAL-ED           INDIA                          1                        0        9     234
0-24 months (no birth wast)   MAL-ED           INDIA                          1                        1        1     234
0-24 months (no birth wast)   MAL-ED           INDIA                          0                        0      212     234
0-24 months (no birth wast)   MAL-ED           INDIA                          0                        1       12     234
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                        0        4     235
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                        1        0     235
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                        0      228     235
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                        1        3     235
0-24 months (no birth wast)   MAL-ED           PERU                           1                        0       10     286
0-24 months (no birth wast)   MAL-ED           PERU                           1                        1        0     286
0-24 months (no birth wast)   MAL-ED           PERU                           0                        0      272     286
0-24 months (no birth wast)   MAL-ED           PERU                           0                        1        4     286
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                        0        4     276
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                        1        0     276
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                        0      260     276
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                        1       12     276
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0        5     250
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        0     250
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0      237     250
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1        8     250
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                        0      159     635
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                        1        3     635
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                        0      459     635
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                        1       14     635
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                        0        0     173
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                        1        0     173
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                        0      159     173
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                        1       14     173
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                        0        8       8
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                        1        0       8
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                        0        0       8
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                        1        0       8
0-6 months (no birth wast)    EE               PAKISTAN                       1                        0        4       9
0-6 months (no birth wast)    EE               PAKISTAN                       1                        1        0       9
0-6 months (no birth wast)    EE               PAKISTAN                       0                        0        4       9
0-6 months (no birth wast)    EE               PAKISTAN                       0                        1        1       9
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                        0      389     510
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                        1       21     510
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                        0       92     510
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                        1        8     510
0-6 months (no birth wast)    IRC              INDIA                          1                        0        0       4
0-6 months (no birth wast)    IRC              INDIA                          1                        1        0       4
0-6 months (no birth wast)    IRC              INDIA                          0                        0        4       4
0-6 months (no birth wast)    IRC              INDIA                          0                        1        0       4
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                        0     9535   12458
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                        1      157   12458
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                        0     2726   12458
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                        1       40   12458
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                        0     3450    4433
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                        1       14    4433
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                        0      963    4433
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                        1        6    4433
0-6 months (no birth wast)    Keneba           GAMBIA                         1                        0      600    1960
0-6 months (no birth wast)    Keneba           GAMBIA                         1                        1       20    1960
0-6 months (no birth wast)    Keneba           GAMBIA                         0                        0     1276    1960
0-6 months (no birth wast)    Keneba           GAMBIA                         0                        1       64    1960
0-6 months (no birth wast)    LCNI-5           MALAWI                         1                        0       47     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         1                        1        0     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         0                        0      221     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         0                        1        0     268
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                        0       32     250
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                        1        1     250
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                        0      211     250
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                        1        6     250
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                        0       16     224
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                        1        0     224
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                        0      205     224
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                        1        3     224
0-6 months (no birth wast)    MAL-ED           INDIA                          1                        0        9     232
0-6 months (no birth wast)    MAL-ED           INDIA                          1                        1        1     232
0-6 months (no birth wast)    MAL-ED           INDIA                          0                        0      216     232
0-6 months (no birth wast)    MAL-ED           INDIA                          0                        1        6     232
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                        0        4     233
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                        1        0     233
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                        0      228     233
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                        1        1     233
0-6 months (no birth wast)    MAL-ED           PERU                           1                        0       10     286
0-6 months (no birth wast)    MAL-ED           PERU                           1                        1        0     286
0-6 months (no birth wast)    MAL-ED           PERU                           0                        0      275     286
0-6 months (no birth wast)    MAL-ED           PERU                           0                        1        1     286
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                        0        4     275
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                        1        0     275
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                        0      268     275
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                        1        3     275
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0        5     250
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        0     250
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0      242     250
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1        3     250
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                        0      162     631
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                        1        0     631
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                        0      465     631
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                        1        4     631
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          1                        0        0     137
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          1                        1        0     137
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          0                        0      137     137
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          0                        1        0     137
6-24 months                   CMC-V-BCS-2002   INDIA                          1                        0        9       9
6-24 months                   CMC-V-BCS-2002   INDIA                          1                        1        0       9
6-24 months                   CMC-V-BCS-2002   INDIA                          0                        0        0       9
6-24 months                   CMC-V-BCS-2002   INDIA                          0                        1        0       9
6-24 months                   EE               PAKISTAN                       1                        0        4       9
6-24 months                   EE               PAKISTAN                       1                        1        0       9
6-24 months                   EE               PAKISTAN                       0                        0        5       9
6-24 months                   EE               PAKISTAN                       0                        1        0       9
6-24 months                   GMS-Nepal        NEPAL                          1                        0      347     526
6-24 months                   GMS-Nepal        NEPAL                          1                        1       75     526
6-24 months                   GMS-Nepal        NEPAL                          0                        0       78     526
6-24 months                   GMS-Nepal        NEPAL                          0                        1       26     526
6-24 months                   IRC              INDIA                          1                        0        0       4
6-24 months                   IRC              INDIA                          1                        1        0       4
6-24 months                   IRC              INDIA                          0                        0        3       4
6-24 months                   IRC              INDIA                          0                        1        1       4
6-24 months                   JiVitA-3         BANGLADESH                     1                        0     6564    8820
6-24 months                   JiVitA-3         BANGLADESH                     1                        1      228    8820
6-24 months                   JiVitA-3         BANGLADESH                     0                        0     1968    8820
6-24 months                   JiVitA-3         BANGLADESH                     0                        1       60    8820
6-24 months                   JiVitA-4         BANGLADESH                     1                        0     3397    4578
6-24 months                   JiVitA-4         BANGLADESH                     1                        1      138    4578
6-24 months                   JiVitA-4         BANGLADESH                     0                        0      994    4578
6-24 months                   JiVitA-4         BANGLADESH                     0                        1       49    4578
6-24 months                   Keneba           GAMBIA                         1                        0      517    1904
6-24 months                   Keneba           GAMBIA                         1                        1       62    1904
6-24 months                   Keneba           GAMBIA                         0                        0     1148    1904
6-24 months                   Keneba           GAMBIA                         0                        1      177    1904
6-24 months                   LCNI-5           MALAWI                         1                        0       45     258
6-24 months                   LCNI-5           MALAWI                         1                        1        0     258
6-24 months                   LCNI-5           MALAWI                         0                        0      211     258
6-24 months                   LCNI-5           MALAWI                         0                        1        2     258
6-24 months                   MAL-ED           BANGLADESH                     1                        0       29     240
6-24 months                   MAL-ED           BANGLADESH                     1                        1        1     240
6-24 months                   MAL-ED           BANGLADESH                     0                        0      206     240
6-24 months                   MAL-ED           BANGLADESH                     0                        1        4     240
6-24 months                   MAL-ED           BRAZIL                         1                        0       12     207
6-24 months                   MAL-ED           BRAZIL                         1                        1        0     207
6-24 months                   MAL-ED           BRAZIL                         0                        0      194     207
6-24 months                   MAL-ED           BRAZIL                         0                        1        1     207
6-24 months                   MAL-ED           INDIA                          1                        0        9     232
6-24 months                   MAL-ED           INDIA                          1                        1        0     232
6-24 months                   MAL-ED           INDIA                          0                        0      217     232
6-24 months                   MAL-ED           INDIA                          0                        1        6     232
6-24 months                   MAL-ED           NEPAL                          1                        0        4     234
6-24 months                   MAL-ED           NEPAL                          1                        1        0     234
6-24 months                   MAL-ED           NEPAL                          0                        0      228     234
6-24 months                   MAL-ED           NEPAL                          0                        1        2     234
6-24 months                   MAL-ED           PERU                           1                        0        6     270
6-24 months                   MAL-ED           PERU                           1                        1        0     270
6-24 months                   MAL-ED           PERU                           0                        0      261     270
6-24 months                   MAL-ED           PERU                           0                        1        3     270
6-24 months                   MAL-ED           SOUTH AFRICA                   1                        0        2     256
6-24 months                   MAL-ED           SOUTH AFRICA                   1                        1        0     256
6-24 months                   MAL-ED           SOUTH AFRICA                   0                        0      244     256
6-24 months                   MAL-ED           SOUTH AFRICA                   0                        1       10     256
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0        4     243
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        0     243
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0      234     243
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1        5     243
6-24 months                   PROVIDE          BANGLADESH                     1                        0      149     613
6-24 months                   PROVIDE          BANGLADESH                     1                        1        3     613
6-24 months                   PROVIDE          BANGLADESH                     0                        0      451     613
6-24 months                   PROVIDE          BANGLADESH                     0                        1       10     613
6-24 months                   SAS-FoodSuppl    INDIA                          1                        0        0     177
6-24 months                   SAS-FoodSuppl    INDIA                          1                        1        0     177
6-24 months                   SAS-FoodSuppl    INDIA                          0                        0      156     177
6-24 months                   SAS-FoodSuppl    INDIA                          0                        1       21     177


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
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

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
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
![](/tmp/53971cfb-2d79-44ca-aa8b-5d132c06f3a4/6bc322bb-5b83-4ba1-a8a2-077461218754/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/53971cfb-2d79-44ca-aa8b-5d132c06f3a4/6bc322bb-5b83-4ba1-a8a2-077461218754/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/53971cfb-2d79-44ca-aa8b-5d132c06f3a4/6bc322bb-5b83-4ba1-a8a2-077461218754/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/53971cfb-2d79-44ca-aa8b-5d132c06f3a4/6bc322bb-5b83-4ba1-a8a2-077461218754/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                0.2138911    0.1745655   0.2532167
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    NA                0.2760845    0.1887349   0.3634341
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                0.0378246    0.0334588   0.0421903
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   0                    NA                0.0344581    0.0271081   0.0418081
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                0.0408709    0.0338246   0.0479172
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   0                    NA                0.0461712    0.0326835   0.0596590
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                0.1266150    0.1003483   0.1528818
0-24 months (no birth wast)   Keneba      GAMBIA       0                    NA                0.1752417    0.1549637   0.1955197
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                0.0512195    0.0298604   0.0725786
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    NA                0.0800000    0.0267753   0.1332247
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                0.0161856    0.0130915   0.0192797
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   0                    NA                0.0143649    0.0098700   0.0188598
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                0.0040416    0.0006666   0.0074166
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   0                    NA                0.0061920   -0.0013383   0.0137222
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                0.0320410    0.0180519   0.0460300
0-6 months (no birth wast)    Keneba      GAMBIA       0                    NA                0.0475718    0.0361477   0.0589958
6-24 months                   GMS-Nepal   NEPAL        1                    NA                0.1783155    0.1417373   0.2148937
6-24 months                   GMS-Nepal   NEPAL        0                    NA                0.2599028    0.1753455   0.3444600
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                0.0335711    0.0287067   0.0384355
6-24 months                   JiVitA-3    BANGLADESH   0                    NA                0.0298470    0.0208968   0.0387972
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                0.0390362    0.0323319   0.0457406
6-24 months                   JiVitA-4    BANGLADESH   0                    NA                0.0450035    0.0328748   0.0571322
6-24 months                   Keneba      GAMBIA       1                    NA                0.1083498    0.0831593   0.1335403
6-24 months                   Keneba      GAMBIA       0                    NA                0.1343815    0.1160774   0.1526857


### Parameter: E(Y)


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        NA                   NA                0.2290076   0.1929956   0.2650196
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   NA                   NA                0.0370783   0.0333023   0.0408543
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   NA                   NA                0.0421145   0.0360504   0.0481786
0-24 months (no birth wast)   Keneba      GAMBIA       NA                   NA                0.1595745   0.1434154   0.1757335
0-6 months (no birth wast)    GMS-Nepal   NEPAL        NA                   NA                0.0568627   0.0367445   0.0769810
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   NA                   NA                0.0158131   0.0132056   0.0184207
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   NA                   NA                0.0045116   0.0014181   0.0076051
0-6 months (no birth wast)    Keneba      GAMBIA       NA                   NA                0.0428571   0.0338884   0.0518259
6-24 months                   GMS-Nepal   NEPAL        NA                   NA                0.1920152   0.1583224   0.2257081
6-24 months                   JiVitA-3    BANGLADESH   NA                   NA                0.0326531   0.0283158   0.0369903
6-24 months                   JiVitA-4    BANGLADESH   NA                   NA                0.0408475   0.0350297   0.0466653
6-24 months                   Keneba      GAMBIA       NA                   NA                0.1255252   0.1106396   0.1404109


### Parameter: RR


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    1                 1.2907715   0.8941152   1.863396
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   0                    1                 0.9109983   0.7151542   1.160474
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   0                    1                 1.1296845   0.8009050   1.593431
0-24 months (no birth wast)   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   Keneba      GAMBIA       0                    1                 1.3840514   1.0913193   1.755305
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    1                 1.5619048   0.7122754   3.425005
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   0                    1                 0.8875108   0.6151085   1.280547
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   0                    1                 1.5320654   0.3473637   6.757254
0-6 months (no birth wast)    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    Keneba      GAMBIA       0                    1                 1.4847162   0.9019033   2.444145
6-24 months                   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal   NEPAL        0                    1                 1.4575446   0.9922080   2.141120
6-24 months                   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-3    BANGLADESH   0                    1                 0.8890693   0.6400084   1.235053
6-24 months                   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-4    BANGLADESH   0                    1                 1.1528650   0.8359883   1.589852
6-24 months                   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   Keneba      GAMBIA       0                    1                 1.2402563   0.9472804   1.623844


### Parameter: PAR


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                 0.0151166   -0.0041738   0.0344069
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                -0.0007463   -0.0026414   0.0011489
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                 0.0012436   -0.0023290   0.0048161
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                 0.0329594    0.0101828   0.0557360
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0056432   -0.0056457   0.0169322
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                -0.0003725   -0.0015848   0.0008398
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                 0.0004700   -0.0013438   0.0022839
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                 0.0108162   -0.0015559   0.0231882
6-24 months                   GMS-Nepal   NEPAL        1                    NA                 0.0136997   -0.0045735   0.0319730
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                -0.0009180   -0.0032321   0.0013960
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                 0.0018113   -0.0015234   0.0051460
6-24 months                   Keneba      GAMBIA       1                    NA                 0.0171754   -0.0044862   0.0388370


### Parameter: PAF


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                 0.0660090   -0.0218388   0.1463045
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                -0.0201266   -0.0724005   0.0295993
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                 0.0295285   -0.0592475   0.1108642
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                 0.2065458    0.0513973   0.3363191
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0992431   -0.1193952   0.2751773
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                -0.0235541   -0.1024025   0.0496547
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                 0.1041859   -0.3985239   0.4261929
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                 0.2523769   -0.0938020   0.4889932
6-24 months                   GMS-Nepal   NEPAL        1                    NA                 0.0713471   -0.0282990   0.1613372
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                -0.0281139   -0.1016868   0.0405457
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                 0.0443429   -0.0411448   0.1228113
6-24 months                   Keneba      GAMBIA       1                    NA                 0.1368283   -0.0534009   0.2927049
