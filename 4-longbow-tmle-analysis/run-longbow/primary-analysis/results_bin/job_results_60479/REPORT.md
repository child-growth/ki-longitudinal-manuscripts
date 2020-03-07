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

agecat                        studyid          country                        exclfeed3    ever_swasted   n_cell       n
----------------------------  ---------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                       0        6      10
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                       1        4      10
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                       0        0      10
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                       1        0      10
0-24 months (no birth wast)   EE               PAKISTAN                       1                       0       34      39
0-24 months (no birth wast)   EE               PAKISTAN                       1                       1        5      39
0-24 months (no birth wast)   EE               PAKISTAN                       0                       0        0      39
0-24 months (no birth wast)   EE               PAKISTAN                       0                       1        0      39
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                       0      283     453
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                       1       93     453
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                       0       62     453
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                       1       15     453
0-24 months (no birth wast)   IRC              INDIA                          1                       0        0      10
0-24 months (no birth wast)   IRC              INDIA                          1                       1        0      10
0-24 months (no birth wast)   IRC              INDIA                          0                       0        6      10
0-24 months (no birth wast)   IRC              INDIA                          0                       1        4      10
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                       0    12883   14768
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                       1      478   14768
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                       0     1350   14768
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                       1       57   14768
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                       0      142     164
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                       1        5     164
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                       0       16     164
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                       1        1     164
0-24 months (no birth wast)   Keneba           GAMBIA                         1                       0     1519    2015
0-24 months (no birth wast)   Keneba           GAMBIA                         1                       1      276    2015
0-24 months (no birth wast)   Keneba           GAMBIA                         0                       0      178    2015
0-24 months (no birth wast)   Keneba           GAMBIA                         0                       1       42    2015
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                       0      153     244
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                       1        6     244
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                       0       79     244
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                       1        6     244
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                       0       61     202
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                       1        3     202
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                       0      137     202
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                       1        1     202
0-24 months (no birth wast)   MAL-ED           INDIA                          1                       0      106     212
0-24 months (no birth wast)   MAL-ED           INDIA                          1                       1        6     212
0-24 months (no birth wast)   MAL-ED           INDIA                          0                       0       94     212
0-24 months (no birth wast)   MAL-ED           INDIA                          0                       1        6     212
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                       0       68     227
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                       1        2     227
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                       0      156     227
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                       1        1     227
0-24 months (no birth wast)   MAL-ED           PERU                           1                       0       63     287
0-24 months (no birth wast)   MAL-ED           PERU                           1                       1        1     287
0-24 months (no birth wast)   MAL-ED           PERU                           0                       0      220     287
0-24 months (no birth wast)   MAL-ED           PERU                           0                       1        3     287
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                       0       25     269
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                       1        0     269
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                       0      233     269
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                       1       11     269
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0       46     219
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        1     219
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      166     219
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1        6     219
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                       0      481     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                       1       12     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                       0      187     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                       1        7     687
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                       0      368     443
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                       1       53     443
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                       0       20     443
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                       1        2     443
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                       0        6       9
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                       1        3       9
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                       0        0       9
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                       1        0       9
0-6 months (no birth wast)    EE               PAKISTAN                       1                       0       38      38
0-6 months (no birth wast)    EE               PAKISTAN                       1                       1        0      38
0-6 months (no birth wast)    EE               PAKISTAN                       0                       0        0      38
0-6 months (no birth wast)    EE               PAKISTAN                       0                       1        0      38
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                       0      347     439
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                       1       19     439
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                       0       68     439
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                       1        5     439
0-6 months (no birth wast)    IRC              INDIA                          1                       0        0       9
0-6 months (no birth wast)    IRC              INDIA                          1                       1        0       9
0-6 months (no birth wast)    IRC              INDIA                          0                       0        5       9
0-6 months (no birth wast)    IRC              INDIA                          0                       1        4       9
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                       0    13028   14643
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                       1      220   14643
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                       0     1365   14643
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                       1       30   14643
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                       0      146     161
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                       1        0     161
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                       0       14     161
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                       1        1     161
0-6 months (no birth wast)    Keneba           GAMBIA                         1                       0     1713    2001
0-6 months (no birth wast)    Keneba           GAMBIA                         1                       1       73    2001
0-6 months (no birth wast)    Keneba           GAMBIA                         0                       0      204    2001
0-6 months (no birth wast)    Keneba           GAMBIA                         0                       1       11    2001
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                       0      154     243
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                       1        4     243
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                       0       82     243
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                       1        3     243
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                       0       62     202
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                       1        2     202
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                       0      137     202
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                       1        1     202
0-6 months (no birth wast)    MAL-ED           INDIA                          1                       0      109     210
0-6 months (no birth wast)    MAL-ED           INDIA                          1                       1        3     210
0-6 months (no birth wast)    MAL-ED           INDIA                          0                       0       94     210
0-6 months (no birth wast)    MAL-ED           INDIA                          0                       1        4     210
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                       0       70     225
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                       1        0     225
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                       0      154     225
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                       1        1     225
0-6 months (no birth wast)    MAL-ED           PERU                           1                       0       64     287
0-6 months (no birth wast)    MAL-ED           PERU                           1                       1        0     287
0-6 months (no birth wast)    MAL-ED           PERU                           0                       0      222     287
0-6 months (no birth wast)    MAL-ED           PERU                           0                       1        1     287
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                       0       25     268
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                       1        0     268
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                       0      241     268
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                       1        2     268
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0       46     219
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        1     219
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      170     219
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1        2     219
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                       0      490     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                       1        3     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                       0      187     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                       1        3     683
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                       0      400     437
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                       1       15     437
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                       0       21     437
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                       1        1     437
6-24 months                   CMC-V-BCS-2002   INDIA                          1                       0        8      10
6-24 months                   CMC-V-BCS-2002   INDIA                          1                       1        2      10
6-24 months                   CMC-V-BCS-2002   INDIA                          0                       0        0      10
6-24 months                   CMC-V-BCS-2002   INDIA                          0                       1        0      10
6-24 months                   EE               PAKISTAN                       1                       0       33      38
6-24 months                   EE               PAKISTAN                       1                       1        5      38
6-24 months                   EE               PAKISTAN                       0                       0        0      38
6-24 months                   EE               PAKISTAN                       0                       1        0      38
6-24 months                   GMS-Nepal        NEPAL                          1                       0      293     451
6-24 months                   GMS-Nepal        NEPAL                          1                       1       82     451
6-24 months                   GMS-Nepal        NEPAL                          0                       0       64     451
6-24 months                   GMS-Nepal        NEPAL                          0                       1       12     451
6-24 months                   IRC              INDIA                          1                       0        0      10
6-24 months                   IRC              INDIA                          1                       1        0      10
6-24 months                   IRC              INDIA                          0                       0       10      10
6-24 months                   IRC              INDIA                          0                       1        0      10
6-24 months                   JiVitA-3         BANGLADESH                     1                       0     8510    9618
6-24 months                   JiVitA-3         BANGLADESH                     1                       1      278    9618
6-24 months                   JiVitA-3         BANGLADESH                     0                       0      801    9618
6-24 months                   JiVitA-3         BANGLADESH                     0                       1       29    9618
6-24 months                   JiVitA-4         BANGLADESH                     1                       0      142     165
6-24 months                   JiVitA-4         BANGLADESH                     1                       1        6     165
6-24 months                   JiVitA-4         BANGLADESH                     0                       0       17     165
6-24 months                   JiVitA-4         BANGLADESH                     0                       1        0     165
6-24 months                   Keneba           GAMBIA                         1                       0     1489    1910
6-24 months                   Keneba           GAMBIA                         1                       1      211    1910
6-24 months                   Keneba           GAMBIA                         0                       0      179    1910
6-24 months                   Keneba           GAMBIA                         0                       1       31    1910
6-24 months                   MAL-ED           BANGLADESH                     1                       0      149     232
6-24 months                   MAL-ED           BANGLADESH                     1                       1        2     232
6-24 months                   MAL-ED           BANGLADESH                     0                       0       78     232
6-24 months                   MAL-ED           BANGLADESH                     0                       1        3     232
6-24 months                   MAL-ED           BRAZIL                         1                       0       59     185
6-24 months                   MAL-ED           BRAZIL                         1                       1        1     185
6-24 months                   MAL-ED           BRAZIL                         0                       0      125     185
6-24 months                   MAL-ED           BRAZIL                         0                       1        0     185
6-24 months                   MAL-ED           INDIA                          1                       0      106     209
6-24 months                   MAL-ED           INDIA                          1                       1        3     209
6-24 months                   MAL-ED           INDIA                          0                       0       98     209
6-24 months                   MAL-ED           INDIA                          0                       1        2     209
6-24 months                   MAL-ED           NEPAL                          1                       0       68     226
6-24 months                   MAL-ED           NEPAL                          1                       1        2     226
6-24 months                   MAL-ED           NEPAL                          0                       0      156     226
6-24 months                   MAL-ED           NEPAL                          0                       1        0     226
6-24 months                   MAL-ED           PERU                           1                       0       60     267
6-24 months                   MAL-ED           PERU                           1                       1        1     267
6-24 months                   MAL-ED           PERU                           0                       0      204     267
6-24 months                   MAL-ED           PERU                           0                       1        2     267
6-24 months                   MAL-ED           SOUTH AFRICA                   1                       0       23     248
6-24 months                   MAL-ED           SOUTH AFRICA                   1                       1        0     248
6-24 months                   MAL-ED           SOUTH AFRICA                   0                       0      215     248
6-24 months                   MAL-ED           SOUTH AFRICA                   0                       1       10     248
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0       46     210
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     210
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      160     210
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1        4     210
6-24 months                   PROVIDE          BANGLADESH                     1                       0      426     615
6-24 months                   PROVIDE          BANGLADESH                     1                       1        9     615
6-24 months                   PROVIDE          BANGLADESH                     0                       0      176     615
6-24 months                   PROVIDE          BANGLADESH                     0                       1        4     615
6-24 months                   SAS-CompFeed     INDIA                          1                       0      359     417
6-24 months                   SAS-CompFeed     INDIA                          1                       1       39     417
6-24 months                   SAS-CompFeed     INDIA                          0                       0       18     417
6-24 months                   SAS-CompFeed     INDIA                          0                       1        1     417


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
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/3450e0f2-9337-40ec-afdc-f783d19923e1/2c6b01d5-4495-4354-a91a-35c2135f3f25/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3450e0f2-9337-40ec-afdc-f783d19923e1/2c6b01d5-4495-4354-a91a-35c2135f3f25/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3450e0f2-9337-40ec-afdc-f783d19923e1/2c6b01d5-4495-4354-a91a-35c2135f3f25/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3450e0f2-9337-40ec-afdc-f783d19923e1/2c6b01d5-4495-4354-a91a-35c2135f3f25/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                0.2470152   0.2033575   0.2906730
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    NA                0.1964227   0.1066804   0.2861650
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                0.0357074   0.0321848   0.0392300
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   0                    NA                0.0417773   0.0280634   0.0554913
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                0.1539445   0.1372578   0.1706312
0-24 months (no birth wast)   Keneba      GAMBIA       0                    NA                0.1834841   0.1317851   0.2351832
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                0.0377358   0.0080557   0.0674160
0-24 months (no birth wast)   MAL-ED      BANGLADESH   0                    NA                0.0705882   0.0160249   0.1251515
0-24 months (no birth wast)   MAL-ED      INDIA        1                    NA                0.0535714   0.0117714   0.0953714
0-24 months (no birth wast)   MAL-ED      INDIA        0                    NA                0.0600000   0.0133433   0.1066567
0-24 months (no birth wast)   PROVIDE     BANGLADESH   1                    NA                0.0243408   0.0107277   0.0379539
0-24 months (no birth wast)   PROVIDE     BANGLADESH   0                    NA                0.0360825   0.0098202   0.0623447
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                0.0519126   0.0291583   0.0746669
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    NA                0.0684932   0.0104837   0.1265026
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                0.0166183   0.0141258   0.0191107
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   0                    NA                0.0206993   0.0101367   0.0312620
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                0.0408497   0.0316552   0.0500441
0-6 months (no birth wast)    Keneba      GAMBIA       0                    NA                0.0506471   0.0187947   0.0824996
6-24 months                   GMS-Nepal   NEPAL        1                    NA                0.2178325   0.1759646   0.2597003
6-24 months                   GMS-Nepal   NEPAL        0                    NA                0.1472505   0.0659236   0.2285774
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                0.0315963   0.0272962   0.0358963
6-24 months                   JiVitA-3    BANGLADESH   0                    NA                0.0357520   0.0228920   0.0486121
6-24 months                   Keneba      GAMBIA       1                    NA                0.1239530   0.1082922   0.1396137
6-24 months                   Keneba      GAMBIA       0                    NA                0.1489246   0.0999323   0.1979169


### Parameter: E(Y)


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        NA                   NA                0.2384106   0.1991278   0.2776934
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   NA                   NA                0.0362270   0.0327939   0.0396601
0-24 months (no birth wast)   Keneba      GAMBIA       NA                   NA                0.1578164   0.1418944   0.1737384
0-24 months (no birth wast)   MAL-ED      BANGLADESH   NA                   NA                0.0491803   0.0219915   0.0763691
0-24 months (no birth wast)   MAL-ED      INDIA        NA                   NA                0.0566038   0.0254237   0.0877838
0-24 months (no birth wast)   PROVIDE     BANGLADESH   NA                   NA                0.0276565   0.0153851   0.0399279
0-6 months (no birth wast)    GMS-Nepal   NEPAL        NA                   NA                0.0546697   0.0333797   0.0759597
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   NA                   NA                0.0170730   0.0145369   0.0196091
0-6 months (no birth wast)    Keneba      GAMBIA       NA                   NA                0.0419790   0.0331901   0.0507680
6-24 months                   GMS-Nepal   NEPAL        NA                   NA                0.2084257   0.1708970   0.2459544
6-24 months                   JiVitA-3    BANGLADESH   NA                   NA                0.0319193   0.0278547   0.0359839
6-24 months                   Keneba      GAMBIA       NA                   NA                0.1267016   0.1117799   0.1416232


### Parameter: RR


agecat                        studyid     country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   GMS-Nepal   NEPAL        0                    1                 0.7951845   0.4871336   1.298039
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   0                    1                 1.1699908   0.8297398   1.649768
0-24 months (no birth wast)   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   Keneba      GAMBIA       0                    1                 1.1918850   0.8815762   1.611420
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      BANGLADESH   0                    1                 1.8705882   0.6209381   5.635184
0-24 months (no birth wast)   MAL-ED      INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   MAL-ED      INDIA        0                    1                 1.1200000   0.3722239   3.370015
0-24 months (no birth wast)   PROVIDE     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   PROVIDE     BANGLADESH   0                    1                 1.4823883   0.5920038   3.711927
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    GMS-Nepal   NEPAL        0                    1                 1.3193944   0.5084106   3.424007
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   0                    1                 1.2455770   0.7365842   2.106293
0-6 months (no birth wast)    Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    Keneba      GAMBIA       0                    1                 1.2398416   0.6356945   2.418154
6-24 months                   GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   GMS-Nepal   NEPAL        0                    1                 0.6759805   0.3765000   1.213678
6-24 months                   JiVitA-3    BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   JiVitA-3    BANGLADESH   0                    1                 1.1315277   0.7687201   1.665567
6-24 months                   Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   Keneba      GAMBIA       0                    1                 1.2014606   0.8444902   1.709324


### Parameter: PAR


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                -0.0086047   -0.0254941   0.0082848
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                 0.0005196   -0.0008309   0.0018700
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                 0.0038719   -0.0020674   0.0098112
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                 0.0114445   -0.0102827   0.0331716
0-24 months (no birth wast)   MAL-ED      INDIA        1                    NA                 0.0030323   -0.0265192   0.0325839
0-24 months (no birth wast)   PROVIDE     BANGLADESH   1                    NA                 0.0033157   -0.0050469   0.0116783
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0027571   -0.0076207   0.0131350
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                 0.0004547   -0.0006020   0.0015114
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                 0.0011293   -0.0021996   0.0044582
6-24 months                   GMS-Nepal   NEPAL        1                    NA                -0.0094067   -0.0250450   0.0062316
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                 0.0003231   -0.0008514   0.0014975
6-24 months                   Keneba      GAMBIA       1                    NA                 0.0027486   -0.0028238   0.0083210


### Parameter: PAF


agecat                        studyid     country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   GMS-Nepal   NEPAL        1                    NA                -0.0360917   -0.1093063   0.0322907
0-24 months (no birth wast)   JiVitA-3    BANGLADESH   1                    NA                 0.0143425   -0.0234914   0.0507778
0-24 months (no birth wast)   Keneba      GAMBIA       1                    NA                 0.0245342   -0.0137793   0.0613997
0-24 months (no birth wast)   MAL-ED      BANGLADESH   1                    NA                 0.2327044   -0.3336978   0.5585638
0-24 months (no birth wast)   MAL-ED      INDIA        1                    NA                 0.0535714   -0.6417907   0.4544207
0-24 months (no birth wast)   PROVIDE     BANGLADESH   1                    NA                 0.1198890   -0.2346253   0.3726069
0-6 months (no birth wast)    GMS-Nepal   NEPAL        1                    NA                 0.0504326   -0.1585940   0.2217479
0-6 months (no birth wast)    JiVitA-3    BANGLADESH   1                    NA                 0.0266345   -0.0363463   0.0857880
0-6 months (no birth wast)    Keneba      GAMBIA       1                    NA                 0.0269025   -0.0555387   0.1029047
6-24 months                   GMS-Nepal   NEPAL        1                    NA                -0.0451323   -0.1226506   0.0270334
6-24 months                   JiVitA-3    BANGLADESH   1                    NA                 0.0101211   -0.0274722   0.0463389
6-24 months                   Keneba      GAMBIA       1                    NA                 0.0216935   -0.0232324   0.0646469
