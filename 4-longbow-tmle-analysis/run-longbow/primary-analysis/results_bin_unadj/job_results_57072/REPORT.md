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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid          country                        exclfeed36    ever_swasted   n_cell      n
----------------------------  ---------------  -----------------------------  -----------  -------------  -------  -----
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                        0        9      9
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                        1        0      9
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                        0        0      9
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                        1        0      9
0-24 months (no birth wast)   EE               PAKISTAN                       1                        0        4      9
0-24 months (no birth wast)   EE               PAKISTAN                       1                        1        0      9
0-24 months (no birth wast)   EE               PAKISTAN                       0                        0        4      9
0-24 months (no birth wast)   EE               PAKISTAN                       0                        1        1      9
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                        0      330    524
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                        1       90    524
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                        0       74    524
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                        1       30    524
0-24 months (no birth wast)   IRC              INDIA                          1                        0        0      4
0-24 months (no birth wast)   IRC              INDIA                          1                        1        0      4
0-24 months (no birth wast)   IRC              INDIA                          0                        0        3      4
0-24 months (no birth wast)   IRC              INDIA                          0                        1        1      4
0-24 months (no birth wast)   Keneba           GAMBIA                         1                        0      544   1974
0-24 months (no birth wast)   Keneba           GAMBIA                         1                        1       79   1974
0-24 months (no birth wast)   Keneba           GAMBIA                         0                        0     1115   1974
0-24 months (no birth wast)   Keneba           GAMBIA                         0                        1      236   1974
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                        0       47    271
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                        1        0    271
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                        0      222    271
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                        1        2    271
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                        0       31    251
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                        1        2    251
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                        0      208    251
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                        1       10    251
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                        0       16    224
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                        1        0    224
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                        0      204    224
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                        1        4    224
0-24 months (no birth wast)   MAL-ED           INDIA                          1                        0        9    234
0-24 months (no birth wast)   MAL-ED           INDIA                          1                        1        1    234
0-24 months (no birth wast)   MAL-ED           INDIA                          0                        0      212    234
0-24 months (no birth wast)   MAL-ED           INDIA                          0                        1       12    234
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                        0        4    235
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                        1        0    235
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                        0      228    235
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                        1        3    235
0-24 months (no birth wast)   MAL-ED           PERU                           1                        0       10    286
0-24 months (no birth wast)   MAL-ED           PERU                           1                        1        0    286
0-24 months (no birth wast)   MAL-ED           PERU                           0                        0      272    286
0-24 months (no birth wast)   MAL-ED           PERU                           0                        1        4    286
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                        0        4    276
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                        1        0    276
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                        0      260    276
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                        1       12    276
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0        5    250
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        0    250
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0      237    250
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1        8    250
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                        0      159    635
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                        1        3    635
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                        0      459    635
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                        1       14    635
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                        0        0    173
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                        1        0    173
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                        0      159    173
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                        1       14    173
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                        0        8      8
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                        1        0      8
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                        0        0      8
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                        1        0      8
0-6 months (no birth wast)    EE               PAKISTAN                       1                        0        4      9
0-6 months (no birth wast)    EE               PAKISTAN                       1                        1        0      9
0-6 months (no birth wast)    EE               PAKISTAN                       0                        0        4      9
0-6 months (no birth wast)    EE               PAKISTAN                       0                        1        1      9
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                        0      389    510
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                        1       21    510
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                        0       92    510
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                        1        8    510
0-6 months (no birth wast)    IRC              INDIA                          1                        0        0      4
0-6 months (no birth wast)    IRC              INDIA                          1                        1        0      4
0-6 months (no birth wast)    IRC              INDIA                          0                        0        4      4
0-6 months (no birth wast)    IRC              INDIA                          0                        1        0      4
0-6 months (no birth wast)    Keneba           GAMBIA                         1                        0      600   1960
0-6 months (no birth wast)    Keneba           GAMBIA                         1                        1       20   1960
0-6 months (no birth wast)    Keneba           GAMBIA                         0                        0     1276   1960
0-6 months (no birth wast)    Keneba           GAMBIA                         0                        1       64   1960
0-6 months (no birth wast)    LCNI-5           MALAWI                         1                        0       47    268
0-6 months (no birth wast)    LCNI-5           MALAWI                         1                        1        0    268
0-6 months (no birth wast)    LCNI-5           MALAWI                         0                        0      221    268
0-6 months (no birth wast)    LCNI-5           MALAWI                         0                        1        0    268
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                        0       32    250
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                        1        1    250
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                        0      211    250
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                        1        6    250
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                        0       16    224
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                        1        0    224
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                        0      205    224
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                        1        3    224
0-6 months (no birth wast)    MAL-ED           INDIA                          1                        0        9    232
0-6 months (no birth wast)    MAL-ED           INDIA                          1                        1        1    232
0-6 months (no birth wast)    MAL-ED           INDIA                          0                        0      216    232
0-6 months (no birth wast)    MAL-ED           INDIA                          0                        1        6    232
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                        0        4    233
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                        1        0    233
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                        0      228    233
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                        1        1    233
0-6 months (no birth wast)    MAL-ED           PERU                           1                        0       10    286
0-6 months (no birth wast)    MAL-ED           PERU                           1                        1        0    286
0-6 months (no birth wast)    MAL-ED           PERU                           0                        0      275    286
0-6 months (no birth wast)    MAL-ED           PERU                           0                        1        1    286
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                        0        4    275
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                        1        0    275
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                        0      268    275
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                        1        3    275
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0        5    250
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        0    250
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0      242    250
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1        3    250
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                        0      162    631
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                        1        0    631
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                        0      465    631
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                        1        4    631
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          1                        0        0    137
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          1                        1        0    137
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          0                        0      137    137
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          0                        1        0    137
6-24 months                   CMC-V-BCS-2002   INDIA                          1                        0        9      9
6-24 months                   CMC-V-BCS-2002   INDIA                          1                        1        0      9
6-24 months                   CMC-V-BCS-2002   INDIA                          0                        0        0      9
6-24 months                   CMC-V-BCS-2002   INDIA                          0                        1        0      9
6-24 months                   EE               PAKISTAN                       1                        0        4      9
6-24 months                   EE               PAKISTAN                       1                        1        0      9
6-24 months                   EE               PAKISTAN                       0                        0        5      9
6-24 months                   EE               PAKISTAN                       0                        1        0      9
6-24 months                   GMS-Nepal        NEPAL                          1                        0      347    526
6-24 months                   GMS-Nepal        NEPAL                          1                        1       75    526
6-24 months                   GMS-Nepal        NEPAL                          0                        0       78    526
6-24 months                   GMS-Nepal        NEPAL                          0                        1       26    526
6-24 months                   IRC              INDIA                          1                        0        0      4
6-24 months                   IRC              INDIA                          1                        1        0      4
6-24 months                   IRC              INDIA                          0                        0        3      4
6-24 months                   IRC              INDIA                          0                        1        1      4
6-24 months                   Keneba           GAMBIA                         1                        0      517   1904
6-24 months                   Keneba           GAMBIA                         1                        1       62   1904
6-24 months                   Keneba           GAMBIA                         0                        0     1148   1904
6-24 months                   Keneba           GAMBIA                         0                        1      177   1904
6-24 months                   LCNI-5           MALAWI                         1                        0       45    258
6-24 months                   LCNI-5           MALAWI                         1                        1        0    258
6-24 months                   LCNI-5           MALAWI                         0                        0      211    258
6-24 months                   LCNI-5           MALAWI                         0                        1        2    258
6-24 months                   MAL-ED           BANGLADESH                     1                        0       29    240
6-24 months                   MAL-ED           BANGLADESH                     1                        1        1    240
6-24 months                   MAL-ED           BANGLADESH                     0                        0      206    240
6-24 months                   MAL-ED           BANGLADESH                     0                        1        4    240
6-24 months                   MAL-ED           BRAZIL                         1                        0       12    207
6-24 months                   MAL-ED           BRAZIL                         1                        1        0    207
6-24 months                   MAL-ED           BRAZIL                         0                        0      194    207
6-24 months                   MAL-ED           BRAZIL                         0                        1        1    207
6-24 months                   MAL-ED           INDIA                          1                        0        9    232
6-24 months                   MAL-ED           INDIA                          1                        1        0    232
6-24 months                   MAL-ED           INDIA                          0                        0      217    232
6-24 months                   MAL-ED           INDIA                          0                        1        6    232
6-24 months                   MAL-ED           NEPAL                          1                        0        4    234
6-24 months                   MAL-ED           NEPAL                          1                        1        0    234
6-24 months                   MAL-ED           NEPAL                          0                        0      228    234
6-24 months                   MAL-ED           NEPAL                          0                        1        2    234
6-24 months                   MAL-ED           PERU                           1                        0        6    270
6-24 months                   MAL-ED           PERU                           1                        1        0    270
6-24 months                   MAL-ED           PERU                           0                        0      261    270
6-24 months                   MAL-ED           PERU                           0                        1        3    270
6-24 months                   MAL-ED           SOUTH AFRICA                   1                        0        2    256
6-24 months                   MAL-ED           SOUTH AFRICA                   1                        1        0    256
6-24 months                   MAL-ED           SOUTH AFRICA                   0                        0      244    256
6-24 months                   MAL-ED           SOUTH AFRICA                   0                        1       10    256
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        0        4    243
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                        1        0    243
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        0      234    243
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                        1        5    243
6-24 months                   PROVIDE          BANGLADESH                     1                        0      149    613
6-24 months                   PROVIDE          BANGLADESH                     1                        1        3    613
6-24 months                   PROVIDE          BANGLADESH                     0                        0      451    613
6-24 months                   PROVIDE          BANGLADESH                     0                        1       10    613
6-24 months                   SAS-FoodSuppl    INDIA                          1                        0        0    177
6-24 months                   SAS-FoodSuppl    INDIA                          1                        1        0    177
6-24 months                   SAS-FoodSuppl    INDIA                          0                        0      156    177
6-24 months                   SAS-FoodSuppl    INDIA                          0                        1       21    177


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
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
![](/tmp/c63e76fb-f3e8-4f48-baa1-4e83fdd986d7/9976a77b-b1b8-4362-85e3-d143696926c4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c63e76fb-f3e8-4f48-baa1-4e83fdd986d7/9976a77b-b1b8-4362-85e3-d143696926c4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c63e76fb-f3e8-4f48-baa1-4e83fdd986d7/9976a77b-b1b8-4362-85e3-d143696926c4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c63e76fb-f3e8-4f48-baa1-4e83fdd986d7/9976a77b-b1b8-4362-85e3-d143696926c4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid     country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL     1                    NA                0.2142857   0.1750061   0.2535653
0-24 months (no birth wast)   GMS-Nepal   NEPAL     0                    NA                0.2884615   0.2013071   0.3756159
0-24 months (no birth wast)   Keneba      GAMBIA    1                    NA                0.1268058   0.1006698   0.1529418
0-24 months (no birth wast)   Keneba      GAMBIA    0                    NA                0.1746854   0.1544334   0.1949374
0-6 months (no birth wast)    GMS-Nepal   NEPAL     1                    NA                0.0512195   0.0298604   0.0725786
0-6 months (no birth wast)    GMS-Nepal   NEPAL     0                    NA                0.0800000   0.0267753   0.1332247
0-6 months (no birth wast)    Keneba      GAMBIA    1                    NA                0.0322581   0.0183469   0.0461692
0-6 months (no birth wast)    Keneba      GAMBIA    0                    NA                0.0477612   0.0363399   0.0591825
6-24 months                   GMS-Nepal   NEPAL     1                    NA                0.1777251   0.1412171   0.2142331
6-24 months                   GMS-Nepal   NEPAL     0                    NA                0.2500000   0.1666999   0.3333001
6-24 months                   Keneba      GAMBIA    1                    NA                0.1070812   0.0818879   0.1322745
6-24 months                   Keneba      GAMBIA    0                    NA                0.1335849   0.1152619   0.1519079


### Parameter: E(Y)


agecat                        studyid     country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL     NA                   NA                0.2290076   0.1929956   0.2650196
0-24 months (no birth wast)   Keneba      GAMBIA    NA                   NA                0.1595745   0.1434154   0.1757335
0-6 months (no birth wast)    GMS-Nepal   NEPAL     NA                   NA                0.0568627   0.0367445   0.0769810
0-6 months (no birth wast)    Keneba      GAMBIA    NA                   NA                0.0428571   0.0338884   0.0518259
6-24 months                   GMS-Nepal   NEPAL     NA                   NA                0.1920152   0.1583224   0.2257081
6-24 months                   Keneba      GAMBIA    NA                   NA                0.1255252   0.1106396   0.1404109


### Parameter: RR


agecat                        studyid     country   intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------------------  ----------  --------  -------------------  ---------------  ---------  ----------  ---------
0-24 months (no birth wast)   GMS-Nepal   NEPAL     1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal   NEPAL     0                    1                 1.346154   0.9454057   1.916775
0-24 months (no birth wast)   Keneba      GAMBIA    1                    1                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   Keneba      GAMBIA    0                    1                 1.377582   1.0874671   1.745095
0-6 months (no birth wast)    GMS-Nepal   NEPAL     1                    1                 1.000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal   NEPAL     0                    1                 1.561905   0.7122754   3.425005
0-6 months (no birth wast)    Keneba      GAMBIA    1                    1                 1.000000   1.0000000   1.000000
0-6 months (no birth wast)    Keneba      GAMBIA    0                    1                 1.480597   0.9042366   2.424330
6-24 months                   GMS-Nepal   NEPAL     1                    1                 1.000000   1.0000000   1.000000
6-24 months                   GMS-Nepal   NEPAL     0                    1                 1.406667   0.9510304   2.080597
6-24 months                   Keneba      GAMBIA    1                    1                 1.000000   1.0000000   1.000000
6-24 months                   Keneba      GAMBIA    0                    1                 1.247511   0.9501014   1.638018


### Parameter: PAR


agecat                        studyid     country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  ----------  --------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL     1                    NA                0.0147219   -0.0044202   0.0338640
0-24 months (no birth wast)   Keneba      GAMBIA    1                    NA                0.0327687    0.0101184   0.0554190
0-6 months (no birth wast)    GMS-Nepal   NEPAL     1                    NA                0.0056432   -0.0056457   0.0169322
0-6 months (no birth wast)    Keneba      GAMBIA    1                    NA                0.0105991   -0.0017105   0.0229087
6-24 months                   GMS-Nepal   NEPAL     1                    NA                0.0142901   -0.0038600   0.0324402
6-24 months                   Keneba      GAMBIA    1                    NA                0.0184440   -0.0032415   0.0401296


### Parameter: PAF


agecat                        studyid     country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  ----------  --------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL     1                    NA                0.0642857   -0.0228513   0.1439995
0-24 months (no birth wast)   Keneba      GAMBIA    1                    NA                0.2053505    0.0512176   0.3344439
0-6 months (no birth wast)    GMS-Nepal   NEPAL     1                    NA                0.0992431   -0.1193952   0.2751773
0-6 months (no birth wast)    Keneba      GAMBIA    1                    NA                0.2473118   -0.0960055   0.4830870
6-24 months                   GMS-Nepal   NEPAL     1                    NA                0.0744217   -0.0245371   0.1638221
6-24 months                   Keneba      GAMBIA    1                    NA                0.1469349   -0.0437463   0.3027807
