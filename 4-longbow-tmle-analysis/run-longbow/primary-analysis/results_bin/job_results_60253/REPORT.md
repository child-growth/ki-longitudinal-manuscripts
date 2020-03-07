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

**Intervention Variable:** exclfeed6

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

agecat                       studyid          country                        exclfeed6    ever_stunted   n_cell       n
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
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                       0     6237   10809
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                       1     2188   10809
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                       0     1786   10809
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                       1      598   10809
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                       0     1558    3397
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                       1     1122    3397
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                       0      400    3397
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                       1      317    3397
0-24 months (no birth st.)   Keneba           GAMBIA                         1                       0      401    2023
0-24 months (no birth st.)   Keneba           GAMBIA                         1                       1      350    2023
0-24 months (no birth st.)   Keneba           GAMBIA                         0                       0      566    2023
0-24 months (no birth st.)   Keneba           GAMBIA                         0                       1      706    2023
0-24 months (no birth st.)   LCNI-5           MALAWI                         1                       0       18     175
0-24 months (no birth st.)   LCNI-5           MALAWI                         1                       1       12     175
0-24 months (no birth st.)   LCNI-5           MALAWI                         0                       0       83     175
0-24 months (no birth st.)   LCNI-5           MALAWI                         0                       1       62     175
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                       0       12     195
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                       1       16     195
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                       0       78     195
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                       1       89     195
0-24 months (no birth st.)   MAL-ED           BRAZIL                         1                       0        8     185
0-24 months (no birth st.)   MAL-ED           BRAZIL                         1                       1        1     185
0-24 months (no birth st.)   MAL-ED           BRAZIL                         0                       0      146     185
0-24 months (no birth st.)   MAL-ED           BRAZIL                         0                       1       30     185
0-24 months (no birth st.)   MAL-ED           INDIA                          1                       0        0     185
0-24 months (no birth st.)   MAL-ED           INDIA                          1                       1        1     185
0-24 months (no birth st.)   MAL-ED           INDIA                          0                       0       83     185
0-24 months (no birth st.)   MAL-ED           INDIA                          0                       1      101     185
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                       0        3     199
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                       1        2     199
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                       0      143     199
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                       1       51     199
0-24 months (no birth st.)   MAL-ED           PERU                           1                       0        0     237
0-24 months (no birth st.)   MAL-ED           PERU                           1                       1        4     237
0-24 months (no birth st.)   MAL-ED           PERU                           0                       0       90     237
0-24 months (no birth st.)   MAL-ED           PERU                           0                       1      143     237
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                       0        0     212
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                       1        0     212
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                       0       91     212
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                       1      121     212
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        0     197
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     197
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0       28     197
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1      169     197
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
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     1                       0     7278   10806
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     1                       1     1145   10806
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                       0     2073   10806
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                       1      310   10806
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                       0     2432    3369
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                       1      237    3369
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                       0      625    3369
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                       1       75    3369
0-6 months (no birth st.)    Keneba           GAMBIA                         1                       0      582    2023
0-6 months (no birth st.)    Keneba           GAMBIA                         1                       1      169    2023
0-6 months (no birth st.)    Keneba           GAMBIA                         0                       0      923    2023
0-6 months (no birth st.)    Keneba           GAMBIA                         0                       1      349    2023
0-6 months (no birth st.)    LCNI-5           MALAWI                         1                       0       30     175
0-6 months (no birth st.)    LCNI-5           MALAWI                         1                       1        0     175
0-6 months (no birth st.)    LCNI-5           MALAWI                         0                       0      145     175
0-6 months (no birth st.)    LCNI-5           MALAWI                         0                       1        0     175
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                       0       21     195
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                       1        7     195
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                       0      134     195
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                       1       33     195
0-6 months (no birth st.)    MAL-ED           BRAZIL                         1                       0        9     185
0-6 months (no birth st.)    MAL-ED           BRAZIL                         1                       1        0     185
0-6 months (no birth st.)    MAL-ED           BRAZIL                         0                       0      156     185
0-6 months (no birth st.)    MAL-ED           BRAZIL                         0                       1       20     185
0-6 months (no birth st.)    MAL-ED           INDIA                          1                       0        1     185
0-6 months (no birth st.)    MAL-ED           INDIA                          1                       1        0     185
0-6 months (no birth st.)    MAL-ED           INDIA                          0                       0      140     185
0-6 months (no birth st.)    MAL-ED           INDIA                          0                       1       44     185
0-6 months (no birth st.)    MAL-ED           NEPAL                          1                       0        5     199
0-6 months (no birth st.)    MAL-ED           NEPAL                          1                       1        0     199
0-6 months (no birth st.)    MAL-ED           NEPAL                          0                       0      182     199
0-6 months (no birth st.)    MAL-ED           NEPAL                          0                       1       12     199
0-6 months (no birth st.)    MAL-ED           PERU                           1                       0        2     237
0-6 months (no birth st.)    MAL-ED           PERU                           1                       1        2     237
0-6 months (no birth st.)    MAL-ED           PERU                           0                       0      147     237
0-6 months (no birth st.)    MAL-ED           PERU                           0                       1       86     237
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   1                       0        0     212
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   1                       1        0     212
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                       0      146     212
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                       1       66     212
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        0     197
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     197
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0      137     197
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
6-24 months                  JiVitA-3         BANGLADESH                     1                       0     3708    6170
6-24 months                  JiVitA-3         BANGLADESH                     1                       1     1051    6170
6-24 months                  JiVitA-3         BANGLADESH                     0                       0     1122    6170
6-24 months                  JiVitA-3         BANGLADESH                     0                       1      289    6170
6-24 months                  JiVitA-4         BANGLADESH                     1                       0     1553    3084
6-24 months                  JiVitA-4         BANGLADESH                     1                       1      887    3084
6-24 months                  JiVitA-4         BANGLADESH                     0                       0      397    3084
6-24 months                  JiVitA-4         BANGLADESH                     0                       1      247    3084
6-24 months                  Keneba           GAMBIA                         1                       0      328    1407
6-24 months                  Keneba           GAMBIA                         1                       1      181    1407
6-24 months                  Keneba           GAMBIA                         0                       0      541    1407
6-24 months                  Keneba           GAMBIA                         0                       1      357    1407
6-24 months                  LCNI-5           MALAWI                         1                       0       16     162
6-24 months                  LCNI-5           MALAWI                         1                       1       12     162
6-24 months                  LCNI-5           MALAWI                         0                       0       72     162
6-24 months                  LCNI-5           MALAWI                         0                       1       62     162
6-24 months                  MAL-ED           BANGLADESH                     1                       0       12     153
6-24 months                  MAL-ED           BANGLADESH                     1                       1        9     153
6-24 months                  MAL-ED           BANGLADESH                     0                       0       76     153
6-24 months                  MAL-ED           BANGLADESH                     0                       1       56     153
6-24 months                  MAL-ED           BRAZIL                         1                       0        8     163
6-24 months                  MAL-ED           BRAZIL                         1                       1        1     163
6-24 months                  MAL-ED           BRAZIL                         0                       0      144     163
6-24 months                  MAL-ED           BRAZIL                         0                       1       10     163
6-24 months                  MAL-ED           INDIA                          1                       0        0     141
6-24 months                  MAL-ED           INDIA                          1                       1        1     141
6-24 months                  MAL-ED           INDIA                          0                       0       83     141
6-24 months                  MAL-ED           INDIA                          0                       1       57     141
6-24 months                  MAL-ED           NEPAL                          1                       0        3     186
6-24 months                  MAL-ED           NEPAL                          1                       1        2     186
6-24 months                  MAL-ED           NEPAL                          0                       0      142     186
6-24 months                  MAL-ED           NEPAL                          0                       1       39     186
6-24 months                  MAL-ED           PERU                           1                       0        0     148
6-24 months                  MAL-ED           PERU                           1                       1        2     148
6-24 months                  MAL-ED           PERU                           0                       0       89     148
6-24 months                  MAL-ED           PERU                           0                       1       57     148
6-24 months                  MAL-ED           SOUTH AFRICA                   1                       0        0     145
6-24 months                  MAL-ED           SOUTH AFRICA                   1                       1        0     145
6-24 months                  MAL-ED           SOUTH AFRICA                   0                       0       90     145
6-24 months                  MAL-ED           SOUTH AFRICA                   0                       1       55     145
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       0        0     135
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                       1        0     135
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       0       26     135
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                       1      109     135
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
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
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
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
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




# Results Detail

## Results Plots
![](/tmp/e35da7ae-cae6-4dc1-97ef-a73d19019739/1a130601-e6dd-4afc-b923-226e9ed55a84/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e35da7ae-cae6-4dc1-97ef-a73d19019739/1a130601-e6dd-4afc-b923-226e9ed55a84/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e35da7ae-cae6-4dc1-97ef-a73d19019739/1a130601-e6dd-4afc-b923-226e9ed55a84/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e35da7ae-cae6-4dc1-97ef-a73d19019739/1a130601-e6dd-4afc-b923-226e9ed55a84/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid        country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
---------------------------  -------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth st.)   GMS-Nepal      NEPAL        1                    NA                0.6299849    0.5797027   0.6802672
0-24 months (no birth st.)   GMS-Nepal      NEPAL        0                    NA                0.7325706    0.6564312   0.8087100
0-24 months (no birth st.)   JiVitA-3       BANGLADESH   1                    NA                0.2590745    0.2480611   0.2700879
0-24 months (no birth st.)   JiVitA-3       BANGLADESH   0                    NA                0.2529027    0.2357024   0.2701029
0-24 months (no birth st.)   JiVitA-4       BANGLADESH   1                    NA                0.4174554    0.3954853   0.4394254
0-24 months (no birth st.)   JiVitA-4       BANGLADESH   0                    NA                0.4525947    0.4115225   0.4936670
0-24 months (no birth st.)   Keneba         GAMBIA       1                    NA                0.4738328    0.4390346   0.5086310
0-24 months (no birth st.)   Keneba         GAMBIA       0                    NA                0.5513063    0.5243670   0.5782455
0-24 months (no birth st.)   LCNI-5         MALAWI       1                    NA                0.4037482    0.2250047   0.5824917
0-24 months (no birth st.)   LCNI-5         MALAWI       0                    NA                0.4276421    0.3468311   0.5084532
0-24 months (no birth st.)   MAL-ED         BANGLADESH   1                    NA                0.5017605    0.3181550   0.6853661
0-24 months (no birth st.)   MAL-ED         BANGLADESH   0                    NA                0.5303991    0.4544294   0.6063688
0-24 months (no birth st.)   PROVIDE        BANGLADESH   1                    NA                0.3363823    0.2692327   0.4035319
0-24 months (no birth st.)   PROVIDE        BANGLADESH   0                    NA                0.3984907    0.3530085   0.4439729
0-24 months (no birth st.)   SAS-CompFeed   INDIA        1                    NA                0.6121795    0.5306906   0.6936683
0-24 months (no birth st.)   SAS-CompFeed   INDIA        0                    NA                0.6428571    0.3329177   0.9527966
0-6 months (no birth st.)    GMS-Nepal      NEPAL        1                    NA                0.1869577    0.1460094   0.2279061
0-6 months (no birth st.)    GMS-Nepal      NEPAL        0                    NA                0.2635488    0.1828843   0.3442133
0-6 months (no birth st.)    JiVitA-3       BANGLADESH   1                    NA                0.1347059    0.1264133   0.1429985
0-6 months (no birth st.)    JiVitA-3       BANGLADESH   0                    NA                0.1347472    0.1216030   0.1478913
0-6 months (no birth st.)    JiVitA-4       BANGLADESH   1                    NA                0.0867613    0.0732682   0.1002545
0-6 months (no birth st.)    JiVitA-4       BANGLADESH   0                    NA                0.1143152    0.0893667   0.1392637
0-6 months (no birth st.)    Keneba         GAMBIA       1                    NA                0.2212841    0.1919990   0.2505692
0-6 months (no birth st.)    Keneba         GAMBIA       0                    NA                0.2763021    0.2520158   0.3005884
0-6 months (no birth st.)    MAL-ED         BANGLADESH   1                    NA                0.2500000    0.0892000   0.4108000
0-6 months (no birth st.)    MAL-ED         BANGLADESH   0                    NA                0.1976048    0.1370569   0.2581527
0-6 months (no birth st.)    PROVIDE        BANGLADESH   1                    NA                0.1333159    0.0842864   0.1823454
0-6 months (no birth st.)    PROVIDE        BANGLADESH   0                    NA                0.1743204    0.1390590   0.2095817
0-6 months (no birth st.)    SAS-CompFeed   INDIA        1                    NA                0.1987179    0.1419130   0.2555229
0-6 months (no birth st.)    SAS-CompFeed   INDIA        0                    NA                0.3571429   -0.1170496   0.8313354
6-24 months                  GMS-Nepal      NEPAL        1                    NA                0.5571649    0.4991423   0.6151874
6-24 months                  GMS-Nepal      NEPAL        0                    NA                0.6346373    0.5350168   0.7342578
6-24 months                  JiVitA-3       BANGLADESH   1                    NA                0.2204385    0.2071097   0.2337673
6-24 months                  JiVitA-3       BANGLADESH   0                    NA                0.2056744    0.1810958   0.2302529
6-24 months                  JiVitA-4       BANGLADESH   1                    NA                0.3642936    0.3425082   0.3860790
6-24 months                  JiVitA-4       BANGLADESH   0                    NA                0.3837596    0.3390721   0.4284472
6-24 months                  Keneba         GAMBIA       1                    NA                0.3590369    0.3177558   0.4003180
6-24 months                  Keneba         GAMBIA       0                    NA                0.3954720    0.3637355   0.4272085
6-24 months                  LCNI-5         MALAWI       1                    NA                0.4273998    0.2379779   0.6168217
6-24 months                  LCNI-5         MALAWI       0                    NA                0.4629694    0.3781741   0.5477647
6-24 months                  MAL-ED         BANGLADESH   1                    NA                0.4285714    0.2162201   0.6409227
6-24 months                  MAL-ED         BANGLADESH   0                    NA                0.4242424    0.3396538   0.5088310
6-24 months                  PROVIDE        BANGLADESH   1                    NA                0.3142116    0.2293333   0.3990898
6-24 months                  PROVIDE        BANGLADESH   0                    NA                0.2987440    0.2509718   0.3465162


### Parameter: E(Y)


agecat                       studyid        country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   GMS-Nepal      NEPAL        NA                   NA                0.6518047   0.6087352   0.6948741
0-24 months (no birth st.)   JiVitA-3       BANGLADESH   NA                   NA                0.2577482   0.2478575   0.2676389
0-24 months (no birth st.)   JiVitA-4       BANGLADESH   NA                   NA                0.4236091   0.4038600   0.4433581
0-24 months (no birth st.)   Keneba         GAMBIA       NA                   NA                0.5219970   0.5002246   0.5437695
0-24 months (no birth st.)   LCNI-5         MALAWI       NA                   NA                0.4228571   0.3494545   0.4962598
0-24 months (no birth st.)   MAL-ED         BANGLADESH   NA                   NA                0.5384615   0.4683114   0.6086117
0-24 months (no birth st.)   PROVIDE        BANGLADESH   NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   SAS-CompFeed   INDIA        NA                   NA                0.6134969   0.5286303   0.6983636
0-6 months (no birth st.)    GMS-Nepal      NEPAL        NA                   NA                0.2059448   0.1693853   0.2425043
0-6 months (no birth st.)    JiVitA-3       BANGLADESH   NA                   NA                0.1346474   0.1274032   0.1418916
0-6 months (no birth st.)    JiVitA-4       BANGLADESH   NA                   NA                0.0926091   0.0806150   0.1046031
0-6 months (no birth st.)    Keneba         GAMBIA       NA                   NA                0.2560554   0.2370317   0.2750791
0-6 months (no birth st.)    MAL-ED         BANGLADESH   NA                   NA                0.2051282   0.1483073   0.2619492
0-6 months (no birth st.)    PROVIDE        BANGLADESH   NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    SAS-CompFeed   INDIA        NA                   NA                0.2055215   0.1385538   0.2724891
6-24 months                  GMS-Nepal      NEPAL        NA                   NA                0.5691057   0.5185109   0.6197005
6-24 months                  JiVitA-3       BANGLADESH   NA                   NA                0.2171799   0.2048085   0.2295513
6-24 months                  JiVitA-4       BANGLADESH   NA                   NA                0.3677043   0.3477044   0.3877041
6-24 months                  Keneba         GAMBIA       NA                   NA                0.3823738   0.3569722   0.4077755
6-24 months                  LCNI-5         MALAWI       NA                   NA                0.4567901   0.3798457   0.5337346
6-24 months                  MAL-ED         BANGLADESH   NA                   NA                0.4248366   0.3462528   0.5034204
6-24 months                  PROVIDE        BANGLADESH   NA                   NA                0.3004386   0.2583143   0.3425629


### Parameter: RR


agecat                       studyid        country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  -------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   GMS-Nepal      NEPAL        0                    1                 1.1628383   1.0230000   1.321792
0-24 months (no birth st.)   JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-3       BANGLADESH   0                    1                 0.9761772   0.9059646   1.051831
0-24 months (no birth st.)   JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   JiVitA-4       BANGLADESH   0                    1                 1.0841752   0.9791737   1.200436
0-24 months (no birth st.)   Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   Keneba         GAMBIA       0                    1                 1.1635038   1.0677873   1.267800
0-24 months (no birth st.)   LCNI-5         MALAWI       1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   LCNI-5         MALAWI       0                    1                 1.0591803   0.6544105   1.714311
0-24 months (no birth st.)   MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   MAL-ED         BANGLADESH   0                    1                 1.0570762   0.7133576   1.566410
0-24 months (no birth st.)   PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   PROVIDE        BANGLADESH   0                    1                 1.1846363   0.9476248   1.480927
0-24 months (no birth st.)   SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   SAS-CompFeed   INDIA        0                    1                 1.0501122   0.6736522   1.636951
0-6 months (no birth st.)    GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    GMS-Nepal      NEPAL        0                    1                 1.4096705   0.9675997   2.053712
0-6 months (no birth st.)    JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-3       BANGLADESH   0                    1                 1.0003067   0.8941851   1.119023
0-6 months (no birth st.)    JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    JiVitA-4       BANGLADESH   0                    1                 1.3175826   1.0094954   1.719695
0-6 months (no birth st.)    Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    Keneba         GAMBIA       0                    1                 1.2486306   1.0687448   1.458794
0-6 months (no birth st.)    MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    MAL-ED         BANGLADESH   0                    1                 0.7904192   0.3876519   1.611658
0-6 months (no birth st.)    PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    PROVIDE        BANGLADESH   0                    1                 1.3075738   0.8608562   1.986103
0-6 months (no birth st.)    SAS-CompFeed   INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    SAS-CompFeed   INDIA        0                    1                 1.7972350   0.5064696   6.377587
6-24 months                  GMS-Nepal      NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  GMS-Nepal      NEPAL        0                    1                 1.1390477   0.9449432   1.373024
6-24 months                  JiVitA-3       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-3       BANGLADESH   0                    1                 0.9330238   0.8222429   1.058730
6-24 months                  JiVitA-4       BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  JiVitA-4       BANGLADESH   0                    1                 1.0534350   0.9271193   1.196961
6-24 months                  Keneba         GAMBIA       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  Keneba         GAMBIA       0                    1                 1.1014801   0.9592093   1.264852
6-24 months                  LCNI-5         MALAWI       1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  LCNI-5         MALAWI       0                    1                 1.0832234   0.6703285   1.750445
6-24 months                  MAL-ED         BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  MAL-ED         BANGLADESH   0                    1                 0.9898990   0.5802758   1.688680
6-24 months                  PROVIDE        BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                  PROVIDE        BANGLADESH   0                    1                 0.9507734   0.6977020   1.295639


### Parameter: PAR


agecat                       studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   GMS-Nepal      NEPAL        1                    NA                 0.0218197   -0.0011611   0.0448005
0-24 months (no birth st.)   JiVitA-3       BANGLADESH   1                    NA                -0.0013264   -0.0055089   0.0028562
0-24 months (no birth st.)   JiVitA-4       BANGLADESH   1                    NA                 0.0061537   -0.0035859   0.0158933
0-24 months (no birth st.)   Keneba         GAMBIA       1                    NA                 0.0481642    0.0209750   0.0753534
0-24 months (no birth st.)   LCNI-5         MALAWI       1                    NA                 0.0191090   -0.1439494   0.1821673
0-24 months (no birth st.)   MAL-ED         BANGLADESH   1                    NA                 0.0367010   -0.1342507   0.2076527
0-24 months (no birth st.)   PROVIDE        BANGLADESH   1                    NA                 0.0396051   -0.0169059   0.0961160
0-24 months (no birth st.)   SAS-CompFeed   INDIA        1                    NA                 0.0013174   -0.0112602   0.0138950
0-6 months (no birth st.)    GMS-Nepal      NEPAL        1                    NA                 0.0189871   -0.0037534   0.0417275
0-6 months (no birth st.)    JiVitA-3       BANGLADESH   1                    NA                -0.0000585   -0.0033882   0.0032713
0-6 months (no birth st.)    JiVitA-4       BANGLADESH   1                    NA                 0.0058478    0.0001065   0.0115890
0-6 months (no birth st.)    Keneba         GAMBIA       1                    NA                 0.0347712    0.0111728   0.0583696
0-6 months (no birth st.)    MAL-ED         BANGLADESH   1                    NA                -0.0448718   -0.1920444   0.1023008
0-6 months (no birth st.)    PROVIDE        BANGLADESH   1                    NA                 0.0262418   -0.0157882   0.0682718
0-6 months (no birth st.)    SAS-CompFeed   INDIA        1                    NA                 0.0068035   -0.0151879   0.0287949
6-24 months                  GMS-Nepal      NEPAL        1                    NA                 0.0119408   -0.0149343   0.0388159
6-24 months                  JiVitA-3       BANGLADESH   1                    NA                -0.0032586   -0.0092614   0.0027442
6-24 months                  JiVitA-4       BANGLADESH   1                    NA                 0.0034107   -0.0068514   0.0136728
6-24 months                  Keneba         GAMBIA       1                    NA                 0.0233369   -0.0097411   0.0564150
6-24 months                  LCNI-5         MALAWI       1                    NA                 0.0293904   -0.1432591   0.2020398
6-24 months                  MAL-ED         BANGLADESH   1                    NA                -0.0037348   -0.2009403   0.1934706
6-24 months                  PROVIDE        BANGLADESH   1                    NA                -0.0137730   -0.0864227   0.0588768


### Parameter: PAF


agecat                       studyid        country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   GMS-Nepal      NEPAL        1                    NA                 0.0334759   -0.0026718   0.0683204
0-24 months (no birth st.)   JiVitA-3       BANGLADESH   1                    NA                -0.0051460   -0.0214916   0.0109381
0-24 months (no birth st.)   JiVitA-4       BANGLADESH   1                    NA                 0.0145268   -0.0087416   0.0372586
0-24 months (no birth st.)   Keneba         GAMBIA       1                    NA                 0.0922691    0.0385166   0.1430166
0-24 months (no birth st.)   LCNI-5         MALAWI       1                    NA                 0.0451901   -0.4300263   0.3624859
0-24 months (no birth st.)   MAL-ED         BANGLADESH   1                    NA                 0.0681590   -0.3100578   0.3371837
0-24 months (no birth st.)   PROVIDE        BANGLADESH   1                    NA                 0.1053361   -0.0584430   0.2437728
0-24 months (no birth st.)   SAS-CompFeed   INDIA        1                    NA                 0.0021474   -0.0184658   0.0223435
0-6 months (no birth st.)    GMS-Nepal      NEPAL        1                    NA                 0.0921949   -0.0246228   0.1956941
0-6 months (no birth st.)    JiVitA-3       BANGLADESH   1                    NA                -0.0004342   -0.0254690   0.0239895
0-6 months (no birth st.)    JiVitA-4       BANGLADESH   1                    NA                 0.0631446   -0.0018506   0.1239232
0-6 months (no birth st.)    Keneba         GAMBIA       1                    NA                 0.1357957    0.0386912   0.2230915
0-6 months (no birth st.)    MAL-ED         BANGLADESH   1                    NA                -0.2187500   -1.1940228   0.3230009
0-6 months (no birth st.)    PROVIDE        BANGLADESH   1                    NA                 0.1644658   -0.1444692   0.3900077
0-6 months (no birth st.)    SAS-CompFeed   INDIA        1                    NA                 0.0331037   -0.0733606   0.1290081
6-24 months                  GMS-Nepal      NEPAL        1                    NA                 0.0209817   -0.0274985   0.0671746
6-24 months                  JiVitA-3       BANGLADESH   1                    NA                -0.0150041   -0.0431046   0.0123393
6-24 months                  JiVitA-4       BANGLADESH   1                    NA                 0.0092757   -0.0189956   0.0367626
6-24 months                  Keneba         GAMBIA       1                    NA                 0.0610317   -0.0295965   0.1436826
6-24 months                  LCNI-5         MALAWI       1                    NA                 0.0643411   -0.4016937   0.3754287
6-24 months                  MAL-ED         BANGLADESH   1                    NA                -0.0087912   -0.5982356   0.3632605
6-24 months                  PROVIDE        BANGLADESH   1                    NA                -0.0458429   -0.3178020   0.1699911
