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

**Outcome Variable:** ever_wasted

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

agecat                        studyid          country                        exclfeed36    ever_wasted   n_cell       n
----------------------------  ---------------  -----------------------------  -----------  ------------  -------  ------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                       0        7       9
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                       1        2       9
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                       0        0       9
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                       1        0       9
0-24 months (no birth wast)   EE               PAKISTAN                       1                       0        3       9
0-24 months (no birth wast)   EE               PAKISTAN                       1                       1        1       9
0-24 months (no birth wast)   EE               PAKISTAN                       0                       0        3       9
0-24 months (no birth wast)   EE               PAKISTAN                       0                       1        2       9
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                       0      180     524
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                       1      240     524
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                       0       47     524
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                       1       57     524
0-24 months (no birth wast)   IRC              INDIA                          1                       0        0       4
0-24 months (no birth wast)   IRC              INDIA                          1                       1        0       4
0-24 months (no birth wast)   IRC              INDIA                          0                       0        1       4
0-24 months (no birth wast)   IRC              INDIA                          0                       1        3       4
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                       0     8049   12568
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                       1     1725   12568
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                       0     2263   12568
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                       1      531   12568
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                       0     2634    4559
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                       1      886    4559
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                       0      734    4559
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                       1      305    4559
0-24 months (no birth wast)   Keneba           GAMBIA                         1                       0      405    1974
0-24 months (no birth wast)   Keneba           GAMBIA                         1                       1      218    1974
0-24 months (no birth wast)   Keneba           GAMBIA                         0                       0      789    1974
0-24 months (no birth wast)   Keneba           GAMBIA                         0                       1      562    1974
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                       0       42     271
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                       1        5     271
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                       0      204     271
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                       1       20     271
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                       0       27     251
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                       1        6     251
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                       0      167     251
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                       1       51     251
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                       0       16     224
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                       1        0     224
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                       0      195     224
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                       1       13     224
0-24 months (no birth wast)   MAL-ED           INDIA                          1                       0        5     234
0-24 months (no birth wast)   MAL-ED           INDIA                          1                       1        5     234
0-24 months (no birth wast)   MAL-ED           INDIA                          0                       0      140     234
0-24 months (no birth wast)   MAL-ED           INDIA                          0                       1       84     234
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                       0        4     235
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                       1        0     235
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                       0      185     235
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                       1       46     235
0-24 months (no birth wast)   MAL-ED           PERU                           1                       0       10     286
0-24 months (no birth wast)   MAL-ED           PERU                           1                       1        0     286
0-24 months (no birth wast)   MAL-ED           PERU                           0                       0      255     286
0-24 months (no birth wast)   MAL-ED           PERU                           0                       1       21     286
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                       0        4     276
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                       1        0     276
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                       0      227     276
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                       1       45     276
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        5     250
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     250
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      212     250
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1       33     250
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                       0      138     635
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                       1       24     635
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                       0      377     635
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                       1       96     635
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                       0        0     173
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                       1        0     173
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                       0      117     173
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                       1       56     173
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                       0        7       8
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                       1        1       8
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                       0        0       8
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                       1        0       8
0-6 months (no birth wast)    EE               PAKISTAN                       1                       0        3       9
0-6 months (no birth wast)    EE               PAKISTAN                       1                       1        1       9
0-6 months (no birth wast)    EE               PAKISTAN                       0                       0        4       9
0-6 months (no birth wast)    EE               PAKISTAN                       0                       1        1       9
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                       0      318     510
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                       1       92     510
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                       0       75     510
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                       1       25     510
0-6 months (no birth wast)    IRC              INDIA                          1                       0        0       4
0-6 months (no birth wast)    IRC              INDIA                          1                       1        0       4
0-6 months (no birth wast)    IRC              INDIA                          0                       0        3       4
0-6 months (no birth wast)    IRC              INDIA                          0                       1        1       4
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                       0     9008   12458
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                       1      684   12458
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                       0     2554   12458
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                       1      212   12458
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                       0     3375    4433
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                       1       89    4433
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                       0      936    4433
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                       1       33    4433
0-6 months (no birth wast)    Keneba           GAMBIA                         1                       0      558    1960
0-6 months (no birth wast)    Keneba           GAMBIA                         1                       1       62    1960
0-6 months (no birth wast)    Keneba           GAMBIA                         0                       0     1159    1960
0-6 months (no birth wast)    Keneba           GAMBIA                         0                       1      181    1960
0-6 months (no birth wast)    LCNI-5           MALAWI                         1                       0       47     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         1                       1        0     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         0                       0      221     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         0                       1        0     268
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                       0       32     250
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                       1        1     250
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                       0      200     250
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                       1       17     250
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                       0       16     224
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                       1        0     224
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                       0      200     224
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                       1        8     224
0-6 months (no birth wast)    MAL-ED           INDIA                          1                       0        7     232
0-6 months (no birth wast)    MAL-ED           INDIA                          1                       1        3     232
0-6 months (no birth wast)    MAL-ED           INDIA                          0                       0      188     232
0-6 months (no birth wast)    MAL-ED           INDIA                          0                       1       34     232
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                       0        4     233
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                       1        0     233
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                       0      213     233
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                       1       16     233
0-6 months (no birth wast)    MAL-ED           PERU                           1                       0       10     286
0-6 months (no birth wast)    MAL-ED           PERU                           1                       1        0     286
0-6 months (no birth wast)    MAL-ED           PERU                           0                       0      271     286
0-6 months (no birth wast)    MAL-ED           PERU                           0                       1        5     286
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                       0        4     275
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                       1        0     275
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                       0      257     275
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                       1       14     275
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        5     250
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     250
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      235     250
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1       10     250
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                       0      157     631
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                       1        5     631
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                       0      439     631
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                       1       30     631
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          1                       0        0     137
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          1                       1        0     137
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          0                       0      137     137
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          0                       1        0     137
6-24 months                   CMC-V-BCS-2002   INDIA                          1                       0        8       9
6-24 months                   CMC-V-BCS-2002   INDIA                          1                       1        1       9
6-24 months                   CMC-V-BCS-2002   INDIA                          0                       0        0       9
6-24 months                   CMC-V-BCS-2002   INDIA                          0                       1        0       9
6-24 months                   EE               PAKISTAN                       1                       0        4       9
6-24 months                   EE               PAKISTAN                       1                       1        0       9
6-24 months                   EE               PAKISTAN                       0                       0        4       9
6-24 months                   EE               PAKISTAN                       0                       1        1       9
6-24 months                   GMS-Nepal        NEPAL                          1                       0      220     526
6-24 months                   GMS-Nepal        NEPAL                          1                       1      202     526
6-24 months                   GMS-Nepal        NEPAL                          0                       0       57     526
6-24 months                   GMS-Nepal        NEPAL                          0                       1       47     526
6-24 months                   IRC              INDIA                          1                       0        0       4
6-24 months                   IRC              INDIA                          1                       1        0       4
6-24 months                   IRC              INDIA                          0                       0        2       4
6-24 months                   IRC              INDIA                          0                       1        2       4
6-24 months                   JiVitA-3         BANGLADESH                     1                       0     5661    8820
6-24 months                   JiVitA-3         BANGLADESH                     1                       1     1131    8820
6-24 months                   JiVitA-3         BANGLADESH                     0                       0     1681    8820
6-24 months                   JiVitA-3         BANGLADESH                     0                       1      347    8820
6-24 months                   JiVitA-4         BANGLADESH                     1                       0     2697    4578
6-24 months                   JiVitA-4         BANGLADESH                     1                       1      838    4578
6-24 months                   JiVitA-4         BANGLADESH                     0                       0      751    4578
6-24 months                   JiVitA-4         BANGLADESH                     0                       1      292    4578
6-24 months                   Keneba           GAMBIA                         1                       0      397    1904
6-24 months                   Keneba           GAMBIA                         1                       1      182    1904
6-24 months                   Keneba           GAMBIA                         0                       0      863    1904
6-24 months                   Keneba           GAMBIA                         0                       1      462    1904
6-24 months                   LCNI-5           MALAWI                         1                       0       40     258
6-24 months                   LCNI-5           MALAWI                         1                       1        5     258
6-24 months                   LCNI-5           MALAWI                         0                       0      193     258
6-24 months                   LCNI-5           MALAWI                         0                       1       20     258
6-24 months                   MAL-ED           BANGLADESH                     1                       0       24     240
6-24 months                   MAL-ED           BANGLADESH                     1                       1        6     240
6-24 months                   MAL-ED           BANGLADESH                     0                       0      173     240
6-24 months                   MAL-ED           BANGLADESH                     0                       1       37     240
6-24 months                   MAL-ED           BRAZIL                         1                       0       12     207
6-24 months                   MAL-ED           BRAZIL                         1                       1        0     207
6-24 months                   MAL-ED           BRAZIL                         0                       0      189     207
6-24 months                   MAL-ED           BRAZIL                         0                       1        6     207
6-24 months                   MAL-ED           INDIA                          1                       0        7     232
6-24 months                   MAL-ED           INDIA                          1                       1        2     232
6-24 months                   MAL-ED           INDIA                          0                       0      161     232
6-24 months                   MAL-ED           INDIA                          0                       1       62     232
6-24 months                   MAL-ED           NEPAL                          1                       0        4     234
6-24 months                   MAL-ED           NEPAL                          1                       1        0     234
6-24 months                   MAL-ED           NEPAL                          0                       0      194     234
6-24 months                   MAL-ED           NEPAL                          0                       1       36     234
6-24 months                   MAL-ED           PERU                           1                       0        6     270
6-24 months                   MAL-ED           PERU                           1                       1        0     270
6-24 months                   MAL-ED           PERU                           0                       0      246     270
6-24 months                   MAL-ED           PERU                           0                       1       18     270
6-24 months                   MAL-ED           SOUTH AFRICA                   1                       0        2     256
6-24 months                   MAL-ED           SOUTH AFRICA                   1                       1        0     256
6-24 months                   MAL-ED           SOUTH AFRICA                   0                       0      217     256
6-24 months                   MAL-ED           SOUTH AFRICA                   0                       1       37     256
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        4     243
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     243
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      212     243
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1       27     243
6-24 months                   PROVIDE          BANGLADESH                     1                       0      131     613
6-24 months                   PROVIDE          BANGLADESH                     1                       1       21     613
6-24 months                   PROVIDE          BANGLADESH                     0                       0      383     613
6-24 months                   PROVIDE          BANGLADESH                     0                       1       78     613
6-24 months                   SAS-FoodSuppl    INDIA                          1                       0        0     177
6-24 months                   SAS-FoodSuppl    INDIA                          1                       1        0     177
6-24 months                   SAS-FoodSuppl    INDIA                          0                       0      121     177
6-24 months                   SAS-FoodSuppl    INDIA                          0                       1       56     177


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
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: IRC, country: INDIA
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
![](/tmp/b090f9a1-fd79-481c-9170-64f420bed0a8/4db4a06a-75c8-4e8f-abd4-4cd415db2621/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b090f9a1-fd79-481c-9170-64f420bed0a8/4db4a06a-75c8-4e8f-abd4-4cd415db2621/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b090f9a1-fd79-481c-9170-64f420bed0a8/4db4a06a-75c8-4e8f-abd4-4cd415db2621/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b090f9a1-fd79-481c-9170-64f420bed0a8/4db4a06a-75c8-4e8f-abd4-4cd415db2621/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                0.5714286   0.5240556   0.6188016
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    NA                0.5480769   0.4523356   0.6438182
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                0.1764886   0.1680192   0.1849581
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   0                    NA                0.1900501   0.1732236   0.2068767
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                0.2517045   0.2345986   0.2688105
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   0                    NA                0.2935515   0.2616508   0.3254522
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                0.3499197   0.3124585   0.3873810
0-24 months (no birth wast)   Keneba      GAMBIA       0                    NA                0.4159882   0.3896987   0.4422776
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   LCNI-5      MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                0.1818182   0.0499617   0.3136747
0-24 months (no birth wast)   MAL-ED      BANGLADESH   0                    NA                0.2339450   0.1776365   0.2902534
0-24 months (no birth wast)   MAL-ED      INDIA        1                    NA                0.5000000   0.1894382   0.8105618
0-24 months (no birth wast)   MAL-ED      INDIA        0                    NA                0.3750000   0.3114655   0.4385345
0-24 months (no birth wast)   PROVIDE     BANGLADESH   1                    NA                0.1481481   0.0934008   0.2028955
0-24 months (no birth wast)   PROVIDE     BANGLADESH   0                    NA                0.2029598   0.1666850   0.2392346
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                0.2243902   0.1839693   0.2648111
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    NA                0.2500000   0.1650477   0.3349523
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                0.0705737   0.0648633   0.0762841
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   0                    NA                0.0766450   0.0644412   0.0888488
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                0.0256928   0.0193955   0.0319902
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   0                    NA                0.0340557   0.0209457   0.0471658
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                0.1000000   0.0763798   0.1236202
0-6 months (no birth wast)    Keneba      GAMBIA       0                    NA                0.1350746   0.1167691   0.1533802
0-6 months (no birth wast)    PROVIDE     BANGLADESH   1                    NA                0.0308642   0.0042107   0.0575177
0-6 months (no birth wast)    PROVIDE     BANGLADESH   0                    NA                0.0639659   0.0418030   0.0861288
6-24 months                   GMS-Nepal   NEPAL        1                    NA                0.4786730   0.4309663   0.5263797
6-24 months                   GMS-Nepal   NEPAL        0                    NA                0.4519231   0.3561821   0.5476640
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                0.1665194   0.1568570   0.1761818
6-24 months                   JiVitA-3    BANGLADESH   0                    NA                0.1711045   0.1529443   0.1892648
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                0.2370580   0.2201763   0.2539397
6-24 months                   JiVitA-4    BANGLADESH   0                    NA                0.2799616   0.2481965   0.3117268
6-24 months                   Keneba      GAMBIA       1                    NA                0.3143351   0.2765104   0.3521597
6-24 months                   Keneba      GAMBIA       0                    NA                0.3486792   0.3230129   0.3743456
6-24 months                   LCNI-5      MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   LCNI-5      MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   MAL-ED      BANGLADESH   1                    NA                0.2000000   0.0565653   0.3434347
6-24 months                   MAL-ED      BANGLADESH   0                    NA                0.1761905   0.1245548   0.2278261
6-24 months                   PROVIDE     BANGLADESH   1                    NA                0.1381579   0.0832566   0.1930592
6-24 months                   PROVIDE     BANGLADESH   0                    NA                0.1691974   0.1349445   0.2034503


### Parameter: E(Y)


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        NA                   NA                0.5667939   0.5243264   0.6092614
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   NA                   NA                0.1795035   0.1720409   0.1869661
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   NA                   NA                0.2612415   0.2461119   0.2763711
0-24 months (no birth wast)   Keneba      GAMBIA       NA                   NA                0.3951368   0.3735650   0.4167086
0-24 months (no birth wast)   LCNI-5      MALAWI       NA                   NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   MAL-ED      BANGLADESH   NA                   NA                0.2270916   0.1751587   0.2790245
0-24 months (no birth wast)   MAL-ED      INDIA        NA                   NA                0.3803419   0.3180067   0.4426771
0-24 months (no birth wast)   PROVIDE     BANGLADESH   NA                   NA                0.1889764   0.1585028   0.2194500
0-6 months (no birth wast)    GMS-Nepal   NEPAL        NA                   NA                0.2294118   0.1928853   0.2659383
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   NA                   NA                0.0719217   0.0666549   0.0771884
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   NA                   NA                0.0275209   0.0219532   0.0330885
0-6 months (no birth wast)    Keneba      GAMBIA       NA                   NA                0.1239796   0.1093860   0.1385732
0-6 months (no birth wast)    PROVIDE     BANGLADESH   NA                   NA                0.0554675   0.0375942   0.0733408
6-24 months                   GMS-Nepal   NEPAL        NA                   NA                0.4733840   0.4306748   0.5160933
6-24 months                   JiVitA-3    BANGLADESH   NA                   NA                0.1675737   0.1590914   0.1760560
6-24 months                   JiVitA-4    BANGLADESH   NA                   NA                0.2468327   0.2318250   0.2618404
6-24 months                   Keneba      GAMBIA       NA                   NA                0.3382353   0.3169789   0.3594917
6-24 months                   LCNI-5      MALAWI       NA                   NA                0.0968992   0.0607324   0.1330660
6-24 months                   MAL-ED      BANGLADESH   NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months                   PROVIDE     BANGLADESH   NA                   NA                0.1615008   0.1323459   0.1906557


### Parameter: RR


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    1                 0.9591346   0.7905047   1.163736
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   0                    1                 1.0768404   0.9722916   1.192631
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   0                    1                 1.1662542   1.0264011   1.325163
0-24 months (no birth wast)   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   Keneba      GAMBIA       0                    1                 1.1888102   1.0498367   1.346181
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   LCNI-5      MALAWI       0                    1                 0.8392857   0.3311837   2.126918
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      BANGLADESH   0                    1                 1.2866972   0.5992775   2.762643
0-24 months (no birth wast)   MAL-ED      INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      INDIA        0                    1                 0.7500000   0.3939629   1.427799
0-24 months (no birth wast)   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   PROVIDE     BANGLADESH   0                    1                 1.3699789   0.9087358   2.065333
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    1                 1.1141304   0.7584119   1.636692
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   0                    1                 1.0860279   0.9100870   1.295982
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   0                    1                 1.3254948   0.8307717   2.114825
0-6 months (no birth wast)    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    Keneba      GAMBIA       0                    1                 1.3507463   1.0287434   1.773538
0-6 months (no birth wast)    PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    PROVIDE     BANGLADESH   0                    1                 2.0724947   0.8173110   5.255324
6-24 months                   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal   NEPAL        0                    1                 0.9441165   0.7470445   1.193177
6-24 months                   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-3    BANGLADESH   0                    1                 1.0275349   0.9098791   1.160405
6-24 months                   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-4    BANGLADESH   0                    1                 1.1809838   1.0339648   1.348907
6-24 months                   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   Keneba      GAMBIA       0                    1                 1.1092598   0.9633210   1.277308
6-24 months                   LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   LCNI-5      MALAWI       0                    1                 0.8450704   0.3342527   2.136539
6-24 months                   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED      BANGLADESH   0                    1                 0.8809524   0.4059626   1.911696
6-24 months                   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   PROVIDE     BANGLADESH   0                    1                 1.2246669   0.7840304   1.912947


### Parameter: PAR


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                -0.0046347   -0.0258507   0.0165813
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                 0.0030149   -0.0012361   0.0072658
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                 0.0095370    0.0012860   0.0177879
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                 0.0452170    0.0138660   0.0765681
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    NA                -0.0141321   -0.0934107   0.0651466
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                 0.0452735   -0.0792718   0.1698187
0-24 months (no birth wast)   MAL-ED      INDIA        1                    NA                -0.1196581   -0.4231229   0.1838066
0-24 months (no birth wast)   PROVIDE     BANGLADESH   1                    NA                 0.0408282   -0.0081268   0.0897833
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0050215   -0.0134464   0.0234894
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                 0.0013480   -0.0016182   0.0043142
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                 0.0018280   -0.0014165   0.0050725
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                 0.0239796    0.0035364   0.0444227
0-6 months (no birth wast)    PROVIDE     BANGLADESH   1                    NA                 0.0246033   -0.0011861   0.0503927
6-24 months                   GMS-Nepal   NEPAL        1                    NA                -0.0052890   -0.0264582   0.0158803
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                 0.0010543   -0.0036983   0.0058068
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                 0.0097747    0.0016069   0.0179425
6-24 months                   Keneba      GAMBIA       1                    NA                 0.0239002   -0.0079179   0.0557184
6-24 months                   LCNI-5      MALAWI       1                    NA                -0.0142119   -0.0967920   0.0683682
6-24 months                   MAL-ED      BANGLADESH   1                    NA                -0.0208333   -0.1542272   0.1125605
6-24 months                   PROVIDE     BANGLADESH   1                    NA                 0.0233429   -0.0253333   0.0720191


### Parameter: PAF


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                -0.0081770   -0.0463207   0.0285762
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                 0.0167955   -0.0071611   0.0401823
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                 0.0365063    0.0043643   0.0676106
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                 0.1144339    0.0313865   0.1903609
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    NA                -0.1531915   -1.4265796   0.4519650
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                 0.1993620   -0.5862897   0.5958991
0-24 months (no birth wast)   MAL-ED      INDIA        1                    NA                -0.3146067   -1.4139018   0.2840674
0-24 months (no birth wast)   PROVIDE     BANGLADESH   1                    NA                 0.2160494   -0.0888643   0.4355783
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0218887   -0.0619836   0.0991370
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                 0.0187424   -0.0232221   0.0589859
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                 0.0664233   -0.0593167   0.1772380
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                 0.1934156    0.0119526   0.3415515
0-6 months (no birth wast)    PROVIDE     BANGLADESH   1                    NA                 0.4435626   -0.2356792   0.7494313
6-24 months                   GMS-Nepal   NEPAL        1                    NA                -0.0111727   -0.0569050   0.0325809
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                 0.0062913   -0.0224754   0.0342487
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                 0.0396005    0.0059132   0.0721461
6-24 months                   Keneba      GAMBIA       1                    NA                 0.0706616   -0.0283296   0.1601235
6-24 months                   LCNI-5      MALAWI       1                    NA                -0.1466667   -1.4083049   0.4540374
6-24 months                   MAL-ED      BANGLADESH   1                    NA                -0.1162791   -1.1742051   0.4268807
6-24 months                   PROVIDE     BANGLADESH   1                    NA                 0.1445375   -0.2157046   0.3980313
