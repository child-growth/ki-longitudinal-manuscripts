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

**Intervention Variable:** predexfd6

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

agecat                       studyid          country                        predexfd6    ever_stunted   n_cell       n
---------------------------  ---------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                       0        1      14
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                       1       13      14
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                       0        0      14
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                       1        0      14
0-24 months (no birth st.)   EE               PAKISTAN                       1                       0        4      27
0-24 months (no birth st.)   EE               PAKISTAN                       1                       1       19      27
0-24 months (no birth st.)   EE               PAKISTAN                       0                       0        2      27
0-24 months (no birth st.)   EE               PAKISTAN                       0                       1        2      27
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                       0      130     471
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                       1      222     471
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                       0       34     471
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                       1       85     471
0-24 months (no birth st.)   IRC              INDIA                          1                       0        0      13
0-24 months (no birth st.)   IRC              INDIA                          1                       1        0      13
0-24 months (no birth st.)   IRC              INDIA                          0                       0        4      13
0-24 months (no birth st.)   IRC              INDIA                          0                       1        9      13
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                       0     6247   10809
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                       1     2191   10809
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                       0     1776   10809
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                       1      595   10809
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                       0     1565    3397
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                       1     1125    3397
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                       0      393    3397
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                       1      314    3397
0-24 months (no birth st.)   Keneba           GAMBIA                         1                       0      401    2023
0-24 months (no birth st.)   Keneba           GAMBIA                         1                       1      350    2023
0-24 months (no birth st.)   Keneba           GAMBIA                         0                       0      566    2023
0-24 months (no birth st.)   Keneba           GAMBIA                         0                       1      706    2023
0-24 months (no birth st.)   LCNI-5           MALAWI                         1                       0       18     175
0-24 months (no birth st.)   LCNI-5           MALAWI                         1                       1       12     175
0-24 months (no birth st.)   LCNI-5           MALAWI                         0                       0       83     175
0-24 months (no birth st.)   LCNI-5           MALAWI                         0                       1       62     175
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                       0       32     195
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                       1       40     195
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                       0       58     195
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                       1       65     195
0-24 months (no birth st.)   MAL-ED           BRAZIL                         1                       0       20     185
0-24 months (no birth st.)   MAL-ED           BRAZIL                         1                       1        4     185
0-24 months (no birth st.)   MAL-ED           BRAZIL                         0                       0      134     185
0-24 months (no birth st.)   MAL-ED           BRAZIL                         0                       1       27     185
0-24 months (no birth st.)   MAL-ED           INDIA                          1                       0        1     185
0-24 months (no birth st.)   MAL-ED           INDIA                          1                       1        7     185
0-24 months (no birth st.)   MAL-ED           INDIA                          0                       0       82     185
0-24 months (no birth st.)   MAL-ED           INDIA                          0                       1       95     185
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                       0        6     199
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                       1        5     199
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                       0      140     199
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                       1       48     199
0-24 months (no birth st.)   MAL-ED           PERU                           1                       0       29     237
0-24 months (no birth st.)   MAL-ED           PERU                           1                       1       53     237
0-24 months (no birth st.)   MAL-ED           PERU                           0                       0       61     237
0-24 months (no birth st.)   MAL-ED           PERU                           0                       1       94     237
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                       0        0     212
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                       1        1     212
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                       0       91     212
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                       1      120     212
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        0     197
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        1     197
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0       28     197
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1      168     197
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                       0      132     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                       1       63     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                       0      263     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                       1      175     633
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          1                       0      121     326
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          1                       1      191     326
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          0                       0        5     326
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          0                       1        9     326
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          1                       0        0      95
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          1                       1        0      95
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          0                       0       25      95
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          0                       1       70      95
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                       0       11      14
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                       1        3      14
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                       0        0      14
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                       1        0      14
0-6 months (no birth st.)    EE               PAKISTAN                       1                       0        8      27
0-6 months (no birth st.)    EE               PAKISTAN                       1                       1       15      27
0-6 months (no birth st.)    EE               PAKISTAN                       0                       0        3      27
0-6 months (no birth st.)    EE               PAKISTAN                       0                       1        1      27
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                       0      286     471
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                       1       66     471
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                       0       88     471
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                       1       31     471
0-6 months (no birth st.)    IRC              INDIA                          1                       0        0      13
0-6 months (no birth st.)    IRC              INDIA                          1                       1        0      13
0-6 months (no birth st.)    IRC              INDIA                          0                       0        8      13
0-6 months (no birth st.)    IRC              INDIA                          0                       1        5      13
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     1                       0     7290   10806
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     1                       1     1146   10806
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                       0     2061   10806
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                       1      309   10806
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                       0     2442    3369
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                       1      237    3369
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                       0      615    3369
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                       1       75    3369
0-6 months (no birth st.)    Keneba           GAMBIA                         1                       0      582    2023
0-6 months (no birth st.)    Keneba           GAMBIA                         1                       1      169    2023
0-6 months (no birth st.)    Keneba           GAMBIA                         0                       0      923    2023
0-6 months (no birth st.)    Keneba           GAMBIA                         0                       1      349    2023
0-6 months (no birth st.)    LCNI-5           MALAWI                         1                       0       30     175
0-6 months (no birth st.)    LCNI-5           MALAWI                         1                       1        0     175
0-6 months (no birth st.)    LCNI-5           MALAWI                         0                       0      145     175
0-6 months (no birth st.)    LCNI-5           MALAWI                         0                       1        0     175
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                       0       60     195
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                       1       12     195
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                       0       95     195
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                       1       28     195
0-6 months (no birth st.)    MAL-ED           BRAZIL                         1                       0       22     185
0-6 months (no birth st.)    MAL-ED           BRAZIL                         1                       1        2     185
0-6 months (no birth st.)    MAL-ED           BRAZIL                         0                       0      143     185
0-6 months (no birth st.)    MAL-ED           BRAZIL                         0                       1       18     185
0-6 months (no birth st.)    MAL-ED           INDIA                          1                       0        7     185
0-6 months (no birth st.)    MAL-ED           INDIA                          1                       1        1     185
0-6 months (no birth st.)    MAL-ED           INDIA                          0                       0      134     185
0-6 months (no birth st.)    MAL-ED           INDIA                          0                       1       43     185
0-6 months (no birth st.)    MAL-ED           NEPAL                          1                       0       11     199
0-6 months (no birth st.)    MAL-ED           NEPAL                          1                       1        0     199
0-6 months (no birth st.)    MAL-ED           NEPAL                          0                       0      176     199
0-6 months (no birth st.)    MAL-ED           NEPAL                          0                       1       12     199
0-6 months (no birth st.)    MAL-ED           PERU                           1                       0       54     237
0-6 months (no birth st.)    MAL-ED           PERU                           1                       1       28     237
0-6 months (no birth st.)    MAL-ED           PERU                           0                       0       95     237
0-6 months (no birth st.)    MAL-ED           PERU                           0                       1       60     237
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   1                       0        0     212
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   1                       1        1     212
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                       0      146     212
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                       1       65     212
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        1     197
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     197
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      136     197
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1       60     197
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                       0      169     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                       1       26     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                       0      363     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                       1       75     633
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          1                       0      250     326
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          1                       1       62     326
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          0                       0        9     326
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          0                       1        5     326
0-6 months (no birth st.)    SAS-FoodSuppl    INDIA                          1                       0        0      95
0-6 months (no birth st.)    SAS-FoodSuppl    INDIA                          1                       1        0      95
0-6 months (no birth st.)    SAS-FoodSuppl    INDIA                          0                       0       95      95
0-6 months (no birth st.)    SAS-FoodSuppl    INDIA                          0                       1        0      95
6-24 months                  CMC-V-BCS-2002   INDIA                          1                       0        1      11
6-24 months                  CMC-V-BCS-2002   INDIA                          1                       1       10      11
6-24 months                  CMC-V-BCS-2002   INDIA                          0                       0        0      11
6-24 months                  CMC-V-BCS-2002   INDIA                          0                       1        0      11
6-24 months                  EE               PAKISTAN                       1                       0        4      11
6-24 months                  EE               PAKISTAN                       1                       1        4      11
6-24 months                  EE               PAKISTAN                       0                       0        2      11
6-24 months                  EE               PAKISTAN                       0                       1        1      11
6-24 months                  GMS-Nepal        NEPAL                          1                       0      126     369
6-24 months                  GMS-Nepal        NEPAL                          1                       1      156     369
6-24 months                  GMS-Nepal        NEPAL                          0                       0       33     369
6-24 months                  GMS-Nepal        NEPAL                          0                       1       54     369
6-24 months                  IRC              INDIA                          1                       0        0       8
6-24 months                  IRC              INDIA                          1                       1        0       8
6-24 months                  IRC              INDIA                          0                       0        4       8
6-24 months                  IRC              INDIA                          0                       1        4       8
6-24 months                  JiVitA-3         BANGLADESH                     1                       0     3715    6170
6-24 months                  JiVitA-3         BANGLADESH                     1                       1     1053    6170
6-24 months                  JiVitA-3         BANGLADESH                     0                       0     1115    6170
6-24 months                  JiVitA-3         BANGLADESH                     0                       1      287    6170
6-24 months                  JiVitA-4         BANGLADESH                     1                       0     1559    3084
6-24 months                  JiVitA-4         BANGLADESH                     1                       1      890    3084
6-24 months                  JiVitA-4         BANGLADESH                     0                       0      391    3084
6-24 months                  JiVitA-4         BANGLADESH                     0                       1      244    3084
6-24 months                  Keneba           GAMBIA                         1                       0      328    1407
6-24 months                  Keneba           GAMBIA                         1                       1      181    1407
6-24 months                  Keneba           GAMBIA                         0                       0      541    1407
6-24 months                  Keneba           GAMBIA                         0                       1      357    1407
6-24 months                  LCNI-5           MALAWI                         1                       0       16     162
6-24 months                  LCNI-5           MALAWI                         1                       1       12     162
6-24 months                  LCNI-5           MALAWI                         0                       0       72     162
6-24 months                  LCNI-5           MALAWI                         0                       1       62     162
6-24 months                  MAL-ED           BANGLADESH                     1                       0       31     153
6-24 months                  MAL-ED           BANGLADESH                     1                       1       28     153
6-24 months                  MAL-ED           BANGLADESH                     0                       0       57     153
6-24 months                  MAL-ED           BANGLADESH                     0                       1       37     153
6-24 months                  MAL-ED           BRAZIL                         1                       0       20     163
6-24 months                  MAL-ED           BRAZIL                         1                       1        2     163
6-24 months                  MAL-ED           BRAZIL                         0                       0      132     163
6-24 months                  MAL-ED           BRAZIL                         0                       1        9     163
6-24 months                  MAL-ED           INDIA                          1                       0        1     141
6-24 months                  MAL-ED           INDIA                          1                       1        6     141
6-24 months                  MAL-ED           INDIA                          0                       0       82     141
6-24 months                  MAL-ED           INDIA                          0                       1       52     141
6-24 months                  MAL-ED           NEPAL                          1                       0        6     186
6-24 months                  MAL-ED           NEPAL                          1                       1        5     186
6-24 months                  MAL-ED           NEPAL                          0                       0      139     186
6-24 months                  MAL-ED           NEPAL                          0                       1       36     186
6-24 months                  MAL-ED           PERU                           1                       0       29     148
6-24 months                  MAL-ED           PERU                           1                       1       25     148
6-24 months                  MAL-ED           PERU                           0                       0       60     148
6-24 months                  MAL-ED           PERU                           0                       1       34     148
6-24 months                  MAL-ED           SOUTH AFRICA                   1                       0        0     145
6-24 months                  MAL-ED           SOUTH AFRICA                   1                       1        0     145
6-24 months                  MAL-ED           SOUTH AFRICA                   0                       0       90     145
6-24 months                  MAL-ED           SOUTH AFRICA                   0                       1       55     145
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        0     135
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        1     135
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0       26     135
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1      108     135
6-24 months                  PROVIDE          BANGLADESH                     1                       0       75     456
6-24 months                  PROVIDE          BANGLADESH                     1                       1       37     456
6-24 months                  PROVIDE          BANGLADESH                     0                       0      244     456
6-24 months                  PROVIDE          BANGLADESH                     0                       1      100     456
6-24 months                  SAS-CompFeed     INDIA                          1                       0      107     245
6-24 months                  SAS-CompFeed     INDIA                          1                       1      129     245
6-24 months                  SAS-CompFeed     INDIA                          0                       0        5     245
6-24 months                  SAS-CompFeed     INDIA                          0                       1        4     245
6-24 months                  SAS-FoodSuppl    INDIA                          1                       0        0      91
6-24 months                  SAS-FoodSuppl    INDIA                          1                       1        0      91
6-24 months                  SAS-FoodSuppl    INDIA                          0                       0       20      91
6-24 months                  SAS-FoodSuppl    INDIA                          0                       1       71      91


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
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

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/412d2d1d-8e1c-45df-b2aa-01b1373bc96d/dcc74b38-21e2-4498-91ec-541d0fdcdd63/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/412d2d1d-8e1c-45df-b2aa-01b1373bc96d/dcc74b38-21e2-4498-91ec-541d0fdcdd63/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/412d2d1d-8e1c-45df-b2aa-01b1373bc96d/dcc74b38-21e2-4498-91ec-541d0fdcdd63/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/412d2d1d-8e1c-45df-b2aa-01b1373bc96d/dcc74b38-21e2-4498-91ec-541d0fdcdd63/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  -------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   GMS-Nepal      NEPAL        1                    NA                0.6303266    0.5800721   0.6805812
0-24 months (no birth st.)   GMS-Nepal      NEPAL        0                    NA                0.7100606    0.6334369   0.7866844
0-24 months (no birth st.)   JiVitA-3       BANGLADESH   1                    NA                0.2592617    0.2482278   0.2702955
0-24 months (no birth st.)   JiVitA-3       BANGLADESH   0                    NA                0.2526625    0.2354068   0.2699183
0-24 months (no birth st.)   JiVitA-4       BANGLADESH   1                    NA                0.4164115    0.3945251   0.4382979
0-24 months (no birth st.)   JiVitA-4       BANGLADESH   0                    NA                0.4574238    0.4160075   0.4988400
0-24 months (no birth st.)   Keneba         GAMBIA       1                    NA                0.4746340    0.4399765   0.5092915
0-24 months (no birth st.)   Keneba         GAMBIA       0                    NA                0.5492467    0.5223623   0.5761312
0-24 months (no birth st.)   LCNI-5         MALAWI       1                    NA                0.3507539    0.1678849   0.5336229
0-24 months (no birth st.)   LCNI-5         MALAWI       0                    NA                0.4273158    0.3465620   0.5080697
0-24 months (no birth st.)   MAL-ED         BANGLADESH   1                    NA                0.5428571    0.4274562   0.6582580
0-24 months (no birth st.)   MAL-ED         BANGLADESH   0                    NA                0.5348304    0.4472122   0.6224486
0-24 months (no birth st.)   MAL-ED         NEPAL        1                    NA                0.4545455    0.1595511   0.7495398
0-24 months (no birth st.)   MAL-ED         NEPAL        0                    NA                0.2553191    0.1928321   0.3178062
0-24 months (no birth st.)   MAL-ED         PERU         1                    NA                0.6548171    0.5483735   0.7612607
0-24 months (no birth st.)   MAL-ED         PERU         0                    NA                0.6026229    0.5247389   0.6805068
0-24 months (no birth st.)   PROVIDE        BANGLADESH   1                    NA                0.3385868    0.2718830   0.4052906
0-24 months (no birth st.)   PROVIDE        BANGLADESH   0                    NA                0.3988459    0.3539239   0.4437679
0-24 months (no birth st.)   SAS-CompFeed   INDIA        1                    NA                0.6121795    0.5306906   0.6936683
0-24 months (no birth st.)   SAS-CompFeed   INDIA        0                    NA                0.6428571    0.3329177   0.9527966
0-6 months (no birth st.)    GMS-Nepal      NEPAL        1                    NA                0.1863565    0.1454692   0.2272438
0-6 months (no birth st.)    GMS-Nepal      NEPAL        0                    NA                0.2552049    0.1749434   0.3354664
0-6 months (no birth st.)    JiVitA-3       BANGLADESH   1                    NA                0.1346250    0.1263560   0.1428940
0-6 months (no birth st.)    JiVitA-3       BANGLADESH   0                    NA                0.1343672    0.1212238   0.1475107
0-6 months (no birth st.)    JiVitA-4       BANGLADESH   1                    NA                0.0866582    0.0730783   0.1002380
0-6 months (no birth st.)    JiVitA-4       BANGLADESH   0                    NA                0.1133151    0.0891292   0.1375011
0-6 months (no birth st.)    Keneba         GAMBIA       1                    NA                0.2248653    0.1955186   0.2542121
0-6 months (no birth st.)    Keneba         GAMBIA       0                    NA                0.2764470    0.2523057   0.3005883
0-6 months (no birth st.)    MAL-ED         BANGLADESH   1                    NA                0.1726618    0.0846634   0.2606603
0-6 months (no birth st.)    MAL-ED         BANGLADESH   0                    NA                0.2302645    0.1555840   0.3049450
0-6 months (no birth st.)    MAL-ED         PERU         1                    NA                0.3474049    0.2401842   0.4546255
0-6 months (no birth st.)    MAL-ED         PERU         0                    NA                0.3806917    0.3038468   0.4575366
0-6 months (no birth st.)    PROVIDE        BANGLADESH   1                    NA                0.1356879    0.0861450   0.1852307
0-6 months (no birth st.)    PROVIDE        BANGLADESH   0                    NA                0.1740982    0.1386003   0.2095960
0-6 months (no birth st.)    SAS-CompFeed   INDIA        1                    NA                0.1987179    0.1419130   0.2555229
0-6 months (no birth st.)    SAS-CompFeed   INDIA        0                    NA                0.3571429   -0.1170496   0.8313354
6-24 months                  GMS-Nepal      NEPAL        1                    NA                0.5602075    0.5022889   0.6181261
6-24 months                  GMS-Nepal      NEPAL        0                    NA                0.6348654    0.5368526   0.7328783
6-24 months                  JiVitA-3       BANGLADESH   1                    NA                0.2204422    0.2070711   0.2338132
6-24 months                  JiVitA-3       BANGLADESH   0                    NA                0.2069229    0.1824718   0.2313741
6-24 months                  JiVitA-4       BANGLADESH   1                    NA                0.3637408    0.3420399   0.3854418
6-24 months                  JiVitA-4       BANGLADESH   0                    NA                0.3868148    0.3407769   0.4328528
6-24 months                  Keneba         GAMBIA       1                    NA                0.3600078    0.3189063   0.4011094
6-24 months                  Keneba         GAMBIA       0                    NA                0.3949444    0.3631230   0.4267659
6-24 months                  LCNI-5         MALAWI       1                    NA                0.4114117    0.2155520   0.6072715
6-24 months                  LCNI-5         MALAWI       0                    NA                0.4652091    0.3803293   0.5500888
6-24 months                  MAL-ED         BANGLADESH   1                    NA                0.4585680    0.3289064   0.5882296
6-24 months                  MAL-ED         BANGLADESH   0                    NA                0.3881238    0.2882094   0.4880383
6-24 months                  MAL-ED         NEPAL        1                    NA                0.4545455    0.1594991   0.7495918
6-24 months                  MAL-ED         NEPAL        0                    NA                0.2057143    0.1456633   0.2657653
6-24 months                  MAL-ED         PERU         1                    NA                0.4757887    0.3399750   0.6116025
6-24 months                  MAL-ED         PERU         0                    NA                0.3625667    0.2654527   0.4596806
6-24 months                  PROVIDE        BANGLADESH   1                    NA                0.2971356    0.2114915   0.3827797
6-24 months                  PROVIDE        BANGLADESH   0                    NA                0.2976627    0.2498871   0.3454383


### Parameter: E(Y)


agecat                       studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   GMS-Nepal      NEPAL        NA                   NA                0.6518047   0.6087352   0.6948741
0-24 months (no birth st.)   JiVitA-3       BANGLADESH   NA                   NA                0.2577482   0.2478575   0.2676389
0-24 months (no birth st.)   JiVitA-4       BANGLADESH   NA                   NA                0.4236091   0.4038600   0.4433581
0-24 months (no birth st.)   Keneba         GAMBIA       NA                   NA                0.5219970   0.5002246   0.5437695
0-24 months (no birth st.)   LCNI-5         MALAWI       NA                   NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   MAL-ED         BANGLADESH   NA                   NA                0.5384615   0.4683114   0.6086117
0-24 months (no birth st.)   MAL-ED         NEPAL        NA                   NA                0.2663317   0.2047606   0.3279027
0-24 months (no birth st.)   MAL-ED         PERU         NA                   NA                0.6202532   0.5583342   0.6821721
0-24 months (no birth st.)   PROVIDE        BANGLADESH   NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   SAS-CompFeed   INDIA        NA                   NA                0.6134969   0.5286303   0.6983636
0-6 months (no birth st.)    GMS-Nepal      NEPAL        NA                   NA                0.2059448   0.1693853   0.2425043
0-6 months (no birth st.)    JiVitA-3       BANGLADESH   NA                   NA                0.1346474   0.1274032   0.1418916
0-6 months (no birth st.)    JiVitA-4       BANGLADESH   NA                   NA                0.0926091   0.0806150   0.1046031
0-6 months (no birth st.)    Keneba         GAMBIA       NA                   NA                0.2560554   0.2370317   0.2750791
0-6 months (no birth st.)    MAL-ED         BANGLADESH   NA                   NA                0.2051282   0.1483073   0.2619492
0-6 months (no birth st.)    MAL-ED         PERU         NA                   NA                0.3713080   0.3096658   0.4329502
0-6 months (no birth st.)    PROVIDE        BANGLADESH   NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    SAS-CompFeed   INDIA        NA                   NA                0.2055215   0.1385538   0.2724891
6-24 months                  GMS-Nepal      NEPAL        NA                   NA                0.5691057   0.5185109   0.6197005
6-24 months                  JiVitA-3       BANGLADESH   NA                   NA                0.2171799   0.2048085   0.2295513
6-24 months                  JiVitA-4       BANGLADESH   NA                   NA                0.3677043   0.3477044   0.3877041
6-24 months                  Keneba         GAMBIA       NA                   NA                0.3823738   0.3569722   0.4077755
6-24 months                  LCNI-5         MALAWI       NA                   NA                0.4567901   0.3798457   0.5337346
6-24 months                  MAL-ED         BANGLADESH   NA                   NA                0.4248366   0.3462528   0.5034204
6-24 months                  MAL-ED         NEPAL        NA                   NA                0.2204301   0.1606956   0.2801646
6-24 months                  MAL-ED         PERU         NA                   NA                0.3986486   0.3194990   0.4777982
6-24 months                  PROVIDE        BANGLADESH   NA                   NA                0.3004386   0.2583143   0.3425629


### Parameter: RR


agecat                       studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   GMS-Nepal      NEPAL        0                    1                 1.1264963   0.9878512   1.2846003
0-24 months (no birth st.)   JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   JiVitA-3       BANGLADESH   0                    1                 0.9745465   0.9039803   1.0506212
0-24 months (no birth st.)   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   JiVitA-4       BANGLADESH   0                    1                 1.0984897   0.9917641   1.2167003
0-24 months (no birth st.)   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   Keneba         GAMBIA       0                    1                 1.1572005   1.0623460   1.2605244
0-24 months (no birth st.)   LCNI-5         MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   LCNI-5         MALAWI       0                    1                 1.2182781   0.6976391   2.1274633
0-24 months (no birth st.)   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED         BANGLADESH   0                    1                 0.9852139   0.7555439   1.2846990
0-24 months (no birth st.)   MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED         NEPAL        0                    1                 0.5617021   0.2807235   1.1239146
0-24 months (no birth st.)   MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED         PERU         0                    1                 0.9202919   0.7477389   1.1326644
0-24 months (no birth st.)   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   PROVIDE        BANGLADESH   0                    1                 1.1779723   0.9446948   1.4688540
0-24 months (no birth st.)   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   SAS-CompFeed   INDIA        0                    1                 1.0501122   0.6736522   1.6369510
0-6 months (no birth st.)    GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    GMS-Nepal      NEPAL        0                    1                 1.3694447   0.9329326   2.0101974
0-6 months (no birth st.)    JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    JiVitA-3       BANGLADESH   0                    1                 0.9980854   0.8923306   1.1163736
0-6 months (no birth st.)    JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    JiVitA-4       BANGLADESH   0                    1                 1.3076104   1.0067876   1.6983174
0-6 months (no birth st.)    Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    Keneba         GAMBIA       0                    1                 1.2293890   1.0546572   1.4330698
0-6 months (no birth st.)    MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED         BANGLADESH   0                    1                 1.3336154   0.7285179   2.4412991
0-6 months (no birth st.)    MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED         PERU         0                    1                 1.0958155   0.7568109   1.5866734
0-6 months (no birth st.)    PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    PROVIDE        BANGLADESH   0                    1                 1.2830782   0.8455666   1.9469662
0-6 months (no birth st.)    SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    SAS-CompFeed   INDIA        0                    1                 1.7972350   0.5064696   6.3775866
6-24 months                  GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  GMS-Nepal      NEPAL        0                    1                 1.1332684   0.9438053   1.3607650
6-24 months                  JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  JiVitA-3       BANGLADESH   0                    1                 0.9386722   0.8280227   1.0641079
6-24 months                  JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  JiVitA-4       BANGLADESH   0                    1                 1.0634352   0.9340262   1.2107737
6-24 months                  Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  Keneba         GAMBIA       0                    1                 1.0970440   0.9559459   1.2589683
6-24 months                  LCNI-5         MALAWI       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  LCNI-5         MALAWI       0                    1                 1.1307628   0.6790650   1.8829191
6-24 months                  MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED         BANGLADESH   0                    1                 0.8463823   0.5768226   1.2419122
6-24 months                  MAL-ED         NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED         NEPAL        0                    1                 0.4525714   0.2221214   0.9221125
6-24 months                  MAL-ED         PERU         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED         PERU         0                    1                 0.7620329   0.5152981   1.1269091
6-24 months                  PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months                  PROVIDE        BANGLADESH   0                    1                 1.0017739   0.7234324   1.3872076


### Parameter: PAR


agecat                       studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   GMS-Nepal      NEPAL        1                    NA                 0.0214780   -0.0018509   0.0448069
0-24 months (no birth st.)   JiVitA-3       BANGLADESH   1                    NA                -0.0015135   -0.0057026   0.0026756
0-24 months (no birth st.)   JiVitA-4       BANGLADESH   1                    NA                 0.0071976   -0.0023270   0.0167222
0-24 months (no birth st.)   Keneba         GAMBIA       1                    NA                 0.0473630    0.0203520   0.0743740
0-24 months (no birth st.)   LCNI-5         MALAWI       1                    NA                 0.0721032   -0.0964003   0.2406067
0-24 months (no birth st.)   MAL-ED         BANGLADESH   1                    NA                -0.0043956   -0.0950833   0.0862921
0-24 months (no birth st.)   MAL-ED         NEPAL        1                    NA                -0.1882138   -0.4731562   0.0967286
0-24 months (no birth st.)   MAL-ED         PERU         1                    NA                -0.0345639   -0.1219984   0.0528706
0-24 months (no birth st.)   PROVIDE        BANGLADESH   1                    NA                 0.0374005   -0.0185633   0.0933643
0-24 months (no birth st.)   SAS-CompFeed   INDIA        1                    NA                 0.0013174   -0.0112602   0.0138950
0-6 months (no birth st.)    GMS-Nepal      NEPAL        1                    NA                 0.0195883   -0.0031770   0.0423537
0-6 months (no birth st.)    JiVitA-3       BANGLADESH   1                    NA                 0.0000224   -0.0032789   0.0033238
0-6 months (no birth st.)    JiVitA-4       BANGLADESH   1                    NA                 0.0059509    0.0001642   0.0117376
0-6 months (no birth st.)    Keneba         GAMBIA       1                    NA                 0.0311900    0.0076847   0.0546954
0-6 months (no birth st.)    MAL-ED         BANGLADESH   1                    NA                 0.0324664   -0.0407579   0.1056906
0-6 months (no birth st.)    MAL-ED         PERU         1                    NA                 0.0239031   -0.0648565   0.1126628
0-6 months (no birth st.)    PROVIDE        BANGLADESH   1                    NA                 0.0238698   -0.0188071   0.0665467
0-6 months (no birth st.)    SAS-CompFeed   INDIA        1                    NA                 0.0068035   -0.0151879   0.0287949
6-24 months                  GMS-Nepal      NEPAL        1                    NA                 0.0088982   -0.0177227   0.0355191
6-24 months                  JiVitA-3       BANGLADESH   1                    NA                -0.0032623   -0.0092169   0.0026923
6-24 months                  JiVitA-4       BANGLADESH   1                    NA                 0.0039634   -0.0063191   0.0142460
6-24 months                  Keneba         GAMBIA       1                    NA                 0.0223660   -0.0105579   0.0552899
6-24 months                  LCNI-5         MALAWI       1                    NA                 0.0453784   -0.1337606   0.2245174
6-24 months                  MAL-ED         BANGLADESH   1                    NA                -0.0337314   -0.1353288   0.0678660
6-24 months                  MAL-ED         NEPAL        1                    NA                -0.2341153   -0.5175303   0.0492997
6-24 months                  MAL-ED         PERU         1                    NA                -0.0771401   -0.1838347   0.0295545
6-24 months                  PROVIDE        BANGLADESH   1                    NA                 0.0033030   -0.0701149   0.0767209


### Parameter: PAF


agecat                       studyid        country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   GMS-Nepal      NEPAL        1                    NA                 0.0329516   -0.0037204    0.0682838
0-24 months (no birth st.)   JiVitA-3       BANGLADESH   1                    NA                -0.0058719   -0.0222405    0.0102345
0-24 months (no birth st.)   JiVitA-4       BANGLADESH   1                    NA                 0.0169911   -0.0057630    0.0392304
0-24 months (no birth st.)   Keneba         GAMBIA       1                    NA                 0.0907342    0.0373502    0.1411579
0-24 months (no birth st.)   LCNI-5         MALAWI       1                    NA                 0.1705144   -0.3421702    0.4873628
0-24 months (no birth st.)   MAL-ED         BANGLADESH   1                    NA                -0.0081632   -0.1914553    0.1469314
0-24 months (no birth st.)   MAL-ED         NEPAL        1                    NA                -0.7066895   -2.2000739    0.0897744
0-24 months (no birth st.)   MAL-ED         PERU         1                    NA                -0.0557255   -0.2067484    0.0763971
0-24 months (no birth st.)   PROVIDE        BANGLADESH   1                    NA                 0.0994728   -0.0624724    0.2367339
0-24 months (no birth st.)   SAS-CompFeed   INDIA        1                    NA                 0.0021474   -0.0184658    0.0223435
0-6 months (no birth st.)    GMS-Nepal      NEPAL        1                    NA                 0.0951144   -0.0218192    0.1986665
0-6 months (no birth st.)    JiVitA-3       BANGLADESH   1                    NA                 0.0001666   -0.0246560    0.0243878
0-6 months (no birth st.)    JiVitA-4       BANGLADESH   1                    NA                 0.0642582   -0.0013987    0.1256103
0-6 months (no birth st.)    Keneba         GAMBIA       1                    NA                 0.1218097    0.0251444    0.2088897
0-6 months (no birth st.)    MAL-ED         BANGLADESH   1                    NA                 0.1582735   -0.2836198    0.4480425
0-6 months (no birth st.)    MAL-ED         PERU         1                    NA                 0.0643755   -0.2080626    0.2753743
0-6 months (no birth st.)    PROVIDE        BANGLADESH   1                    NA                 0.1495998   -0.1638095    0.3786091
0-6 months (no birth st.)    SAS-CompFeed   INDIA        1                    NA                 0.0331037   -0.0733606    0.1290081
6-24 months                  GMS-Nepal      NEPAL        1                    NA                 0.0156354   -0.0323387    0.0613801
6-24 months                  JiVitA-3       BANGLADESH   1                    NA                -0.0150210   -0.0428841    0.0120976
6-24 months                  JiVitA-4       BANGLADESH   1                    NA                 0.0107789   -0.0175397    0.0383093
6-24 months                  Keneba         GAMBIA       1                    NA                 0.0584925   -0.0316660    0.1407720
6-24 months                  LCNI-5         MALAWI       1                    NA                 0.0993419   -0.3929549    0.4176516
6-24 months                  MAL-ED         BANGLADESH   1                    NA                -0.0793985   -0.3473061    0.1352364
6-24 months                  MAL-ED         NEPAL        1                    NA                -1.0620843   -2.8567327   -0.1025372
6-24 months                  MAL-ED         PERU         1                    NA                -0.1935040   -0.4947087    0.0470038
6-24 months                  PROVIDE        BANGLADESH   1                    NA                 0.0109939   -0.2662737    0.2275500
