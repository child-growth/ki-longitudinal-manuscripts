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

agecat                        studyid          country                        exclfeed6    ever_wasted   n_cell       n
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
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                      0    10144   15666
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                      1     2041   15666
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                      0     2845   15666
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                      1      636   15666
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                      0     2742    4722
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                      1      924    4722
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                      0      747    4722
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                      1      309    4722
0-24 months (no birth wast)   Keneba           GAMBIA                         1                      0      543    2226
0-24 months (no birth wast)   Keneba           GAMBIA                         1                      1      280    2226
0-24 months (no birth wast)   Keneba           GAMBIA                         0                      0      822    2226
0-24 months (no birth wast)   Keneba           GAMBIA                         0                      1      581    2226
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                      0       42     271
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                      1        5     271
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                      0      204     271
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                      1       20     271
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                      0       24     233
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                      1        9     233
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                      0      154     233
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                      1       46     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                      0       12     210
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                      1        0     210
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                      0      185     210
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                      1       13     210
0-24 months (no birth wast)   MAL-ED           INDIA                          1                      0        1     216
0-24 months (no birth wast)   MAL-ED           INDIA                          1                      1        1     216
0-24 months (no birth wast)   MAL-ED           INDIA                          0                      0      135     216
0-24 months (no birth wast)   MAL-ED           INDIA                          0                      1       79     216
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                      0        4     225
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                      1        1     225
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                      0      175     225
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                      1       45     225
0-24 months (no birth wast)   MAL-ED           PERU                           1                      0        5     271
0-24 months (no birth wast)   MAL-ED           PERU                           1                      1        0     271
0-24 months (no birth wast)   MAL-ED           PERU                           0                      0      245     271
0-24 months (no birth wast)   MAL-ED           PERU                           0                      1       21     271
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                      0        0     237
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                      1        0     237
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                      0      196     237
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                      1       41     237
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        0     235
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        0     235
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0      202     235
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
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                      0    11236   15533
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                      1      848   15533
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                      0     3180   15533
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                      1      269   15533
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                      0     3517    4593
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                      1       92    4593
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                      0      950    4593
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                      1       34    4593
0-6 months (no birth wast)    Keneba           GAMBIA                         1                      0      744    2210
0-6 months (no birth wast)    Keneba           GAMBIA                         1                      1       74    2210
0-6 months (no birth wast)    Keneba           GAMBIA                         0                      0     1204    2210
0-6 months (no birth wast)    Keneba           GAMBIA                         0                      1      188    2210
0-6 months (no birth wast)    LCNI-5           MALAWI                         1                      0       47     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         1                      1        0     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         0                      0      221     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         0                      1        0     268
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                      0       31     232
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                      1        2     232
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                      0      183     232
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                      1       16     232
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                      0       12     210
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                      1        0     210
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                      0      190     210
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                      1        8     210
0-6 months (no birth wast)    MAL-ED           INDIA                          1                      0        2     215
0-6 months (no birth wast)    MAL-ED           INDIA                          1                      1        0     215
0-6 months (no birth wast)    MAL-ED           INDIA                          0                      0      181     215
0-6 months (no birth wast)    MAL-ED           INDIA                          0                      1       32     215
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                      0        5     223
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                      1        0     223
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                      0      202     223
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                      1       16     223
0-6 months (no birth wast)    MAL-ED           PERU                           1                      0        5     271
0-6 months (no birth wast)    MAL-ED           PERU                           1                      1        0     271
0-6 months (no birth wast)    MAL-ED           PERU                           0                      0      261     271
0-6 months (no birth wast)    MAL-ED           PERU                           0                      1        5     271
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                      0        0     236
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                      1        0     236
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                      0      223     236
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                      1       13     236
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        0     235
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        0     235
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0      225     235
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
6-24 months                   JiVitA-3         BANGLADESH                     1                      0     6569   10202
6-24 months                   JiVitA-3         BANGLADESH                     1                      1     1298   10202
6-24 months                   JiVitA-3         BANGLADESH                     0                      0     1939   10202
6-24 months                   JiVitA-3         BANGLADESH                     0                      1      396   10202
6-24 months                   JiVitA-4         BANGLADESH                     1                      0     2809    4742
6-24 months                   JiVitA-4         BANGLADESH                     1                      1      873    4742
6-24 months                   JiVitA-4         BANGLADESH                     0                      0      765    4742
6-24 months                   JiVitA-4         BANGLADESH                     0                      1      295    4742
6-24 months                   Keneba           GAMBIA                         1                      0      488    2090
6-24 months                   Keneba           GAMBIA                         1                      1      233    2090
6-24 months                   Keneba           GAMBIA                         0                      0      892    2090
6-24 months                   Keneba           GAMBIA                         0                      1      477    2090
6-24 months                   LCNI-5           MALAWI                         1                      0       40     258
6-24 months                   LCNI-5           MALAWI                         1                      1        5     258
6-24 months                   LCNI-5           MALAWI                         0                      0      193     258
6-24 months                   LCNI-5           MALAWI                         0                      1       20     258
6-24 months                   MAL-ED           BANGLADESH                     1                      0       25     230
6-24 months                   MAL-ED           BANGLADESH                     1                      1        8     230
6-24 months                   MAL-ED           BANGLADESH                     0                      0      164     230
6-24 months                   MAL-ED           BANGLADESH                     0                      1       33     230
6-24 months                   MAL-ED           BRAZIL                         1                      0       12     207
6-24 months                   MAL-ED           BRAZIL                         1                      1        0     207
6-24 months                   MAL-ED           BRAZIL                         0                      0      189     207
6-24 months                   MAL-ED           BRAZIL                         0                      1        6     207
6-24 months                   MAL-ED           INDIA                          1                      0        1     217
6-24 months                   MAL-ED           INDIA                          1                      1        1     217
6-24 months                   MAL-ED           INDIA                          0                      0      157     217
6-24 months                   MAL-ED           INDIA                          0                      1       58     217
6-24 months                   MAL-ED           NEPAL                          1                      0        4     224
6-24 months                   MAL-ED           NEPAL                          1                      1        1     224
6-24 months                   MAL-ED           NEPAL                          0                      0      184     224
6-24 months                   MAL-ED           NEPAL                          0                      1       35     224
6-24 months                   MAL-ED           PERU                           1                      0        5     269
6-24 months                   MAL-ED           PERU                           1                      1        0     269
6-24 months                   MAL-ED           PERU                           0                      0      246     269
6-24 months                   MAL-ED           PERU                           0                      1       18     269
6-24 months                   MAL-ED           SOUTH AFRICA                   1                      0        0     235
6-24 months                   MAL-ED           SOUTH AFRICA                   1                      1        0     235
6-24 months                   MAL-ED           SOUTH AFRICA                   0                      0      201     235
6-24 months                   MAL-ED           SOUTH AFRICA                   0                      1       34     235
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0        0     231
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        0     231
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0      204     231
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
![](/tmp/3fded264-7501-437b-89c7-55587e086d2e/76631614-453e-4e78-b12b-54d122d46055/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3fded264-7501-437b-89c7-55587e086d2e/76631614-453e-4e78-b12b-54d122d46055/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3fded264-7501-437b-89c7-55587e086d2e/76631614-453e-4e78-b12b-54d122d46055/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3fded264-7501-437b-89c7-55587e086d2e/76631614-453e-4e78-b12b-54d122d46055/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal      NEPAL        1                    NA                0.5788382   0.5316132   0.6260632
0-24 months (no birth wast)   GMS-Nepal      NEPAL        0                    NA                0.5338501   0.4519488   0.6157513
0-24 months (no birth wast)   JiVitA-3       BANGLADESH   1                    NA                0.1682314   0.1610541   0.1754087
0-24 months (no birth wast)   JiVitA-3       BANGLADESH   0                    NA                0.1800070   0.1658294   0.1941845
0-24 months (no birth wast)   JiVitA-4       BANGLADESH   1                    NA                0.2542244   0.2373559   0.2710928
0-24 months (no birth wast)   JiVitA-4       BANGLADESH   0                    NA                0.2789427   0.2476478   0.3102375
0-24 months (no birth wast)   Keneba         GAMBIA       1                    NA                0.3451844   0.3127437   0.3776251
0-24 months (no birth wast)   Keneba         GAMBIA       0                    NA                0.4136244   0.3879376   0.4393111
0-24 months (no birth wast)   LCNI-5         MALAWI       1                    NA                0.1063830   0.0180722   0.1946938
0-24 months (no birth wast)   LCNI-5         MALAWI       0                    NA                0.0892857   0.0518739   0.1266975
0-24 months (no birth wast)   MAL-ED         BANGLADESH   1                    NA                0.2727273   0.1204490   0.4250056
0-24 months (no birth wast)   MAL-ED         BANGLADESH   0                    NA                0.2300000   0.1715511   0.2884489
0-24 months (no birth wast)   PROVIDE        BANGLADESH   1                    NA                0.1415288   0.0899381   0.1931195
0-24 months (no birth wast)   PROVIDE        BANGLADESH   0                    NA                0.2027873   0.1642420   0.2413326
0-24 months (no birth wast)   SAS-CompFeed   INDIA        1                    NA                0.3749192   0.3179202   0.4319182
0-24 months (no birth wast)   SAS-CompFeed   INDIA        0                    NA                0.4616077   0.3160035   0.6072120
0-6 months (no birth wast)    GMS-Nepal      NEPAL        1                    NA                0.2125623   0.1727102   0.2524144
0-6 months (no birth wast)    GMS-Nepal      NEPAL        0                    NA                0.2441166   0.1724361   0.3157971
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   1                    NA                0.0700053   0.0648890   0.0751217
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   0                    NA                0.0787196   0.0689046   0.0885346
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   1                    NA                0.0250507   0.0189357   0.0311658
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   0                    NA                0.0363225   0.0228536   0.0497914
0-6 months (no birth wast)    Keneba         GAMBIA       1                    NA                0.0899379   0.0701138   0.1097620
0-6 months (no birth wast)    Keneba         GAMBIA       0                    NA                0.1358219   0.1178330   0.1538108
0-6 months (no birth wast)    PROVIDE        BANGLADESH   1                    NA                0.0298507   0.0063076   0.0533939
0-6 months (no birth wast)    PROVIDE        BANGLADESH   0                    NA                0.0643154   0.0423992   0.0862315
0-6 months (no birth wast)    SAS-CompFeed   INDIA        1                    NA                0.1204819   0.0857775   0.1551864
0-6 months (no birth wast)    SAS-CompFeed   INDIA        0                    NA                0.2272727   0.0595457   0.3949997
6-24 months                   GMS-Nepal      NEPAL        1                    NA                0.4917826   0.4438360   0.5397292
6-24 months                   GMS-Nepal      NEPAL        0                    NA                0.4446611   0.3620162   0.5273061
6-24 months                   JiVitA-3       BANGLADESH   1                    NA                0.1650396   0.1561760   0.1739031
6-24 months                   JiVitA-3       BANGLADESH   0                    NA                0.1694196   0.1528684   0.1859708
6-24 months                   JiVitA-4       BANGLADESH   1                    NA                0.2406443   0.2239586   0.2573299
6-24 months                   JiVitA-4       BANGLADESH   0                    NA                0.2614224   0.2302843   0.2925604
6-24 months                   Keneba         GAMBIA       1                    NA                0.3238435   0.2897075   0.3579795
6-24 months                   Keneba         GAMBIA       0                    NA                0.3481045   0.3229439   0.3732652
6-24 months                   LCNI-5         MALAWI       1                    NA                0.1111111   0.0191112   0.2031111
6-24 months                   LCNI-5         MALAWI       0                    NA                0.0938967   0.0546489   0.1331445
6-24 months                   MAL-ED         BANGLADESH   1                    NA                0.2424242   0.0958903   0.3889582
6-24 months                   MAL-ED         BANGLADESH   0                    NA                0.1675127   0.1152522   0.2197732
6-24 months                   PROVIDE        BANGLADESH   1                    NA                0.1413970   0.0845987   0.1981954
6-24 months                   PROVIDE        BANGLADESH   0                    NA                0.1669788   0.1330725   0.2008850
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
0-24 months (no birth wast)   PROVIDE        BANGLADESH   NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   SAS-CompFeed   INDIA        NA                   NA                0.3792325   0.3255512   0.4329138
0-6 months (no birth wast)    GMS-Nepal      NEPAL        NA                   NA                0.2187500   0.1839790   0.2535210
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   NA                   NA                0.0719114   0.0672720   0.0765508
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   NA                   NA                0.0274331   0.0219967   0.0328694
0-6 months (no birth wast)    Keneba         GAMBIA       NA                   NA                0.1185520   0.1050716   0.1320324
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
0-24 months (no birth wast)   GMS-Nepal      NEPAL        0                    1                 0.9222786   0.7759829   1.096155
0-24 months (no birth wast)   JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3       BANGLADESH   0                    1                 1.0699961   0.9773432   1.171433
0-24 months (no birth wast)   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-4       BANGLADESH   0                    1                 1.0972303   0.9644336   1.248312
0-24 months (no birth wast)   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   Keneba         GAMBIA       0                    1                 1.1982707   1.0713779   1.340193
0-24 months (no birth wast)   LCNI-5         MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   LCNI-5         MALAWI       0                    1                 0.8392857   0.3311837   2.126918
0-24 months (no birth wast)   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED         BANGLADESH   0                    1                 0.8433333   0.4566411   1.557484
0-24 months (no birth wast)   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   PROVIDE        BANGLADESH   0                    1                 1.4328342   0.9497272   2.161688
0-24 months (no birth wast)   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   SAS-CompFeed   INDIA        0                    1                 1.2312191   0.8795362   1.723523
0-6 months (no birth wast)    GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal      NEPAL        0                    1                 1.1484471   0.8102951   1.627717
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   0                    1                 1.1244799   0.9763783   1.295046
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   0                    1                 1.4499576   0.9176976   2.290926
0-6 months (no birth wast)    Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    Keneba         GAMBIA       0                    1                 1.5101745   1.1685923   1.951602
0-6 months (no birth wast)    PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    PROVIDE        BANGLADESH   0                    1                 2.1545643   0.9124937   5.087320
0-6 months (no birth wast)    SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    SAS-CompFeed   INDIA        0                    1                 1.8863636   0.8915751   3.991103
6-24 months                   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal      NEPAL        0                    1                 0.9041823   0.7337479   1.114205
6-24 months                   JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-3       BANGLADESH   0                    1                 1.0265391   0.9172383   1.148865
6-24 months                   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-4       BANGLADESH   0                    1                 1.0863437   0.9479893   1.244890
6-24 months                   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   Keneba         GAMBIA       0                    1                 1.0749160   0.9466365   1.220579
6-24 months                   LCNI-5         MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   LCNI-5         MALAWI       0                    1                 0.8450704   0.3342527   2.136539
6-24 months                   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   MAL-ED         BANGLADESH   0                    1                 0.6909898   0.3499915   1.364225
6-24 months                   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   PROVIDE        BANGLADESH   0                    1                 1.1809212   0.7526646   1.852850
6-24 months                   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   SAS-CompFeed   INDIA        0                    1                 1.1730526   0.5767231   2.385985


### Parameter: PAR


agecat                        studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal      NEPAL        1                    NA                -0.0109810   -0.0349063   0.0129442
0-24 months (no birth wast)   JiVitA-3       BANGLADESH   1                    NA                 0.0026482   -0.0009243   0.0062207
0-24 months (no birth wast)   JiVitA-4       BANGLADESH   1                    NA                 0.0068938   -0.0010644   0.0148520
0-24 months (no birth wast)   Keneba         GAMBIA       1                    NA                 0.0416081    0.0155202   0.0676959
0-24 months (no birth wast)   LCNI-5         MALAWI       1                    NA                -0.0141321   -0.0934107   0.0651466
0-24 months (no birth wast)   MAL-ED         BANGLADESH   1                    NA                -0.0366758   -0.1766977   0.1033462
0-24 months (no birth wast)   PROVIDE        BANGLADESH   1                    NA                 0.0360549   -0.0098936   0.0820034
0-24 months (no birth wast)   SAS-CompFeed   INDIA        1                    NA                 0.0043133   -0.0046855   0.0133121
0-6 months (no birth wast)    GMS-Nepal      NEPAL        1                    NA                 0.0061877   -0.0146199   0.0269953
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   1                    NA                 0.0019061   -0.0005059   0.0043181
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   1                    NA                 0.0023823   -0.0007213   0.0054859
0-6 months (no birth wast)    Keneba         GAMBIA       1                    NA                 0.0286142    0.0116611   0.0455672
0-6 months (no birth wast)    PROVIDE        BANGLADESH   1                    NA                 0.0243220    0.0015921   0.0470519
0-6 months (no birth wast)    SAS-CompFeed   INDIA        1                    NA                 0.0053762   -0.0018898   0.0126422
6-24 months                   GMS-Nepal      NEPAL        1                    NA                -0.0088383   -0.0329338   0.0152572
6-24 months                   JiVitA-3       BANGLADESH   1                    NA                 0.0010063   -0.0033327   0.0053453
6-24 months                   JiVitA-4       BANGLADESH   1                    NA                 0.0056653   -0.0022185   0.0135491
6-24 months                   Keneba         GAMBIA       1                    NA                 0.0158694   -0.0119007   0.0436395
6-24 months                   LCNI-5         MALAWI       1                    NA                -0.0142119   -0.0967920   0.0683682
6-24 months                   MAL-ED         BANGLADESH   1                    NA                -0.0641634   -0.1974596   0.0691328
6-24 months                   PROVIDE        BANGLADESH   1                    NA                 0.0195786   -0.0307793   0.0699365
6-24 months                   SAS-CompFeed   INDIA        1                    NA                 0.0024764   -0.0094430   0.0143959


### Parameter: PAF


agecat                        studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal      NEPAL        1                    NA                -0.0193377   -0.0623985   0.0219778
0-24 months (no birth wast)   JiVitA-3       BANGLADESH   1                    NA                 0.0154975   -0.0056231   0.0361745
0-24 months (no birth wast)   JiVitA-4       BANGLADESH   1                    NA                 0.0264011   -0.0046041   0.0564494
0-24 months (no birth wast)   Keneba         GAMBIA       1                    NA                 0.1075721    0.0374747   0.1725645
0-24 months (no birth wast)   LCNI-5         MALAWI       1                    NA                -0.1531915   -1.4265796   0.4519650
0-24 months (no birth wast)   MAL-ED         BANGLADESH   1                    NA                -0.1553719   -0.9300888   0.3083820
0-24 months (no birth wast)   PROVIDE        BANGLADESH   1                    NA                 0.2030305   -0.1009042   0.4230557
0-24 months (no birth wast)   SAS-CompFeed   INDIA        1                    NA                 0.0113737   -0.0131809   0.0353333
0-6 months (no birth wast)    GMS-Nepal      NEPAL        1                    NA                 0.0282865   -0.0715781   0.1188443
0-6 months (no birth wast)    JiVitA-3       BANGLADESH   1                    NA                 0.0265059   -0.0075730   0.0594323
0-6 months (no birth wast)    JiVitA-4       BANGLADESH   1                    NA                 0.0868408   -0.0340459   0.1935950
0-6 months (no birth wast)    Keneba         GAMBIA       1                    NA                 0.2413636    0.0863497   0.3700772
0-6 months (no birth wast)    PROVIDE        BANGLADESH   1                    NA                 0.4489714   -0.1322414   0.7318305
0-6 months (no birth wast)    SAS-CompFeed   INDIA        1                    NA                 0.0427163   -0.0166271   0.0985957
6-24 months                   GMS-Nepal      NEPAL        1                    NA                -0.0183008   -0.0694681   0.0304184
6-24 months                   JiVitA-3       BANGLADESH   1                    NA                 0.0060604   -0.0204189   0.0318526
6-24 months                   JiVitA-4       BANGLADESH   1                    NA                 0.0230008   -0.0095721   0.0545228
6-24 months                   Keneba         GAMBIA       1                    NA                 0.0467142   -0.0386413   0.1250552
6-24 months                   LCNI-5         MALAWI       1                    NA                -0.1466667   -1.4083049   0.4540374
6-24 months                   MAL-ED         BANGLADESH   1                    NA                -0.3599409   -1.3519971   0.2136729
6-24 months                   PROVIDE        BANGLADESH   1                    NA                 0.1216244   -0.2535997   0.3845375
6-24 months                   SAS-CompFeed   INDIA        1                    NA                 0.0078232   -0.0309120   0.0451030
