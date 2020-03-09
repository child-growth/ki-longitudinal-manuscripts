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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** exclfeed3

**Adjustment Set:**

* arm
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

agecat                       studyid          country                        exclfeed3    ever_stunted   n_cell       n
---------------------------  ---------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                       0        0       8
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                       1        8       8
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                       0        0       8
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                       1        0       8
0-24 months (no birth st.)   EE               PAKISTAN                       1                       0        4      21
0-24 months (no birth st.)   EE               PAKISTAN                       1                       1       17      21
0-24 months (no birth st.)   EE               PAKISTAN                       0                       0        0      21
0-24 months (no birth st.)   EE               PAKISTAN                       0                       1        0      21
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                       0      116     380
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                       1      201     380
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                       0       22     380
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                       1       41     380
0-24 months (no birth st.)   IRC              INDIA                          1                       0        0      10
0-24 months (no birth st.)   IRC              INDIA                          1                       1        0      10
0-24 months (no birth st.)   IRC              INDIA                          0                       0        3      10
0-24 months (no birth st.)   IRC              INDIA                          0                       1        7      10
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                       0     6792   10148
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                       1     2424   10148
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                       0      689   10148
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                       1      243   10148
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                       0       63     113
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                       1       40     113
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                       0        4     113
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                       1        6     113
0-24 months (no birth st.)   Keneba           GAMBIA                         1                       0      759    1835
0-24 months (no birth st.)   Keneba           GAMBIA                         1                       1      874    1835
0-24 months (no birth st.)   Keneba           GAMBIA                         0                       0       91    1835
0-24 months (no birth st.)   Keneba           GAMBIA                         0                       1      111    1835
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                       0       61     202
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                       1       71     202
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                       0       33     202
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                       1       37     202
0-24 months (no birth st.)   MAL-ED           BRAZIL                         1                       0       47     175
0-24 months (no birth st.)   MAL-ED           BRAZIL                         1                       1        9     175
0-24 months (no birth st.)   MAL-ED           BRAZIL                         0                       0       97     175
0-24 months (no birth st.)   MAL-ED           BRAZIL                         0                       1       22     175
0-24 months (no birth st.)   MAL-ED           INDIA                          1                       0       38     184
0-24 months (no birth st.)   MAL-ED           INDIA                          1                       1       55     184
0-24 months (no birth st.)   MAL-ED           INDIA                          0                       0       45     184
0-24 months (no birth st.)   MAL-ED           INDIA                          0                       1       46     184
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                       0       48     201
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                       1       18     201
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                       0      101     201
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                       1       34     201
0-24 months (no birth st.)   MAL-ED           PERU                           1                       0       22     253
0-24 months (no birth st.)   MAL-ED           PERU                           1                       1       30     253
0-24 months (no birth st.)   MAL-ED           PERU                           0                       0       80     253
0-24 months (no birth st.)   MAL-ED           PERU                           0                       1      121     253
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                       0       13     237
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                       1       10     237
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                       0       93     237
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                       1      121     237
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        7     185
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1       33     185
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0       23     185
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1      122     185
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                       0      285     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                       1      170     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                       0      110     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                       1       68     633
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          1                       0      121     326
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          1                       1      191     326
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          0                       0        5     326
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          0                       1        9     326
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                       0        7       8
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                       1        1       8
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                       0        0       8
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                       1        0       8
0-6 months (no birth st.)    EE               PAKISTAN                       1                       0        8      21
0-6 months (no birth st.)    EE               PAKISTAN                       1                       1       13      21
0-6 months (no birth st.)    EE               PAKISTAN                       0                       0        0      21
0-6 months (no birth st.)    EE               PAKISTAN                       0                       1        0      21
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                       0      252     380
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                       1       65     380
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                       0       53     380
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                       1       10     380
0-6 months (no birth st.)    IRC              INDIA                          1                       0        0      10
0-6 months (no birth st.)    IRC              INDIA                          1                       1        0      10
0-6 months (no birth st.)    IRC              INDIA                          0                       0        5      10
0-6 months (no birth st.)    IRC              INDIA                          0                       1        5      10
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     1                       0     7951   10145
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     1                       1     1262   10145
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                       0      801   10145
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                       1      131   10145
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                       0       95     113
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                       1        8     113
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                       0        7     113
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                       1        3     113
0-6 months (no birth st.)    Keneba           GAMBIA                         1                       0     1203    1835
0-6 months (no birth st.)    Keneba           GAMBIA                         1                       1      430    1835
0-6 months (no birth st.)    Keneba           GAMBIA                         0                       0      143    1835
0-6 months (no birth st.)    Keneba           GAMBIA                         0                       1       59    1835
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                       0      102     202
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                       1       30     202
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                       0       55     202
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                       1       15     202
0-6 months (no birth st.)    MAL-ED           BRAZIL                         1                       0       51     175
0-6 months (no birth st.)    MAL-ED           BRAZIL                         1                       1        5     175
0-6 months (no birth st.)    MAL-ED           BRAZIL                         0                       0      104     175
0-6 months (no birth st.)    MAL-ED           BRAZIL                         0                       1       15     175
0-6 months (no birth st.)    MAL-ED           INDIA                          1                       0       72     184
0-6 months (no birth st.)    MAL-ED           INDIA                          1                       1       21     184
0-6 months (no birth st.)    MAL-ED           INDIA                          0                       0       71     184
0-6 months (no birth st.)    MAL-ED           INDIA                          0                       1       20     184
0-6 months (no birth st.)    MAL-ED           NEPAL                          1                       0       63     201
0-6 months (no birth st.)    MAL-ED           NEPAL                          1                       1        3     201
0-6 months (no birth st.)    MAL-ED           NEPAL                          0                       0      127     201
0-6 months (no birth st.)    MAL-ED           NEPAL                          0                       1        8     201
0-6 months (no birth st.)    MAL-ED           PERU                           1                       0       38     253
0-6 months (no birth st.)    MAL-ED           PERU                           1                       1       14     253
0-6 months (no birth st.)    MAL-ED           PERU                           0                       0      123     253
0-6 months (no birth st.)    MAL-ED           PERU                           0                       1       78     253
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   1                       0       17     237
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   1                       1        6     237
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                       0      148     237
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                       1       66     237
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0       28     185
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1       12     185
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0       99     185
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1       46     185
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                       0      387     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                       1       68     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                       0      145     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                       1       33     633
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          1                       0      250     326
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          1                       1       62     326
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          0                       0        9     326
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          0                       1        5     326
6-24 months                  CMC-V-BCS-2002   INDIA                          1                       0        0       7
6-24 months                  CMC-V-BCS-2002   INDIA                          1                       1        7       7
6-24 months                  CMC-V-BCS-2002   INDIA                          0                       0        0       7
6-24 months                  CMC-V-BCS-2002   INDIA                          0                       1        0       7
6-24 months                  EE               PAKISTAN                       1                       0        4       8
6-24 months                  EE               PAKISTAN                       1                       1        4       8
6-24 months                  EE               PAKISTAN                       0                       0        0       8
6-24 months                  EE               PAKISTAN                       0                       1        0       8
6-24 months                  GMS-Nepal        NEPAL                          1                       0      112     300
6-24 months                  GMS-Nepal        NEPAL                          1                       1      136     300
6-24 months                  GMS-Nepal        NEPAL                          0                       0       21     300
6-24 months                  GMS-Nepal        NEPAL                          0                       1       31     300
6-24 months                  IRC              INDIA                          1                       0        0       5
6-24 months                  IRC              INDIA                          1                       1        0       5
6-24 months                  IRC              INDIA                          0                       0        3       5
6-24 months                  IRC              INDIA                          0                       1        2       5
6-24 months                  JiVitA-3         BANGLADESH                     1                       0     4114    5773
6-24 months                  JiVitA-3         BANGLADESH                     1                       1     1169    5773
6-24 months                  JiVitA-3         BANGLADESH                     0                       0      377    5773
6-24 months                  JiVitA-3         BANGLADESH                     0                       1      113    5773
6-24 months                  JiVitA-4         BANGLADESH                     1                       0       63     103
6-24 months                  JiVitA-4         BANGLADESH                     1                       1       32     103
6-24 months                  JiVitA-4         BANGLADESH                     0                       0        4     103
6-24 months                  JiVitA-4         BANGLADESH                     0                       1        4     103
6-24 months                  Keneba           GAMBIA                         1                       0      697    1278
6-24 months                  Keneba           GAMBIA                         1                       1      444    1278
6-24 months                  Keneba           GAMBIA                         0                       0       85    1278
6-24 months                  Keneba           GAMBIA                         0                       1       52    1278
6-24 months                  MAL-ED           BANGLADESH                     1                       0       56     150
6-24 months                  MAL-ED           BANGLADESH                     1                       1       41     150
6-24 months                  MAL-ED           BANGLADESH                     0                       0       31     150
6-24 months                  MAL-ED           BANGLADESH                     0                       1       22     150
6-24 months                  MAL-ED           BRAZIL                         1                       0       44     143
6-24 months                  MAL-ED           BRAZIL                         1                       1        4     143
6-24 months                  MAL-ED           BRAZIL                         0                       0       88     143
6-24 months                  MAL-ED           BRAZIL                         0                       1        7     143
6-24 months                  MAL-ED           INDIA                          1                       0       36     140
6-24 months                  MAL-ED           INDIA                          1                       1       34     140
6-24 months                  MAL-ED           INDIA                          0                       0       44     140
6-24 months                  MAL-ED           INDIA                          0                       1       26     140
6-24 months                  MAL-ED           NEPAL                          1                       0       47     188
6-24 months                  MAL-ED           NEPAL                          1                       1       15     188
6-24 months                  MAL-ED           NEPAL                          0                       0      100     188
6-24 months                  MAL-ED           NEPAL                          0                       1       26     188
6-24 months                  MAL-ED           PERU                           1                       0       20     148
6-24 months                  MAL-ED           PERU                           1                       1       16     148
6-24 months                  MAL-ED           PERU                           0                       0       69     148
6-24 months                  MAL-ED           PERU                           0                       1       43     148
6-24 months                  MAL-ED           SOUTH AFRICA                   1                       0       11     152
6-24 months                  MAL-ED           SOUTH AFRICA                   1                       1        4     152
6-24 months                  MAL-ED           SOUTH AFRICA                   0                       0       82     152
6-24 months                  MAL-ED           SOUTH AFRICA                   0                       1       55     152
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        7     123
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1       21     123
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0       19     123
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1       76     123
6-24 months                  PROVIDE          BANGLADESH                     1                       0      223     456
6-24 months                  PROVIDE          BANGLADESH                     1                       1      102     456
6-24 months                  PROVIDE          BANGLADESH                     0                       0       96     456
6-24 months                  PROVIDE          BANGLADESH                     0                       1       35     456
6-24 months                  SAS-CompFeed     INDIA                          1                       0      107     245
6-24 months                  SAS-CompFeed     INDIA                          1                       1      129     245
6-24 months                  SAS-CompFeed     INDIA                          0                       0        5     245
6-24 months                  SAS-CompFeed     INDIA                          0                       1        4     245


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
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

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
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
![](/tmp/ae3ad710-7732-4713-807f-04d7cf8913c5/d06dc825-1bb3-4cba-98a5-bdec7897fa76/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ae3ad710-7732-4713-807f-04d7cf8913c5/d06dc825-1bb3-4cba-98a5-bdec7897fa76/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ae3ad710-7732-4713-807f-04d7cf8913c5/d06dc825-1bb3-4cba-98a5-bdec7897fa76/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ae3ad710-7732-4713-807f-04d7cf8913c5/d06dc825-1bb3-4cba-98a5-bdec7897fa76/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid        country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  -------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   GMS-Nepal      NEPAL                          1                    NA                0.6353451    0.5826495   0.6880408
0-24 months (no birth st.)   GMS-Nepal      NEPAL                          0                    NA                0.6379755    0.5329352   0.7430158
0-24 months (no birth st.)   JiVitA-3       BANGLADESH                     1                    NA                0.2623253    0.2515561   0.2730946
0-24 months (no birth st.)   JiVitA-3       BANGLADESH                     0                    NA                0.2673894    0.2409615   0.2938172
0-24 months (no birth st.)   Keneba         GAMBIA                         1                    NA                0.5347566    0.5106914   0.5588218
0-24 months (no birth st.)   Keneba         GAMBIA                         0                    NA                0.5526416    0.4871244   0.6181589
0-24 months (no birth st.)   MAL-ED         BANGLADESH                     1                    NA                0.5160451    0.4330625   0.5990277
0-24 months (no birth st.)   MAL-ED         BANGLADESH                     0                    NA                0.5513474    0.4396482   0.6630467
0-24 months (no birth st.)   MAL-ED         BRAZIL                         1                    NA                0.1607143    0.0642469   0.2571817
0-24 months (no birth st.)   MAL-ED         BRAZIL                         0                    NA                0.1848739    0.1149269   0.2548210
0-24 months (no birth st.)   MAL-ED         INDIA                          1                    NA                0.5820131    0.4820985   0.6819276
0-24 months (no birth st.)   MAL-ED         INDIA                          0                    NA                0.5180989    0.4162803   0.6199175
0-24 months (no birth st.)   MAL-ED         NEPAL                          1                    NA                0.2700386    0.1591967   0.3808805
0-24 months (no birth st.)   MAL-ED         NEPAL                          0                    NA                0.2501068    0.1762431   0.3239704
0-24 months (no birth st.)   MAL-ED         PERU                           1                    NA                0.5724255    0.4348237   0.7100273
0-24 months (no birth st.)   MAL-ED         PERU                           0                    NA                0.6009143    0.5330171   0.6688115
0-24 months (no birth st.)   MAL-ED         SOUTH AFRICA                   1                    NA                0.5100553    0.3172018   0.7029087
0-24 months (no birth st.)   MAL-ED         SOUTH AFRICA                   0                    NA                0.5669835    0.5003764   0.6335907
0-24 months (no birth st.)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.8250000    0.7069296   0.9430704
0-24 months (no birth st.)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8413793    0.7817559   0.9010027
0-24 months (no birth st.)   PROVIDE        BANGLADESH                     1                    NA                0.3704435    0.3268796   0.4140074
0-24 months (no birth st.)   PROVIDE        BANGLADESH                     0                    NA                0.3932911    0.3258051   0.4607772
0-24 months (no birth st.)   SAS-CompFeed   INDIA                          1                    NA                0.6121795    0.5306906   0.6936683
0-24 months (no birth st.)   SAS-CompFeed   INDIA                          0                    NA                0.6428571    0.3329177   0.9527966
0-6 months (no birth st.)    GMS-Nepal      NEPAL                          1                    NA                0.2040562    0.1596467   0.2484656
0-6 months (no birth st.)    GMS-Nepal      NEPAL                          0                    NA                0.1615094    0.0674651   0.2555537
0-6 months (no birth st.)    JiVitA-3       BANGLADESH                     1                    NA                0.1369257    0.1289754   0.1448760
0-6 months (no birth st.)    JiVitA-3       BANGLADESH                     0                    NA                0.1409167    0.1188409   0.1629926
0-6 months (no birth st.)    Keneba         GAMBIA                         1                    NA                0.2617539    0.2404506   0.2830572
0-6 months (no birth st.)    Keneba         GAMBIA                         0                    NA                0.2973381    0.2375479   0.3571282
0-6 months (no birth st.)    MAL-ED         BANGLADESH                     1                    NA                0.2268080    0.1547623   0.2988536
0-6 months (no birth st.)    MAL-ED         BANGLADESH                     0                    NA                0.2060471    0.1088554   0.3032387
0-6 months (no birth st.)    MAL-ED         BRAZIL                         1                    NA                0.0892857    0.0143859   0.1641855
0-6 months (no birth st.)    MAL-ED         BRAZIL                         0                    NA                0.1260504    0.0662459   0.1858550
0-6 months (no birth st.)    MAL-ED         INDIA                          1                    NA                0.2245651    0.1387538   0.3103763
0-6 months (no birth st.)    MAL-ED         INDIA                          0                    NA                0.2219380    0.1352491   0.3086269
0-6 months (no birth st.)    MAL-ED         PERU                           1                    NA                0.2881184    0.1654950   0.4107419
0-6 months (no birth st.)    MAL-ED         PERU                           0                    NA                0.3884762    0.3208244   0.4561280
0-6 months (no birth st.)    MAL-ED         SOUTH AFRICA                   1                    NA                0.2608696    0.0810344   0.4407047
0-6 months (no birth st.)    MAL-ED         SOUTH AFRICA                   0                    NA                0.3084112    0.2464031   0.3704193
0-6 months (no birth st.)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3178026    0.1731587   0.4624466
0-6 months (no birth st.)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3202968    0.2439514   0.3966423
0-6 months (no birth st.)    PROVIDE        BANGLADESH                     1                    NA                0.1460355    0.1135533   0.1785177
0-6 months (no birth st.)    PROVIDE        BANGLADESH                     0                    NA                0.1842635    0.1276401   0.2408868
0-6 months (no birth st.)    SAS-CompFeed   INDIA                          1                    NA                0.1987179    0.1419130   0.2555229
0-6 months (no birth st.)    SAS-CompFeed   INDIA                          0                    NA                0.3571429   -0.1170496   0.8313354
6-24 months                  GMS-Nepal      NEPAL                          1                    NA                0.5503665    0.4885372   0.6121958
6-24 months                  GMS-Nepal      NEPAL                          0                    NA                0.5901760    0.4631716   0.7171805
6-24 months                  JiVitA-3       BANGLADESH                     1                    NA                0.2216122    0.2086488   0.2345757
6-24 months                  JiVitA-3       BANGLADESH                     0                    NA                0.2292803    0.1802992   0.2782614
6-24 months                  Keneba         GAMBIA                         1                    NA                0.3882617    0.3600256   0.4164977
6-24 months                  Keneba         GAMBIA                         0                    NA                0.3903704    0.3118157   0.4689251
6-24 months                  MAL-ED         BANGLADESH                     1                    NA                0.3988489    0.3014034   0.4962945
6-24 months                  MAL-ED         BANGLADESH                     0                    NA                0.4604424    0.3226724   0.5982123
6-24 months                  MAL-ED         INDIA                          1                    NA                0.4820992    0.3634305   0.6007678
6-24 months                  MAL-ED         INDIA                          0                    NA                0.3695782    0.2561443   0.4830120
6-24 months                  MAL-ED         NEPAL                          1                    NA                0.2422174    0.1343700   0.3500648
6-24 months                  MAL-ED         NEPAL                          0                    NA                0.2051987    0.1341078   0.2762895
6-24 months                  MAL-ED         PERU                           1                    NA                0.4362310    0.2642304   0.6082316
6-24 months                  MAL-ED         PERU                           0                    NA                0.3826582    0.2915438   0.4737727
6-24 months                  MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7500000    0.5889568   0.9110432
6-24 months                  MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8000000    0.7192358   0.8807642
6-24 months                  PROVIDE        BANGLADESH                     1                    NA                0.3080206    0.2580068   0.3580344
6-24 months                  PROVIDE        BANGLADESH                     0                    NA                0.2854641    0.2109338   0.3599943


### Parameter: E(Y)


agecat                       studyid        country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   GMS-Nepal      NEPAL                          NA                   NA                0.6368421   0.5884257   0.6852585
0-24 months (no birth st.)   JiVitA-3       BANGLADESH                     NA                   NA                0.2628104   0.2524838   0.2731371
0-24 months (no birth st.)   Keneba         GAMBIA                         NA                   NA                0.5367847   0.5139635   0.5596060
0-24 months (no birth st.)   MAL-ED         BANGLADESH                     NA                   NA                0.5346535   0.4656971   0.6036099
0-24 months (no birth st.)   MAL-ED         BRAZIL                         NA                   NA                0.1771429   0.1204149   0.2338709
0-24 months (no birth st.)   MAL-ED         INDIA                          NA                   NA                0.5489130   0.4768182   0.6210079
0-24 months (no birth st.)   MAL-ED         NEPAL                          NA                   NA                0.2587065   0.1980144   0.3193985
0-24 months (no birth st.)   MAL-ED         PERU                           NA                   NA                0.5968379   0.5362738   0.6574021
0-24 months (no birth st.)   MAL-ED         SOUTH AFRICA                   NA                   NA                0.5527426   0.4893071   0.6161781
0-24 months (no birth st.)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8378378   0.7845787   0.8910970
0-24 months (no birth st.)   PROVIDE        BANGLADESH                     NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   SAS-CompFeed   INDIA                          NA                   NA                0.6134969   0.5286303   0.6983636
0-6 months (no birth st.)    GMS-Nepal      NEPAL                          NA                   NA                0.1973684   0.1572979   0.2374390
0-6 months (no birth st.)    JiVitA-3       BANGLADESH                     NA                   NA                0.1373090   0.1297510   0.1448670
0-6 months (no birth st.)    Keneba         GAMBIA                         NA                   NA                0.2664850   0.2462507   0.2867194
0-6 months (no birth st.)    MAL-ED         BANGLADESH                     NA                   NA                0.2227723   0.1652475   0.2802970
0-6 months (no birth st.)    MAL-ED         BRAZIL                         NA                   NA                0.1142857   0.0670124   0.1615591
0-6 months (no birth st.)    MAL-ED         INDIA                          NA                   NA                0.2228261   0.1625334   0.2831188
0-6 months (no birth st.)    MAL-ED         PERU                           NA                   NA                0.3636364   0.3042435   0.4230292
0-6 months (no birth st.)    MAL-ED         SOUTH AFRICA                   NA                   NA                0.3037975   0.2451226   0.3624723
0-6 months (no birth st.)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3135135   0.2464813   0.3805457
0-6 months (no birth st.)    PROVIDE        BANGLADESH                     NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    SAS-CompFeed   INDIA                          NA                   NA                0.2055215   0.1385538   0.2724891
6-24 months                  GMS-Nepal      NEPAL                          NA                   NA                0.5566667   0.5003580   0.6129753
6-24 months                  JiVitA-3       BANGLADESH                     NA                   NA                0.2220682   0.2093710   0.2347655
6-24 months                  Keneba         GAMBIA                         NA                   NA                0.3881064   0.3613784   0.4148344
6-24 months                  MAL-ED         BANGLADESH                     NA                   NA                0.4200000   0.3407510   0.4992490
6-24 months                  MAL-ED         INDIA                          NA                   NA                0.4285714   0.3463030   0.5108399
6-24 months                  MAL-ED         NEPAL                          NA                   NA                0.2180851   0.1588990   0.2772712
6-24 months                  MAL-ED         PERU                           NA                   NA                0.3986486   0.3194990   0.4777982
6-24 months                  MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7886179   0.7161684   0.8610674
6-24 months                  PROVIDE        BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629


### Parameter: RR


agecat                       studyid        country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  -------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   GMS-Nepal      NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   GMS-Nepal      NEPAL                          0                    1                 1.0041400   0.8396700   1.200826
0-24 months (no birth st.)   JiVitA-3       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-3       BANGLADESH                     0                    1                 1.0193045   0.9195016   1.129940
0-24 months (no birth st.)   Keneba         GAMBIA                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   Keneba         GAMBIA                         0                    1                 1.0334452   0.9118978   1.171194
0-24 months (no birth st.)   MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED         BANGLADESH                     0                    1                 1.0684093   0.8346842   1.367581
0-24 months (no birth st.)   MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED         BRAZIL                         0                    1                 1.1503268   0.5658150   2.338665
0-24 months (no birth st.)   MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED         INDIA                          0                    1                 0.8901843   0.6880305   1.151734
0-24 months (no birth st.)   MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED         NEPAL                          0                    1                 0.9261891   0.5567500   1.540774
0-24 months (no birth st.)   MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED         PERU                           0                    1                 1.0497686   0.8047587   1.369372
0-24 months (no birth st.)   MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED         SOUTH AFRICA                   0                    1                 1.1116120   0.7484318   1.651027
0-24 months (no birth st.)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0198537   0.8693236   1.196449
0-24 months (no birth st.)   PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   PROVIDE        BANGLADESH                     0                    1                 1.0616765   0.8691405   1.296864
0-24 months (no birth st.)   SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   SAS-CompFeed   INDIA                          0                    1                 1.0501122   0.6736522   1.636951
0-6 months (no birth st.)    GMS-Nepal      NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    GMS-Nepal      NEPAL                          0                    1                 0.7914948   0.4248824   1.474441
0-6 months (no birth st.)    JiVitA-3       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-3       BANGLADESH                     0                    1                 1.0291474   0.8722844   1.214219
0-6 months (no birth st.)    Keneba         GAMBIA                         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    Keneba         GAMBIA                         0                    1                 1.1359450   0.9161424   1.408483
0-6 months (no birth st.)    MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED         BANGLADESH                     0                    1                 0.9084649   0.5131880   1.608199
0-6 months (no birth st.)    MAL-ED         BRAZIL                         1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED         BRAZIL                         0                    1                 1.4117647   0.5385303   3.700961
0-6 months (no birth st.)    MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED         INDIA                          0                    1                 0.9883016   0.5726886   1.705534
0-6 months (no birth st.)    MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED         PERU                           0                    1                 1.3483212   0.8510646   2.136113
0-6 months (no birth st.)    MAL-ED         SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED         SOUTH AFRICA                   0                    1                 1.1822430   0.5765601   2.424203
0-6 months (no birth st.)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0078483   0.6020377   1.687200
0-6 months (no birth st.)    PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    PROVIDE        BANGLADESH                     0                    1                 1.2617713   0.8652948   1.839913
0-6 months (no birth st.)    SAS-CompFeed   INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    SAS-CompFeed   INDIA                          0                    1                 1.7972350   0.5064696   6.377587
6-24 months                  GMS-Nepal      NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  GMS-Nepal      NEPAL                          0                    1                 1.0723327   0.8457472   1.359623
6-24 months                  JiVitA-3       BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-3       BANGLADESH                     0                    1                 1.0346013   0.8308586   1.288306
6-24 months                  Keneba         GAMBIA                         1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  Keneba         GAMBIA                         0                    1                 1.0054313   0.8132164   1.243079
6-24 months                  MAL-ED         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED         BANGLADESH                     0                    1                 1.1544279   0.7871572   1.693059
6-24 months                  MAL-ED         INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED         INDIA                          0                    1                 0.7666019   0.5178276   1.134892
6-24 months                  MAL-ED         NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED         NEPAL                          0                    1                 0.8471672   0.4816798   1.489978
6-24 months                  MAL-ED         PERU                           1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED         PERU                           0                    1                 0.8771918   0.5522254   1.393390
6-24 months                  MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1                 1.0666667   0.8413610   1.352306
6-24 months                  PROVIDE        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  PROVIDE        BANGLADESH                     0                    1                 0.9267693   0.6849522   1.253958


### Parameter: PAR


agecat                       studyid        country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   GMS-Nepal      NEPAL                          1                    NA                 0.0014970   -0.0172123   0.0202062
0-24 months (no birth st.)   JiVitA-3       BANGLADESH                     1                    NA                 0.0004851   -0.0020249   0.0029950
0-24 months (no birth st.)   Keneba         GAMBIA                         1                    NA                 0.0020282   -0.0054270   0.0094833
0-24 months (no birth st.)   MAL-ED         BANGLADESH                     1                    NA                 0.0186083   -0.0271280   0.0643447
0-24 months (no birth st.)   MAL-ED         BRAZIL                         1                    NA                 0.0164286   -0.0646159   0.0974731
0-24 months (no birth st.)   MAL-ED         INDIA                          1                    NA                -0.0331000   -0.1030396   0.0368395
0-24 months (no birth st.)   MAL-ED         NEPAL                          1                    NA                -0.0113321   -0.1018069   0.0791427
0-24 months (no birth st.)   MAL-ED         PERU                           1                    NA                 0.0244125   -0.0981968   0.1470218
0-24 months (no birth st.)   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0426873   -0.1413270   0.2267017
0-24 months (no birth st.)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0128378   -0.0908385   0.1165141
0-24 months (no birth st.)   PROVIDE        BANGLADESH                     1                    NA                 0.0055439   -0.0162603   0.0273481
0-24 months (no birth st.)   SAS-CompFeed   INDIA                          1                    NA                 0.0013174   -0.0112602   0.0138950
0-6 months (no birth st.)    GMS-Nepal      NEPAL                          1                    NA                -0.0066877   -0.0236610   0.0102855
0-6 months (no birth st.)    JiVitA-3       BANGLADESH                     1                    NA                 0.0003833   -0.0017467   0.0025133
0-6 months (no birth st.)    Keneba         GAMBIA                         1                    NA                 0.0047311   -0.0022095   0.0116717
0-6 months (no birth st.)    MAL-ED         BANGLADESH                     1                    NA                -0.0040357   -0.0458612   0.0377898
0-6 months (no birth st.)    MAL-ED         BRAZIL                         1                    NA                 0.0250000   -0.0402255   0.0902255
0-6 months (no birth st.)    MAL-ED         INDIA                          1                    NA                -0.0017390   -0.0616070   0.0581291
0-6 months (no birth st.)    MAL-ED         PERU                           1                    NA                 0.0755179   -0.0363099   0.1873457
0-6 months (no birth st.)    MAL-ED         SOUTH AFRICA                   1                    NA                 0.0429279   -0.1288462   0.2147020
0-6 months (no birth st.)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0042891   -0.1328274   0.1242492
0-6 months (no birth st.)    PROVIDE        BANGLADESH                     1                    NA                 0.0135221   -0.0048241   0.0318684
0-6 months (no birth st.)    SAS-CompFeed   INDIA                          1                    NA                 0.0068035   -0.0151879   0.0287949
6-24 months                  GMS-Nepal      NEPAL                          1                    NA                 0.0063001   -0.0171635   0.0297638
6-24 months                  JiVitA-3       BANGLADESH                     1                    NA                 0.0004560   -0.0037538   0.0046659
6-24 months                  Keneba         GAMBIA                         1                    NA                -0.0001552   -0.0088655   0.0085550
6-24 months                  MAL-ED         BANGLADESH                     1                    NA                 0.0211511   -0.0367301   0.0790322
6-24 months                  MAL-ED         INDIA                          1                    NA                -0.0535277   -0.1371393   0.0300839
6-24 months                  MAL-ED         NEPAL                          1                    NA                -0.0241323   -0.1109900   0.0627254
6-24 months                  MAL-ED         PERU                           1                    NA                -0.0375823   -0.1889120   0.1137473
6-24 months                  MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0386179   -0.1005801   0.1778159
6-24 months                  PROVIDE        BANGLADESH                     1                    NA                -0.0075820   -0.0326968   0.0175327


### Parameter: PAF


agecat                       studyid        country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   GMS-Nepal      NEPAL                          1                    NA                 0.0023506   -0.0274733   0.0313088
0-24 months (no birth st.)   JiVitA-3       BANGLADESH                     1                    NA                 0.0018457   -0.0077552   0.0113551
0-24 months (no birth st.)   Keneba         GAMBIA                         1                    NA                 0.0037783   -0.0102098   0.0175728
0-24 months (no birth st.)   MAL-ED         BANGLADESH                     1                    NA                 0.0348045   -0.0548039   0.1168004
0-24 months (no birth st.)   MAL-ED         BRAZIL                         1                    NA                 0.0927419   -0.5012539   0.4517136
0-24 months (no birth st.)   MAL-ED         INDIA                          1                    NA                -0.0603010   -0.1960587   0.0600476
0-24 months (no birth st.)   MAL-ED         NEPAL                          1                    NA                -0.0438029   -0.4589043   0.2531898
0-24 months (no birth st.)   MAL-ED         PERU                           1                    NA                 0.0409030   -0.1883208   0.2259101
0-24 months (no birth st.)   MAL-ED         SOUTH AFRICA                   1                    NA                 0.0772282   -0.3234510   0.3566005
0-24 months (no birth st.)   MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0153226   -0.1165714   0.1316367
0-24 months (no birth st.)   PROVIDE        BANGLADESH                     1                    NA                 0.0147449   -0.0450042   0.0710778
0-24 months (no birth st.)   SAS-CompFeed   INDIA                          1                    NA                 0.0021474   -0.0184658   0.0223435
0-6 months (no birth st.)    GMS-Nepal      NEPAL                          1                    NA                -0.0338846   -0.1234278   0.0485215
0-6 months (no birth st.)    JiVitA-3       BANGLADESH                     1                    NA                 0.0027915   -0.0128506   0.0181922
0-6 months (no birth st.)    Keneba         GAMBIA                         1                    NA                 0.0177537   -0.0086571   0.0434728
0-6 months (no birth st.)    MAL-ED         BANGLADESH                     1                    NA                -0.0181157   -0.2242079   0.1532814
0-6 months (no birth st.)    MAL-ED         BRAZIL                         1                    NA                 0.2187500   -0.6101023   0.6209237
0-6 months (no birth st.)    MAL-ED         INDIA                          1                    NA                -0.0078042   -0.3156566   0.2280133
0-6 months (no birth st.)    MAL-ED         PERU                           1                    NA                 0.2076743   -0.1670711   0.4620893
0-6 months (no birth st.)    MAL-ED         SOUTH AFRICA                   1                    NA                 0.1413043   -0.6585343   0.5554157
0-6 months (no birth st.)    MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0136808   -0.5190323   0.3235504
0-6 months (no birth st.)    PROVIDE        BANGLADESH                     1                    NA                 0.0847476   -0.0373170   0.1924484
0-6 months (no birth st.)    SAS-CompFeed   INDIA                          1                    NA                 0.0331037   -0.0733606   0.1290081
6-24 months                  GMS-Nepal      NEPAL                          1                    NA                 0.0113176   -0.0318062   0.0526391
6-24 months                  JiVitA-3       BANGLADESH                     1                    NA                 0.0020535   -0.0170734   0.0208206
6-24 months                  Keneba         GAMBIA                         1                    NA                -0.0004000   -0.0230963   0.0217928
6-24 months                  MAL-ED         BANGLADESH                     1                    NA                 0.0503597   -0.0981711   0.1788012
6-24 months                  MAL-ED         INDIA                          1                    NA                -0.1248981   -0.3390116   0.0549778
6-24 months                  MAL-ED         NEPAL                          1                    NA                -0.1106554   -0.5888781   0.2236312
6-24 months                  MAL-ED         PERU                           1                    NA                -0.0942744   -0.5482367   0.2265805
6-24 months                  MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0489691   -0.1454021   0.2103561
6-24 months                  PROVIDE        BANGLADESH                     1                    NA                -0.0252366   -0.1122393   0.0549606
