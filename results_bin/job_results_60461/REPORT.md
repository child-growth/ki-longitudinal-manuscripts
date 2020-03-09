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




# Results Detail

## Results Plots
![](/tmp/ae926425-c976-498f-8a5d-52a1108b4af2/a8e30c9b-9947-4b97-9080-2882afb606f2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ae926425-c976-498f-8a5d-52a1108b4af2/a8e30c9b-9947-4b97-9080-2882afb606f2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ae926425-c976-498f-8a5d-52a1108b4af2/a8e30c9b-9947-4b97-9080-2882afb606f2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ae926425-c976-498f-8a5d-52a1108b4af2/a8e30c9b-9947-4b97-9080-2882afb606f2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                0.5718273   0.5244122   0.6192425
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    NA                0.5348631   0.4380945   0.6316318
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                0.1771196   0.1686922   0.1855470
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   0                    NA                0.1872137   0.1702169   0.2042105
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                0.2541352   0.2369098   0.2713605
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   0                    NA                0.2827137   0.2511992   0.3142283
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                0.3513116   0.3137319   0.3888913
0-24 months (no birth wast)   Keneba      GAMBIA       0                    NA                0.4173851   0.3912476   0.4435225
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   LCNI-5      MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                0.1818182   0.0499617   0.3136747
0-24 months (no birth wast)   MAL-ED      BANGLADESH   0                    NA                0.2339450   0.1776365   0.2902534
0-24 months (no birth wast)   MAL-ED      INDIA        1                    NA                0.5000000   0.1894382   0.8105618
0-24 months (no birth wast)   MAL-ED      INDIA        0                    NA                0.3750000   0.3114655   0.4385345
0-24 months (no birth wast)   PROVIDE     BANGLADESH   1                    NA                0.1520029   0.0969585   0.2070473
0-24 months (no birth wast)   PROVIDE     BANGLADESH   0                    NA                0.2035664   0.1672920   0.2398408
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                0.2250525   0.1844505   0.2656545
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    NA                0.2472028   0.1601192   0.3342864
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                0.0704151   0.0647096   0.0761206
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   0                    NA                0.0772776   0.0649716   0.0895837
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                0.0253110   0.0190084   0.0316135
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   0                    NA                0.0357789   0.0223595   0.0491984
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                0.0990790   0.0755064   0.1226515
0-6 months (no birth wast)    Keneba      GAMBIA       0                    NA                0.1357591   0.1174522   0.1540660
0-6 months (no birth wast)    PROVIDE     BANGLADESH   1                    NA                0.0308642   0.0042107   0.0575177
0-6 months (no birth wast)    PROVIDE     BANGLADESH   0                    NA                0.0639659   0.0418030   0.0861288
6-24 months                   GMS-Nepal   NEPAL        1                    NA                0.4810113   0.4333128   0.5287098
6-24 months                   GMS-Nepal   NEPAL        0                    NA                0.4626760   0.3662917   0.5590602
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                0.1664188   0.1567966   0.1760409
6-24 months                   JiVitA-3    BANGLADESH   0                    NA                0.1713995   0.1533603   0.1894387
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                0.2398712   0.2228058   0.2569367
6-24 months                   JiVitA-4    BANGLADESH   0                    NA                0.2687843   0.2374537   0.3001149
6-24 months                   Keneba      GAMBIA       1                    NA                0.3158303   0.2778231   0.3538375
6-24 months                   Keneba      GAMBIA       0                    NA                0.3495653   0.3239669   0.3751636
6-24 months                   LCNI-5      MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   LCNI-5      MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   MAL-ED      BANGLADESH   1                    NA                0.2000000   0.0565653   0.3434347
6-24 months                   MAL-ED      BANGLADESH   0                    NA                0.1761905   0.1245548   0.2278261
6-24 months                   PROVIDE     BANGLADESH   1                    NA                0.1311488   0.0753195   0.1869781
6-24 months                   PROVIDE     BANGLADESH   0                    NA                0.1684119   0.1340786   0.2027452


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
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    1                 0.9353578   0.7665863   1.141286
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   0                    1                 1.0569906   0.9528268   1.172542
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   0                    1                 1.1124541   0.9776873   1.265798
0-24 months (no birth wast)   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   Keneba      GAMBIA       0                    1                 1.1880766   1.0499353   1.344393
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   LCNI-5      MALAWI       0                    1                 0.8392857   0.3311837   2.126918
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      BANGLADESH   0                    1                 1.2866972   0.5992775   2.762643
0-24 months (no birth wast)   MAL-ED      INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      INDIA        0                    1                 0.7500000   0.3939629   1.427799
0-24 months (no birth wast)   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   PROVIDE     BANGLADESH   0                    1                 1.3392270   0.8942593   2.005603
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    1                 1.0984230   0.7394216   1.631726
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   0                    1                 1.0974584   0.9193620   1.310055
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   0                    1                 1.4135727   0.8902188   2.244603
0-6 months (no birth wast)    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    Keneba      GAMBIA       0                    1                 1.3702109   1.0424654   1.800998
0-6 months (no birth wast)    PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    PROVIDE     BANGLADESH   0                    1                 2.0724947   0.8173110   5.255324
6-24 months                   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal   NEPAL        0                    1                 0.9618817   0.7633537   1.212042
6-24 months                   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-3    BANGLADESH   0                    1                 1.0299288   0.9133292   1.161414
6-24 months                   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-4    BANGLADESH   0                    1                 1.1205359   0.9801515   1.281027
6-24 months                   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   Keneba      GAMBIA       0                    1                 1.1068136   0.9617300   1.273784
6-24 months                   LCNI-5      MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   LCNI-5      MALAWI       0                    1                 0.8450704   0.3342527   2.136539
6-24 months                   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED      BANGLADESH   0                    1                 0.8809524   0.4059626   1.911696
6-24 months                   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   PROVIDE     BANGLADESH   0                    1                 1.2841279   0.8007571   2.059282


### Parameter: PAR


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                -0.0050335   -0.0262470   0.0161801
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                 0.0023839   -0.0018829   0.0066508
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                 0.0071063   -0.0010949   0.0153076
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                 0.0438252    0.0124547   0.0751957
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    NA                -0.0141321   -0.0934107   0.0651466
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                 0.0452735   -0.0792718   0.1698187
0-24 months (no birth wast)   MAL-ED      INDIA        1                    NA                -0.1196581   -0.4231229   0.1838066
0-24 months (no birth wast)   PROVIDE     BANGLADESH   1                    NA                 0.0369735   -0.0122974   0.0862444
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0043593   -0.0142345   0.0229530
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                 0.0015066   -0.0014805   0.0044937
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                 0.0022099   -0.0010325   0.0054523
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                 0.0249006    0.0044945   0.0453067
0-6 months (no birth wast)    PROVIDE     BANGLADESH   1                    NA                 0.0246033   -0.0011861   0.0503927
6-24 months                   GMS-Nepal   NEPAL        1                    NA                -0.0076273   -0.0289292   0.0136747
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                 0.0011549   -0.0035464   0.0058562
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                 0.0069614   -0.0011151   0.0150380
6-24 months                   Keneba      GAMBIA       1                    NA                 0.0224050   -0.0095120   0.0543220
6-24 months                   LCNI-5      MALAWI       1                    NA                -0.0142119   -0.0967920   0.0683682
6-24 months                   MAL-ED      BANGLADESH   1                    NA                -0.0208333   -0.1542272   0.1125605
6-24 months                   PROVIDE     BANGLADESH   1                    NA                 0.0303520   -0.0191950   0.0798990


### Parameter: PAF


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                -0.0088806   -0.0470190   0.0278686
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                 0.0132807   -0.0107594   0.0367490
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                 0.0272022   -0.0047475   0.0581360
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                 0.1109115    0.0277971   0.1869203
0-24 months (no birth wast)   LCNI-5      MALAWI       1                    NA                -0.1531915   -1.4265796   0.4519650
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                 0.1993620   -0.5862897   0.5958991
0-24 months (no birth wast)   MAL-ED      INDIA        1                    NA                -0.3146067   -1.4139018   0.2840674
0-24 months (no birth wast)   PROVIDE     BANGLADESH   1                    NA                 0.1956514   -0.1101848   0.4172351
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0190020   -0.0654754   0.0967814
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                 0.0209476   -0.0212987   0.0614463
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                 0.0802985   -0.0457536   0.1911566
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                 0.2008443    0.0195895   0.3485893
0-6 months (no birth wast)    PROVIDE     BANGLADESH   1                    NA                 0.4435626   -0.2356792   0.7494313
6-24 months                   GMS-Nepal   NEPAL        1                    NA                -0.0161122   -0.0621496   0.0279297
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                 0.0068920   -0.0215590   0.0345506
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                 0.0282031   -0.0051270   0.0604279
6-24 months                   Keneba      GAMBIA       1                    NA                 0.0662409   -0.0330686   0.1560037
6-24 months                   LCNI-5      MALAWI       1                    NA                -0.1466667   -1.4083049   0.4540374
6-24 months                   MAL-ED      BANGLADESH   1                    NA                -0.1162791   -1.1742051   0.4268807
6-24 months                   PROVIDE     BANGLADESH   1                    NA                 0.1879370   -0.1843642   0.4432065
