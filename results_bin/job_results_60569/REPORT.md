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

**Intervention Variable:** exclfeed6

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

agecat        studyid          country                        exclfeed6    ever_co   n_cell       n
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
0-24 months   JiVitA-3         BANGLADESH                     1                  0    11264   15902
0-24 months   JiVitA-3         BANGLADESH                     1                  1     1116   15902
0-24 months   JiVitA-3         BANGLADESH                     0                  0     3182   15902
0-24 months   JiVitA-3         BANGLADESH                     0                  1      340   15902
0-24 months   JiVitA-4         BANGLADESH                     1                  0     3141    4753
0-24 months   JiVitA-4         BANGLADESH                     1                  1      548    4753
0-24 months   JiVitA-4         BANGLADESH                     0                  0      847    4753
0-24 months   JiVitA-4         BANGLADESH                     0                  1      217    4753
0-24 months   Keneba           GAMBIA                         1                  0      719    2235
0-24 months   Keneba           GAMBIA                         1                  1      107    2235
0-24 months   Keneba           GAMBIA                         0                  0     1145    2235
0-24 months   Keneba           GAMBIA                         0                  1      264    2235
0-24 months   LCNI-5           MALAWI                         1                  0       44     272
0-24 months   LCNI-5           MALAWI                         1                  1        3     272
0-24 months   LCNI-5           MALAWI                         0                  0      212     272
0-24 months   LCNI-5           MALAWI                         0                  1       13     272
0-24 months   MAL-ED           BANGLADESH                     1                  0       26     233
0-24 months   MAL-ED           BANGLADESH                     1                  1        7     233
0-24 months   MAL-ED           BANGLADESH                     0                  0      170     233
0-24 months   MAL-ED           BANGLADESH                     0                  1       30     233
0-24 months   MAL-ED           BRAZIL                         1                  0       11     210
0-24 months   MAL-ED           BRAZIL                         1                  1        1     210
0-24 months   MAL-ED           BRAZIL                         0                  0      196     210
0-24 months   MAL-ED           BRAZIL                         0                  1        2     210
0-24 months   MAL-ED           INDIA                          1                  0        2     219
0-24 months   MAL-ED           INDIA                          1                  1        0     219
0-24 months   MAL-ED           INDIA                          0                  0      170     219
0-24 months   MAL-ED           INDIA                          0                  1       47     219
0-24 months   MAL-ED           NEPAL                          1                  0        4     225
0-24 months   MAL-ED           NEPAL                          1                  1        1     225
0-24 months   MAL-ED           NEPAL                          0                  0      201     225
0-24 months   MAL-ED           NEPAL                          0                  1       19     225
0-24 months   MAL-ED           PERU                           1                  0        5     271
0-24 months   MAL-ED           PERU                           1                  1        0     271
0-24 months   MAL-ED           PERU                           0                  0      255     271
0-24 months   MAL-ED           PERU                           0                  1       11     271
0-24 months   MAL-ED           SOUTH AFRICA                   1                  0        0     237
0-24 months   MAL-ED           SOUTH AFRICA                   1                  1        0     237
0-24 months   MAL-ED           SOUTH AFRICA                   0                  0      217     237
0-24 months   MAL-ED           SOUTH AFRICA                   0                  1       20     237
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        0     235
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     235
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      212     235
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
0-6 months    JiVitA-3         BANGLADESH                     1                  0    11839   15873
0-6 months    JiVitA-3         BANGLADESH                     1                  1      518   15873
0-6 months    JiVitA-3         BANGLADESH                     0                  0     3371   15873
0-6 months    JiVitA-3         BANGLADESH                     0                  1      145   15873
0-6 months    JiVitA-4         BANGLADESH                     1                  0     3594    4703
0-6 months    JiVitA-4         BANGLADESH                     1                  1       78    4703
0-6 months    JiVitA-4         BANGLADESH                     0                  0      986    4703
0-6 months    JiVitA-4         BANGLADESH                     0                  1       45    4703
0-6 months    Keneba           GAMBIA                         1                  0      808    2235
0-6 months    Keneba           GAMBIA                         1                  1       18    2235
0-6 months    Keneba           GAMBIA                         0                  0     1358    2235
0-6 months    Keneba           GAMBIA                         0                  1       51    2235
0-6 months    LCNI-5           MALAWI                         1                  0       47     272
0-6 months    LCNI-5           MALAWI                         1                  1        0     272
0-6 months    LCNI-5           MALAWI                         0                  0      225     272
0-6 months    LCNI-5           MALAWI                         0                  1        0     272
0-6 months    MAL-ED           BANGLADESH                     1                  0       32     233
0-6 months    MAL-ED           BANGLADESH                     1                  1        1     233
0-6 months    MAL-ED           BANGLADESH                     0                  0      192     233
0-6 months    MAL-ED           BANGLADESH                     0                  1        8     233
0-6 months    MAL-ED           BRAZIL                         1                  0       11     210
0-6 months    MAL-ED           BRAZIL                         1                  1        1     210
0-6 months    MAL-ED           BRAZIL                         0                  0      198     210
0-6 months    MAL-ED           BRAZIL                         0                  1        0     210
0-6 months    MAL-ED           INDIA                          1                  0        2     219
0-6 months    MAL-ED           INDIA                          1                  1        0     219
0-6 months    MAL-ED           INDIA                          0                  0      201     219
0-6 months    MAL-ED           INDIA                          0                  1       16     219
0-6 months    MAL-ED           NEPAL                          1                  0        5     225
0-6 months    MAL-ED           NEPAL                          1                  1        0     225
0-6 months    MAL-ED           NEPAL                          0                  0      214     225
0-6 months    MAL-ED           NEPAL                          0                  1        6     225
0-6 months    MAL-ED           PERU                           1                  0        5     271
0-6 months    MAL-ED           PERU                           1                  1        0     271
0-6 months    MAL-ED           PERU                           0                  0      265     271
0-6 months    MAL-ED           PERU                           0                  1        1     271
0-6 months    MAL-ED           SOUTH AFRICA                   1                  0        0     237
0-6 months    MAL-ED           SOUTH AFRICA                   1                  1        0     237
0-6 months    MAL-ED           SOUTH AFRICA                   0                  0      234     237
0-6 months    MAL-ED           SOUTH AFRICA                   0                  1        3     237
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        0     235
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     235
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      231     235
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
6-24 months   JiVitA-3         BANGLADESH                     1                  0     7177   10192
6-24 months   JiVitA-3         BANGLADESH                     1                  1      685   10192
6-24 months   JiVitA-3         BANGLADESH                     0                  0     2116   10192
6-24 months   JiVitA-3         BANGLADESH                     0                  1      214   10192
6-24 months   JiVitA-4         BANGLADESH                     1                  0     3183    4741
6-24 months   JiVitA-4         BANGLADESH                     1                  1      499    4741
6-24 months   JiVitA-4         BANGLADESH                     0                  0      862    4741
6-24 months   JiVitA-4         BANGLADESH                     0                  1      197    4741
6-24 months   Keneba           GAMBIA                         1                  0      624    2090
6-24 months   Keneba           GAMBIA                         1                  1       97    2090
6-24 months   Keneba           GAMBIA                         0                  0     1124    2090
6-24 months   Keneba           GAMBIA                         0                  1      245    2090
6-24 months   LCNI-5           MALAWI                         1                  0       42     258
6-24 months   LCNI-5           MALAWI                         1                  1        3     258
6-24 months   LCNI-5           MALAWI                         0                  0      200     258
6-24 months   LCNI-5           MALAWI                         0                  1       13     258
6-24 months   MAL-ED           BANGLADESH                     1                  0       26     229
6-24 months   MAL-ED           BANGLADESH                     1                  1        7     229
6-24 months   MAL-ED           BANGLADESH                     0                  0      170     229
6-24 months   MAL-ED           BANGLADESH                     0                  1       26     229
6-24 months   MAL-ED           BRAZIL                         1                  0       12     207
6-24 months   MAL-ED           BRAZIL                         1                  1        0     207
6-24 months   MAL-ED           BRAZIL                         0                  0      193     207
6-24 months   MAL-ED           BRAZIL                         0                  1        2     207
6-24 months   MAL-ED           INDIA                          1                  0        2     217
6-24 months   MAL-ED           INDIA                          1                  1        0     217
6-24 months   MAL-ED           INDIA                          0                  0      173     217
6-24 months   MAL-ED           INDIA                          0                  1       42     217
6-24 months   MAL-ED           NEPAL                          1                  0        4     224
6-24 months   MAL-ED           NEPAL                          1                  1        1     224
6-24 months   MAL-ED           NEPAL                          0                  0      204     224
6-24 months   MAL-ED           NEPAL                          0                  1       15     224
6-24 months   MAL-ED           PERU                           1                  0        5     269
6-24 months   MAL-ED           PERU                           1                  1        0     269
6-24 months   MAL-ED           PERU                           0                  0      253     269
6-24 months   MAL-ED           PERU                           0                  1       11     269
6-24 months   MAL-ED           SOUTH AFRICA                   1                  0        0     235
6-24 months   MAL-ED           SOUTH AFRICA                   1                  1        0     235
6-24 months   MAL-ED           SOUTH AFRICA                   0                  0      217     235
6-24 months   MAL-ED           SOUTH AFRICA                   0                  1       18     235
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0        0     231
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     231
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      210     231
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
![](/tmp/317f57e8-55e9-49fc-9fc1-562a092b21e6/aef0f3a9-7804-49b2-9fc9-3e42dcfca869/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/317f57e8-55e9-49fc-9fc1-562a092b21e6/aef0f3a9-7804-49b2-9fc9-3e42dcfca869/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/317f57e8-55e9-49fc-9fc1-562a092b21e6/aef0f3a9-7804-49b2-9fc9-3e42dcfca869/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/317f57e8-55e9-49fc-9fc1-562a092b21e6/aef0f3a9-7804-49b2-9fc9-3e42dcfca869/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                0.3368749   0.2919252   0.3818245
0-24 months   GMS-Nepal      NEPAL        0                    NA                0.3586829   0.2795716   0.4377941
0-24 months   JiVitA-3       BANGLADESH   1                    NA                0.0907293   0.0853090   0.0961497
0-24 months   JiVitA-3       BANGLADESH   0                    NA                0.0941075   0.0844322   0.1037828
0-24 months   JiVitA-4       BANGLADESH   1                    NA                0.1536885   0.1405375   0.1668394
0-24 months   JiVitA-4       BANGLADESH   0                    NA                0.1828622   0.1585091   0.2072153
0-24 months   Keneba         GAMBIA       1                    NA                0.1304379   0.1081329   0.1527429
0-24 months   Keneba         GAMBIA       0                    NA                0.1841127   0.1641071   0.2041183
0-24 months   MAL-ED         BANGLADESH   1                    NA                0.2121212   0.0723406   0.3519018
0-24 months   MAL-ED         BANGLADESH   0                    NA                0.1500000   0.1004068   0.1995932
0-24 months   PROVIDE        BANGLADESH   1                    NA                0.0847175   0.0463616   0.1230735
0-24 months   PROVIDE        BANGLADESH   0                    NA                0.1477147   0.1162424   0.1791870
0-24 months   SAS-CompFeed   INDIA        1                    NA                0.2464455   0.2022875   0.2906035
0-24 months   SAS-CompFeed   INDIA        0                    NA                0.3181818   0.1124254   0.5239382
0-6 months    GMS-Nepal      NEPAL        1                    NA                0.0495487   0.0286843   0.0704130
0-6 months    GMS-Nepal      NEPAL        0                    NA                0.0826863   0.0372081   0.1281646
0-6 months    JiVitA-3       BANGLADESH   1                    NA                0.0417655   0.0378730   0.0456581
0-6 months    JiVitA-3       BANGLADESH   0                    NA                0.0421792   0.0356097   0.0487488
0-6 months    JiVitA-4       BANGLADESH   1                    NA                0.0208325   0.0150246   0.0266404
0-6 months    JiVitA-4       BANGLADESH   0                    NA                0.0435142   0.0305863   0.0564420
0-6 months    Keneba         GAMBIA       1                    NA                0.0217645   0.0118369   0.0316920
0-6 months    Keneba         GAMBIA       0                    NA                0.0359119   0.0262060   0.0456177
6-24 months   GMS-Nepal      NEPAL        1                    NA                0.3314787   0.2861533   0.3768041
6-24 months   GMS-Nepal      NEPAL        0                    NA                0.3385394   0.2601179   0.4169608
6-24 months   JiVitA-3       BANGLADESH   1                    NA                0.0869387   0.0803025   0.0935748
6-24 months   JiVitA-3       BANGLADESH   0                    NA                0.0922917   0.0799860   0.1045975
6-24 months   JiVitA-4       BANGLADESH   1                    NA                0.1402195   0.1277593   0.1526798
6-24 months   JiVitA-4       BANGLADESH   0                    NA                0.1646837   0.1401696   0.1891979
6-24 months   Keneba         GAMBIA       1                    NA                0.1340850   0.1096910   0.1584789
6-24 months   Keneba         GAMBIA       0                    NA                0.1773463   0.1572859   0.1974066
6-24 months   MAL-ED         BANGLADESH   1                    NA                0.2121212   0.0723354   0.3519071
6-24 months   MAL-ED         BANGLADESH   0                    NA                0.1326531   0.0850620   0.1802441
6-24 months   PROVIDE        BANGLADESH   1                    NA                0.1206198   0.0688443   0.1723953
6-24 months   PROVIDE        BANGLADESH   0                    NA                0.1243318   0.0943689   0.1542946
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
0-24 months   GMS-Nepal      NEPAL        0                    1                 1.0647361   0.8236395   1.376407
0-24 months   JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3       BANGLADESH   0                    1                 1.0372338   0.9239633   1.164390
0-24 months   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4       BANGLADESH   0                    1                 1.1898239   1.0181040   1.390507
0-24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   Keneba         GAMBIA       0                    1                 1.4114967   1.1566482   1.722497
0-24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   MAL-ED         BANGLADESH   0                    1                 0.7071429   0.3383148   1.478064
0-24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   PROVIDE        BANGLADESH   0                    1                 1.7436138   1.0574338   2.875063
0-24 months   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed   INDIA        0                    1                 1.2910839   0.6050646   2.754908
0-6 months    GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal      NEPAL        0                    1                 1.6687909   0.8330252   3.343072
0-6 months    JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3       BANGLADESH   0                    1                 1.0099055   0.8416208   1.211839
0-6 months    JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4       BANGLADESH   0                    1                 2.0887639   1.4034683   3.108680
0-6 months    Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    Keneba         GAMBIA       0                    1                 1.6500224   0.9709508   2.804029
6-24 months   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal      NEPAL        0                    1                 1.0213005   0.7803912   1.336579
6-24 months   JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3       BANGLADESH   0                    1                 1.0615727   0.9166760   1.229373
6-24 months   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4       BANGLADESH   0                    1                 1.1744705   0.9854072   1.399808
6-24 months   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   Keneba         GAMBIA       0                    1                 1.3226409   1.0702904   1.634490
6-24 months   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   MAL-ED         BANGLADESH   0                    1                 0.6253644   0.2953068   1.324320
6-24 months   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   PROVIDE        BANGLADESH   0                    1                 1.0307742   0.6302931   1.685717
6-24 months   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed   INDIA        0                    1                 1.4663158   0.6118309   3.514177


### Parameter: PAR


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0047180   -0.0183830   0.0278191
0-24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0008315   -0.0015607   0.0032237
0-24 months   JiVitA-4       BANGLADESH   1                    NA                 0.0072625    0.0008197   0.0137053
0-24 months   Keneba         GAMBIA       1                    NA                 0.0355576    0.0169077   0.0542076
0-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0533229   -0.1806646   0.0740188
0-24 months   PROVIDE        BANGLADESH   1                    NA                 0.0438539    0.0089472   0.0787605
0-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0035545   -0.0086130   0.0157220
0-6 months    GMS-Nepal      NEPAL        1                    NA                 0.0088584   -0.0039684   0.0216852
0-6 months    JiVitA-3       BANGLADESH   1                    NA                 0.0000035   -0.0016925   0.0016995
0-6 months    JiVitA-4       BANGLADESH   1                    NA                 0.0053210    0.0023441   0.0082980
0-6 months    Keneba         GAMBIA       1                    NA                 0.0091080    0.0003202   0.0178958
6-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0006577   -0.0223951   0.0237106
6-24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0012678   -0.0017875   0.0043230
6-24 months   JiVitA-4       BANGLADESH   1                    NA                 0.0065849    0.0002498   0.0129200
6-24 months   Keneba         GAMBIA       1                    NA                 0.0295514    0.0090426   0.0500602
6-24 months   MAL-ED         BANGLADESH   1                    NA                -0.0680164   -0.1944542   0.0584214
6-24 months   PROVIDE        BANGLADESH   1                    NA                 0.0015301   -0.0439913   0.0470514
6-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0053384   -0.0095993   0.0202761


### Parameter: PAF


agecat        studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0138118   -0.0561659   0.0791531
0-24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0090814   -0.0173995   0.0348732
0-24 months   JiVitA-4       BANGLADESH   1                    NA                 0.0451224    0.0042727   0.0842963
0-24 months   Keneba         GAMBIA       1                    NA                 0.2142084    0.0949266   0.3177698
0-24 months   MAL-ED         BANGLADESH   1                    NA                -0.3357903   -1.4291848   0.2654590
0-24 months   PROVIDE        BANGLADESH   1                    NA                 0.3410857    0.0139488   0.5596902
0-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0142180   -0.0365627   0.0625110
0-6 months    GMS-Nepal      NEPAL        1                    NA                 0.1516670   -0.0927786   0.3414321
0-6 months    JiVitA-3       BANGLADESH   1                    NA                 0.0000838   -0.0413563   0.0398749
0-6 months    JiVitA-4       BANGLADESH   1                    NA                 0.2034535    0.0792409   0.3109095
0-6 months    Keneba         GAMBIA       1                    NA                 0.2950202   -0.0434081   0.5236796
6-24 months   GMS-Nepal      NEPAL        1                    NA                 0.0019803   -0.0698970   0.0690288
6-24 months   JiVitA-3       BANGLADESH   1                    NA                 0.0143726   -0.0208334   0.0483643
6-24 months   JiVitA-4       BANGLADESH   1                    NA                 0.0448551    0.0006921   0.0870663
6-24 months   Keneba         GAMBIA       1                    NA                 0.1805919    0.0461665   0.2960725
6-24 months   MAL-ED         BANGLADESH   1                    NA                -0.4719927   -1.6599630   0.1854164
6-24 months   PROVIDE        BANGLADESH   1                    NA                 0.0125260   -0.4401210   0.3229007
6-24 months   SAS-CompFeed   INDIA        1                    NA                 0.0208050   -0.0393691   0.0774953
