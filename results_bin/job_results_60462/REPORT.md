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

agecat                        studyid          country                        predexfd6    ever_wasted   n_cell       n
----------------------------  ---------------  -----------------------------  ----------  ------------  -------  ------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                      0       11      19
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                      1        8      19
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                      0        0      19
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                      1        0      19
0-24 months (no birth wast)   EE               PAKISTAN                       1                      0       21      48
0-24 months (no birth wast)   EE               PAKISTAN                       1                      1       22      48
0-24 months (no birth wast)   EE               PAKISTAN                       0                      0        3      48
0-24 months (no birth wast)   EE               PAKISTAN                       0                      1        2      48
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                      0      176     560
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                      1      241     560
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                      0       66     560
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                      1       77     560
0-24 months (no birth wast)   IRC              INDIA                          1                      0        0      14
0-24 months (no birth wast)   IRC              INDIA                          1                      1        0      14
0-24 months (no birth wast)   IRC              INDIA                          0                      0        5      14
0-24 months (no birth wast)   IRC              INDIA                          0                      1        9      14
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                      0    10160   15666
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                      1     2046   15666
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                      0     2829   15666
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                      1      631   15666
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                      0     2753    4722
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                      1      927    4722
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                      0      736    4722
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                      1      306    4722
0-24 months (no birth wast)   Keneba           GAMBIA                         1                      0      543    2226
0-24 months (no birth wast)   Keneba           GAMBIA                         1                      1      280    2226
0-24 months (no birth wast)   Keneba           GAMBIA                         0                      0      822    2226
0-24 months (no birth wast)   Keneba           GAMBIA                         0                      1      581    2226
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                      0       42     271
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                      1        5     271
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                      0      204     271
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                      1       20     271
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                      0       62     233
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                      1       23     233
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                      0      116     233
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                      1       32     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                      0       29     210
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                      1        1     210
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                      0      168     210
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                      1       12     210
0-24 months (no birth wast)   MAL-ED           INDIA                          1                      0       10     216
0-24 months (no birth wast)   MAL-ED           INDIA                          1                      1        1     216
0-24 months (no birth wast)   MAL-ED           INDIA                          0                      0      126     216
0-24 months (no birth wast)   MAL-ED           INDIA                          0                      1       79     216
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                      0       10     225
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                      1        2     225
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                      0      169     225
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                      1       44     225
0-24 months (no birth wast)   MAL-ED           PERU                           1                      0       87     271
0-24 months (no birth wast)   MAL-ED           PERU                           1                      1        5     271
0-24 months (no birth wast)   MAL-ED           PERU                           0                      0      163     271
0-24 months (no birth wast)   MAL-ED           PERU                           0                      1       16     271
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                      0        3     237
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                      1        0     237
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                      0      193     237
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                      1       41     237
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        1     235
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        0     235
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0      201     235
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1       33     235
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                      0      176     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                      1       25     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                      0      389     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                      1       97     687
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                      0      263     443
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                      1      158     443
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                      0       12     443
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                      1       10     443
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                      0        0     173
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                      1        0     173
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                      0      117     173
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                      1       56     173
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                      0       12      17
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                      1        5      17
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                      0        0      17
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                      1        0      17
0-6 months (no birth wast)    EE               PAKISTAN                       1                      0       36      47
0-6 months (no birth wast)    EE               PAKISTAN                       1                      1        6      47
0-6 months (no birth wast)    EE               PAKISTAN                       0                      0        4      47
0-6 months (no birth wast)    EE               PAKISTAN                       0                      1        1      47
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                      0      320     544
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                      1       86     544
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                      0      105     544
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                      1       33     544
0-6 months (no birth wast)    IRC              INDIA                          1                      0        0      13
0-6 months (no birth wast)    IRC              INDIA                          1                      1        0      13
0-6 months (no birth wast)    IRC              INDIA                          0                      0        6      13
0-6 months (no birth wast)    IRC              INDIA                          0                      1        7      13
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                      0    11256   15533
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                      1      849   15533
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                      0     3160   15533
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                      1      268   15533
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                      0     3530    4593
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                      1       92    4593
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                      0      937    4593
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                      1       34    4593
0-6 months (no birth wast)    Keneba           GAMBIA                         1                      0      744    2210
0-6 months (no birth wast)    Keneba           GAMBIA                         1                      1       74    2210
0-6 months (no birth wast)    Keneba           GAMBIA                         0                      0     1204    2210
0-6 months (no birth wast)    Keneba           GAMBIA                         0                      1      188    2210
0-6 months (no birth wast)    LCNI-5           MALAWI                         1                      0       47     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         1                      1        0     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         0                      0      221     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         0                      1        0     268
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                      0       79     232
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                      1        6     232
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                      0      135     232
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                      1       12     232
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                      0       29     210
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                      1        1     210
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                      0      173     210
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                      1        7     210
0-6 months (no birth wast)    MAL-ED           INDIA                          1                      0       11     215
0-6 months (no birth wast)    MAL-ED           INDIA                          1                      1        0     215
0-6 months (no birth wast)    MAL-ED           INDIA                          0                      0      172     215
0-6 months (no birth wast)    MAL-ED           INDIA                          0                      1       32     215
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                      0       12     223
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                      1        0     223
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                      0      195     223
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                      1       16     223
0-6 months (no birth wast)    MAL-ED           PERU                           1                      0       90     271
0-6 months (no birth wast)    MAL-ED           PERU                           1                      1        2     271
0-6 months (no birth wast)    MAL-ED           PERU                           0                      0      176     271
0-6 months (no birth wast)    MAL-ED           PERU                           0                      1        3     271
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                      0        3     236
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                      1        0     236
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                      0      220     236
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                      1       13     236
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        1     235
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        0     235
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0      224     235
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1       10     235
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                      0      195     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                      1        6     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                      0      451     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                      1       31     683
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                      0      365     437
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                      1       50     437
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                      0       17     437
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                      1        5     437
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          1                      0        0     137
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          1                      1        0     137
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          0                      0      137     137
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          0                      1        0     137
6-24 months                   CMC-V-BCS-2002   INDIA                          1                      0       14      19
6-24 months                   CMC-V-BCS-2002   INDIA                          1                      1        5      19
6-24 months                   CMC-V-BCS-2002   INDIA                          0                      0        0      19
6-24 months                   CMC-V-BCS-2002   INDIA                          0                      1        0      19
6-24 months                   EE               PAKISTAN                       1                      0       25      47
6-24 months                   EE               PAKISTAN                       1                      1       17      47
6-24 months                   EE               PAKISTAN                       0                      0        4      47
6-24 months                   EE               PAKISTAN                       0                      1        1      47
6-24 months                   GMS-Nepal        NEPAL                          1                      0      211     557
6-24 months                   GMS-Nepal        NEPAL                          1                      1      204     557
6-24 months                   GMS-Nepal        NEPAL                          0                      0       77     557
6-24 months                   GMS-Nepal        NEPAL                          0                      1       65     557
6-24 months                   IRC              INDIA                          1                      0        0      14
6-24 months                   IRC              INDIA                          1                      1        0      14
6-24 months                   IRC              INDIA                          0                      0        9      14
6-24 months                   IRC              INDIA                          0                      1        5      14
6-24 months                   JiVitA-3         BANGLADESH                     1                      0     6581   10202
6-24 months                   JiVitA-3         BANGLADESH                     1                      1     1302   10202
6-24 months                   JiVitA-3         BANGLADESH                     0                      0     1927   10202
6-24 months                   JiVitA-3         BANGLADESH                     0                      1      392   10202
6-24 months                   JiVitA-4         BANGLADESH                     1                      0     2819    4742
6-24 months                   JiVitA-4         BANGLADESH                     1                      1      876    4742
6-24 months                   JiVitA-4         BANGLADESH                     0                      0      755    4742
6-24 months                   JiVitA-4         BANGLADESH                     0                      1      292    4742
6-24 months                   Keneba           GAMBIA                         1                      0      488    2090
6-24 months                   Keneba           GAMBIA                         1                      1      233    2090
6-24 months                   Keneba           GAMBIA                         0                      0      892    2090
6-24 months                   Keneba           GAMBIA                         0                      1      477    2090
6-24 months                   LCNI-5           MALAWI                         1                      0       40     258
6-24 months                   LCNI-5           MALAWI                         1                      1        5     258
6-24 months                   LCNI-5           MALAWI                         0                      0      193     258
6-24 months                   LCNI-5           MALAWI                         0                      1       20     258
6-24 months                   MAL-ED           BANGLADESH                     1                      0       65     230
6-24 months                   MAL-ED           BANGLADESH                     1                      1       19     230
6-24 months                   MAL-ED           BANGLADESH                     0                      0      124     230
6-24 months                   MAL-ED           BANGLADESH                     0                      1       22     230
6-24 months                   MAL-ED           BRAZIL                         1                      0       30     207
6-24 months                   MAL-ED           BRAZIL                         1                      1        0     207
6-24 months                   MAL-ED           BRAZIL                         0                      0      171     207
6-24 months                   MAL-ED           BRAZIL                         0                      1        6     207
6-24 months                   MAL-ED           INDIA                          1                      0       10     217
6-24 months                   MAL-ED           INDIA                          1                      1        1     217
6-24 months                   MAL-ED           INDIA                          0                      0      148     217
6-24 months                   MAL-ED           INDIA                          0                      1       58     217
6-24 months                   MAL-ED           NEPAL                          1                      0       10     224
6-24 months                   MAL-ED           NEPAL                          1                      1        2     224
6-24 months                   MAL-ED           NEPAL                          0                      0      178     224
6-24 months                   MAL-ED           NEPAL                          0                      1       34     224
6-24 months                   MAL-ED           PERU                           1                      0       87     269
6-24 months                   MAL-ED           PERU                           1                      1        4     269
6-24 months                   MAL-ED           PERU                           0                      0      164     269
6-24 months                   MAL-ED           PERU                           0                      1       14     269
6-24 months                   MAL-ED           SOUTH AFRICA                   1                      0        3     235
6-24 months                   MAL-ED           SOUTH AFRICA                   1                      1        0     235
6-24 months                   MAL-ED           SOUTH AFRICA                   0                      0      198     235
6-24 months                   MAL-ED           SOUTH AFRICA                   0                      1       34     235
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        1     231
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        0     231
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0      203     231
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1       27     231
6-24 months                   PROVIDE          BANGLADESH                     1                      0      127     615
6-24 months                   PROVIDE          BANGLADESH                     1                      1       21     615
6-24 months                   PROVIDE          BANGLADESH                     0                      0      389     615
6-24 months                   PROVIDE          BANGLADESH                     0                      1       78     615
6-24 months                   SAS-CompFeed     INDIA                          1                      0      273     417
6-24 months                   SAS-CompFeed     INDIA                          1                      1      125     417
6-24 months                   SAS-CompFeed     INDIA                          0                      0       12     417
6-24 months                   SAS-CompFeed     INDIA                          0                      1        7     417
6-24 months                   SAS-FoodSuppl    INDIA                          1                      0        0     177
6-24 months                   SAS-FoodSuppl    INDIA                          1                      1        0     177
6-24 months                   SAS-FoodSuppl    INDIA                          0                      0      121     177
6-24 months                   SAS-FoodSuppl    INDIA                          0                      1       56     177


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
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
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
![](/tmp/726d7643-a320-4646-9c5b-78d1e752df00/c79cfe28-0e15-4f7a-b670-814140290dc2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/726d7643-a320-4646-9c5b-78d1e752df00/c79cfe28-0e15-4f7a-b670-814140290dc2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/726d7643-a320-4646-9c5b-78d1e752df00/c79cfe28-0e15-4f7a-b670-814140290dc2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/726d7643-a320-4646-9c5b-78d1e752df00/c79cfe28-0e15-4f7a-b670-814140290dc2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal      NEPAL        1                    NA                0.5803923   0.5332349   0.6275498
0-24 months (no birth wast)   GMS-Nepal      NEPAL        0                    NA                0.5335187   0.4521253   0.6149122
0-24 months (no birth wast)   JiVitA-3       BANGLADESH   1                    NA                0.1681226   0.1609668   0.1752784
0-24 months (no birth wast)   JiVitA-3       BANGLADESH   0                    NA                0.1805361   0.1663081   0.1947641
0-24 months (no birth wast)   JiVitA-4       BANGLADESH   1                    NA                0.2546829   0.2378437   0.2715221
0-24 months (no birth wast)   JiVitA-4       BANGLADESH   0                    NA                0.2801821   0.2490054   0.3113587
0-24 months (no birth wast)   Keneba         GAMBIA       1                    NA                0.3410216   0.3085716   0.3734717
0-24 months (no birth wast)   Keneba         GAMBIA       0                    NA                0.4157417   0.3901139   0.4413694
0-24 months (no birth wast)   LCNI-5         MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   LCNI-5         MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   MAL-ED         BANGLADESH   1                    NA                0.2659426   0.1693434   0.3625418
0-24 months (no birth wast)   MAL-ED         BANGLADESH   0                    NA                0.2221824   0.1546378   0.2897269
0-24 months (no birth wast)   MAL-ED         PERU         1                    NA                0.0543478   0.0079376   0.1007581
0-24 months (no birth wast)   MAL-ED         PERU         0                    NA                0.0893855   0.0475133   0.1312576
0-24 months (no birth wast)   PROVIDE        BANGLADESH   1                    NA                0.1430767   0.0911708   0.1949827
0-24 months (no birth wast)   PROVIDE        BANGLADESH   0                    NA                0.2000768   0.1617890   0.2383646
0-24 months (no birth wast)   SAS-CompFeed   INDIA        1                    NA                0.3749192   0.3179202   0.4319182
0-24 months (no birth wast)   SAS-CompFeed   INDIA        0                    NA                0.4616077   0.3160035   0.6072120
0-6 months (no birth wast)    GMS-Nepal      NEPAL        1                    NA                0.2117525   0.1719774   0.2515275
0-6 months (no birth wast)    GMS-Nepal      NEPAL        0                    NA                0.2431883   0.1713683   0.3150083
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   1                    NA                0.0701022   0.0649794   0.0752249
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   0                    NA                0.0781351   0.0682522   0.0880181
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   1                    NA                0.0249375   0.0188639   0.0310111
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   0                    NA                0.0368106   0.0232653   0.0503558
0-6 months (no birth wast)    Keneba         GAMBIA       1                    NA                0.0893941   0.0696707   0.1091174
0-6 months (no birth wast)    Keneba         GAMBIA       0                    NA                0.1361585   0.1181918   0.1541251
0-6 months (no birth wast)    MAL-ED         BANGLADESH   1                    NA                0.0705882   0.0160191   0.1251573
0-6 months (no birth wast)    MAL-ED         BANGLADESH   0                    NA                0.0816327   0.0372751   0.1259902
0-6 months (no birth wast)    PROVIDE        BANGLADESH   1                    NA                0.0298507   0.0063076   0.0533939
0-6 months (no birth wast)    PROVIDE        BANGLADESH   0                    NA                0.0643154   0.0423992   0.0862315
0-6 months (no birth wast)    SAS-CompFeed   INDIA        1                    NA                0.1204819   0.0857775   0.1551864
0-6 months (no birth wast)    SAS-CompFeed   INDIA        0                    NA                0.2272727   0.0595457   0.3949997
6-24 months                   GMS-Nepal      NEPAL        1                    NA                0.4933142   0.4454136   0.5412149
6-24 months                   GMS-Nepal      NEPAL        0                    NA                0.4587046   0.3770476   0.5403616
6-24 months                   JiVitA-3       BANGLADESH   1                    NA                0.1651946   0.1563272   0.1740619
6-24 months                   JiVitA-3       BANGLADESH   0                    NA                0.1692380   0.1525411   0.1859350
6-24 months                   JiVitA-4       BANGLADESH   1                    NA                0.2414575   0.2248060   0.2581090
6-24 months                   JiVitA-4       BANGLADESH   0                    NA                0.2629108   0.2318767   0.2939450
6-24 months                   Keneba         GAMBIA       1                    NA                0.3234988   0.2891779   0.3578196
6-24 months                   Keneba         GAMBIA       0                    NA                0.3498025   0.3246180   0.3749870
6-24 months                   LCNI-5         MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   LCNI-5         MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   MAL-ED         BANGLADESH   1                    NA                0.2149094   0.1259849   0.3038339
6-24 months                   MAL-ED         BANGLADESH   0                    NA                0.1554073   0.0960874   0.2147273
6-24 months                   PROVIDE        BANGLADESH   1                    NA                0.1411150   0.0846158   0.1976142
6-24 months                   PROVIDE        BANGLADESH   0                    NA                0.1672955   0.1333753   0.2012158
6-24 months                   SAS-CompFeed   INDIA        1                    NA                0.3140704   0.2638452   0.3642955
6-24 months                   SAS-CompFeed   INDIA        0                    NA                0.3684211   0.1333387   0.6035034


### Parameter: E(Y)


agecat                        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal      NEPAL        NA                   NA                0.5678571   0.5267918   0.6089225
0-24 months (no birth wast)   JiVitA-3       BANGLADESH   NA                   NA                0.1708796   0.1645476   0.1772116
0-24 months (no birth wast)   JiVitA-4       BANGLADESH   NA                   NA                0.2611182   0.2462845   0.2759518
0-24 months (no birth wast)   Keneba         GAMBIA       NA                   NA                0.3867925   0.3665564   0.4070285
0-24 months (no birth wast)   LCNI-5         MALAWI       NA                   NA                0.0922509   0.0577338   0.1267680
0-24 months (no birth wast)   MAL-ED         BANGLADESH   NA                   NA                0.2360515   0.1814079   0.2906951
0-24 months (no birth wast)   MAL-ED         PERU         NA                   NA                0.0774908   0.0455992   0.1093824
0-24 months (no birth wast)   PROVIDE        BANGLADESH   NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   SAS-CompFeed   INDIA        NA                   NA                0.3792325   0.3255512   0.4329138
0-6 months (no birth wast)    GMS-Nepal      NEPAL        NA                   NA                0.2187500   0.1839790   0.2535210
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   NA                   NA                0.0719114   0.0672720   0.0765508
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   NA                   NA                0.0274331   0.0219967   0.0328694
0-6 months (no birth wast)    Keneba         GAMBIA       NA                   NA                0.1185520   0.1050716   0.1320324
0-6 months (no birth wast)    MAL-ED         BANGLADESH   NA                   NA                0.0775862   0.0430879   0.1120845
0-6 months (no birth wast)    PROVIDE        BANGLADESH   NA                   NA                0.0541728   0.0371844   0.0711612
0-6 months (no birth wast)    SAS-CompFeed   INDIA        NA                   NA                0.1258581   0.0910745   0.1606418
6-24 months                   GMS-Nepal      NEPAL        NA                   NA                0.4829443   0.4414080   0.5244807
6-24 months                   JiVitA-3       BANGLADESH   NA                   NA                0.1660459   0.1583106   0.1737812
6-24 months                   JiVitA-4       BANGLADESH   NA                   NA                0.2463096   0.2316309   0.2609882
6-24 months                   Keneba         GAMBIA       NA                   NA                0.3397129   0.3194033   0.3600225
6-24 months                   LCNI-5         MALAWI       NA                   NA                0.0968992   0.0607324   0.1330660
6-24 months                   MAL-ED         BANGLADESH   NA                   NA                0.1782609   0.1286901   0.2278316
6-24 months                   PROVIDE        BANGLADESH   NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   SAS-CompFeed   INDIA        NA                   NA                0.3165468   0.2711185   0.3619751


### Parameter: RR


agecat                        studyid        country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal      NEPAL        0                    1                 0.9192381   0.7743862   1.091185
0-24 months (no birth wast)   JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3       BANGLADESH   0                    1                 1.0738357   0.9810071   1.175448
0-24 months (no birth wast)   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-4       BANGLADESH   0                    1                 1.1001212   0.9669718   1.251605
0-24 months (no birth wast)   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   Keneba         GAMBIA       0                    1                 1.2191065   1.0892268   1.364473
0-24 months (no birth wast)   LCNI-5         MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   LCNI-5         MALAWI       0                    1                 0.8392857   0.3311837   2.126918
0-24 months (no birth wast)   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED         BANGLADESH   0                    1                 0.8354523   0.5222514   1.336484
0-24 months (no birth wast)   MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED         PERU         0                    1                 1.6446927   0.6209888   4.355979
0-24 months (no birth wast)   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   PROVIDE        BANGLADESH   0                    1                 1.3983881   0.9276102   2.108094
0-24 months (no birth wast)   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   SAS-CompFeed   INDIA        0                    1                 1.2312191   0.8795362   1.723523
0-6 months (no birth wast)    GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal      NEPAL        0                    1                 1.1484553   0.8089592   1.630428
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   0                    1                 1.1145893   0.9659487   1.286103
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   0                    1                 1.4761125   0.9375762   2.323980
0-6 months (no birth wast)    Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    Keneba         GAMBIA       0                    1                 1.5231260   1.1789782   1.967732
0-6 months (no birth wast)    MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    MAL-ED         BANGLADESH   0                    1                 1.1564626   0.4495261   2.975146
0-6 months (no birth wast)    PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    PROVIDE        BANGLADESH   0                    1                 2.1545643   0.9124937   5.087320
0-6 months (no birth wast)    SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    SAS-CompFeed   INDIA        0                    1                 1.8863636   0.8915751   3.991103
6-24 months                   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal      NEPAL        0                    1                 0.9298427   0.7602634   1.137247
6-24 months                   JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-3       BANGLADESH   0                    1                 1.0244770   0.9143978   1.147808
6-24 months                   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-4       BANGLADESH   0                    1                 1.0888493   0.9513805   1.246181
6-24 months                   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   Keneba         GAMBIA       0                    1                 1.0813100   0.9517703   1.228481
6-24 months                   LCNI-5         MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   LCNI-5         MALAWI       0                    1                 0.8450704   0.3342527   2.136539
6-24 months                   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED         BANGLADESH   0                    1                 0.7231295   0.4156648   1.258024
6-24 months                   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   PROVIDE        BANGLADESH   0                    1                 1.1855263   0.7568038   1.857116
6-24 months                   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   SAS-CompFeed   INDIA        0                    1                 1.1730526   0.5767231   2.385985


### Parameter: PAR


agecat                        studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal      NEPAL        1                    NA                -0.0125352   -0.0363112   0.0112408
0-24 months (no birth wast)   JiVitA-3       BANGLADESH   1                    NA                 0.0027570   -0.0007961   0.0063101
0-24 months (no birth wast)   JiVitA-4       BANGLADESH   1                    NA                 0.0064353   -0.0014695   0.0143400
0-24 months (no birth wast)   Keneba         GAMBIA       1                    NA                 0.0457708    0.0196743   0.0718674
0-24 months (no birth wast)   LCNI-5         MALAWI       1                    NA                -0.0141321   -0.0934107   0.0651466
0-24 months (no birth wast)   MAL-ED         BANGLADESH   1                    NA                -0.0298911   -0.1057816   0.0459994
0-24 months (no birth wast)   MAL-ED         PERU         1                    NA                 0.0231429   -0.0181917   0.0644776
0-24 months (no birth wast)   PROVIDE        BANGLADESH   1                    NA                 0.0345070   -0.0117198   0.0807337
0-24 months (no birth wast)   SAS-CompFeed   INDIA        1                    NA                 0.0043133   -0.0046855   0.0133121
0-6 months (no birth wast)    GMS-Nepal      NEPAL        1                    NA                 0.0069975   -0.0137505   0.0277456
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   1                    NA                 0.0018092   -0.0006033   0.0042218
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   1                    NA                 0.0024955   -0.0005871   0.0055781
0-6 months (no birth wast)    Keneba         GAMBIA       1                    NA                 0.0291580    0.0123429   0.0459730
0-6 months (no birth wast)    MAL-ED         BANGLADESH   1                    NA                 0.0069980   -0.0375657   0.0515616
0-6 months (no birth wast)    PROVIDE        BANGLADESH   1                    NA                 0.0243220    0.0015921   0.0470519
0-6 months (no birth wast)    SAS-CompFeed   INDIA        1                    NA                 0.0053762   -0.0018898   0.0126422
6-24 months                   GMS-Nepal      NEPAL        1                    NA                -0.0103699   -0.0342970   0.0135573
6-24 months                   JiVitA-3       BANGLADESH   1                    NA                 0.0008513   -0.0034964   0.0051990
6-24 months                   JiVitA-4       BANGLADESH   1                    NA                 0.0048521   -0.0030351   0.0127393
6-24 months                   Keneba         GAMBIA       1                    NA                 0.0162141   -0.0117329   0.0441611
6-24 months                   LCNI-5         MALAWI       1                    NA                -0.0142119   -0.0967920   0.0683682
6-24 months                   MAL-ED         BANGLADESH   1                    NA                -0.0366485   -0.1038748   0.0305777
6-24 months                   PROVIDE        BANGLADESH   1                    NA                 0.0198606   -0.0302405   0.0699617
6-24 months                   SAS-CompFeed   INDIA        1                    NA                 0.0024764   -0.0094430   0.0143959


### Parameter: PAF


agecat                        studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal      NEPAL        1                    NA                -0.0220746   -0.0648691   0.0190001
0-24 months (no birth wast)   JiVitA-3       BANGLADESH   1                    NA                 0.0161341   -0.0048683   0.0366975
0-24 months (no birth wast)   JiVitA-4       BANGLADESH   1                    NA                 0.0246450   -0.0061421   0.0544901
0-24 months (no birth wast)   Keneba         GAMBIA       1                    NA                 0.1183344    0.0481475   0.1833459
0-24 months (no birth wast)   LCNI-5         MALAWI       1                    NA                -0.1531915   -1.4265796   0.4519650
0-24 months (no birth wast)   MAL-ED         BANGLADESH   1                    NA                -0.1266297   -0.4977163   0.1525134
0-24 months (no birth wast)   MAL-ED         PERU         1                    NA                 0.2986542   -0.4737013   0.6662242
0-24 months (no birth wast)   PROVIDE        BANGLADESH   1                    NA                 0.1943139   -0.1113034   0.4158840
0-24 months (no birth wast)   SAS-CompFeed   INDIA        1                    NA                 0.0113737   -0.0131809   0.0353333
0-6 months (no birth wast)    GMS-Nepal      NEPAL        1                    NA                 0.0319886   -0.0675889   0.1222782
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   1                    NA                 0.0251592   -0.0089320   0.0580985
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   1                    NA                 0.0909684   -0.0289562   0.1969159
0-6 months (no birth wast)    Keneba         GAMBIA       1                    NA                 0.2459507    0.0921999   0.3736612
0-6 months (no birth wast)    MAL-ED         BANGLADESH   1                    NA                 0.0901961   -0.7082806   0.5154524
0-6 months (no birth wast)    PROVIDE        BANGLADESH   1                    NA                 0.4489714   -0.1322414   0.7318305
0-6 months (no birth wast)    SAS-CompFeed   INDIA        1                    NA                 0.0427163   -0.0166271   0.0985957
6-24 months                   GMS-Nepal      NEPAL        1                    NA                -0.0214722   -0.0722771   0.0269255
6-24 months                   JiVitA-3       BANGLADESH   1                    NA                 0.0051269   -0.0214054   0.0309700
6-24 months                   JiVitA-4       BANGLADESH   1                    NA                 0.0196991   -0.0128713   0.0512222
6-24 months                   Keneba         GAMBIA       1                    NA                 0.0477289   -0.0382069   0.1265516
6-24 months                   LCNI-5         MALAWI       1                    NA                -0.1466667   -1.4083049   0.4540374
6-24 months                   MAL-ED         BANGLADESH   1                    NA                -0.2055894   -0.6433491   0.1155588
6-24 months                   PROVIDE        BANGLADESH   1                    NA                 0.1233766   -0.2496293   0.3850427
6-24 months                   SAS-CompFeed   INDIA        1                    NA                 0.0078232   -0.0309120   0.0451030
