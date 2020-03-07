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

**Intervention Variable:** predexfd6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid          country                        predexfd6    ever_swasted   n_cell       n
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
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                       0    11773   15666
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                       1      433   15666
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                       0     3337   15666
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                       1      123   15666
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                       0     3533    4722
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                       1      147    4722
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                       0      991    4722
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                       1       51    4722
0-24 months (no birth wast)   Keneba           GAMBIA                         1                       0      722    2226
0-24 months (no birth wast)   Keneba           GAMBIA                         1                       1      101    2226
0-24 months (no birth wast)   Keneba           GAMBIA                         0                       0     1159    2226
0-24 months (no birth wast)   Keneba           GAMBIA                         0                       1      244    2226
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                       0       47     271
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                       1        0     271
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                       0      222     271
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                       1        2     271
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                       0       80     233
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                       1        5     233
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                       0      141     233
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                       1        7     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                       0       29     210
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                       1        1     210
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                       0      177     210
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                       1        3     210
0-24 months (no birth wast)   MAL-ED           INDIA                          1                       0       11     216
0-24 months (no birth wast)   MAL-ED           INDIA                          1                       1        0     216
0-24 months (no birth wast)   MAL-ED           INDIA                          0                       0      193     216
0-24 months (no birth wast)   MAL-ED           INDIA                          0                       1       12     216
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                       0       12     225
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                       1        0     225
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                       0      210     225
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                       1        3     225
0-24 months (no birth wast)   MAL-ED           PERU                           1                       0       90     271
0-24 months (no birth wast)   MAL-ED           PERU                           1                       1        2     271
0-24 months (no birth wast)   MAL-ED           PERU                           0                       0      177     271
0-24 months (no birth wast)   MAL-ED           PERU                           0                       1        2     271
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                       0        3     237
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                       1        0     237
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                       0      223     237
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                       1       11     237
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        1     235
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     235
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      226     235
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
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                       0    11904   15533
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                       1      201   15533
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                       0     3369   15533
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                       1       59   15533
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                       0     3608    4593
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                       1       14    4593
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                       0      964    4593
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                       1        7    4593
0-6 months (no birth wast)    Keneba           GAMBIA                         1                       0      793    2210
0-6 months (no birth wast)    Keneba           GAMBIA                         1                       1       25    2210
0-6 months (no birth wast)    Keneba           GAMBIA                         0                       0     1326    2210
0-6 months (no birth wast)    Keneba           GAMBIA                         0                       1       66    2210
0-6 months (no birth wast)    LCNI-5           MALAWI                         1                       0       47     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         1                       1        0     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         0                       0      221     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         0                       1        0     268
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                       0       82     232
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                       1        3     232
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                       0      143     232
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                       1        4     232
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                       0       29     210
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                       1        1     210
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                       0      178     210
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                       1        2     210
0-6 months (no birth wast)    MAL-ED           INDIA                          1                       0       11     215
0-6 months (no birth wast)    MAL-ED           INDIA                          1                       1        0     215
0-6 months (no birth wast)    MAL-ED           INDIA                          0                       0      198     215
0-6 months (no birth wast)    MAL-ED           INDIA                          0                       1        6     215
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                       0       12     223
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                       1        0     223
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                       0      210     223
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                       1        1     223
0-6 months (no birth wast)    MAL-ED           PERU                           1                       0       91     271
0-6 months (no birth wast)    MAL-ED           PERU                           1                       1        1     271
0-6 months (no birth wast)    MAL-ED           PERU                           0                       0      179     271
0-6 months (no birth wast)    MAL-ED           PERU                           0                       1        0     271
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                       0        3     236
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                       1        0     236
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                       0      230     236
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                       1        3     236
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        1     235
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     235
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      231     235
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
6-24 months                   JiVitA-3         BANGLADESH                     1                       0     7632   10202
6-24 months                   JiVitA-3         BANGLADESH                     1                       1      251   10202
6-24 months                   JiVitA-3         BANGLADESH                     0                       0     2250   10202
6-24 months                   JiVitA-3         BANGLADESH                     0                       1       69   10202
6-24 months                   JiVitA-4         BANGLADESH                     1                       0     3551    4742
6-24 months                   JiVitA-4         BANGLADESH                     1                       1      144    4742
6-24 months                   JiVitA-4         BANGLADESH                     0                       0      998    4742
6-24 months                   JiVitA-4         BANGLADESH                     0                       1       49    4742
6-24 months                   Keneba           GAMBIA                         1                       0      642    2090
6-24 months                   Keneba           GAMBIA                         1                       1       79    2090
6-24 months                   Keneba           GAMBIA                         0                       0     1186    2090
6-24 months                   Keneba           GAMBIA                         0                       1      183    2090
6-24 months                   LCNI-5           MALAWI                         1                       0       45     258
6-24 months                   LCNI-5           MALAWI                         1                       1        0     258
6-24 months                   LCNI-5           MALAWI                         0                       0      211     258
6-24 months                   LCNI-5           MALAWI                         0                       1        2     258
6-24 months                   MAL-ED           BANGLADESH                     1                       0       82     230
6-24 months                   MAL-ED           BANGLADESH                     1                       1        2     230
6-24 months                   MAL-ED           BANGLADESH                     0                       0      143     230
6-24 months                   MAL-ED           BANGLADESH                     0                       1        3     230
6-24 months                   MAL-ED           BRAZIL                         1                       0       30     207
6-24 months                   MAL-ED           BRAZIL                         1                       1        0     207
6-24 months                   MAL-ED           BRAZIL                         0                       0      176     207
6-24 months                   MAL-ED           BRAZIL                         0                       1        1     207
6-24 months                   MAL-ED           INDIA                          1                       0       11     217
6-24 months                   MAL-ED           INDIA                          1                       1        0     217
6-24 months                   MAL-ED           INDIA                          0                       0      200     217
6-24 months                   MAL-ED           INDIA                          0                       1        6     217
6-24 months                   MAL-ED           NEPAL                          1                       0       12     224
6-24 months                   MAL-ED           NEPAL                          1                       1        0     224
6-24 months                   MAL-ED           NEPAL                          0                       0      210     224
6-24 months                   MAL-ED           NEPAL                          0                       1        2     224
6-24 months                   MAL-ED           PERU                           1                       0       90     269
6-24 months                   MAL-ED           PERU                           1                       1        1     269
6-24 months                   MAL-ED           PERU                           0                       0      176     269
6-24 months                   MAL-ED           PERU                           0                       1        2     269
6-24 months                   MAL-ED           SOUTH AFRICA                   1                       0        3     235
6-24 months                   MAL-ED           SOUTH AFRICA                   1                       1        0     235
6-24 months                   MAL-ED           SOUTH AFRICA                   0                       0      223     235
6-24 months                   MAL-ED           SOUTH AFRICA                   0                       1        9     235
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        1     231
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     231
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      225     231
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
![](/tmp/7a3f1aad-f301-4511-91e5-05cf206b0056/d5661a56-149a-47ea-a7b4-285ce97f5db1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7a3f1aad-f301-4511-91e5-05cf206b0056/d5661a56-149a-47ea-a7b4-285ce97f5db1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7a3f1aad-f301-4511-91e5-05cf206b0056/d5661a56-149a-47ea-a7b4-285ce97f5db1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7a3f1aad-f301-4511-91e5-05cf206b0056/d5661a56-149a-47ea-a7b4-285ce97f5db1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid     country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                0.2086331    0.1695986   0.2476676
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    NA                0.2727273    0.1996670   0.3457875
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                0.0354744    0.0318365   0.0391122
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   0                    NA                0.0355491    0.0281468   0.0429514
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                0.0399457    0.0330080   0.0468833
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   0                    NA                0.0489443    0.0356151   0.0622735
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                0.1227217    0.1002997   0.1451438
0-24 months (no birth wast)   Keneba      GAMBIA       0                    NA                0.1739130    0.1540751   0.1937509
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                0.0588235    0.0086951   0.1089519
0-24 months (no birth wast)   MAL-ED      BANGLADESH   0                    NA                0.0472973    0.0130246   0.0815700
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                0.0492611    0.0281910   0.0703312
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    NA                0.0724638    0.0291691   0.1157584
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                0.0166047    0.0139844   0.0192250
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   0                    NA                0.0172112    0.0116864   0.0227360
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                0.0038653    0.0005928   0.0071378
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   0                    NA                0.0072091   -0.0003364   0.0147545
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                0.0305623    0.0187640   0.0423607
0-6 months (no birth wast)    Keneba      GAMBIA       0                    NA                0.0474138    0.0362469   0.0585807
6-24 months                   GMS-Nepal   NEPAL        1                    NA                0.1783133    0.1414529   0.2151736
6-24 months                   GMS-Nepal   NEPAL        0                    NA                0.2394366    0.1691849   0.3096884
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                0.0318407    0.0273535   0.0363278
6-24 months                   JiVitA-3    BANGLADESH   0                    NA                0.0297542    0.0220830   0.0374254
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                0.0389716    0.0322620   0.0456812
6-24 months                   JiVitA-4    BANGLADESH   0                    NA                0.0468004    0.0341554   0.0594453
6-24 months                   Keneba      GAMBIA       1                    NA                0.1095700    0.0867650   0.1323750
6-24 months                   Keneba      GAMBIA       0                    NA                0.1336742    0.1156434   0.1517050


### Parameter: E(Y)


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        NA                   NA                0.2250000   0.1903834   0.2596166
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   NA                   NA                0.0354909   0.0322227   0.0387591
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   NA                   NA                0.0419314   0.0358274   0.0480353
0-24 months (no birth wast)   Keneba      GAMBIA       NA                   NA                0.1549865   0.1399495   0.1700235
0-24 months (no birth wast)   MAL-ED      BANGLADESH   NA                   NA                0.0515021   0.0230618   0.0799425
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
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    1                 1.3072100   0.9428389   1.812397
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   0                    1                 1.0021079   0.7943289   1.264237
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   0                    1                 1.2252732   0.8847081   1.696938
0-24 months (no birth wast)   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   Keneba      GAMBIA       0                    1                 1.4171330   1.1425301   1.757736
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      BANGLADESH   0                    1                 0.8040541   0.2627110   2.460890
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    1                 1.4710145   0.7055093   3.067123
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   0                    1                 1.0365254   0.7278383   1.476131
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   0                    1                 1.8650875   0.4808975   7.233457
0-6 months (no birth wast)    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    Keneba      GAMBIA       0                    1                 1.5513793   0.9870138   2.438444
6-24 months                   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal   NEPAL        0                    1                 1.3427864   0.9378500   1.922563
6-24 months                   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-3    BANGLADESH   0                    1                 0.9344717   0.6997738   1.247885
6-24 months                   JiVitA-4    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-4    BANGLADESH   0                    1                 1.2008848   0.8694880   1.658590
6-24 months                   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   Keneba      GAMBIA       0                    1                 1.2199887   0.9520129   1.563395


### Parameter: PAR


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                 0.0163669   -0.0049119   0.0376457
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                 0.0000165   -0.0018071   0.0018402
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                 0.0019857   -0.0013590   0.0053305
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                 0.0322648    0.0133675   0.0511620
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                -0.0073214   -0.0458998   0.0312570
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0058860   -0.0063579   0.0181299
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                 0.0001338   -0.0012005   0.0014682
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                 0.0007069   -0.0010429   0.0024567
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                 0.0106141    0.0003763   0.0208519
6-24 months                   GMS-Nepal   NEPAL        1                    NA                 0.0155826   -0.0047636   0.0359288
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                -0.0004743   -0.0024616   0.0015131
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                 0.0017285   -0.0014588   0.0049159
6-24 months                   Keneba      GAMBIA       1                    NA                 0.0157888   -0.0032603   0.0348380


### Parameter: PAF


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                 0.0727418   -0.0264827   0.1623748
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                 0.0004653   -0.0522590   0.0505478
0-24 months (no birth wast)   JiVitA-4    BANGLADESH   1                    NA                 0.0473567   -0.0361113   0.1241007
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                 0.2081779    0.0777513   0.3201593
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                -0.1421569   -1.1936993   0.4053322
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.1067323   -0.1417290   0.3011239
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                 0.0079964   -0.0748796   0.0844824
0-6 months (no birth wast)    JiVitA-4    BANGLADESH   1                    NA                 0.1546107   -0.3285313   0.4620503
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                 0.2577716   -0.0304399   0.4653710
6-24 months                   GMS-Nepal   NEPAL        1                    NA                 0.0803659   -0.0302351   0.1790934
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                -0.0151204   -0.0804440   0.0462538
6-24 months                   JiVitA-4    BANGLADESH   1                    NA                 0.0424702   -0.0394466   0.1179313
6-24 months                   Keneba      GAMBIA       1                    NA                 0.1259489   -0.0394192   0.2650075
