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

agecat                        studyid          country                        exclfeed6    ever_swasted   n_cell       n
----------------------------  ---------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                       0       15      19
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                       1        4      19
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                       0        0      19
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                       1        0      19
0-24 months (no birth wast)   EE               PAKISTAN                       1                       0       38      48
0-24 months (no birth wast)   EE               PAKISTAN                       1                       1        5      48
0-24 months (no birth wast)   EE               PAKISTAN                       0                       0        4      48
0-24 months (no birth wast)   EE               PAKISTAN                       0                       1        1      48
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                       0      330     560
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                       1       87     560
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                       0      104     560
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                       1       39     560
0-24 months (no birth wast)   IRC              INDIA                          1                       0        0      14
0-24 months (no birth wast)   IRC              INDIA                          1                       1        0      14
0-24 months (no birth wast)   IRC              INDIA                          0                       0        9      14
0-24 months (no birth wast)   IRC              INDIA                          0                       1        5      14
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                       0    11752   15666
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                       1      433   15666
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                       0     3358   15666
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                       1      123   15666
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                       0     3519    4722
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                       1      147    4722
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                       0     1005    4722
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                       1       51    4722
0-24 months (no birth wast)   Keneba           GAMBIA                         1                       0      722    2226
0-24 months (no birth wast)   Keneba           GAMBIA                         1                       1      101    2226
0-24 months (no birth wast)   Keneba           GAMBIA                         0                       0     1159    2226
0-24 months (no birth wast)   Keneba           GAMBIA                         0                       1      244    2226
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                       0       47     271
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                       1        0     271
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                       0      222     271
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                       1        2     271
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                       0       31     233
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                       1        2     233
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                       0      190     233
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                       1       10     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                       0       12     210
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                       1        0     210
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                       0      194     210
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                       1        4     210
0-24 months (no birth wast)   MAL-ED           INDIA                          1                       0        2     216
0-24 months (no birth wast)   MAL-ED           INDIA                          1                       1        0     216
0-24 months (no birth wast)   MAL-ED           INDIA                          0                       0      202     216
0-24 months (no birth wast)   MAL-ED           INDIA                          0                       1       12     216
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                       0        5     225
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                       1        0     225
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                       0      217     225
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                       1        3     225
0-24 months (no birth wast)   MAL-ED           PERU                           1                       0        5     271
0-24 months (no birth wast)   MAL-ED           PERU                           1                       1        0     271
0-24 months (no birth wast)   MAL-ED           PERU                           0                       0      262     271
0-24 months (no birth wast)   MAL-ED           PERU                           0                       1        4     271
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                       0        0     237
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                       1        0     237
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                       0      226     237
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                       1       11     237
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        0     235
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     235
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      227     235
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1        8     235
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                       0      197     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                       1        4     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                       0      471     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                       1       15     687
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                       0      368     443
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                       1       53     443
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                       0       20     443
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                       1        2     443
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                       0        0     173
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                       1        0     173
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                       0      159     173
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                       1       14     173
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                       0       14      17
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                       1        3      17
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                       0        0      17
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                       1        0      17
0-6 months (no birth wast)    EE               PAKISTAN                       1                       0       42      47
0-6 months (no birth wast)    EE               PAKISTAN                       1                       1        0      47
0-6 months (no birth wast)    EE               PAKISTAN                       0                       0        4      47
0-6 months (no birth wast)    EE               PAKISTAN                       0                       1        1      47
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                       0      386     544
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                       1       20     544
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                       0      128     544
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                       1       10     544
0-6 months (no birth wast)    IRC              INDIA                          1                       0        0      13
0-6 months (no birth wast)    IRC              INDIA                          1                       1        0      13
0-6 months (no birth wast)    IRC              INDIA                          0                       0        9      13
0-6 months (no birth wast)    IRC              INDIA                          0                       1        4      13
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                       0    11883   15533
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                       1      201   15533
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                       0     3390   15533
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                       1       59   15533
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                       0     3595    4593
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                       1       14    4593
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                       0      977    4593
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                       1        7    4593
0-6 months (no birth wast)    Keneba           GAMBIA                         1                       0      793    2210
0-6 months (no birth wast)    Keneba           GAMBIA                         1                       1       25    2210
0-6 months (no birth wast)    Keneba           GAMBIA                         0                       0     1326    2210
0-6 months (no birth wast)    Keneba           GAMBIA                         0                       1       66    2210
0-6 months (no birth wast)    LCNI-5           MALAWI                         1                       0       47     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         1                       1        0     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         0                       0      221     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         0                       1        0     268
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                       0       32     232
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                       1        1     232
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                       0      193     232
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                       1        6     232
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                       0       12     210
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                       1        0     210
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                       0      195     210
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                       1        3     210
0-6 months (no birth wast)    MAL-ED           INDIA                          1                       0        2     215
0-6 months (no birth wast)    MAL-ED           INDIA                          1                       1        0     215
0-6 months (no birth wast)    MAL-ED           INDIA                          0                       0      207     215
0-6 months (no birth wast)    MAL-ED           INDIA                          0                       1        6     215
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                       0        5     223
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                       1        0     223
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                       0      217     223
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                       1        1     223
0-6 months (no birth wast)    MAL-ED           PERU                           1                       0        5     271
0-6 months (no birth wast)    MAL-ED           PERU                           1                       1        0     271
0-6 months (no birth wast)    MAL-ED           PERU                           0                       0      265     271
0-6 months (no birth wast)    MAL-ED           PERU                           0                       1        1     271
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                       0        0     236
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                       1        0     236
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                       0      233     236
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                       1        3     236
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        0     235
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     235
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      232     235
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1        3     235
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                       0      200     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                       1        1     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                       0      477     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                       1        5     683
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                       0      400     437
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                       1       15     437
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                       0       21     437
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                       1        1     437
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          1                       0        0     137
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          1                       1        0     137
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          0                       0      137     137
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          0                       1        0     137
6-24 months                   CMC-V-BCS-2002   INDIA                          1                       0       17      19
6-24 months                   CMC-V-BCS-2002   INDIA                          1                       1        2      19
6-24 months                   CMC-V-BCS-2002   INDIA                          0                       0        0      19
6-24 months                   CMC-V-BCS-2002   INDIA                          0                       1        0      19
6-24 months                   EE               PAKISTAN                       1                       0       37      47
6-24 months                   EE               PAKISTAN                       1                       1        5      47
6-24 months                   EE               PAKISTAN                       0                       0        5      47
6-24 months                   EE               PAKISTAN                       0                       1        0      47
6-24 months                   GMS-Nepal        NEPAL                          1                       0      341     557
6-24 months                   GMS-Nepal        NEPAL                          1                       1       74     557
6-24 months                   GMS-Nepal        NEPAL                          0                       0      108     557
6-24 months                   GMS-Nepal        NEPAL                          0                       1       34     557
6-24 months                   IRC              INDIA                          1                       0        0      14
6-24 months                   IRC              INDIA                          1                       1        0      14
6-24 months                   IRC              INDIA                          0                       0       13      14
6-24 months                   IRC              INDIA                          0                       1        1      14
6-24 months                   JiVitA-3         BANGLADESH                     1                       0     7616   10202
6-24 months                   JiVitA-3         BANGLADESH                     1                       1      251   10202
6-24 months                   JiVitA-3         BANGLADESH                     0                       0     2266   10202
6-24 months                   JiVitA-3         BANGLADESH                     0                       1       69   10202
6-24 months                   JiVitA-4         BANGLADESH                     1                       0     3538    4742
6-24 months                   JiVitA-4         BANGLADESH                     1                       1      144    4742
6-24 months                   JiVitA-4         BANGLADESH                     0                       0     1011    4742
6-24 months                   JiVitA-4         BANGLADESH                     0                       1       49    4742
6-24 months                   Keneba           GAMBIA                         1                       0      642    2090
6-24 months                   Keneba           GAMBIA                         1                       1       79    2090
6-24 months                   Keneba           GAMBIA                         0                       0     1186    2090
6-24 months                   Keneba           GAMBIA                         0                       1      183    2090
6-24 months                   LCNI-5           MALAWI                         1                       0       45     258
6-24 months                   LCNI-5           MALAWI                         1                       1        0     258
6-24 months                   LCNI-5           MALAWI                         0                       0      211     258
6-24 months                   LCNI-5           MALAWI                         0                       1        2     258
6-24 months                   MAL-ED           BANGLADESH                     1                       0       32     230
6-24 months                   MAL-ED           BANGLADESH                     1                       1        1     230
6-24 months                   MAL-ED           BANGLADESH                     0                       0      193     230
6-24 months                   MAL-ED           BANGLADESH                     0                       1        4     230
6-24 months                   MAL-ED           BRAZIL                         1                       0       12     207
6-24 months                   MAL-ED           BRAZIL                         1                       1        0     207
6-24 months                   MAL-ED           BRAZIL                         0                       0      194     207
6-24 months                   MAL-ED           BRAZIL                         0                       1        1     207
6-24 months                   MAL-ED           INDIA                          1                       0        2     217
6-24 months                   MAL-ED           INDIA                          1                       1        0     217
6-24 months                   MAL-ED           INDIA                          0                       0      209     217
6-24 months                   MAL-ED           INDIA                          0                       1        6     217
6-24 months                   MAL-ED           NEPAL                          1                       0        5     224
6-24 months                   MAL-ED           NEPAL                          1                       1        0     224
6-24 months                   MAL-ED           NEPAL                          0                       0      217     224
6-24 months                   MAL-ED           NEPAL                          0                       1        2     224
6-24 months                   MAL-ED           PERU                           1                       0        5     269
6-24 months                   MAL-ED           PERU                           1                       1        0     269
6-24 months                   MAL-ED           PERU                           0                       0      261     269
6-24 months                   MAL-ED           PERU                           0                       1        3     269
6-24 months                   MAL-ED           SOUTH AFRICA                   1                       0        0     235
6-24 months                   MAL-ED           SOUTH AFRICA                   1                       1        0     235
6-24 months                   MAL-ED           SOUTH AFRICA                   0                       0      226     235
6-24 months                   MAL-ED           SOUTH AFRICA                   0                       1        9     235
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        0     231
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     231
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      226     231
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1        5     231
6-24 months                   PROVIDE          BANGLADESH                     1                       0      145     615
6-24 months                   PROVIDE          BANGLADESH                     1                       1        3     615
6-24 months                   PROVIDE          BANGLADESH                     0                       0      457     615
6-24 months                   PROVIDE          BANGLADESH                     0                       1       10     615
6-24 months                   SAS-CompFeed     INDIA                          1                       0      359     417
6-24 months                   SAS-CompFeed     INDIA                          1                       1       39     417
6-24 months                   SAS-CompFeed     INDIA                          0                       0       18     417
6-24 months                   SAS-CompFeed     INDIA                          0                       1        1     417
6-24 months                   SAS-FoodSuppl    INDIA                          1                       0        0     177
6-24 months                   SAS-FoodSuppl    INDIA                          1                       1        0     177
6-24 months                   SAS-FoodSuppl    INDIA                          0                       0      156     177
6-24 months                   SAS-FoodSuppl    INDIA                          0                       1       21     177


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
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
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
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
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
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
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
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
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
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/72dace8f-3b8b-4f37-9aca-dbddc41ee182/b1731410-9532-48cb-8e89-d7739b24df36/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/72dace8f-3b8b-4f37-9aca-dbddc41ee182/b1731410-9532-48cb-8e89-d7739b24df36/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/72dace8f-3b8b-4f37-9aca-dbddc41ee182/b1731410-9532-48cb-8e89-d7739b24df36/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/72dace8f-3b8b-4f37-9aca-dbddc41ee182/b1731410-9532-48cb-8e89-d7739b24df36/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                0.2084365    0.1693100   0.2475631
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    NA                0.2725763    0.1984648   0.3466878
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                0.0355163    0.0318740   0.0391585
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   0                    NA                0.0352457    0.0278849   0.0426065
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                0.0404405    0.0334600   0.0474209
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   0                    NA                0.0473901    0.0338778   0.0609023
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                0.1211951    0.0986173   0.1437729
0-24 months (no birth wast)   Keneba      GAMBIA       0                    NA                0.1754342    0.1555864   0.1952821
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                0.0495931    0.0284582   0.0707281
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    NA                0.0731993    0.0301813   0.1162173
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                0.0166433    0.0140180   0.0192685
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   0                    NA                0.0169499    0.0114702   0.0224296
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                0.0038792    0.0005950   0.0071633
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   0                    NA                0.0071138   -0.0003332   0.0145609
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                0.0304960    0.0186609   0.0423310
0-6 months (no birth wast)    Keneba      GAMBIA       0                    NA                0.0470809    0.0359081   0.0582537
6-24 months                   GMS-Nepal   NEPAL        1                    NA                0.1778761    0.1409271   0.2148252
6-24 months                   GMS-Nepal   NEPAL        0                    NA                0.2391457    0.1681169   0.3101745
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                0.0318926    0.0273999   0.0363853
6-24 months                   JiVitA-3    BANGLADESH   0                    NA                0.0295948    0.0219941   0.0371955
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                0.0390765    0.0322847   0.0458683
6-24 months                   JiVitA-4    BANGLADESH   0                    NA                0.0448401    0.0327909   0.0568894
6-24 months                   Keneba      GAMBIA       1                    NA                0.1082685    0.0854402   0.1310968
6-24 months                   Keneba      GAMBIA       0                    NA                0.1345294    0.1164768   0.1525821


### Parameter: E(Y)


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        NA                   NA                0.2250000   0.1903834   0.2596166
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   NA                   NA                0.0354909   0.0322227   0.0387591
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   NA                   NA                0.0419314   0.0358274   0.0480353
0-24 months (no birth wast)   Keneba      GAMBIA       NA                   NA                0.1549865   0.1399495   0.1700235
0-6 months (no birth wast)    GMS-Nepal   NEPAL        NA                   NA                0.0551471   0.0359475   0.0743466
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   NA                   NA                0.0167386   0.0143298   0.0191473
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   NA                   NA                0.0045722   0.0015532   0.0075911
0-6 months (no birth wast)    Keneba      GAMBIA       NA                   NA                0.0411765   0.0328905   0.0494625
6-24 months                   GMS-Nepal   NEPAL        NA                   NA                0.1938959   0.1610341   0.2267576
6-24 months                   JiVitA-3    BANGLADESH   NA                   NA                0.0313664   0.0274269   0.0353059
6-24 months                   JiVitA-4    BANGLADESH   NA                   NA                0.0407001   0.0348212   0.0465791
6-24 months                   Keneba      GAMBIA       NA                   NA                0.1253589   0.1111594   0.1395583


### Parameter: RR


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    1                 1.3077184   0.9393456   1.820552
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   0                    1                 0.9923830   0.7862816   1.252508
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   0                    1                 1.1718478   0.8366877   1.641266
0-24 months (no birth wast)   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   Keneba      GAMBIA       0                    1                 1.4475359   1.1649386   1.798687
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    1                 1.4759963   0.7141197   3.050700
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   0                    1                 1.0184243   0.7137898   1.453072
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   0                    1                 1.8338413   0.4728250   7.112513
0-6 months (no birth wast)    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    Keneba      GAMBIA       0                    1                 1.5438407   0.9796722   2.432900
6-24 months                   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal   NEPAL        0                    1                 1.3444507   0.9356880   1.931785
6-24 months                   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-3    BANGLADESH   0                    1                 0.9279539   0.6958124   1.237544
6-24 months                   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-4    BANGLADESH   0                    1                 1.1474955   0.8326280   1.581434
6-24 months                   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   Keneba      GAMBIA       0                    1                 1.2425535   0.9681279   1.594768


### Parameter: PAR


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                 0.0165635   -0.0048253   0.0379522
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                -0.0000254   -0.0018485   0.0017977
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                 0.0014909   -0.0018950   0.0048768
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                 0.0337914    0.0147752   0.0528077
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0055539   -0.0067388   0.0178466
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                 0.0000953   -0.0012386   0.0014292
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                 0.0006930   -0.0010617   0.0024476
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                 0.0106805    0.0004168   0.0209442
6-24 months                   GMS-Nepal   NEPAL        1                    NA                 0.0160197   -0.0043597   0.0363991
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                -0.0005262   -0.0025107   0.0014583
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                 0.0016236   -0.0016008   0.0048480
6-24 months                   Keneba      GAMBIA       1                    NA                 0.0170903   -0.0019912   0.0361718


### Parameter: PAF


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                 0.0736154   -0.0261830   0.1637083
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                -0.0007151   -0.0534283   0.0493603
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                 0.0355562   -0.0488494   0.1131693
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                 0.2180282    0.0864278   0.3306715
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.1007111   -0.1488200   0.2960424
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                 0.0056933   -0.0771861   0.0821959
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                 0.1515655   -0.3333170   0.4601126
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                 0.2593839   -0.0299779   0.4674525
6-24 months                   GMS-Nepal   NEPAL        1                    NA                 0.0826202   -0.0282636   0.1815468
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                -0.0167755   -0.0819858   0.0445046
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                 0.0398916   -0.0431119   0.1162903
6-24 months                   Keneba      GAMBIA       1                    NA                 0.1363313   -0.0295388   0.2754778
