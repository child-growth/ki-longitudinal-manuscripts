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

agecat        studyid          country                        predexfd6    ever_co   n_cell       n
------------  ---------------  -----------------------------  ----------  --------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          1                  0       15      19
0-24 months   CMC-V-BCS-2002   INDIA                          1                  1        4      19
0-24 months   CMC-V-BCS-2002   INDIA                          0                  0        0      19
0-24 months   CMC-V-BCS-2002   INDIA                          0                  1        0      19
0-24 months   EE               PAKISTAN                       1                  0       20      48
0-24 months   EE               PAKISTAN                       1                  1       23      48
0-24 months   EE               PAKISTAN                       0                  0        5      48
0-24 months   EE               PAKISTAN                       0                  1        0      48
0-24 months   GMS-Nepal        NEPAL                          1                  0      279     565
0-24 months   GMS-Nepal        NEPAL                          1                  1      141     565
0-24 months   GMS-Nepal        NEPAL                          0                  0       93     565
0-24 months   GMS-Nepal        NEPAL                          0                  1       52     565
0-24 months   IRC              INDIA                          1                  0        0      14
0-24 months   IRC              INDIA                          1                  1        0      14
0-24 months   IRC              INDIA                          0                  0       12      14
0-24 months   IRC              INDIA                          0                  1        2      14
0-24 months   JiVitA-3         BANGLADESH                     1                  0    11280   15902
0-24 months   JiVitA-3         BANGLADESH                     1                  1     1121   15902
0-24 months   JiVitA-3         BANGLADESH                     0                  0     3166   15902
0-24 months   JiVitA-3         BANGLADESH                     0                  1      335   15902
0-24 months   JiVitA-4         BANGLADESH                     1                  0     3154    4753
0-24 months   JiVitA-4         BANGLADESH                     1                  1      549    4753
0-24 months   JiVitA-4         BANGLADESH                     0                  0      834    4753
0-24 months   JiVitA-4         BANGLADESH                     0                  1      216    4753
0-24 months   Keneba           GAMBIA                         1                  0      719    2235
0-24 months   Keneba           GAMBIA                         1                  1      107    2235
0-24 months   Keneba           GAMBIA                         0                  0     1145    2235
0-24 months   Keneba           GAMBIA                         0                  1      264    2235
0-24 months   LCNI-5           MALAWI                         1                  0       44     272
0-24 months   LCNI-5           MALAWI                         1                  1        3     272
0-24 months   LCNI-5           MALAWI                         0                  0      212     272
0-24 months   LCNI-5           MALAWI                         0                  1       13     272
0-24 months   MAL-ED           BANGLADESH                     1                  0       69     233
0-24 months   MAL-ED           BANGLADESH                     1                  1       16     233
0-24 months   MAL-ED           BANGLADESH                     0                  0      127     233
0-24 months   MAL-ED           BANGLADESH                     0                  1       21     233
0-24 months   MAL-ED           BRAZIL                         1                  0       29     210
0-24 months   MAL-ED           BRAZIL                         1                  1        1     210
0-24 months   MAL-ED           BRAZIL                         0                  0      178     210
0-24 months   MAL-ED           BRAZIL                         0                  1        2     210
0-24 months   MAL-ED           INDIA                          1                  0       11     219
0-24 months   MAL-ED           INDIA                          1                  1        0     219
0-24 months   MAL-ED           INDIA                          0                  0      161     219
0-24 months   MAL-ED           INDIA                          0                  1       47     219
0-24 months   MAL-ED           NEPAL                          1                  0       10     225
0-24 months   MAL-ED           NEPAL                          1                  1        2     225
0-24 months   MAL-ED           NEPAL                          0                  0      195     225
0-24 months   MAL-ED           NEPAL                          0                  1       18     225
0-24 months   MAL-ED           PERU                           1                  0       90     271
0-24 months   MAL-ED           PERU                           1                  1        2     271
0-24 months   MAL-ED           PERU                           0                  0      170     271
0-24 months   MAL-ED           PERU                           0                  1        9     271
0-24 months   MAL-ED           SOUTH AFRICA                   1                  0        3     237
0-24 months   MAL-ED           SOUTH AFRICA                   1                  1        0     237
0-24 months   MAL-ED           SOUTH AFRICA                   0                  0      214     237
0-24 months   MAL-ED           SOUTH AFRICA                   0                  1       20     237
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        1     235
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     235
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      211     235
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       23     235
0-24 months   PROVIDE          BANGLADESH                     1                  0      192     700
0-24 months   PROVIDE          BANGLADESH                     1                  1       18     700
0-24 months   PROVIDE          BANGLADESH                     0                  0      418     700
0-24 months   PROVIDE          BANGLADESH                     0                  1       72     700
0-24 months   SAS-CompFeed     INDIA                          1                  0      318     444
0-24 months   SAS-CompFeed     INDIA                          1                  1      104     444
0-24 months   SAS-CompFeed     INDIA                          0                  0       15     444
0-24 months   SAS-CompFeed     INDIA                          0                  1        7     444
0-24 months   SAS-FoodSuppl    INDIA                          1                  0        0     184
0-24 months   SAS-FoodSuppl    INDIA                          1                  1        0     184
0-24 months   SAS-FoodSuppl    INDIA                          0                  0      111     184
0-24 months   SAS-FoodSuppl    INDIA                          0                  1       73     184
0-6 months    CMC-V-BCS-2002   INDIA                          1                  0       17      19
0-6 months    CMC-V-BCS-2002   INDIA                          1                  1        2      19
0-6 months    CMC-V-BCS-2002   INDIA                          0                  0        0      19
0-6 months    CMC-V-BCS-2002   INDIA                          0                  1        0      19
0-6 months    EE               PAKISTAN                       1                  0       35      48
0-6 months    EE               PAKISTAN                       1                  1        8      48
0-6 months    EE               PAKISTAN                       0                  0        5      48
0-6 months    EE               PAKISTAN                       0                  1        0      48
0-6 months    GMS-Nepal        NEPAL                          1                  0      399     565
0-6 months    GMS-Nepal        NEPAL                          1                  1       21     565
0-6 months    GMS-Nepal        NEPAL                          0                  0      133     565
0-6 months    GMS-Nepal        NEPAL                          0                  1       12     565
0-6 months    IRC              INDIA                          1                  0        0      14
0-6 months    IRC              INDIA                          1                  1        0      14
0-6 months    IRC              INDIA                          0                  0       12      14
0-6 months    IRC              INDIA                          0                  1        2      14
0-6 months    JiVitA-3         BANGLADESH                     1                  0    11859   15873
0-6 months    JiVitA-3         BANGLADESH                     1                  1      519   15873
0-6 months    JiVitA-3         BANGLADESH                     0                  0     3351   15873
0-6 months    JiVitA-3         BANGLADESH                     0                  1      144   15873
0-6 months    JiVitA-4         BANGLADESH                     1                  0     3607    4703
0-6 months    JiVitA-4         BANGLADESH                     1                  1       78    4703
0-6 months    JiVitA-4         BANGLADESH                     0                  0      973    4703
0-6 months    JiVitA-4         BANGLADESH                     0                  1       45    4703
0-6 months    Keneba           GAMBIA                         1                  0      808    2235
0-6 months    Keneba           GAMBIA                         1                  1       18    2235
0-6 months    Keneba           GAMBIA                         0                  0     1358    2235
0-6 months    Keneba           GAMBIA                         0                  1       51    2235
0-6 months    LCNI-5           MALAWI                         1                  0       47     272
0-6 months    LCNI-5           MALAWI                         1                  1        0     272
0-6 months    LCNI-5           MALAWI                         0                  0      225     272
0-6 months    LCNI-5           MALAWI                         0                  1        0     272
0-6 months    MAL-ED           BANGLADESH                     1                  0       83     233
0-6 months    MAL-ED           BANGLADESH                     1                  1        2     233
0-6 months    MAL-ED           BANGLADESH                     0                  0      141     233
0-6 months    MAL-ED           BANGLADESH                     0                  1        7     233
0-6 months    MAL-ED           BRAZIL                         1                  0       29     210
0-6 months    MAL-ED           BRAZIL                         1                  1        1     210
0-6 months    MAL-ED           BRAZIL                         0                  0      180     210
0-6 months    MAL-ED           BRAZIL                         0                  1        0     210
0-6 months    MAL-ED           INDIA                          1                  0       11     219
0-6 months    MAL-ED           INDIA                          1                  1        0     219
0-6 months    MAL-ED           INDIA                          0                  0      192     219
0-6 months    MAL-ED           INDIA                          0                  1       16     219
0-6 months    MAL-ED           NEPAL                          1                  0       12     225
0-6 months    MAL-ED           NEPAL                          1                  1        0     225
0-6 months    MAL-ED           NEPAL                          0                  0      207     225
0-6 months    MAL-ED           NEPAL                          0                  1        6     225
0-6 months    MAL-ED           PERU                           1                  0       92     271
0-6 months    MAL-ED           PERU                           1                  1        0     271
0-6 months    MAL-ED           PERU                           0                  0      178     271
0-6 months    MAL-ED           PERU                           0                  1        1     271
0-6 months    MAL-ED           SOUTH AFRICA                   1                  0        3     237
0-6 months    MAL-ED           SOUTH AFRICA                   1                  1        0     237
0-6 months    MAL-ED           SOUTH AFRICA                   0                  0      231     237
0-6 months    MAL-ED           SOUTH AFRICA                   0                  1        3     237
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        1     235
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     235
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      230     235
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        4     235
0-6 months    PROVIDE          BANGLADESH                     1                  0      208     700
0-6 months    PROVIDE          BANGLADESH                     1                  1        2     700
0-6 months    PROVIDE          BANGLADESH                     0                  0      462     700
0-6 months    PROVIDE          BANGLADESH                     0                  1       28     700
0-6 months    SAS-CompFeed     INDIA                          1                  0      394     444
0-6 months    SAS-CompFeed     INDIA                          1                  1       28     444
0-6 months    SAS-CompFeed     INDIA                          0                  0       20     444
0-6 months    SAS-CompFeed     INDIA                          0                  1        2     444
0-6 months    SAS-FoodSuppl    INDIA                          1                  0        0     183
0-6 months    SAS-FoodSuppl    INDIA                          1                  1        0     183
0-6 months    SAS-FoodSuppl    INDIA                          0                  0      157     183
0-6 months    SAS-FoodSuppl    INDIA                          0                  1       26     183
6-24 months   CMC-V-BCS-2002   INDIA                          1                  0       16      19
6-24 months   CMC-V-BCS-2002   INDIA                          1                  1        3      19
6-24 months   CMC-V-BCS-2002   INDIA                          0                  0        0      19
6-24 months   CMC-V-BCS-2002   INDIA                          0                  1        0      19
6-24 months   EE               PAKISTAN                       1                  0       23      47
6-24 months   EE               PAKISTAN                       1                  1       19      47
6-24 months   EE               PAKISTAN                       0                  0        5      47
6-24 months   EE               PAKISTAN                       0                  1        0      47
6-24 months   GMS-Nepal        NEPAL                          1                  0      278     557
6-24 months   GMS-Nepal        NEPAL                          1                  1      137     557
6-24 months   GMS-Nepal        NEPAL                          0                  0       94     557
6-24 months   GMS-Nepal        NEPAL                          0                  1       48     557
6-24 months   IRC              INDIA                          1                  0        0      14
6-24 months   IRC              INDIA                          1                  1        0      14
6-24 months   IRC              INDIA                          0                  0       13      14
6-24 months   IRC              INDIA                          0                  1        1      14
6-24 months   JiVitA-3         BANGLADESH                     1                  0     7189   10192
6-24 months   JiVitA-3         BANGLADESH                     1                  1      689   10192
6-24 months   JiVitA-3         BANGLADESH                     0                  0     2104   10192
6-24 months   JiVitA-3         BANGLADESH                     0                  1      210   10192
6-24 months   JiVitA-4         BANGLADESH                     1                  0     3195    4741
6-24 months   JiVitA-4         BANGLADESH                     1                  1      500    4741
6-24 months   JiVitA-4         BANGLADESH                     0                  0      850    4741
6-24 months   JiVitA-4         BANGLADESH                     0                  1      196    4741
6-24 months   Keneba           GAMBIA                         1                  0      624    2090
6-24 months   Keneba           GAMBIA                         1                  1       97    2090
6-24 months   Keneba           GAMBIA                         0                  0     1124    2090
6-24 months   Keneba           GAMBIA                         0                  1      245    2090
6-24 months   LCNI-5           MALAWI                         1                  0       42     258
6-24 months   LCNI-5           MALAWI                         1                  1        3     258
6-24 months   LCNI-5           MALAWI                         0                  0      200     258
6-24 months   LCNI-5           MALAWI                         0                  1       13     258
6-24 months   MAL-ED           BANGLADESH                     1                  0       68     229
6-24 months   MAL-ED           BANGLADESH                     1                  1       16     229
6-24 months   MAL-ED           BANGLADESH                     0                  0      128     229
6-24 months   MAL-ED           BANGLADESH                     0                  1       17     229
6-24 months   MAL-ED           BRAZIL                         1                  0       30     207
6-24 months   MAL-ED           BRAZIL                         1                  1        0     207
6-24 months   MAL-ED           BRAZIL                         0                  0      175     207
6-24 months   MAL-ED           BRAZIL                         0                  1        2     207
6-24 months   MAL-ED           INDIA                          1                  0       11     217
6-24 months   MAL-ED           INDIA                          1                  1        0     217
6-24 months   MAL-ED           INDIA                          0                  0      164     217
6-24 months   MAL-ED           INDIA                          0                  1       42     217
6-24 months   MAL-ED           NEPAL                          1                  0       10     224
6-24 months   MAL-ED           NEPAL                          1                  1        2     224
6-24 months   MAL-ED           NEPAL                          0                  0      198     224
6-24 months   MAL-ED           NEPAL                          0                  1       14     224
6-24 months   MAL-ED           PERU                           1                  0       89     269
6-24 months   MAL-ED           PERU                           1                  1        2     269
6-24 months   MAL-ED           PERU                           0                  0      169     269
6-24 months   MAL-ED           PERU                           0                  1        9     269
6-24 months   MAL-ED           SOUTH AFRICA                   1                  0        3     235
6-24 months   MAL-ED           SOUTH AFRICA                   1                  1        0     235
6-24 months   MAL-ED           SOUTH AFRICA                   0                  0      214     235
6-24 months   MAL-ED           SOUTH AFRICA                   0                  1       18     235
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        1     231
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     231
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      209     231
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1       21     231
6-24 months   PROVIDE          BANGLADESH                     1                  0      131     614
6-24 months   PROVIDE          BANGLADESH                     1                  1       17     614
6-24 months   PROVIDE          BANGLADESH                     0                  0      408     614
6-24 months   PROVIDE          BANGLADESH                     0                  1       58     614
6-24 months   SAS-CompFeed     INDIA                          1                  0      298     417
6-24 months   SAS-CompFeed     INDIA                          1                  1      100     417
6-24 months   SAS-CompFeed     INDIA                          0                  0       12     417
6-24 months   SAS-CompFeed     INDIA                          0                  1        7     417
6-24 months   SAS-FoodSuppl    INDIA                          1                  0        0     176
6-24 months   SAS-FoodSuppl    INDIA                          1                  1        0     176
6-24 months   SAS-FoodSuppl    INDIA                          0                  0      111     176
6-24 months   SAS-FoodSuppl    INDIA                          0                  1       65     176


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
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
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
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/8cb4ffc9-0a68-4291-8749-02937f020e44/c08e278b-7f0f-4755-b9b1-fb4b28d3f522/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8cb4ffc9-0a68-4291-8749-02937f020e44/c08e278b-7f0f-4755-b9b1-fb4b28d3f522/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8cb4ffc9-0a68-4291-8749-02937f020e44/c08e278b-7f0f-4755-b9b1-fb4b28d3f522/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8cb4ffc9-0a68-4291-8749-02937f020e44/c08e278b-7f0f-4755-b9b1-fb4b28d3f522/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                0.3362601   0.2913307   0.3811895
0-24 months   GMS-Nepal      NEPAL        0                    NA                0.3452166   0.2663980   0.4240351
0-24 months   JiVitA-3       BANGLADESH   1                    NA                0.0906852   0.0852773   0.0960931
0-24 months   JiVitA-3       BANGLADESH   0                    NA                0.0946353   0.0849036   0.1043669
0-24 months   JiVitA-4       BANGLADESH   1                    NA                0.1533592   0.1402088   0.1665096
0-24 months   JiVitA-4       BANGLADESH   0                    NA                0.1845721   0.1592238   0.2099205
0-24 months   Keneba         GAMBIA       1                    NA                0.1304089   0.1080339   0.1527838
0-24 months   Keneba         GAMBIA       0                    NA                0.1842677   0.1643095   0.2042258
0-24 months   MAL-ED         BANGLADESH   1                    NA                0.1883991   0.1049426   0.2718556
0-24 months   MAL-ED         BANGLADESH   0                    NA                0.1420594   0.0854066   0.1987122
0-24 months   PROVIDE        BANGLADESH   1                    NA                0.0861202   0.0481611   0.1240793
0-24 months   PROVIDE        BANGLADESH   0                    NA                0.1484541   0.1170595   0.1798486
0-24 months   SAS-CompFeed   INDIA        1                    NA                0.2464455   0.2022875   0.2906035
0-24 months   SAS-CompFeed   INDIA        0                    NA                0.3181818   0.1124254   0.5239382
0-6 months    GMS-Nepal      NEPAL        1                    NA                0.0499723   0.0290806   0.0708640
0-6 months    GMS-Nepal      NEPAL        0                    NA                0.0840523   0.0388359   0.1292687
0-6 months    JiVitA-3       BANGLADESH   1                    NA                0.0417874   0.0378969   0.0456780
0-6 months    JiVitA-3       BANGLADESH   0                    NA                0.0416389   0.0350183   0.0482596
0-6 months    JiVitA-4       BANGLADESH   1                    NA                0.0207712   0.0149807   0.0265617
0-6 months    JiVitA-4       BANGLADESH   0                    NA                0.0440318   0.0310524   0.0570112
0-6 months    Keneba         GAMBIA       1                    NA                0.0215749   0.0116996   0.0314501
0-6 months    Keneba         GAMBIA       0                    NA                0.0360055   0.0262922   0.0457189
6-24 months   GMS-Nepal      NEPAL        1                    NA                0.3319429   0.2866883   0.3771974
6-24 months   GMS-Nepal      NEPAL        0                    NA                0.3507929   0.2731151   0.4284707
6-24 months   JiVitA-3       BANGLADESH   1                    NA                0.0874739   0.0808473   0.0941006
6-24 months   JiVitA-3       BANGLADESH   0                    NA                0.0902732   0.0778875   0.1026588
6-24 months   JiVitA-4       BANGLADESH   1                    NA                0.1394900   0.1270736   0.1519065
6-24 months   JiVitA-4       BANGLADESH   0                    NA                0.1694917   0.1453414   0.1936420
6-24 months   Keneba         GAMBIA       1                    NA                0.1342131   0.1098599   0.1585663
6-24 months   Keneba         GAMBIA       0                    NA                0.1765917   0.1566114   0.1965721
6-24 months   MAL-ED         BANGLADESH   1                    NA                0.1867255   0.1028171   0.2706338
6-24 months   MAL-ED         BANGLADESH   0                    NA                0.1183549   0.0651359   0.1715739
6-24 months   PROVIDE        BANGLADESH   1                    NA                0.1280777   0.0771899   0.1789656
6-24 months   PROVIDE        BANGLADESH   0                    NA                0.1252588   0.0953446   0.1551731
6-24 months   SAS-CompFeed   INDIA        1                    NA                0.2512563   0.2120897   0.2904228
6-24 months   SAS-CompFeed   INDIA        0                    NA                0.3684211   0.0727072   0.6641349


### Parameter: E(Y)


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal      NEPAL        NA                   NA                0.3415929   0.3024539   0.3807320
0-24 months   JiVitA-3       BANGLADESH   NA                   NA                0.0915608   0.0867079   0.0964137
0-24 months   JiVitA-4       BANGLADESH   NA                   NA                0.1609510   0.1491579   0.1727440
0-24 months   Keneba         GAMBIA       NA                   NA                0.1659955   0.1505665   0.1814246
0-24 months   MAL-ED         BANGLADESH   NA                   NA                0.1587983   0.1117681   0.2058285
0-24 months   PROVIDE        BANGLADESH   NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   SAS-CompFeed   INDIA        NA                   NA                0.2500000   0.2118239   0.2881761
0-6 months    GMS-Nepal      NEPAL        NA                   NA                0.0584071   0.0390530   0.0777612
0-6 months    JiVitA-3       BANGLADESH   NA                   NA                0.0417690   0.0384207   0.0451174
0-6 months    JiVitA-4       BANGLADESH   NA                   NA                0.0261535   0.0207066   0.0316005
0-6 months    Keneba         GAMBIA       NA                   NA                0.0308725   0.0236998   0.0380452
6-24 months   GMS-Nepal      NEPAL        NA                   NA                0.3321364   0.2929882   0.3712847
6-24 months   JiVitA-3       BANGLADESH   NA                   NA                0.0882064   0.0821266   0.0942862
6-24 months   JiVitA-4       BANGLADESH   NA                   NA                0.1468045   0.1358635   0.1577455
6-24 months   Keneba         GAMBIA       NA                   NA                0.1636364   0.1477722   0.1795005
6-24 months   MAL-ED         BANGLADESH   NA                   NA                0.1441048   0.0985189   0.1896907
6-24 months   PROVIDE        BANGLADESH   NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   SAS-CompFeed   INDIA        NA                   NA                0.2565947   0.2209578   0.2922316


### Parameter: RR


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal      NEPAL        0                    1                 1.0266355   0.7886457   1.336444
0-24 months   JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3       BANGLADESH   0                    1                 1.0435582   0.9298270   1.171200
0-24 months   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4       BANGLADESH   0                    1                 1.2035280   1.0257870   1.412067
0-24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   Keneba         GAMBIA       0                    1                 1.4129999   1.1573923   1.725058
0-24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         BANGLADESH   0                    1                 0.7540343   0.4149160   1.370320
0-24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE        BANGLADESH   0                    1                 1.7238004   1.0574846   2.809958
0-24 months   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed   INDIA        0                    1                 1.2910839   0.6050646   2.754908
0-6 months    GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal      NEPAL        0                    1                 1.6819778   0.8501053   3.327881
0-6 months    JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3       BANGLADESH   0                    1                 0.9964466   0.8278604   1.199364
0-6 months    JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4       BANGLADESH   0                    1                 2.1198477   1.4275147   3.147957
0-6 months    Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    Keneba         GAMBIA       0                    1                 1.6688656   0.9809899   2.839084
6-24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal      NEPAL        0                    1                 1.0567871   0.8141770   1.371691
6-24 months   JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3       BANGLADESH   0                    1                 1.0320006   0.8882092   1.199070
6-24 months   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4       BANGLADESH   0                    1                 1.2150811   1.0257110   1.439413
6-24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   Keneba         GAMBIA       0                    1                 1.3157566   1.0655500   1.624715
6-24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED         BANGLADESH   0                    1                 0.6338443   0.3355852   1.197188
6-24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE        BANGLADESH   0                    1                 0.9779908   0.6148062   1.555719
6-24 months   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed   INDIA        0                    1                 1.4663158   0.6118309   3.514177


### Parameter: PAR


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0053328   -0.0178138   0.0284794
0-24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0008756   -0.0015058   0.0032571
0-24 months   JiVitA-4       BANGLADESH   1                    NA                 0.0075918    0.0011664   0.0140171
0-24 months   Keneba         GAMBIA       1                    NA                 0.0355867    0.0168802   0.0542931
0-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0296008   -0.0939505   0.0347489
0-24 months   PROVIDE        BANGLADESH   1                    NA                 0.0424512    0.0079148   0.0769876
0-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0035545   -0.0086130   0.0157220
0-6 months    GMS-Nepal      NEPAL        1                    NA                 0.0084348   -0.0043844   0.0212540
0-6 months    JiVitA-3       BANGLADESH   1                    NA                -0.0000184   -0.0017186   0.0016818
0-6 months    JiVitA-4       BANGLADESH   1                    NA                 0.0053823    0.0024267   0.0083379
0-6 months    Keneba         GAMBIA       1                    NA                 0.0092976    0.0005487   0.0180465
6-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0001936   -0.0230118   0.0233990
6-24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0007325   -0.0023198   0.0037849
6-24 months   JiVitA-4       BANGLADESH   1                    NA                 0.0073144    0.0010651   0.0135638
6-24 months   Keneba         GAMBIA       1                    NA                 0.0294233    0.0089652   0.0498814
6-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0426207   -0.1055392   0.0202978
6-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0059279   -0.0510254   0.0391696
6-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0053384   -0.0095993   0.0202761


### Parameter: PAF


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0156116   -0.0545092   0.0810697
0-24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0095634   -0.0167960   0.0352395
0-24 months   JiVitA-4       BANGLADESH   1                    NA                 0.0471681    0.0064195   0.0862455
0-24 months   Keneba         GAMBIA       1                    NA                 0.2143833    0.0946614   0.3182733
0-24 months   MAL-ED         BANGLADESH   1                    NA                -0.1864052   -0.6668701   0.1555686
0-24 months   PROVIDE        BANGLADESH   1                    NA                 0.3301761    0.0089011   0.5473065
0-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0142180   -0.0365627   0.0625110
0-6 months    GMS-Nepal      NEPAL        1                    NA                 0.1444139   -0.0997126   0.3343464
0-6 months    JiVitA-3       BANGLADESH   1                    NA                -0.0004400   -0.0419809   0.0394448
0-6 months    JiVitA-4       BANGLADESH   1                    NA                 0.2057968    0.0824751   0.3125433
0-6 months    Keneba         GAMBIA       1                    NA                 0.3011624   -0.0356684   0.5284456
6-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0005829   -0.0717832   0.0680629
6-24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0083044   -0.0268780   0.0422815
6-24 months   JiVitA-4       BANGLADESH   1                    NA                 0.0498244    0.0062480   0.0914900
6-24 months   Keneba         GAMBIA       1                    NA                 0.1798090    0.0457553   0.2950306
6-24 months   MAL-ED         BANGLADESH   1                    NA                -0.2957617   -0.8060115   0.0703279
6-24 months   PROVIDE        BANGLADESH   1                    NA                -0.0485298   -0.4920092   0.2631314
6-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0208050   -0.0393691   0.0774953
