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

**Intervention Variable:** exclfeed3

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

agecat                        studyid          country                        exclfeed3    ever_wasted   n_cell       n
----------------------------  ---------------  -----------------------------  ----------  ------------  -------  ------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                      0        4      10
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                      1        6      10
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                      0        0      10
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                      1        0      10
0-24 months (no birth wast)   EE               PAKISTAN                       1                      0       18      39
0-24 months (no birth wast)   EE               PAKISTAN                       1                      1       21      39
0-24 months (no birth wast)   EE               PAKISTAN                       0                      0        0      39
0-24 months (no birth wast)   EE               PAKISTAN                       0                      1        0      39
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                      0      147     453
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                      1      229     453
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                      0       39     453
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                      1       38     453
0-24 months (no birth wast)   IRC              INDIA                          1                      0        0      10
0-24 months (no birth wast)   IRC              INDIA                          1                      1        0      10
0-24 months (no birth wast)   IRC              INDIA                          0                      0        4      10
0-24 months (no birth wast)   IRC              INDIA                          0                      1        6      10
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                      0    11034   14768
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                      1     2327   14768
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                      0     1167   14768
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                      1      240   14768
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                      0      109     164
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                      1       38     164
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                      0       13     164
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                      1        4     164
0-24 months (no birth wast)   Keneba           GAMBIA                         1                      0     1100    2015
0-24 months (no birth wast)   Keneba           GAMBIA                         1                      1      695    2015
0-24 months (no birth wast)   Keneba           GAMBIA                         0                      0      120    2015
0-24 months (no birth wast)   Keneba           GAMBIA                         0                      1      100    2015
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                      0      123     244
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                      1       36     244
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                      0       66     244
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                      1       19     244
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                      0       58     202
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                      1        6     202
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                      0      131     202
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                      1        7     202
0-24 months (no birth wast)   MAL-ED           INDIA                          1                      0       71     212
0-24 months (no birth wast)   MAL-ED           INDIA                          1                      1       41     212
0-24 months (no birth wast)   MAL-ED           INDIA                          0                      0       59     212
0-24 months (no birth wast)   MAL-ED           INDIA                          0                      1       41     212
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                      0       57     227
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                      1       13     227
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                      0      124     227
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                      1       33     227
0-24 months (no birth wast)   MAL-ED           PERU                           1                      0       61     287
0-24 months (no birth wast)   MAL-ED           PERU                           1                      1        3     287
0-24 months (no birth wast)   MAL-ED           PERU                           0                      0      206     287
0-24 months (no birth wast)   MAL-ED           PERU                           0                      1       17     287
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                      0       23     269
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                      1        2     269
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                      0      203     269
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                      1       41     269
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0       42     219
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        5     219
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0      149     219
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1       23     219
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                      0      407     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                      1       86     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                      0      158     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                      1       36     687
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                      0      263     443
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                      1      158     443
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                      0       12     443
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                      1       10     443
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                      0        5       9
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                      1        4       9
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                      0        0       9
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                      1        0       9
0-6 months (no birth wast)    EE               PAKISTAN                       1                      0       33      38
0-6 months (no birth wast)    EE               PAKISTAN                       1                      1        5      38
0-6 months (no birth wast)    EE               PAKISTAN                       0                      0        0      38
0-6 months (no birth wast)    EE               PAKISTAN                       0                      1        0      38
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                      0      288     439
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                      1       78     439
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                      0       55     439
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                      1       18     439
0-6 months (no birth wast)    IRC              INDIA                          1                      0        0       9
0-6 months (no birth wast)    IRC              INDIA                          1                      1        0       9
0-6 months (no birth wast)    IRC              INDIA                          0                      0        3       9
0-6 months (no birth wast)    IRC              INDIA                          0                      1        6       9
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                      0    12287   14643
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                      1      961   14643
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                      0     1279   14643
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                      1      116   14643
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                      0      143     161
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                      1        3     161
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                      0       14     161
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                      1        1     161
0-6 months (no birth wast)    Keneba           GAMBIA                         1                      0     1582    2001
0-6 months (no birth wast)    Keneba           GAMBIA                         1                      1      204    2001
0-6 months (no birth wast)    Keneba           GAMBIA                         0                      0      172    2001
0-6 months (no birth wast)    Keneba           GAMBIA                         0                      1       43    2001
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                      0      148     243
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                      1       10     243
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                      0       78     243
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                      1        7     243
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                      0       60     202
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                      1        4     202
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                      0      134     202
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                      1        4     202
0-6 months (no birth wast)    MAL-ED           INDIA                          1                      0       98     210
0-6 months (no birth wast)    MAL-ED           INDIA                          1                      1       14     210
0-6 months (no birth wast)    MAL-ED           INDIA                          0                      0       80     210
0-6 months (no birth wast)    MAL-ED           INDIA                          0                      1       18     210
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                      0       66     225
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                      1        4     225
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                      0      143     225
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                      1       12     225
0-6 months (no birth wast)    MAL-ED           PERU                           1                      0       64     287
0-6 months (no birth wast)    MAL-ED           PERU                           1                      1        0     287
0-6 months (no birth wast)    MAL-ED           PERU                           0                      0      218     287
0-6 months (no birth wast)    MAL-ED           PERU                           0                      1        5     287
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                      0       24     268
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                      1        1     268
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                      0      231     268
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                      1       12     268
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0       44     219
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        3     219
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0      167     219
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1        5     219
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                      0      471     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                      1       22     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                      0      175     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                      1       15     683
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                      0      365     437
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                      1       50     437
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                      0       17     437
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                      1        5     437
6-24 months                   CMC-V-BCS-2002   INDIA                          1                      0        6      10
6-24 months                   CMC-V-BCS-2002   INDIA                          1                      1        4      10
6-24 months                   CMC-V-BCS-2002   INDIA                          0                      0        0      10
6-24 months                   CMC-V-BCS-2002   INDIA                          0                      1        0      10
6-24 months                   EE               PAKISTAN                       1                      0       21      38
6-24 months                   EE               PAKISTAN                       1                      1       17      38
6-24 months                   EE               PAKISTAN                       0                      0        0      38
6-24 months                   EE               PAKISTAN                       0                      1        0      38
6-24 months                   GMS-Nepal        NEPAL                          1                      0      181     451
6-24 months                   GMS-Nepal        NEPAL                          1                      1      194     451
6-24 months                   GMS-Nepal        NEPAL                          0                      0       45     451
6-24 months                   GMS-Nepal        NEPAL                          0                      1       31     451
6-24 months                   IRC              INDIA                          1                      0        0      10
6-24 months                   IRC              INDIA                          1                      1        0      10
6-24 months                   IRC              INDIA                          0                      0        7      10
6-24 months                   IRC              INDIA                          0                      1        3      10
6-24 months                   JiVitA-3         BANGLADESH                     1                      0     7299    9618
6-24 months                   JiVitA-3         BANGLADESH                     1                      1     1489    9618
6-24 months                   JiVitA-3         BANGLADESH                     0                      0      699    9618
6-24 months                   JiVitA-3         BANGLADESH                     0                      1      131    9618
6-24 months                   JiVitA-4         BANGLADESH                     1                      0      113     165
6-24 months                   JiVitA-4         BANGLADESH                     1                      1       35     165
6-24 months                   JiVitA-4         BANGLADESH                     0                      0       14     165
6-24 months                   JiVitA-4         BANGLADESH                     0                      1        3     165
6-24 months                   Keneba           GAMBIA                         1                      0     1118    1910
6-24 months                   Keneba           GAMBIA                         1                      1      582    1910
6-24 months                   Keneba           GAMBIA                         0                      0      136    1910
6-24 months                   Keneba           GAMBIA                         0                      1       74    1910
6-24 months                   MAL-ED           BANGLADESH                     1                      0      122     232
6-24 months                   MAL-ED           BANGLADESH                     1                      1       29     232
6-24 months                   MAL-ED           BANGLADESH                     0                      0       69     232
6-24 months                   MAL-ED           BANGLADESH                     0                      1       12     232
6-24 months                   MAL-ED           BRAZIL                         1                      0       57     185
6-24 months                   MAL-ED           BRAZIL                         1                      1        3     185
6-24 months                   MAL-ED           BRAZIL                         0                      0      122     185
6-24 months                   MAL-ED           BRAZIL                         0                      1        3     185
6-24 months                   MAL-ED           INDIA                          1                      0       78     209
6-24 months                   MAL-ED           INDIA                          1                      1       31     209
6-24 months                   MAL-ED           INDIA                          0                      0       71     209
6-24 months                   MAL-ED           INDIA                          0                      1       29     209
6-24 months                   MAL-ED           NEPAL                          1                      0       59     226
6-24 months                   MAL-ED           NEPAL                          1                      1       11     226
6-24 months                   MAL-ED           NEPAL                          0                      0      131     226
6-24 months                   MAL-ED           NEPAL                          0                      1       25     226
6-24 months                   MAL-ED           PERU                           1                      0       58     267
6-24 months                   MAL-ED           PERU                           1                      1        3     267
6-24 months                   MAL-ED           PERU                           0                      0      192     267
6-24 months                   MAL-ED           PERU                           0                      1       14     267
6-24 months                   MAL-ED           SOUTH AFRICA                   1                      0       22     248
6-24 months                   MAL-ED           SOUTH AFRICA                   1                      1        1     248
6-24 months                   MAL-ED           SOUTH AFRICA                   0                      0      191     248
6-24 months                   MAL-ED           SOUTH AFRICA                   0                      1       34     248
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0       43     210
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        3     210
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0      143     210
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1       21     210
6-24 months                   PROVIDE          BANGLADESH                     1                      0      363     615
6-24 months                   PROVIDE          BANGLADESH                     1                      1       72     615
6-24 months                   PROVIDE          BANGLADESH                     0                      0      153     615
6-24 months                   PROVIDE          BANGLADESH                     0                      1       27     615
6-24 months                   SAS-CompFeed     INDIA                          1                      0      273     417
6-24 months                   SAS-CompFeed     INDIA                          1                      1      125     417
6-24 months                   SAS-CompFeed     INDIA                          0                      0       12     417
6-24 months                   SAS-CompFeed     INDIA                          0                      1        7     417


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/e5d710b0-ff2c-4098-9633-bead0d98f618/094ba060-59f1-4598-8ce2-519513b7bc02/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e5d710b0-ff2c-4098-9633-bead0d98f618/094ba060-59f1-4598-8ce2-519513b7bc02/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e5d710b0-ff2c-4098-9633-bead0d98f618/094ba060-59f1-4598-8ce2-519513b7bc02/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e5d710b0-ff2c-4098-9633-bead0d98f618/094ba060-59f1-4598-8ce2-519513b7bc02/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal      NEPAL                          1                    NA                0.6086925   0.5595133   0.6578717
0-24 months (no birth wast)   GMS-Nepal      NEPAL                          0                    NA                0.4747641   0.3645736   0.5849547
0-24 months (no birth wast)   JiVitA-3       BANGLADESH                     1                    NA                0.1734868   0.1665220   0.1804516
0-24 months (no birth wast)   JiVitA-3       BANGLADESH                     0                    NA                0.1786964   0.1557667   0.2016260
0-24 months (no birth wast)   Keneba         GAMBIA                         1                    NA                0.3876014   0.3650911   0.4101117
0-24 months (no birth wast)   Keneba         GAMBIA                         0                    NA                0.4522191   0.3875552   0.5168831
0-24 months (no birth wast)   MAL-ED         BANGLADESH                     1                    NA                0.2221930   0.1574689   0.2869171
0-24 months (no birth wast)   MAL-ED         BANGLADESH                     0                    NA                0.2269952   0.1384207   0.3155697
0-24 months (no birth wast)   MAL-ED         BRAZIL                         1                    NA                0.0937500   0.0221611   0.1653389
0-24 months (no birth wast)   MAL-ED         BRAZIL                         0                    NA                0.0507246   0.0140225   0.0874268
0-24 months (no birth wast)   MAL-ED         INDIA                          1                    NA                0.3597790   0.2699821   0.4495760
0-24 months (no birth wast)   MAL-ED         INDIA                          0                    NA                0.4171356   0.3189349   0.5153363
0-24 months (no birth wast)   MAL-ED         NEPAL                          1                    NA                0.1938618   0.1030311   0.2846926
0-24 months (no birth wast)   MAL-ED         NEPAL                          0                    NA                0.2161726   0.1523876   0.2799577
0-24 months (no birth wast)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1063830   0.0180333   0.1947326
0-24 months (no birth wast)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1337209   0.0827402   0.1847017
0-24 months (no birth wast)   PROVIDE        BANGLADESH                     1                    NA                0.1768834   0.1429305   0.2108363
0-24 months (no birth wast)   PROVIDE        BANGLADESH                     0                    NA                0.1790146   0.1245444   0.2334848
0-24 months (no birth wast)   SAS-CompFeed   INDIA                          1                    NA                0.3749192   0.3179202   0.4319182
0-24 months (no birth wast)   SAS-CompFeed   INDIA                          0                    NA                0.4616077   0.3160035   0.6072120
0-6 months (no birth wast)    GMS-Nepal      NEPAL                          1                    NA                0.2125649   0.1705911   0.2545387
0-6 months (no birth wast)    GMS-Nepal      NEPAL                          0                    NA                0.2530265   0.1518583   0.3541947
0-6 months (no birth wast)    JiVitA-3       BANGLADESH                     1                    NA                0.0725783   0.0674558   0.0777008
0-6 months (no birth wast)    JiVitA-3       BANGLADESH                     0                    NA                0.0827846   0.0653320   0.1002372
0-6 months (no birth wast)    Keneba         GAMBIA                         1                    NA                0.1144286   0.0996583   0.1291989
0-6 months (no birth wast)    Keneba         GAMBIA                         0                    NA                0.1976058   0.1440964   0.2511153
0-6 months (no birth wast)    MAL-ED         BANGLADESH                     1                    NA                0.0632911   0.0252469   0.1013354
0-6 months (no birth wast)    MAL-ED         BANGLADESH                     0                    NA                0.0823529   0.0237915   0.1409143
0-6 months (no birth wast)    MAL-ED         INDIA                          1                    NA                0.1368280   0.0707041   0.2029519
0-6 months (no birth wast)    MAL-ED         INDIA                          0                    NA                0.1797272   0.1012604   0.2581940
0-6 months (no birth wast)    PROVIDE        BANGLADESH                     1                    NA                0.0447001   0.0264235   0.0629767
0-6 months (no birth wast)    PROVIDE        BANGLADESH                     0                    NA                0.0786945   0.0402234   0.1171656
0-6 months (no birth wast)    SAS-CompFeed   INDIA                          1                    NA                0.1204819   0.0857775   0.1551864
0-6 months (no birth wast)    SAS-CompFeed   INDIA                          0                    NA                0.2272727   0.0595457   0.3949997
6-24 months                   GMS-Nepal      NEPAL                          1                    NA                0.5179771   0.4673171   0.5686371
6-24 months                   GMS-Nepal      NEPAL                          0                    NA                0.4030669   0.2908664   0.5152674
6-24 months                   JiVitA-3       BANGLADESH                     1                    NA                0.1692995   0.1610095   0.1775895
6-24 months                   JiVitA-3       BANGLADESH                     0                    NA                0.1574924   0.1305016   0.1844833
6-24 months                   Keneba         GAMBIA                         1                    NA                0.3424188   0.3198850   0.3649525
6-24 months                   Keneba         GAMBIA                         0                    NA                0.3629664   0.2989312   0.4270016
6-24 months                   MAL-ED         BANGLADESH                     1                    NA                0.1881422   0.1258182   0.2504663
6-24 months                   MAL-ED         BANGLADESH                     0                    NA                0.1488168   0.0712876   0.2263460
6-24 months                   MAL-ED         INDIA                          1                    NA                0.2850345   0.1990464   0.3710226
6-24 months                   MAL-ED         INDIA                          0                    NA                0.2951128   0.2013392   0.3888864
6-24 months                   MAL-ED         NEPAL                          1                    NA                0.1647492   0.0806819   0.2488165
6-24 months                   MAL-ED         NEPAL                          0                    NA                0.1622032   0.1043369   0.2200695
6-24 months                   PROVIDE        BANGLADESH                     1                    NA                0.1666626   0.1314161   0.2019092
6-24 months                   PROVIDE        BANGLADESH                     0                    NA                0.1469579   0.0944619   0.1994539
6-24 months                   SAS-CompFeed   INDIA                          1                    NA                0.3140704   0.2638452   0.3642955
6-24 months                   SAS-CompFeed   INDIA                          0                    NA                0.3684211   0.1333387   0.6035034


### Parameter: E(Y)


agecat                        studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal      NEPAL                          NA                   NA                0.5894040   0.5440524   0.6347556
0-24 months (no birth wast)   JiVitA-3       BANGLADESH                     NA                   NA                0.1738218   0.1671074   0.1805361
0-24 months (no birth wast)   Keneba         GAMBIA                         NA                   NA                0.3945409   0.3731954   0.4158865
0-24 months (no birth wast)   MAL-ED         BANGLADESH                     NA                   NA                0.2254098   0.1728726   0.2779471
0-24 months (no birth wast)   MAL-ED         BRAZIL                         NA                   NA                0.0643564   0.0304329   0.0982800
0-24 months (no birth wast)   MAL-ED         INDIA                          NA                   NA                0.3867925   0.3210797   0.4525052
0-24 months (no birth wast)   MAL-ED         NEPAL                          NA                   NA                0.2026432   0.1502365   0.2550498
0-24 months (no birth wast)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1278539   0.0835266   0.1721812
0-24 months (no birth wast)   PROVIDE        BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   SAS-CompFeed   INDIA                          NA                   NA                0.3792325   0.3255512   0.4329138
0-6 months (no birth wast)    GMS-Nepal      NEPAL                          NA                   NA                0.2186788   0.1799683   0.2573894
0-6 months (no birth wast)    JiVitA-3       BANGLADESH                     NA                   NA                0.0735505   0.0685774   0.0785236
0-6 months (no birth wast)    Keneba         GAMBIA                         NA                   NA                0.1234383   0.1090221   0.1378544
0-6 months (no birth wast)    MAL-ED         BANGLADESH                     NA                   NA                0.0699588   0.0378213   0.1020964
0-6 months (no birth wast)    MAL-ED         INDIA                          NA                   NA                0.1523810   0.1036572   0.2011047
0-6 months (no birth wast)    PROVIDE        BANGLADESH                     NA                   NA                0.0541728   0.0371844   0.0711612
0-6 months (no birth wast)    SAS-CompFeed   INDIA                          NA                   NA                0.1258581   0.0910745   0.1606418
6-24 months                   GMS-Nepal      NEPAL                          NA                   NA                0.4988914   0.4526947   0.5450880
6-24 months                   JiVitA-3       BANGLADESH                     NA                   NA                0.1684342   0.1604630   0.1764054
6-24 months                   Keneba         GAMBIA                         NA                   NA                0.3434555   0.3221539   0.3647571
6-24 months                   MAL-ED         BANGLADESH                     NA                   NA                0.1767241   0.1275357   0.2259125
6-24 months                   MAL-ED         INDIA                          NA                   NA                0.2870813   0.2256006   0.3485621
6-24 months                   MAL-ED         NEPAL                          NA                   NA                0.1592920   0.1114757   0.2071084
6-24 months                   PROVIDE        BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   SAS-CompFeed   INDIA                          NA                   NA                0.3165468   0.2711185   0.3619751


### Parameter: RR


agecat                        studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal      NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   GMS-Nepal      NEPAL                          0                    1                 0.7799737   0.6109861   0.9957002
0-24 months (no birth wast)   JiVitA-3       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   JiVitA-3       BANGLADESH                     0                    1                 1.0300288   0.9012124   1.1772577
0-24 months (no birth wast)   Keneba         GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   Keneba         GAMBIA                         0                    1                 1.1667118   1.0005345   1.3604894
0-24 months (no birth wast)   MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED         BANGLADESH                     0                    1                 1.0216127   0.6322987   1.6506322
0-24 months (no birth wast)   MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED         BRAZIL                         0                    1                 0.5410628   0.1889656   1.5492185
0-24 months (no birth wast)   MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED         INDIA                          0                    1                 1.1594216   0.8221884   1.6349762
0-24 months (no birth wast)   MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED         NEPAL                          0                    1                 1.1150861   0.6434491   1.9324246
0-24 months (no birth wast)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.2569767   0.5040371   3.1346711
0-24 months (no birth wast)   PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   PROVIDE        BANGLADESH                     0                    1                 1.0120487   0.7062464   1.4502623
0-24 months (no birth wast)   SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   SAS-CompFeed   INDIA                          0                    1                 1.2312192   0.8795362   1.7235228
0-6 months (no birth wast)    GMS-Nepal      NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    GMS-Nepal      NEPAL                          0                    1                 1.1903495   0.7619673   1.8595707
0-6 months (no birth wast)    JiVitA-3       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    JiVitA-3       BANGLADESH                     0                    1                 1.1406248   0.9152568   1.4214862
0-6 months (no birth wast)    Keneba         GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    Keneba         GAMBIA                         0                    1                 1.7268924   1.2795177   2.3306886
0-6 months (no birth wast)    MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    MAL-ED         BANGLADESH                     0                    1                 1.3011765   0.5128087   3.3015437
0-6 months (no birth wast)    MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    MAL-ED         INDIA                          0                    1                 1.3135264   0.6827753   2.5269685
0-6 months (no birth wast)    PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    PROVIDE        BANGLADESH                     0                    1                 1.7604992   0.9304484   3.3310362
0-6 months (no birth wast)    SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    SAS-CompFeed   INDIA                          0                    1                 1.8863636   0.8915751   3.9911028
6-24 months                   GMS-Nepal      NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   GMS-Nepal      NEPAL                          0                    1                 0.7781559   0.5795508   1.0448205
6-24 months                   JiVitA-3       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   JiVitA-3       BANGLADESH                     0                    1                 0.9302593   0.7791530   1.1106707
6-24 months                   Keneba         GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   Keneba         GAMBIA                         0                    1                 1.0600072   0.8784644   1.2790676
6-24 months                   MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED         BANGLADESH                     0                    1                 0.7909802   0.4316987   1.4492740
6-24 months                   MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED         INDIA                          0                    1                 1.0353582   0.6666147   1.6080752
6-24 months                   MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED         NEPAL                          0                    1                 0.9845465   0.5294723   1.8307508
6-24 months                   PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   PROVIDE        BANGLADESH                     0                    1                 0.8817685   0.5820379   1.3358506
6-24 months                   SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                   SAS-CompFeed   INDIA                          0                    1                 1.1730526   0.5767231   2.3859846


### Parameter: PAR


agecat                        studyid        country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal      NEPAL                          1                    NA                -0.0192885   -0.0401221   0.0015451
0-24 months (no birth wast)   JiVitA-3       BANGLADESH                     1                    NA                 0.0003350   -0.0019020   0.0025720
0-24 months (no birth wast)   Keneba         GAMBIA                         1                    NA                 0.0069396   -0.0005182   0.0143973
0-24 months (no birth wast)   MAL-ED         BANGLADESH                     1                    NA                 0.0032168   -0.0338923   0.0403260
0-24 months (no birth wast)   MAL-ED         BRAZIL                         1                    NA                -0.0293936   -0.0844233   0.0256361
0-24 months (no birth wast)   MAL-ED         INDIA                          1                    NA                 0.0270134   -0.0356536   0.0896804
0-24 months (no birth wast)   MAL-ED         NEPAL                          1                    NA                 0.0087813   -0.0680104   0.0855731
0-24 months (no birth wast)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0214709   -0.0586552   0.1015970
0-24 months (no birth wast)   PROVIDE        BANGLADESH                     1                    NA                 0.0007003   -0.0177523   0.0191530
0-24 months (no birth wast)   SAS-CompFeed   INDIA                          1                    NA                 0.0043133   -0.0046855   0.0133121
0-6 months (no birth wast)    GMS-Nepal      NEPAL                          1                    NA                 0.0061139   -0.0118320   0.0240599
0-6 months (no birth wast)    JiVitA-3       BANGLADESH                     1                    NA                 0.0009722   -0.0007586   0.0027030
0-6 months (no birth wast)    Keneba         GAMBIA                         1                    NA                 0.0090097    0.0029675   0.0150519
0-6 months (no birth wast)    MAL-ED         BANGLADESH                     1                    NA                 0.0066677   -0.0177867   0.0311221
0-6 months (no birth wast)    MAL-ED         INDIA                          1                    NA                 0.0155529   -0.0344286   0.0655345
0-6 months (no birth wast)    PROVIDE        BANGLADESH                     1                    NA                 0.0094727   -0.0024232   0.0213685
0-6 months (no birth wast)    SAS-CompFeed   INDIA                          1                    NA                 0.0053762   -0.0018898   0.0126422
6-24 months                   GMS-Nepal      NEPAL                          1                    NA                -0.0190857   -0.0398718   0.0017004
6-24 months                   JiVitA-3       BANGLADESH                     1                    NA                -0.0008653   -0.0032745   0.0015438
6-24 months                   Keneba         GAMBIA                         1                    NA                 0.0010367   -0.0064499   0.0085233
6-24 months                   MAL-ED         BANGLADESH                     1                    NA                -0.0114181   -0.0451308   0.0222947
6-24 months                   MAL-ED         INDIA                          1                    NA                 0.0020468   -0.0586669   0.0627606
6-24 months                   MAL-ED         NEPAL                          1                    NA                -0.0054571   -0.0756312   0.0647169
6-24 months                   PROVIDE        BANGLADESH                     1                    NA                -0.0056870   -0.0243485   0.0129744
6-24 months                   SAS-CompFeed   INDIA                          1                    NA                 0.0024764   -0.0094430   0.0143959


### Parameter: PAF


agecat                        studyid        country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal      NEPAL                          1                    NA                -0.0327255   -0.0688762   0.0022026
0-24 months (no birth wast)   JiVitA-3       BANGLADESH                     1                    NA                 0.0019272   -0.0110218   0.0147103
0-24 months (no birth wast)   Keneba         GAMBIA                         1                    NA                 0.0175889   -0.0015071   0.0363208
0-24 months (no birth wast)   MAL-ED         BANGLADESH                     1                    NA                 0.0142711   -0.1649966   0.1659533
0-24 months (no birth wast)   MAL-ED         BRAZIL                         1                    NA                -0.4567308   -1.5709361   0.1745946
0-24 months (no birth wast)   MAL-ED         INDIA                          1                    NA                 0.0698396   -0.1073492   0.2186761
0-24 months (no birth wast)   MAL-ED         NEPAL                          1                    NA                 0.0433340   -0.4210780   0.3559749
0-24 months (no birth wast)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1679331   -0.7627614   0.6072439
0-24 months (no birth wast)   PROVIDE        BANGLADESH                     1                    NA                 0.0039436   -0.1055780   0.1026157
0-24 months (no birth wast)   SAS-CompFeed   INDIA                          1                    NA                 0.0113737   -0.0131809   0.0353333
0-6 months (no birth wast)    GMS-Nepal      NEPAL                          1                    NA                 0.0279585   -0.0576053   0.1065999
0-6 months (no birth wast)    JiVitA-3       BANGLADESH                     1                    NA                 0.0132184   -0.0105347   0.0364132
0-6 months (no birth wast)    Keneba         GAMBIA                         1                    NA                 0.0729896    0.0232957   0.1201551
0-6 months (no birth wast)    MAL-ED         BANGLADESH                     1                    NA                 0.0953090   -0.3278890   0.3836339
0-6 months (no birth wast)    MAL-ED         INDIA                          1                    NA                 0.1020662   -0.2913675   0.3756347
0-6 months (no birth wast)    PROVIDE        BANGLADESH                     1                    NA                 0.1748601   -0.0685627   0.3628302
0-6 months (no birth wast)    SAS-CompFeed   INDIA                          1                    NA                 0.0427163   -0.0166271   0.0985957
6-24 months                   GMS-Nepal      NEPAL                          1                    NA                -0.0382563   -0.0809241   0.0027274
6-24 months                   JiVitA-3       BANGLADESH                     1                    NA                -0.0051374   -0.0195490   0.0090705
6-24 months                   Keneba         GAMBIA                         1                    NA                 0.0030185   -0.0190190   0.0245795
6-24 months                   MAL-ED         BANGLADESH                     1                    NA                -0.0646096   -0.2724166   0.1092590
6-24 months                   MAL-ED         INDIA                          1                    NA                 0.0071298   -0.2285568   0.1976023
6-24 months                   MAL-ED         NEPAL                          1                    NA                -0.0342587   -0.5840076   0.3246933
6-24 months                   PROVIDE        BANGLADESH                     1                    NA                -0.0353286   -0.1578689   0.0742430
6-24 months                   SAS-CompFeed   INDIA                          1                    NA                 0.0078232   -0.0309120   0.0451030
