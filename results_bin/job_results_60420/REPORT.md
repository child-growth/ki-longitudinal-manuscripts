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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        hhwealth_quart    ever_wasted   n_cell       n
------------  ---------------  -----------------------------  ---------------  ------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       44     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       52     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       37     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       54     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       26     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       69     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       38     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       53     373
0-24 months   COHORTS          GUATEMALA                      Wealth Q4                   0      366    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q4                   1      110    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q1                   0      166    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q1                   1       78    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q2                   0      190    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q2                   1       68    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q3                   0      211    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q3                   1       74    1263
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4                   0      531    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4                   1      309    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1                   0      372    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1                   1      309    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2                   0      330    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2                   1      210    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3                   0      582    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3                   1      401    3044
0-24 months   CONTENT          PERU                           Wealth Q4                   0       50     215
0-24 months   CONTENT          PERU                           Wealth Q4                   1        2     215
0-24 months   CONTENT          PERU                           Wealth Q1                   0       58     215
0-24 months   CONTENT          PERU                           Wealth Q1                   1        1     215
0-24 months   CONTENT          PERU                           Wealth Q2                   0       50     215
0-24 months   CONTENT          PERU                           Wealth Q2                   1        2     215
0-24 months   CONTENT          PERU                           Wealth Q3                   0       52     215
0-24 months   CONTENT          PERU                           Wealth Q3                   1        0     215
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4                   0       68     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4                   1      102     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1                   0       73     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1                   1      101     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2                   0       70     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2                   1      102     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3                   0       70     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3                   1      100     686
0-24 months   IRC              INDIA                          Wealth Q4                   0       32     410
0-24 months   IRC              INDIA                          Wealth Q4                   1       68     410
0-24 months   IRC              INDIA                          Wealth Q1                   0       34     410
0-24 months   IRC              INDIA                          Wealth Q1                   1       71     410
0-24 months   IRC              INDIA                          Wealth Q2                   0       42     410
0-24 months   IRC              INDIA                          Wealth Q2                   1       60     410
0-24 months   IRC              INDIA                          Wealth Q3                   0       33     410
0-24 months   IRC              INDIA                          Wealth Q3                   1       70     410
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                   0     5435   26932
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                   1     1693   26932
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                   0     4661   26932
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                   1     1825   26932
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                   0     4864   26932
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                   1     1707   26932
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                   0     5024   26932
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                   1     1723   26932
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                   0      988    5427
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                   1      362    5427
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                   0      891    5427
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                   1      481    5427
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                   0      900    5427
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                   1      444    5427
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                   0      965    5427
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                   1      396    5427
0-24 months   LCNI-5           MALAWI                         Wealth Q4                   0      208     817
0-24 months   LCNI-5           MALAWI                         Wealth Q4                   1        9     817
0-24 months   LCNI-5           MALAWI                         Wealth Q1                   0      180     817
0-24 months   LCNI-5           MALAWI                         Wealth Q1                   1       24     817
0-24 months   LCNI-5           MALAWI                         Wealth Q2                   0      180     817
0-24 months   LCNI-5           MALAWI                         Wealth Q2                   1       19     817
0-24 months   LCNI-5           MALAWI                         Wealth Q3                   0      183     817
0-24 months   LCNI-5           MALAWI                         Wealth Q3                   1       14     817
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4                   0       44     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4                   1       17     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1                   0       40     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1                   1       20     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2                   0       36     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2                   1       25     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3                   0       38     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3                   1       22     242
0-24 months   MAL-ED           BRAZIL                         Wealth Q4                   0       44     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q4                   1        9     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q1                   0       48     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q1                   1        5     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q2                   0       50     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q2                   1        3     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q3                   0       48     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q3                   1        3     210
0-24 months   MAL-ED           INDIA                          Wealth Q4                   0       34     235
0-24 months   MAL-ED           INDIA                          Wealth Q4                   1       25     235
0-24 months   MAL-ED           INDIA                          Wealth Q1                   0       26     235
0-24 months   MAL-ED           INDIA                          Wealth Q1                   1       34     235
0-24 months   MAL-ED           INDIA                          Wealth Q2                   0       28     235
0-24 months   MAL-ED           INDIA                          Wealth Q2                   1       30     235
0-24 months   MAL-ED           INDIA                          Wealth Q3                   0       33     235
0-24 months   MAL-ED           INDIA                          Wealth Q3                   1       25     235
0-24 months   MAL-ED           NEPAL                          Wealth Q4                   0       42     236
0-24 months   MAL-ED           NEPAL                          Wealth Q4                   1       17     236
0-24 months   MAL-ED           NEPAL                          Wealth Q1                   0       37     236
0-24 months   MAL-ED           NEPAL                          Wealth Q1                   1       22     236
0-24 months   MAL-ED           NEPAL                          Wealth Q2                   0       47     236
0-24 months   MAL-ED           NEPAL                          Wealth Q2                   1       12     236
0-24 months   MAL-ED           NEPAL                          Wealth Q3                   0       37     236
0-24 months   MAL-ED           NEPAL                          Wealth Q3                   1       22     236
0-24 months   MAL-ED           PERU                           Wealth Q4                   0       62     272
0-24 months   MAL-ED           PERU                           Wealth Q4                   1        6     272
0-24 months   MAL-ED           PERU                           Wealth Q1                   0       62     272
0-24 months   MAL-ED           PERU                           Wealth Q1                   1        6     272
0-24 months   MAL-ED           PERU                           Wealth Q2                   0       66     272
0-24 months   MAL-ED           PERU                           Wealth Q2                   1        5     272
0-24 months   MAL-ED           PERU                           Wealth Q3                   0       56     272
0-24 months   MAL-ED           PERU                           Wealth Q3                   1        9     272
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                   0       52     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                   1       13     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                   0       49     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                   1       15     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                   0       47     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                   1       17     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                   0       52     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                   1       12     257
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       58     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        5     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       56     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        7     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       52     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       10     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       48     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       14     250
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4                   0      107     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4                   1       68     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1                   0      112     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1                   1       62     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2                   0      121     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2                   1       55     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3                   0      114     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3                   1       61     700
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0      447    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1      146    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0      558    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1      161    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0      367    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1      116    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0      448    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1      141    2384
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       54     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       41     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       45     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       45     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       34     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       59     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       45     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       45     368
0-6 months    COHORTS          GUATEMALA                      Wealth Q4                   0      297    1015
0-6 months    COHORTS          GUATEMALA                      Wealth Q4                   1       72    1015
0-6 months    COHORTS          GUATEMALA                      Wealth Q1                   0      146    1015
0-6 months    COHORTS          GUATEMALA                      Wealth Q1                   1       50    1015
0-6 months    COHORTS          GUATEMALA                      Wealth Q2                   0      166    1015
0-6 months    COHORTS          GUATEMALA                      Wealth Q2                   1       36    1015
0-6 months    COHORTS          GUATEMALA                      Wealth Q3                   0      200    1015
0-6 months    COHORTS          GUATEMALA                      Wealth Q3                   1       48    1015
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4                   0      627    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4                   1      213    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1                   0      504    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1                   1      176    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2                   0      424    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2                   1      116    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3                   0      771    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3                   1      212    3043
0-6 months    CONTENT          PERU                           Wealth Q4                   0       51     215
0-6 months    CONTENT          PERU                           Wealth Q4                   1        1     215
0-6 months    CONTENT          PERU                           Wealth Q1                   0       58     215
0-6 months    CONTENT          PERU                           Wealth Q1                   1        1     215
0-6 months    CONTENT          PERU                           Wealth Q2                   0       50     215
0-6 months    CONTENT          PERU                           Wealth Q2                   1        2     215
0-6 months    CONTENT          PERU                           Wealth Q3                   0       52     215
0-6 months    CONTENT          PERU                           Wealth Q3                   1        0     215
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4                   0      109     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4                   1       61     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1                   0      113     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1                   1       61     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2                   0      104     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2                   1       68     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3                   0      102     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3                   1       68     686
0-6 months    IRC              INDIA                          Wealth Q4                   0       45     410
0-6 months    IRC              INDIA                          Wealth Q4                   1       55     410
0-6 months    IRC              INDIA                          Wealth Q1                   0       47     410
0-6 months    IRC              INDIA                          Wealth Q1                   1       58     410
0-6 months    IRC              INDIA                          Wealth Q2                   0       50     410
0-6 months    IRC              INDIA                          Wealth Q2                   1       52     410
0-6 months    IRC              INDIA                          Wealth Q3                   0       45     410
0-6 months    IRC              INDIA                          Wealth Q3                   1       58     410
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4                   0     5959   26835
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4                   1     1140   26835
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1                   0     5212   26835
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1                   1     1254   26835
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2                   0     5366   26835
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2                   1     1175   26835
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3                   0     5570   26835
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3                   1     1159   26835
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4                   0     1139    5083
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4                   1      132    5083
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1                   0     1112    5083
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1                   1      142    5083
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2                   0     1128    5083
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2                   1      135    5083
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3                   0     1156    5083
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3                   1      139    5083
0-6 months    LCNI-5           MALAWI                         Wealth Q4                   0       73     269
0-6 months    LCNI-5           MALAWI                         Wealth Q4                   1        0     269
0-6 months    LCNI-5           MALAWI                         Wealth Q1                   0       65     269
0-6 months    LCNI-5           MALAWI                         Wealth Q1                   1        3     269
0-6 months    LCNI-5           MALAWI                         Wealth Q2                   0       64     269
0-6 months    LCNI-5           MALAWI                         Wealth Q2                   1        0     269
0-6 months    LCNI-5           MALAWI                         Wealth Q3                   0       63     269
0-6 months    LCNI-5           MALAWI                         Wealth Q3                   1        1     269
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4                   0       47     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4                   1       14     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1                   0       47     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1                   1       13     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2                   0       47     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2                   1       14     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3                   0       44     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3                   1       16     242
0-6 months    MAL-ED           BRAZIL                         Wealth Q4                   0       45     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q4                   1        8     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q1                   0       49     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q1                   1        4     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q2                   0       51     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q2                   1        2     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q3                   0       50     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q3                   1        1     210
0-6 months    MAL-ED           INDIA                          Wealth Q4                   0       45     235
0-6 months    MAL-ED           INDIA                          Wealth Q4                   1       14     235
0-6 months    MAL-ED           INDIA                          Wealth Q1                   0       40     235
0-6 months    MAL-ED           INDIA                          Wealth Q1                   1       20     235
0-6 months    MAL-ED           INDIA                          Wealth Q2                   0       36     235
0-6 months    MAL-ED           INDIA                          Wealth Q2                   1       22     235
0-6 months    MAL-ED           INDIA                          Wealth Q3                   0       38     235
0-6 months    MAL-ED           INDIA                          Wealth Q3                   1       20     235
0-6 months    MAL-ED           NEPAL                          Wealth Q4                   0       44     236
0-6 months    MAL-ED           NEPAL                          Wealth Q4                   1       15     236
0-6 months    MAL-ED           NEPAL                          Wealth Q1                   0       44     236
0-6 months    MAL-ED           NEPAL                          Wealth Q1                   1       15     236
0-6 months    MAL-ED           NEPAL                          Wealth Q2                   0       51     236
0-6 months    MAL-ED           NEPAL                          Wealth Q2                   1        8     236
0-6 months    MAL-ED           NEPAL                          Wealth Q3                   0       50     236
0-6 months    MAL-ED           NEPAL                          Wealth Q3                   1        9     236
0-6 months    MAL-ED           PERU                           Wealth Q4                   0       66     272
0-6 months    MAL-ED           PERU                           Wealth Q4                   1        2     272
0-6 months    MAL-ED           PERU                           Wealth Q1                   0       66     272
0-6 months    MAL-ED           PERU                           Wealth Q1                   1        2     272
0-6 months    MAL-ED           PERU                           Wealth Q2                   0       69     272
0-6 months    MAL-ED           PERU                           Wealth Q2                   1        2     272
0-6 months    MAL-ED           PERU                           Wealth Q3                   0       61     272
0-6 months    MAL-ED           PERU                           Wealth Q3                   1        4     272
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4                   0       58     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4                   1        7     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1                   0       55     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1                   1        9     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2                   0       58     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2                   1        6     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3                   0       58     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3                   1        6     257
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       61     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        2     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       60     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        3     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       57     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        5     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       59     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1        3     250
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4                   0      124     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4                   1       51     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1                   0      123     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1                   1       51     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2                   0      140     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2                   1       36     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3                   0      132     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3                   1       43     700
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0      506    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1       87    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0      613    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1      106    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0      429    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       54    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0      504    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       85    2384
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       77     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       19     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       63     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       28     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       65     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       30     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       69     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       22     373
6-24 months   COHORTS          GUATEMALA                      Wealth Q4                   0      386    1154
6-24 months   COHORTS          GUATEMALA                      Wealth Q4                   1       47    1154
6-24 months   COHORTS          GUATEMALA                      Wealth Q1                   0      191    1154
6-24 months   COHORTS          GUATEMALA                      Wealth Q1                   1       34    1154
6-24 months   COHORTS          GUATEMALA                      Wealth Q2                   0      203    1154
6-24 months   COHORTS          GUATEMALA                      Wealth Q2                   1       38    1154
6-24 months   COHORTS          GUATEMALA                      Wealth Q3                   0      225    1154
6-24 months   COHORTS          GUATEMALA                      Wealth Q3                   1       30    1154
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4                   0      626    2809
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4                   1      145    2809
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1                   0      406    2809
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1                   1      200    2809
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2                   0      368    2809
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2                   1      136    2809
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3                   0      660    2809
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3                   1      268    2809
6-24 months   CONTENT          PERU                           Wealth Q4                   0       50     215
6-24 months   CONTENT          PERU                           Wealth Q4                   1        2     215
6-24 months   CONTENT          PERU                           Wealth Q1                   0       59     215
6-24 months   CONTENT          PERU                           Wealth Q1                   1        0     215
6-24 months   CONTENT          PERU                           Wealth Q2                   0       52     215
6-24 months   CONTENT          PERU                           Wealth Q2                   1        0     215
6-24 months   CONTENT          PERU                           Wealth Q3                   0       52     215
6-24 months   CONTENT          PERU                           Wealth Q3                   1        0     215
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4                   0       79     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4                   1       69     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1                   0       72     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1                   1       74     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2                   0       84     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2                   1       71     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3                   0       76     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3                   1       65     590
6-24 months   IRC              INDIA                          Wealth Q4                   0       65     410
6-24 months   IRC              INDIA                          Wealth Q4                   1       35     410
6-24 months   IRC              INDIA                          Wealth Q1                   0       71     410
6-24 months   IRC              INDIA                          Wealth Q1                   1       34     410
6-24 months   IRC              INDIA                          Wealth Q2                   0       75     410
6-24 months   IRC              INDIA                          Wealth Q2                   1       27     410
6-24 months   IRC              INDIA                          Wealth Q3                   0       72     410
6-24 months   IRC              INDIA                          Wealth Q3                   1       31     410
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                   0     4431   17289
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                   1      694   17289
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                   0     2955   17289
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                   1      737   17289
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                   0     3345   17289
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                   1      688   17289
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                   0     3726   17289
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                   1      713   17289
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                   0     1084    5423
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                   1      263    5423
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                   0      971    5423
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                   1      400    5423
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                   0      973    5423
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                   1      371    5423
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                   0     1054    5423
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                   1      307    5423
6-24 months   LCNI-5           MALAWI                         Wealth Q4                   0      207     805
6-24 months   LCNI-5           MALAWI                         Wealth Q4                   1        9     805
6-24 months   LCNI-5           MALAWI                         Wealth Q1                   0      174     805
6-24 months   LCNI-5           MALAWI                         Wealth Q1                   1       22     805
6-24 months   LCNI-5           MALAWI                         Wealth Q2                   0      177     805
6-24 months   LCNI-5           MALAWI                         Wealth Q2                   1       19     805
6-24 months   LCNI-5           MALAWI                         Wealth Q3                   0      184     805
6-24 months   LCNI-5           MALAWI                         Wealth Q3                   1       13     805
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4                   0       54     240
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4                   1        7     240
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1                   0       48     240
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1                   1       10     240
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2                   0       45     240
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2                   1       16     240
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3                   0       50     240
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3                   1       10     240
6-24 months   MAL-ED           BRAZIL                         Wealth Q4                   0       51     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q4                   1        2     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q1                   0       51     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q1                   1        1     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q2                   0       50     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q2                   1        1     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q3                   0       49     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q3                   1        2     207
6-24 months   MAL-ED           INDIA                          Wealth Q4                   0       45     235
6-24 months   MAL-ED           INDIA                          Wealth Q4                   1       14     235
6-24 months   MAL-ED           INDIA                          Wealth Q1                   0       38     235
6-24 months   MAL-ED           INDIA                          Wealth Q1                   1       22     235
6-24 months   MAL-ED           INDIA                          Wealth Q2                   0       42     235
6-24 months   MAL-ED           INDIA                          Wealth Q2                   1       16     235
6-24 months   MAL-ED           INDIA                          Wealth Q3                   0       46     235
6-24 months   MAL-ED           INDIA                          Wealth Q3                   1       12     235
6-24 months   MAL-ED           NEPAL                          Wealth Q4                   0       53     235
6-24 months   MAL-ED           NEPAL                          Wealth Q4                   1        6     235
6-24 months   MAL-ED           NEPAL                          Wealth Q1                   0       50     235
6-24 months   MAL-ED           NEPAL                          Wealth Q1                   1        8     235
6-24 months   MAL-ED           NEPAL                          Wealth Q2                   0       54     235
6-24 months   MAL-ED           NEPAL                          Wealth Q2                   1        5     235
6-24 months   MAL-ED           NEPAL                          Wealth Q3                   0       42     235
6-24 months   MAL-ED           NEPAL                          Wealth Q3                   1       17     235
6-24 months   MAL-ED           PERU                           Wealth Q4                   0       62     270
6-24 months   MAL-ED           PERU                           Wealth Q4                   1        5     270
6-24 months   MAL-ED           PERU                           Wealth Q1                   0       64     270
6-24 months   MAL-ED           PERU                           Wealth Q1                   1        4     270
6-24 months   MAL-ED           PERU                           Wealth Q2                   0       68     270
6-24 months   MAL-ED           PERU                           Wealth Q2                   1        3     270
6-24 months   MAL-ED           PERU                           Wealth Q3                   0       58     270
6-24 months   MAL-ED           PERU                           Wealth Q3                   1        6     270
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                   0       56     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                   1        7     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                   0       54     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                   1       10     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                   0       52     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                   1       12     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                   0       56     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                   1        8     255
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       59     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        4     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       53     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        5     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       54     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        8     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       51     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       11     245
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4                   0      111     615
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4                   1       27     615
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1                   0      136     615
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1                   1       24     615
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2                   0      143     615
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2                   1       22     615
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3                   0      126     615
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3                   1       26     615
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0      402    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1       86    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0      529    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1       80    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0      327    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       80    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0      429    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       77    2010


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
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
![](/tmp/211867b1-7dcd-4f10-9073-275772426e3e/2c017104-e90a-4de5-8180-b088b15f9be7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/211867b1-7dcd-4f10-9073-275772426e3e/2c017104-e90a-4de5-8180-b088b15f9be7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/211867b1-7dcd-4f10-9073-275772426e3e/2c017104-e90a-4de5-8180-b088b15f9be7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/211867b1-7dcd-4f10-9073-275772426e3e/2c017104-e90a-4de5-8180-b088b15f9be7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5455358   0.4446693   0.6464023
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5990871   0.4966389   0.7015353
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7304834   0.6405683   0.8203985
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.5699686   0.4678100   0.6721272
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.2370561   0.2049865   0.2691257
0-24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.3048543   0.2542119   0.3554967
0-24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.2642762   0.2153645   0.3131878
0-24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.2575865   0.2109195   0.3042535
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.3749962   0.3453818   0.4046105
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                0.4364275   0.4004702   0.4723848
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                0.3880126   0.3484069   0.4276183
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                0.4111744   0.3825076   0.4398413
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.6220648   0.5507420   0.6933875
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5544075   0.4860414   0.6227737
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5950773   0.5266019   0.6635528
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5899022   0.5193765   0.6604279
0-24 months   IRC              INDIA                          Wealth Q4            NA                0.6781078   0.5844127   0.7718029
0-24 months   IRC              INDIA                          Wealth Q1            NA                0.6734600   0.5838723   0.7630477
0-24 months   IRC              INDIA                          Wealth Q2            NA                0.6001070   0.5046752   0.6955388
0-24 months   IRC              INDIA                          Wealth Q3            NA                0.6881624   0.5972657   0.7790591
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.2621551   0.2469845   0.2773256
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.2592370   0.2457890   0.2726851
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.2552819   0.2429921   0.2675718
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.2601097   0.2484935   0.2717259
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.2851871   0.2547883   0.3155858
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.3391182   0.3116733   0.3665631
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.3263083   0.2956178   0.3569987
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.2925840   0.2634354   0.3217325
0-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                0.0414747   0.0149300   0.0680193
0-24 months   LCNI-5           MALAWI                         Wealth Q1            NA                0.1176471   0.0734075   0.1618866
0-24 months   LCNI-5           MALAWI                         Wealth Q2            NA                0.0954774   0.0546222   0.1363326
0-24 months   LCNI-5           MALAWI                         Wealth Q3            NA                0.0710660   0.0351652   0.1069668
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                0.2840744   0.1674644   0.4006845
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                0.3337401   0.2102054   0.4572749
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                0.4083721   0.2803019   0.5364423
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                0.3759517   0.2516285   0.5002748
0-24 months   MAL-ED           INDIA                          Wealth Q4            NA                0.4325372   0.3031200   0.5619544
0-24 months   MAL-ED           INDIA                          Wealth Q1            NA                0.5695153   0.4419042   0.6971264
0-24 months   MAL-ED           INDIA                          Wealth Q2            NA                0.5219373   0.3909957   0.6528788
0-24 months   MAL-ED           INDIA                          Wealth Q3            NA                0.4330201   0.3036793   0.5623609
0-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                0.2842481   0.1657347   0.4027615
0-24 months   MAL-ED           NEPAL                          Wealth Q1            NA                0.3656400   0.2396323   0.4916477
0-24 months   MAL-ED           NEPAL                          Wealth Q2            NA                0.2001196   0.0939374   0.3063017
0-24 months   MAL-ED           NEPAL                          Wealth Q3            NA                0.3684972   0.2427504   0.4942439
0-24 months   MAL-ED           PERU                           Wealth Q4            NA                0.0882353   0.0206961   0.1557745
0-24 months   MAL-ED           PERU                           Wealth Q1            NA                0.0882353   0.0206961   0.1557745
0-24 months   MAL-ED           PERU                           Wealth Q2            NA                0.0704225   0.0107991   0.1300460
0-24 months   MAL-ED           PERU                           Wealth Q3            NA                0.1384615   0.0543427   0.2225804
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.2101199   0.1105316   0.3097083
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.2476527   0.1409911   0.3543143
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.2732997   0.1645349   0.3820646
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.1879465   0.0933660   0.2825270
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0793651   0.0124835   0.1462467
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1111111   0.0333521   0.1888701
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1612903   0.0695559   0.2530248
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2258065   0.1215230   0.3300899
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.3459909   0.2870644   0.4049173
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.3629497   0.3039356   0.4219637
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.3690883   0.3046130   0.4335635
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.3277094   0.2676650   0.3877538
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2395869   0.2050327   0.2741410
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2202686   0.1899952   0.2505420
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2416672   0.2022495   0.2810848
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2397020   0.2045849   0.2748191
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.4237068   0.3220480   0.5253656
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5045244   0.3979904   0.6110584
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6439895   0.5476183   0.7403607
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4921867   0.3861088   0.5982645
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                0.1929582   0.1541644   0.2317521
0-6 months    COHORTS          GUATEMALA                      Wealth Q1            NA                0.2627526   0.2034972   0.3220080
0-6 months    COHORTS          GUATEMALA                      Wealth Q2            NA                0.1769676   0.1260025   0.2279327
0-6 months    COHORTS          GUATEMALA                      Wealth Q3            NA                0.1940810   0.1457437   0.2424182
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2353010   0.2128004   0.2578017
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2432906   0.2167037   0.2698776
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2334396   0.2031883   0.2636909
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2358070   0.2136723   0.2579417
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3740098   0.3086727   0.4393470
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3541311   0.2928533   0.4154088
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3831252   0.3174360   0.4488144
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                0.3900895   0.3252341   0.4549449
0-6 months    IRC              INDIA                          Wealth Q4            NA                0.5640646   0.4688423   0.6592869
0-6 months    IRC              INDIA                          Wealth Q1            NA                0.5147966   0.4286040   0.6009892
0-6 months    IRC              INDIA                          Wealth Q2            NA                0.5085525   0.4140319   0.6030732
0-6 months    IRC              INDIA                          Wealth Q3            NA                0.5873613   0.4989214   0.6758012
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.1680776   0.1561359   0.1800194
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.1790794   0.1679446   0.1902142
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.1789949   0.1686891   0.1893007
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.1789364   0.1696426   0.1882302
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.0971194   0.0829002   0.1113385
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.1115287   0.0954953   0.1275620
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.1126015   0.0949164   0.1302865
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.1088051   0.0933025   0.1243077
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                0.2326219   0.1200794   0.3451644
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1            NA                0.2064835   0.1028970   0.3100700
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2            NA                0.2152562   0.1111650   0.3193473
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3            NA                0.2838915   0.1636070   0.4041760
0-6 months    MAL-ED           INDIA                          Wealth Q4            NA                0.2407356   0.1297340   0.3517372
0-6 months    MAL-ED           INDIA                          Wealth Q1            NA                0.3289607   0.2080144   0.4499069
0-6 months    MAL-ED           INDIA                          Wealth Q2            NA                0.3618961   0.2330591   0.4907331
0-6 months    MAL-ED           INDIA                          Wealth Q3            NA                0.3428340   0.2188837   0.4667843
0-6 months    MAL-ED           NEPAL                          Wealth Q4            NA                0.2542373   0.1428940   0.3655806
0-6 months    MAL-ED           NEPAL                          Wealth Q1            NA                0.2542373   0.1428940   0.3655806
0-6 months    MAL-ED           NEPAL                          Wealth Q2            NA                0.1355932   0.0480501   0.2231364
0-6 months    MAL-ED           NEPAL                          Wealth Q3            NA                0.1525424   0.0606037   0.2444811
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.1076923   0.0321852   0.1831994
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.1406250   0.0552900   0.2259600
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.0937500   0.0221992   0.1653008
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.0937500   0.0221992   0.1653008
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                0.2877417   0.2197147   0.3557687
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1            NA                0.3027986   0.2339124   0.3716847
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2            NA                0.2124502   0.1495137   0.2753868
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3            NA                0.2455502   0.1784846   0.3126159
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1443927   0.1159099   0.1728755
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1513472   0.1250976   0.1775967
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1131034   0.0842430   0.1419639
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1443742   0.1154726   0.1732757
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1978318   0.1178193   0.2778444
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.2978210   0.1989211   0.3967210
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3112198   0.2178125   0.4046272
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2508845   0.1595665   0.3422026
6-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.1071246   0.0779707   0.1362786
6-24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.1541085   0.1067377   0.2014794
6-24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.1574745   0.1107198   0.2042292
6-24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.1187444   0.0787998   0.1586890
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2227861   0.1933796   0.2521926
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                0.3145297   0.2768517   0.3522077
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2506689   0.2122588   0.2890790
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2761620   0.2469009   0.3054232
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4838480   0.4037702   0.5639258
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4727233   0.3917687   0.5536780
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.4596495   0.3792841   0.5400150
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.4725047   0.3916735   0.5533359
6-24 months   IRC              INDIA                          Wealth Q4            NA                0.3456693   0.2509563   0.4403823
6-24 months   IRC              INDIA                          Wealth Q1            NA                0.3236564   0.2336220   0.4136907
6-24 months   IRC              INDIA                          Wealth Q2            NA                0.2585247   0.1715553   0.3454941
6-24 months   IRC              INDIA                          Wealth Q3            NA                0.2994200   0.2100309   0.3888090
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.1544660   0.1382898   0.1706421
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.1800434   0.1633304   0.1967564
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.1704435   0.1557200   0.1851670
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.1606252   0.1470063   0.1742441
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.2177173   0.1884854   0.2469493
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.2760709   0.2500467   0.3020950
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.2750590   0.2447375   0.3053804
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.2278702   0.2001380   0.2556024
6-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                0.0416667   0.0150015   0.0683318
6-24 months   LCNI-5           MALAWI                         Wealth Q1            NA                0.1122449   0.0680248   0.1564650
6-24 months   LCNI-5           MALAWI                         Wealth Q2            NA                0.0969388   0.0554914   0.1383862
6-24 months   LCNI-5           MALAWI                         Wealth Q3            NA                0.0659898   0.0313003   0.1006794
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                0.1147541   0.0346037   0.1949045
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                0.1724138   0.0749971   0.2698305
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                0.2622951   0.1516770   0.3729132
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                0.1666667   0.0721708   0.2611625
6-24 months   MAL-ED           INDIA                          Wealth Q4            NA                0.2369466   0.1260073   0.3478860
6-24 months   MAL-ED           INDIA                          Wealth Q1            NA                0.3626892   0.2379162   0.4874623
6-24 months   MAL-ED           INDIA                          Wealth Q2            NA                0.2745397   0.1573324   0.3917469
6-24 months   MAL-ED           INDIA                          Wealth Q3            NA                0.2033281   0.0981639   0.3084923
6-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                0.1016949   0.0244073   0.1789825
6-24 months   MAL-ED           NEPAL                          Wealth Q1            NA                0.1379310   0.0489982   0.2268639
6-24 months   MAL-ED           NEPAL                          Wealth Q2            NA                0.0847458   0.0135297   0.1559618
6-24 months   MAL-ED           NEPAL                          Wealth Q3            NA                0.2881356   0.1723258   0.4039454
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.1111111   0.0333552   0.1888670
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.1562500   0.0671191   0.2453809
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.1875000   0.0916872   0.2833128
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.1250000   0.0438160   0.2061840
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.1587437   0.0951075   0.2223799
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.1617274   0.1078722   0.2155827
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.1465387   0.0907059   0.2023715
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.1715304   0.1119974   0.2310635
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1720262   0.1388842   0.2051683
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1255256   0.0992597   0.1517915
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1953383   0.1563875   0.2342891
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1568904   0.1247941   0.1889867


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6112601   0.5617242   0.6607959
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.2612827   0.2370438   0.2855216
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.4037451   0.3863123   0.4211779
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.5903790   0.5535526   0.6272054
0-24 months   IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2579831   0.2515145   0.2644516
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.3101161   0.2957091   0.3245231
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.0807834   0.0620863   0.0994804
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.3471074   0.2870050   0.4072099
0-24 months   MAL-ED           INDIA                          NA                   NA                0.4851064   0.4210714   0.5491414
0-24 months   MAL-ED           NEPAL                          NA                   NA                0.3093220   0.2502261   0.3684179
0-24 months   MAL-ED           PERU                           NA                   NA                0.0955882   0.0605817   0.1305947
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2217899   0.1708981   0.2726816
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1440000   0.1003920   0.1876080
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2365772   0.2195142   0.2536402
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.5163043   0.4651769   0.5674318
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.2029557   0.1782002   0.2277111
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2356227   0.2205417   0.2507038
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.3760933   0.3398180   0.4123685
0-6 months    IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1761878   0.1705589   0.1818167
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.1078103   0.0979894   0.1176312
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.2355372   0.1819640   0.2891104
0-6 months    MAL-ED           INDIA                          NA                   NA                0.3234043   0.2634696   0.3833389
0-6 months    MAL-ED           NEPAL                          NA                   NA                0.1991525   0.1480924   0.2502127
0-6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.1089494   0.0707821   0.1471167
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1392617   0.1253610   0.1531625
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1291161   0.1097606   0.1484716
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months   IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1638036   0.1576801   0.1699271
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.2472801   0.2337480   0.2608122
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.0782609   0.0596958   0.0968259
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months   MAL-ED           INDIA                          NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months   MAL-ED           NEPAL                          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1450980   0.1017849   0.1884112
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1606965   0.1446374   0.1767556


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0981628   0.8533840   1.4131522
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.3390202   1.0732591   1.6705892
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.0447868   0.8075680   1.3516874
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2860007   1.0543615   1.5685301
0-24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1148254   0.8992210   1.3821249
0-24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0866057   0.8800675   1.3416152
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.1638186   1.0420781   1.2997813
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0347107   0.9126855   1.1730507
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.0964763   0.9913662   1.2127307
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.8912376   0.7558529   1.0508718
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.9566163   0.8163615   1.1209676
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9482970   0.8061307   1.1155353
0-24 months   IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         0.9931460   0.8199218   1.2029671
0-24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         0.8849730   0.7170618   1.0922031
0-24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         1.0148274   0.8380353   1.2289156
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         0.9888691   0.9174682   1.0658267
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         0.9737823   0.9075147   1.0448888
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         0.9921980   0.9245242   1.0648254
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.1891078   1.0415182   1.3576119
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.1441902   0.9941009   1.3169399
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.0259371   0.8868007   1.1869035
0-24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         2.8366013   1.3502532   5.9591095
0-24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.3020659   1.0660043   4.9713751
0-24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.7134800   0.7581722   3.8724891
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         1.1748333   0.6753439   2.0437489
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         1.4375530   0.8569203   2.4116113
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         1.3234266   0.7812517   2.2418613
0-24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         1.3166850   0.9052745   1.9150648
0-24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         1.2066875   0.8154422   1.7856505
0-24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         1.0011164   0.6553885   1.5292213
0-24 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         1.2863409   0.7478078   2.2126981
0-24 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         0.7040313   0.3580711   1.3842503
0-24 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         1.2963926   0.7556673   2.2240393
0-24 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4         1.0000000   0.3387470   2.9520560
0-24 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         0.7981221   0.2549050   2.4989660
0-24 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4         1.5692308   0.5905794   4.1696087
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         1.1786257   0.6215635   2.2349424
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.3006846   0.6992744   2.4193370
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         0.8944725   0.4481642   1.7852408
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.4000000   0.4681641   4.1865664
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         2.0322581   0.7352592   5.6171658
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         2.8451613   1.0883485   7.4378221
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         1.0490152   0.8450204   1.3022559
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         1.0667573   0.8488159   1.3406573
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         0.9471620   0.7524288   1.1922934
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.9193686   0.7540141   1.1209851
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0086829   0.8120342   1.2529538
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.0004807   0.8150247   1.2281367
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.1907393   0.8647658   1.6395886
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.5198941   1.1461717   2.0154728
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.1616208   0.8408853   1.6046932
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.3617073   1.0116437   1.8329049
0-6 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.9171291   0.6486379   1.2967572
0-6 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0058186   0.7337773   1.3787168
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.0339549   0.9072826   1.1783128
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.9920892   0.8553378   1.1507043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.0021505   0.8911595   1.1269650
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9468497   0.7501649   1.1951030
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0243721   0.8118899   1.2924637
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0429926   0.8291681   1.3119579
0-6 months    IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          Wealth Q1            Wealth Q4         0.9126554   0.7243874   1.1498541
0-6 months    IRC              INDIA                          Wealth Q2            Wealth Q4         0.9015856   0.7044764   1.1538450
0-6 months    IRC              INDIA                          Wealth Q3            Wealth Q4         1.0413015   0.8353010   1.2981055
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.0654564   0.9743824   1.1650429
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.0649538   0.9785277   1.1590131
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.0646057   0.9801831   1.1562997
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.1483667   0.9563178   1.3789831
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.1594134   0.9551174   1.4074074
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.1203234   0.9359408   1.3410299
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         0.8876356   0.4418254   1.7832766
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         0.9253479   0.4664068   1.8358837
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         1.2203988   0.6409829   2.3235772
0-6 months    MAL-ED           INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           INDIA                          Wealth Q1            Wealth Q4         1.3664813   0.7586211   2.4614015
0-6 months    MAL-ED           INDIA                          Wealth Q2            Wealth Q4         1.5032928   0.8396617   2.6914282
0-6 months    MAL-ED           INDIA                          Wealth Q3            Wealth Q4         1.4241102   0.7933487   2.5563664
0-6 months    MAL-ED           NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         1.0000000   0.5382914   1.8577300
0-6 months    MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         0.5333333   0.2444457   1.1636306
0-6 months    MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         0.6000000   0.2848341   1.2638937
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         1.3058036   0.5166174   3.3005526
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         0.8705357   0.3088113   2.4540307
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         0.8705357   0.3088113   2.4540307
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         1.0523277   0.7579519   1.4610341
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.7383366   0.5054106   1.0786098
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         0.8533704   0.5950174   1.2238986
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.0481637   0.8064456   1.3623327
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7833045   0.5675240   1.0811277
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9998717   0.7550606   1.3240571
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.5054251   0.8926981   2.5387135
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.5731534   0.9502058   2.6045008
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.2681705   0.7375296   2.1805992
6-24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.4385906   0.9540837   2.1691418
6-24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.4700122   0.9826278   2.1991396
6-24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1084694   0.7193706   1.7080269
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.4118013   1.1822830   1.6858763
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.1251550   0.9200205   1.3760278
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.2395839   1.0475245   1.4668566
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9770079   0.7709547   1.2381331
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.9499874   0.7473967   1.2074928
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9765560   0.7709112   1.2370576
6-24 months   IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         0.9363180   0.6335789   1.3837131
6-24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         0.7478960   0.4842473   1.1550884
6-24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         0.8662036   0.5774766   1.2992885
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.1655859   1.0176559   1.3350195
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.1034372   0.9617063   1.2660556
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.0398742   0.9097347   1.1886304
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.2680241   1.0789011   1.4902990
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.2633765   1.0645848   1.4992889
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.0466331   0.8728379   1.2550334
6-24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         2.6938776   1.2705852   5.7115225
6-24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.3265306   1.0775900   5.0230096
6-24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.5837563   0.6918492   3.6254783
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         1.5024631   0.6118479   3.6894710
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         2.2857143   1.0108353   5.1684874
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         1.4523810   0.5907242   3.5708890
6-24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         1.5306790   0.8561170   2.7367503
6-24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         1.1586562   0.6146396   2.1841809
6-24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         0.8581178   0.4267997   1.7253203
6-24 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         1.3563218   0.5006373   3.6745339
6-24 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         0.8333333   0.2683774   2.5875671
6-24 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         2.8333333   1.1992816   6.6938220
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         1.4062500   0.5701159   3.4686613
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.6875000   0.7094491   4.0138977
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         1.1250000   0.4330240   2.9227598
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         1.0187959   0.6064680   1.7114589
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.9231152   0.5315110   1.6032437
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         1.0805494   0.6379955   1.8300868
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7296885   0.5497714   0.9684849
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.1355145   0.8612987   1.4970337
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9120144   0.6891438   1.2069619


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0657243   -0.0207044   0.1521529
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0242266    0.0002548   0.0481983
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0287489    0.0037519   0.0537459
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0316858   -0.0922722   0.0289006
0-24 months   IRC              INDIA                          Wealth Q4            NA                -0.0220102   -0.1036889   0.0596685
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0041720   -0.0178066   0.0094626
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0249290   -0.0038255   0.0536835
0-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0393087    0.0132339   0.0653835
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0630330   -0.0403283   0.1663943
0-24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0525692   -0.0601217   0.1652601
0-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.0250739   -0.0784742   0.1286221
0-24 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0073529   -0.0518605   0.0665664
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.0116700   -0.0756232   0.0989631
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0646349    0.0004450   0.1288248
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0054377   -0.0415382   0.0524136
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0030097   -0.0330363   0.0270170
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0925975    0.0044495   0.1807455
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0099974   -0.0208003   0.0407952
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0003217   -0.0168105   0.0174539
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0020835   -0.0518830   0.0560499
0-6 months    IRC              INDIA                          Wealth Q4            NA                -0.0201622   -0.1009423   0.0606180
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0081102   -0.0024919   0.0187123
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0106910   -0.0004488   0.0218307
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0029153   -0.0955318   0.1013624
0-6 months    MAL-ED           INDIA                          Wealth Q4            NA                 0.0826687   -0.0164292   0.1817665
0-6 months    MAL-ED           NEPAL                          Wealth Q4            NA                -0.0550847   -0.1489240   0.0387545
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.0012571   -0.0641197   0.0666339
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0291703   -0.0877689   0.0294283
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0051309   -0.0297139   0.0194520
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0675837   -0.0041201   0.1392875
6-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0219915   -0.0021663   0.0461492
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0438568    0.0175413   0.0701723
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0109667   -0.0801074   0.0581740
6-24 months   IRC              INDIA                          Wealth Q4            NA                -0.0359132   -0.1175724   0.0457461
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0093376   -0.0055592   0.0242343
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0295628    0.0020116   0.0571139
6-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0365942    0.0106304   0.0625580
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0644126   -0.0098997   0.1387248
6-24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0353938   -0.0621746   0.1329622
6-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.0514966   -0.0199428   0.1229360
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.0339869   -0.0362597   0.1042336
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0022319   -0.0525895   0.0570533
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0113297   -0.0399226   0.0172632


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1075226   -0.0462999   0.2387308
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0927216   -0.0031731   0.1794496
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0712055    0.0072961   0.1310006
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0536702   -0.1614675   0.0441222
0-24 months   IRC              INDIA                          Wealth Q4            NA                -0.0335472   -0.1658761   0.0837622
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0161715   -0.0704166   0.0353246
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0803861   -0.0167036   0.1682042
0-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.4865941    0.0711724   0.7162168
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.1815951   -0.1774193   0.4311401
0-24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.1083663   -0.1575107   0.3131720
0-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.0810609   -0.3230099   0.3617213
0-24 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0769231   -0.8048615   0.5279023
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.0526172   -0.4350053   0.3745430
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.4488536   -0.1993803   0.7467339
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0154732   -0.1277148   0.1404803
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0127217   -0.1479417   0.1065702
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1793468   -0.0114547   0.3341553
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0492592   -0.1151469   0.1894269
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0013654   -0.0740547   0.0714895
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0055398   -0.1488287   0.1391657
0-6 months    IRC              INDIA                          Wealth Q4            NA                -0.0370695   -0.1966890   0.1012594
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0460315   -0.0160815   0.1043475
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0991647   -0.0099136   0.1964617
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0123772   -0.5080084   0.3531874
0-6 months    MAL-ED           INDIA                          Wealth Q4            NA                 0.2556202   -0.1224508   0.5063469
0-6 months    MAL-ED           NEPAL                          Wealth Q4            NA                -0.2765957   -0.8436894   0.1160677
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.0115385   -0.8138550   0.4613372
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.1128132   -0.3640655   0.0921600
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0368439   -0.2292418   0.1254404
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.2546336   -0.0686622   0.4801246
6-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1703232   -0.0380286   0.3368549
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1644778    0.0603989   0.2570280
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0231911   -0.1803780   0.1130637
6-24 months   IRC              INDIA                          Wealth Q4            NA                -0.1159401   -0.4131291   0.1187483
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0570048   -0.0385242   0.1437465
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.1195517    0.0014349   0.2236968
6-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.4675926    0.0389644   0.7050498
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.3595120   -0.2080619   0.6604273
6-24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.1299616   -0.3131598   0.4235532
6-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.3361582   -0.3232314   0.6669623
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.2342342   -0.4339632   0.5910654
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0138649   -0.3931278   0.3019575
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0705038   -0.2640335   0.0933955
