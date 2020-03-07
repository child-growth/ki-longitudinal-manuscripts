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

unadjusted

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
![](/tmp/ab9de05c-da40-4f90-a884-107fb6e766e5/51a0939d-18f5-4df9-9322-11a14da2c553/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ab9de05c-da40-4f90-a884-107fb6e766e5/51a0939d-18f5-4df9-9322-11a14da2c553/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ab9de05c-da40-4f90-a884-107fb6e766e5/51a0939d-18f5-4df9-9322-11a14da2c553/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ab9de05c-da40-4f90-a884-107fb6e766e5/51a0939d-18f5-4df9-9322-11a14da2c553/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5416667   0.4418617   0.6414716
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5934066   0.4923495   0.6944637
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7263158   0.6365405   0.8160911
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.5824176   0.4809567   0.6838785
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.2310924   0.1932092   0.2689756
0-24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.3196721   0.2611343   0.3782100
0-24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.2635659   0.2097858   0.3173460
0-24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.2596491   0.2087266   0.3105716
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.3678571   0.3352414   0.4004729
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                0.4537445   0.4163464   0.4911426
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                0.3888889   0.3477649   0.4300129
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                0.4079349   0.3772077   0.4386621
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.6000000   0.5263036   0.6736964
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5804598   0.5070822   0.6538373
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5930233   0.5195514   0.6664952
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5882353   0.5141997   0.6622709
0-24 months   IRC              INDIA                          Wealth Q4            NA                0.6800000   0.5884607   0.7715393
0-24 months   IRC              INDIA                          Wealth Q1            NA                0.6761905   0.5865791   0.7658018
0-24 months   IRC              INDIA                          Wealth Q2            NA                0.5882353   0.4926088   0.6838618
0-24 months   IRC              INDIA                          Wealth Q3            NA                0.6796117   0.5893863   0.7698370
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.2375140   0.2258256   0.2492025
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.2813753   0.2694083   0.2933422
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.2597778   0.2478826   0.2716730
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.2553728   0.2439507   0.2667948
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.2681481   0.2390939   0.2972024
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.3505831   0.3216220   0.3795442
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.3303571   0.3010469   0.3596674
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.2909625   0.2637448   0.3181802
0-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                0.0414747   0.0149300   0.0680193
0-24 months   LCNI-5           MALAWI                         Wealth Q1            NA                0.1176471   0.0734075   0.1618866
0-24 months   LCNI-5           MALAWI                         Wealth Q2            NA                0.0954774   0.0546222   0.1363326
0-24 months   LCNI-5           MALAWI                         Wealth Q3            NA                0.0710660   0.0351652   0.1069668
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                0.2786885   0.1659420   0.3914351
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                0.3333333   0.2138065   0.4528602
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                0.4098361   0.2861634   0.5335087
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                0.3666667   0.2444801   0.4888532
0-24 months   MAL-ED           INDIA                          Wealth Q4            NA                0.4237288   0.2973700   0.5500876
0-24 months   MAL-ED           INDIA                          Wealth Q1            NA                0.5666667   0.4410135   0.6923198
0-24 months   MAL-ED           INDIA                          Wealth Q2            NA                0.5172414   0.3883655   0.6461173
0-24 months   MAL-ED           INDIA                          Wealth Q3            NA                0.4310345   0.3033144   0.5587545
0-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                0.2881356   0.1723269   0.4039443
0-24 months   MAL-ED           NEPAL                          Wealth Q1            NA                0.3728814   0.2492284   0.4965343
0-24 months   MAL-ED           NEPAL                          Wealth Q2            NA                0.2033898   0.1004623   0.3063174
0-24 months   MAL-ED           NEPAL                          Wealth Q3            NA                0.3728814   0.2492284   0.4965343
0-24 months   MAL-ED           PERU                           Wealth Q4            NA                0.0882353   0.0206961   0.1557745
0-24 months   MAL-ED           PERU                           Wealth Q1            NA                0.0882353   0.0206961   0.1557745
0-24 months   MAL-ED           PERU                           Wealth Q2            NA                0.0704225   0.0107991   0.1300460
0-24 months   MAL-ED           PERU                           Wealth Q3            NA                0.1384615   0.0543427   0.2225804
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.2000000   0.1025688   0.2974312
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.2343750   0.1303906   0.3383594
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.2656250   0.1572078   0.3740422
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.1875000   0.0916886   0.2833114
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0793651   0.0124835   0.1462467
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1111111   0.0333521   0.1888701
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1612903   0.0695559   0.2530248
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2258065   0.1215230   0.3300899
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.3885714   0.3163031   0.4608397
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.3563218   0.2851121   0.4275316
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.3125000   0.2439727   0.3810273
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.3485714   0.2779204   0.4192225
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2462057   0.2115251   0.2808864
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2239221   0.1934449   0.2543994
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2401656   0.2020608   0.2782705
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2393888   0.2049209   0.2738567
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.4315789   0.3318451   0.5313127
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5000000   0.3965602   0.6034398
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6344086   0.5363964   0.7324208
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.5000000   0.3965602   0.6034398
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                0.1951220   0.1546674   0.2355765
0-6 months    COHORTS          GUATEMALA                      Wealth Q1            NA                0.2551020   0.1940445   0.3161596
0-6 months    COHORTS          GUATEMALA                      Wealth Q2            NA                0.1782178   0.1254170   0.2310186
0-6 months    COHORTS          GUATEMALA                      Wealth Q3            NA                0.1935484   0.1443535   0.2427433
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2535714   0.2241459   0.2829969
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2588235   0.2258984   0.2917487
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2148148   0.1801698   0.2494598
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2156663   0.1899515   0.2413812
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3588235   0.2866680   0.4309791
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3505747   0.2796259   0.4215235
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3953488   0.3222276   0.4684700
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                0.4000000   0.3263036   0.4736964
0-6 months    IRC              INDIA                          Wealth Q4            NA                0.5500000   0.4523739   0.6476261
0-6 months    IRC              INDIA                          Wealth Q1            NA                0.5523810   0.4571546   0.6476073
0-6 months    IRC              INDIA                          Wealth Q2            NA                0.5098039   0.4126714   0.6069365
0-6 months    IRC              INDIA                          Wealth Q3            NA                0.5631068   0.4672015   0.6590121
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.1605860   0.1503596   0.1708124
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.1939375   0.1832431   0.2046319
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.1796361   0.1694523   0.1898200
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.1722396   0.1625042   0.1819749
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.1038552   0.0821363   0.1255742
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.1132376   0.0945024   0.1319729
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.1068884   0.0870939   0.1266828
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.1073359   0.0881244   0.1265474
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                0.2295082   0.1237618   0.3352546
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1            NA                0.2166667   0.1122088   0.3211245
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2            NA                0.2295082   0.1237618   0.3352546
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3            NA                0.2666667   0.1545406   0.3787928
0-6 months    MAL-ED           INDIA                          Wealth Q4            NA                0.2372881   0.1285038   0.3460725
0-6 months    MAL-ED           INDIA                          Wealth Q1            NA                0.3333333   0.2137991   0.4528675
0-6 months    MAL-ED           INDIA                          Wealth Q2            NA                0.3793103   0.2541708   0.5044499
0-6 months    MAL-ED           INDIA                          Wealth Q3            NA                0.3448276   0.2222421   0.4674130
0-6 months    MAL-ED           NEPAL                          Wealth Q4            NA                0.2542373   0.1428940   0.3655806
0-6 months    MAL-ED           NEPAL                          Wealth Q1            NA                0.2542373   0.1428940   0.3655806
0-6 months    MAL-ED           NEPAL                          Wealth Q2            NA                0.1355932   0.0480501   0.2231364
0-6 months    MAL-ED           NEPAL                          Wealth Q3            NA                0.1525424   0.0606037   0.2444811
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.1076923   0.0321852   0.1831994
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.1406250   0.0552900   0.2259600
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.0937500   0.0221992   0.1653008
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.0937500   0.0221992   0.1653008
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                0.2914286   0.2240538   0.3588034
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1            NA                0.2931034   0.2254216   0.3607853
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2            NA                0.2045455   0.1449100   0.2641809
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3            NA                0.2457143   0.1818846   0.3095440
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1467116   0.1182282   0.1751950
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1474270   0.1215073   0.1733466
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1118012   0.0836923   0.1399102
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1443124   0.1159273   0.1726975
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1979167   0.1181087   0.2777247
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.3076923   0.2127372   0.4026474
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3157895   0.2221923   0.4093867
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2417582   0.1536727   0.3298438
6-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.1085450   0.0792329   0.1378571
6-24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.1511111   0.1042925   0.1979297
6-24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.1576763   0.1116453   0.2037074
6-24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.1176471   0.0780851   0.1572090
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1880674   0.1604798   0.2156551
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                0.3300330   0.2925879   0.3674781
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2698413   0.2310822   0.3086003
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2887931   0.2596294   0.3179568
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4662162   0.3857781   0.5466543
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5068493   0.4256842   0.5880144
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.4580645   0.3795613   0.5365678
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.4609929   0.3786452   0.5433406
6-24 months   IRC              INDIA                          Wealth Q4            NA                0.3500000   0.2564015   0.4435985
6-24 months   IRC              INDIA                          Wealth Q1            NA                0.3238095   0.2341982   0.4134209
6-24 months   IRC              INDIA                          Wealth Q2            NA                0.2647059   0.1789842   0.3504276
6-24 months   IRC              INDIA                          Wealth Q3            NA                0.3009709   0.2122819   0.3896598
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.1354146   0.1250364   0.1457928
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.1996208   0.1862473   0.2129943
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.1705926   0.1579949   0.1831904
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.1606218   0.1486779   0.1725656
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.1952487   0.1695686   0.2209288
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.2917578   0.2653684   0.3181473
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.2760417   0.2486750   0.3034083
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.2255694   0.2003515   0.2507874
6-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                0.0416667   0.0150015   0.0683318
6-24 months   LCNI-5           MALAWI                         Wealth Q1            NA                0.1122449   0.0680248   0.1564650
6-24 months   LCNI-5           MALAWI                         Wealth Q2            NA                0.0969388   0.0554914   0.1383862
6-24 months   LCNI-5           MALAWI                         Wealth Q3            NA                0.0659898   0.0313003   0.1006794
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                0.1147541   0.0346037   0.1949045
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                0.1724138   0.0749971   0.2698305
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                0.2622951   0.1516770   0.3729132
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                0.1666667   0.0721708   0.2611625
6-24 months   MAL-ED           INDIA                          Wealth Q4            NA                0.2372881   0.1285038   0.3460725
6-24 months   MAL-ED           INDIA                          Wealth Q1            NA                0.3666667   0.2444725   0.4888608
6-24 months   MAL-ED           INDIA                          Wealth Q2            NA                0.2758621   0.1605920   0.3911322
6-24 months   MAL-ED           INDIA                          Wealth Q3            NA                0.2068966   0.1024241   0.3113690
6-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                0.1016949   0.0244073   0.1789825
6-24 months   MAL-ED           NEPAL                          Wealth Q1            NA                0.1379310   0.0489982   0.2268639
6-24 months   MAL-ED           NEPAL                          Wealth Q2            NA                0.0847458   0.0135297   0.1559618
6-24 months   MAL-ED           NEPAL                          Wealth Q3            NA                0.2881356   0.1723258   0.4039454
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.1111111   0.0333552   0.1888670
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.1562500   0.0671191   0.2453809
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.1875000   0.0916872   0.2833128
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.1250000   0.0438160   0.2061840
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.1956522   0.1294113   0.2618931
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.1500000   0.0946272   0.2053728
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.1333333   0.0814229   0.1852438
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.1710526   0.1111414   0.2309638
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1762295   0.1424161   0.2100429
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1313629   0.1045278   0.1581980
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1965602   0.1579428   0.2351776
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1521739   0.1208696   0.1834782


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
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0955199   0.8524220   1.4079455
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.3408907   1.0740757   1.6739861
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.0752325   0.8344074   1.3855639
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.3833085   1.0818823   1.7687158
0-24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1405215   0.8778702   1.4817559
0-24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1235726   0.8701438   1.4508124
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.2334802   1.0928441   1.3922144
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0571737   0.9209031   1.2136089
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.1089492   0.9871561   1.2457689
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9674330   0.8110977   1.1539010
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.9883721   0.8301442   1.1767586
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9803922   0.8222881   1.1688955
0-24 months   IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         0.9943978   0.8232292   1.2011563
0-24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         0.8650519   0.7004500   1.0683343
0-24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         0.9994289   0.8272571   1.2074338
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.1846680   1.1110262   1.2631910
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.0937367   1.0265299   1.1653436
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.0751902   1.0084135   1.1463888
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.3074231   1.1415918   1.4973437
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.2319949   1.0708838   1.4173446
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.0850812   0.9393700   1.2533946
0-24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         2.8366013   1.3502532   5.9591095
0-24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.3020659   1.0660043   4.9713751
0-24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.7134800   0.7581722   3.8724891
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         1.1960784   0.6965937   2.0537132
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         1.4705882   0.8877678   2.4360307
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         1.3156863   0.7789759   2.2221875
0-24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         1.3373333   0.9222532   1.9392294
0-24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         1.2206897   0.8276362   1.8004084
0-24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         1.0172414   0.6681150   1.5488052
0-24 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         1.2941176   0.7685586   2.1790668
0-24 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         0.7058824   0.3698870   1.3470869
0-24 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         1.2941176   0.7685586   2.1790668
0-24 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4         1.0000000   0.3387470   2.9520560
0-24 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         0.7981221   0.2549050   2.4989660
0-24 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4         1.5692308   0.5905794   4.1696087
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         1.1718750   0.6063462   2.2648628
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.3281250   0.7034387   2.5075617
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         0.9375000   0.4627639   1.8992541
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.4000000   0.4681641   4.1865664
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         2.0322581   0.7352592   5.6171658
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         2.8451613   1.0883485   7.4378221
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         0.9170047   0.6979257   1.2048527
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.8042279   0.6032588   1.0721478
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         0.8970588   0.6813220   1.1811074
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.9094919   0.7477076   1.1062820
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9754673   0.7889866   1.2060234
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9723120   0.7949267   1.1892803
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.1585366   0.8495854   1.5798377
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.4699712   1.1132302   1.9410317
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.1585366   0.8495854   1.5798377
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.3073980   0.9525446   1.7944456
0-6 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.9133663   0.6362087   1.3112647
0-6 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.9919355   0.7145473   1.3770060
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.0207125   0.8592567   1.2125061
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.8471570   0.6945039   1.0333636
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.8505151   0.7201501   1.0044794
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9770115   0.7345089   1.2995777
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1017918   0.8383882   1.4479513
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1147541   0.8486605   1.4642801
0-6 months    IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          Wealth Q1            Wealth Q4         1.0043290   0.7841777   1.2862859
0-6 months    IRC              INDIA                          Wealth Q2            Wealth Q4         0.9269162   0.7144141   1.2026269
0-6 months    IRC              INDIA                          Wealth Q3            Wealth Q4         1.0238305   0.8005590   1.3093712
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.2076864   1.1100477   1.3139132
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.1186289   1.0306503   1.2141175
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.0725690   0.9876306   1.1648122
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.0903412   0.8310986   1.4304487
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.0292054   0.7778824   1.3617272
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.0335147   0.7839749   1.3624832
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         0.9440476   0.4845881   1.8391411
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         1.0000000   0.5212103   1.9186115
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         1.1619048   0.6226878   2.1680570
0-6 months    MAL-ED           INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           INDIA                          Wealth Q1            Wealth Q4         1.4047619   0.7849210   2.5140824
0-6 months    MAL-ED           INDIA                          Wealth Q2            Wealth Q4         1.5985222   0.9087030   2.8120002
0-6 months    MAL-ED           INDIA                          Wealth Q3            Wealth Q4         1.4532020   0.8135378   2.5958180
0-6 months    MAL-ED           NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         1.0000000   0.5382914   1.8577300
0-6 months    MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         0.5333333   0.2444457   1.1636306
0-6 months    MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         0.6000000   0.2848341   1.2638937
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         1.3058036   0.5166174   3.3005526
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         0.8705357   0.3088113   2.4540307
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         0.8705357   0.3088113   2.4540307
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         1.0057471   0.7254049   1.3944312
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.7018717   0.4837953   1.0182485
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         0.8431373   0.5954877   1.1937785
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.0048759   0.7733238   1.3057603
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7620475   0.5546600   1.0469773
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9836465   0.7461276   1.2967762
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.5546559   0.9356400   2.5832103
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.5955679   0.9673251   2.6318316
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.2215153   0.7093721   2.1034090
6-24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.3921513   0.9229806   2.0998113
6-24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.4526353   0.9759917   2.1620567
6-24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0838548   0.7041520   1.6683063
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.7548651   1.4578230   2.1124318
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.4348112   1.1685105   1.7618010
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.5355826   1.2850789   1.8349178
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0871551   0.8591321   1.3756978
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.9825152   0.7704157   1.2530067
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9887964   0.7713481   1.2675447
6-24 months   IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         0.9251701   0.6296337   1.3594248
6-24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         0.7563025   0.4969342   1.1510448
6-24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         0.8599168   0.5776127   1.2801950
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.4741450   1.3337086   1.6293690
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.2597797   1.1304348   1.4039243
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.1861477   1.0664582   1.3192701
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.4942883   1.2780410   1.7471251
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.4137952   1.1967613   1.6701883
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.1552929   0.9711743   1.3743172
6-24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         2.6938776   1.2705852   5.7115225
6-24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.3265306   1.0775900   5.0230096
6-24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.5837563   0.6918492   3.6254783
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         1.5024631   0.6118479   3.6894710
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         2.2857143   1.0108353   5.1684874
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         1.4523810   0.5907242   3.5708890
6-24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         1.5452381   0.8766935   2.7235981
6-24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         1.1625616   0.6252035   2.1617752
6-24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         0.8719212   0.4408393   1.7245434
6-24 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         1.3563218   0.5006373   3.6745339
6-24 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         0.8333333   0.2683774   2.5875671
6-24 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         2.8333333   1.1992816   6.6938220
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         1.4062500   0.5701159   3.4686613
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.6875000   0.7094491   4.0138977
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         1.1250000   0.4330240   2.9227598
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         0.7666667   0.4645893   1.2651558
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.6814815   0.4067996   1.1416357
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         0.8742690   0.5371366   1.4230016
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7454080   0.5632207   0.9865282
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.1153648   0.8475260   1.4678472
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.8634985   0.6517665   1.1440134


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0695934   -0.0157731   0.1549599
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0301902   -0.0004840   0.0608645
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0358879    0.0079491   0.0638268
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0096210   -0.0736172   0.0543752
0-24 months   IRC              INDIA                          Wealth Q4            NA                -0.0239024   -0.1039720   0.0561671
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0204690    0.0108570   0.0300811
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0419679    0.0166936   0.0672423
0-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0393087    0.0132339   0.0653835
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0684189   -0.0311586   0.1679964
0-24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0613776   -0.0483939   0.1711491
0-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.0211864   -0.0797995   0.1221724
0-24 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0073529   -0.0518605   0.0665664
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.0217899   -0.0635388   0.1071186
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0646349    0.0004450   0.1288248
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0371429   -0.0993036   0.0250179
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0096286   -0.0395542   0.0202971
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0847254   -0.0014445   0.1708953
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0078337   -0.0247157   0.0403831
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0179487   -0.0427533   0.0068559
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0172698   -0.0455146   0.0800541
0-6 months    IRC              INDIA                          Wealth Q4            NA                -0.0060976   -0.0910189   0.0788238
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0156018    0.0069729   0.0242307
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0039551   -0.0145395   0.0224497
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0060290   -0.0857045   0.0977624
0-6 months    MAL-ED           INDIA                          Wealth Q4            NA                 0.0861161   -0.0112697   0.1835019
0-6 months    MAL-ED           NEPAL                          Wealth Q4            NA                -0.0550847   -0.1489240   0.0387545
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.0012571   -0.0641197   0.0666339
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0328571   -0.0905049   0.0247906
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0074499   -0.0319637   0.0170639
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0674989   -0.0039441   0.1389419
6-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0205711   -0.0036995   0.0448417
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0785755    0.0538612   0.1032898
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0066651   -0.0629760   0.0763062
6-24 months   IRC              INDIA                          Wealth Q4            NA                -0.0402439   -0.1208375   0.0403497
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0283889    0.0194101   0.0373677
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0520314    0.0292662   0.0747966
6-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0365942    0.0106304   0.0625580
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0644126   -0.0098997   0.1387248
6-24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0350523   -0.0605778   0.1306824
6-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.0514966   -0.0199428   0.1229360
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.0339869   -0.0362597   0.1042336
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0346766   -0.0918052   0.0224521
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0155330   -0.0446202   0.0135542


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1138523   -0.0380472   0.2435241
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1155462   -0.0097913   0.2253265
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0888876    0.0169659   0.1555473
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0162963   -0.1306971   0.0865297
0-24 months   IRC              INDIA                          Wealth Q4            NA                -0.0364312   -0.1660348   0.0787671
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0793426    0.0412250   0.1159447
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.1353298    0.0496204   0.2133095
0-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.4865941    0.0711724   0.7162168
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.1971116   -0.1472843   0.4381256
0-24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.1265239   -0.1322894   0.3261789
0-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.0684932   -0.3224448   0.3438630
0-24 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0769231   -0.8048615   0.5279023
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.0982456   -0.3810916   0.4112186
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.4488536   -0.1993803   0.7467339
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.1056911   -0.2975793   0.0578204
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0406994   -0.1751888   0.0783990
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1640997   -0.0213825   0.3158985
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0385982   -0.1358896   0.1862823
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0761755   -0.1867271   0.0240775
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0459188   -0.1365251   0.1990754
0-6 months    IRC              INDIA                          Wealth Q4            NA                -0.0112108   -0.1800482   0.1334699
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0885522    0.0381987   0.1362695
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0366859   -0.1514887   0.1941092
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0255968   -0.4531706   0.3466276
0-6 months    MAL-ED           INDIA                          Wealth Q4            NA                 0.2662801   -0.1042152   0.5124638
0-6 months    MAL-ED           NEPAL                          Wealth Q4            NA                -0.2765957   -0.8436894   0.1160677
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.0115385   -0.8138550   0.4613372
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.1270718   -0.3734497   0.0751092
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0534956   -0.2450195   0.1085658
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.2543140   -0.0675804   0.4791515
6-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1593223   -0.0498983   0.3268501
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2946843    0.1966146   0.3807826
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0140947   -0.1447473   0.1508963
6-24 months   IRC              INDIA                          Wealth Q4            NA                -0.1299213   -0.4225113   0.1024872
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.1733109    0.1168850   0.2261314
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.2104148    0.1128414   0.2972568
6-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.4675926    0.0389644   0.7050498
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.3595120   -0.2080619   0.6604273
6-24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.1287076   -0.3031984   0.4174714
6-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.3361582   -0.3232314   0.6669623
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.2342342   -0.4339632   0.5910654
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.2154150   -0.6260260   0.0915067
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0966604   -0.2932855   0.0700707
