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

agecat        studyid          country                        hhwealth_quart    ever_swasted   n_cell       n
------------  ---------------  -----------------------------  ---------------  -------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       86     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       10     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       66     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       25     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       60     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       35     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       69     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       22     373
0-24 months   COHORTS          GUATEMALA                      Wealth Q4                    0      442    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q4                    1       34    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q1                    0      229    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q1                    1       15    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q2                    0      242    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q2                    1       16    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q3                    0      257    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q3                    1       28    1263
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4                    0      743    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4                    1       97    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1                    0      590    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1                    1       91    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2                    0      473    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2                    1       67    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3                    0      856    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3                    1      127    3044
0-24 months   CONTENT          PERU                           Wealth Q4                    0       51     215
0-24 months   CONTENT          PERU                           Wealth Q4                    1        1     215
0-24 months   CONTENT          PERU                           Wealth Q1                    0       59     215
0-24 months   CONTENT          PERU                           Wealth Q1                    1        0     215
0-24 months   CONTENT          PERU                           Wealth Q2                    0       52     215
0-24 months   CONTENT          PERU                           Wealth Q2                    1        0     215
0-24 months   CONTENT          PERU                           Wealth Q3                    0       52     215
0-24 months   CONTENT          PERU                           Wealth Q3                    1        0     215
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4                    0      136     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4                    1       34     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1                    0      123     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1                    1       51     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2                    0      124     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2                    1       48     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3                    0      126     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3                    1       44     686
0-24 months   IRC              INDIA                          Wealth Q4                    0       67     410
0-24 months   IRC              INDIA                          Wealth Q4                    1       33     410
0-24 months   IRC              INDIA                          Wealth Q1                    0       63     410
0-24 months   IRC              INDIA                          Wealth Q1                    1       42     410
0-24 months   IRC              INDIA                          Wealth Q2                    0       74     410
0-24 months   IRC              INDIA                          Wealth Q2                    1       28     410
0-24 months   IRC              INDIA                          Wealth Q3                    0       66     410
0-24 months   IRC              INDIA                          Wealth Q3                    1       37     410
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                    0     6764   26932
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                    1      364   26932
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                    0     6016   26932
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                    1      470   26932
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                    0     6160   26932
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                    1      411   26932
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                    0     6348   26932
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                    1      399   26932
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                    0     1282    5427
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                    1       68    5427
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                    0     1266    5427
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                    1      106    5427
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                    0     1259    5427
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                    1       85    5427
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                    0     1278    5427
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                    1       83    5427
0-24 months   LCNI-5           MALAWI                         Wealth Q4                    0      215     817
0-24 months   LCNI-5           MALAWI                         Wealth Q4                    1        2     817
0-24 months   LCNI-5           MALAWI                         Wealth Q1                    0      201     817
0-24 months   LCNI-5           MALAWI                         Wealth Q1                    1        3     817
0-24 months   LCNI-5           MALAWI                         Wealth Q2                    0      196     817
0-24 months   LCNI-5           MALAWI                         Wealth Q2                    1        3     817
0-24 months   LCNI-5           MALAWI                         Wealth Q3                    0      197     817
0-24 months   LCNI-5           MALAWI                         Wealth Q3                    1        0     817
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4                    0       57     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4                    1        4     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1                    0       56     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1                    1        4     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2                    0       56     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2                    1        5     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3                    0       52     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3                    1        8     242
0-24 months   MAL-ED           BRAZIL                         Wealth Q4                    0       51     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q4                    1        2     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q1                    0       51     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q1                    1        2     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q2                    0       53     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q2                    1        0     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q3                    0       51     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q3                    1        0     210
0-24 months   MAL-ED           INDIA                          Wealth Q4                    0       57     235
0-24 months   MAL-ED           INDIA                          Wealth Q4                    1        2     235
0-24 months   MAL-ED           INDIA                          Wealth Q1                    0       52     235
0-24 months   MAL-ED           INDIA                          Wealth Q1                    1        8     235
0-24 months   MAL-ED           INDIA                          Wealth Q2                    0       49     235
0-24 months   MAL-ED           INDIA                          Wealth Q2                    1        9     235
0-24 months   MAL-ED           INDIA                          Wealth Q3                    0       53     235
0-24 months   MAL-ED           INDIA                          Wealth Q3                    1        5     235
0-24 months   MAL-ED           NEPAL                          Wealth Q4                    0       57     236
0-24 months   MAL-ED           NEPAL                          Wealth Q4                    1        2     236
0-24 months   MAL-ED           NEPAL                          Wealth Q1                    0       54     236
0-24 months   MAL-ED           NEPAL                          Wealth Q1                    1        5     236
0-24 months   MAL-ED           NEPAL                          Wealth Q2                    0       59     236
0-24 months   MAL-ED           NEPAL                          Wealth Q2                    1        0     236
0-24 months   MAL-ED           NEPAL                          Wealth Q3                    0       57     236
0-24 months   MAL-ED           NEPAL                          Wealth Q3                    1        2     236
0-24 months   MAL-ED           PERU                           Wealth Q4                    0       66     272
0-24 months   MAL-ED           PERU                           Wealth Q4                    1        2     272
0-24 months   MAL-ED           PERU                           Wealth Q1                    0       68     272
0-24 months   MAL-ED           PERU                           Wealth Q1                    1        0     272
0-24 months   MAL-ED           PERU                           Wealth Q2                    0       70     272
0-24 months   MAL-ED           PERU                           Wealth Q2                    1        1     272
0-24 months   MAL-ED           PERU                           Wealth Q3                    0       64     272
0-24 months   MAL-ED           PERU                           Wealth Q3                    1        1     272
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                    0       64     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                    1        1     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                    0       59     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                    1        5     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                    0       59     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                    1        5     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                    0       60     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                    1        4     257
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       62     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1        1     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       61     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1        2     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       60     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1        2     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0       58     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1        4     250
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4                    0      164     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4                    1       11     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1                    0      161     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1                    1       13     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2                    0      171     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2                    1        5     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3                    0      162     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3                    1       13     700
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      549    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       44    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      675    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       44    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      452    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       31    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      551    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       38    2384
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       89     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4                    1        6     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       76     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       14     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       62     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       31     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       74     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       16     368
0-6 months    COHORTS          GUATEMALA                      Wealth Q4                    0      340    1015
0-6 months    COHORTS          GUATEMALA                      Wealth Q4                    1       29    1015
0-6 months    COHORTS          GUATEMALA                      Wealth Q1                    0      184    1015
0-6 months    COHORTS          GUATEMALA                      Wealth Q1                    1       12    1015
0-6 months    COHORTS          GUATEMALA                      Wealth Q2                    0      194    1015
0-6 months    COHORTS          GUATEMALA                      Wealth Q2                    1        8    1015
0-6 months    COHORTS          GUATEMALA                      Wealth Q3                    0      234    1015
0-6 months    COHORTS          GUATEMALA                      Wealth Q3                    1       14    1015
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4                    0      765    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4                    1       75    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1                    0      633    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1                    1       47    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2                    0      513    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2                    1       27    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3                    0      921    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3                    1       62    3043
0-6 months    CONTENT          PERU                           Wealth Q4                    0       51     215
0-6 months    CONTENT          PERU                           Wealth Q4                    1        1     215
0-6 months    CONTENT          PERU                           Wealth Q1                    0       59     215
0-6 months    CONTENT          PERU                           Wealth Q1                    1        0     215
0-6 months    CONTENT          PERU                           Wealth Q2                    0       52     215
0-6 months    CONTENT          PERU                           Wealth Q2                    1        0     215
0-6 months    CONTENT          PERU                           Wealth Q3                    0       52     215
0-6 months    CONTENT          PERU                           Wealth Q3                    1        0     215
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4                    0      159     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4                    1       11     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1                    0      154     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1                    1       20     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2                    0      148     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2                    1       24     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3                    0      146     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3                    1       24     686
0-6 months    IRC              INDIA                          Wealth Q4                    0       71     410
0-6 months    IRC              INDIA                          Wealth Q4                    1       29     410
0-6 months    IRC              INDIA                          Wealth Q1                    0       67     410
0-6 months    IRC              INDIA                          Wealth Q1                    1       38     410
0-6 months    IRC              INDIA                          Wealth Q2                    0       77     410
0-6 months    IRC              INDIA                          Wealth Q2                    1       25     410
0-6 months    IRC              INDIA                          Wealth Q3                    0       69     410
0-6 months    IRC              INDIA                          Wealth Q3                    1       34     410
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4                    0     6845   26835
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4                    1      254   26835
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1                    0     6153   26835
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1                    1      313   26835
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2                    0     6261   26835
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2                    1      280   26835
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3                    0     6465   26835
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3                    1      264   26835
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4                    0     1243    5083
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4                    1       28    5083
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1                    0     1222    5083
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1                    1       32    5083
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2                    0     1238    5083
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2                    1       25    5083
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3                    0     1269    5083
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3                    1       26    5083
0-6 months    LCNI-5           MALAWI                         Wealth Q4                    0       73     269
0-6 months    LCNI-5           MALAWI                         Wealth Q4                    1        0     269
0-6 months    LCNI-5           MALAWI                         Wealth Q1                    0       68     269
0-6 months    LCNI-5           MALAWI                         Wealth Q1                    1        0     269
0-6 months    LCNI-5           MALAWI                         Wealth Q2                    0       64     269
0-6 months    LCNI-5           MALAWI                         Wealth Q2                    1        0     269
0-6 months    LCNI-5           MALAWI                         Wealth Q3                    0       64     269
0-6 months    LCNI-5           MALAWI                         Wealth Q3                    1        0     269
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4                    0       58     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4                    1        3     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1                    0       57     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1                    1        3     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2                    0       58     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2                    1        3     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3                    0       53     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3                    1        7     242
0-6 months    MAL-ED           BRAZIL                         Wealth Q4                    0       52     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q4                    1        1     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q1                    0       51     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q1                    1        2     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q2                    0       53     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q2                    1        0     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q3                    0       51     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q3                    1        0     210
0-6 months    MAL-ED           INDIA                          Wealth Q4                    0       57     235
0-6 months    MAL-ED           INDIA                          Wealth Q4                    1        2     235
0-6 months    MAL-ED           INDIA                          Wealth Q1                    0       55     235
0-6 months    MAL-ED           INDIA                          Wealth Q1                    1        5     235
0-6 months    MAL-ED           INDIA                          Wealth Q2                    0       50     235
0-6 months    MAL-ED           INDIA                          Wealth Q2                    1        8     235
0-6 months    MAL-ED           INDIA                          Wealth Q3                    0       54     235
0-6 months    MAL-ED           INDIA                          Wealth Q3                    1        4     235
0-6 months    MAL-ED           NEPAL                          Wealth Q4                    0       57     236
0-6 months    MAL-ED           NEPAL                          Wealth Q4                    1        2     236
0-6 months    MAL-ED           NEPAL                          Wealth Q1                    0       55     236
0-6 months    MAL-ED           NEPAL                          Wealth Q1                    1        4     236
0-6 months    MAL-ED           NEPAL                          Wealth Q2                    0       59     236
0-6 months    MAL-ED           NEPAL                          Wealth Q2                    1        0     236
0-6 months    MAL-ED           NEPAL                          Wealth Q3                    0       58     236
0-6 months    MAL-ED           NEPAL                          Wealth Q3                    1        1     236
0-6 months    MAL-ED           PERU                           Wealth Q4                    0       67     272
0-6 months    MAL-ED           PERU                           Wealth Q4                    1        1     272
0-6 months    MAL-ED           PERU                           Wealth Q1                    0       68     272
0-6 months    MAL-ED           PERU                           Wealth Q1                    1        0     272
0-6 months    MAL-ED           PERU                           Wealth Q2                    0       71     272
0-6 months    MAL-ED           PERU                           Wealth Q2                    1        0     272
0-6 months    MAL-ED           PERU                           Wealth Q3                    0       65     272
0-6 months    MAL-ED           PERU                           Wealth Q3                    1        0     272
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4                    0       65     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4                    1        0     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1                    0       61     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1                    1        3     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2                    0       63     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2                    1        1     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3                    0       63     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3                    1        1     257
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       63     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1        0     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       62     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1        1     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       60     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1        2     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0       61     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1        1     250
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4                    0      169     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4                    1        6     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1                    0      162     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1                    1       12     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2                    0      173     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2                    1        3     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3                    0      167     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3                    1        8     700
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      572    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       21    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      694    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       25    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      470    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       13    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      570    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       19    2384
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       91     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                    1        5     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       78     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       13     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       91     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                    1        4     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       83     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                    1        8     373
6-24 months   COHORTS          GUATEMALA                      Wealth Q4                    0      428    1154
6-24 months   COHORTS          GUATEMALA                      Wealth Q4                    1        5    1154
6-24 months   COHORTS          GUATEMALA                      Wealth Q1                    0      222    1154
6-24 months   COHORTS          GUATEMALA                      Wealth Q1                    1        3    1154
6-24 months   COHORTS          GUATEMALA                      Wealth Q2                    0      233    1154
6-24 months   COHORTS          GUATEMALA                      Wealth Q2                    1        8    1154
6-24 months   COHORTS          GUATEMALA                      Wealth Q3                    0      241    1154
6-24 months   COHORTS          GUATEMALA                      Wealth Q3                    1       14    1154
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4                    0      748    2809
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4                    1       23    2809
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1                    0      552    2809
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1                    1       54    2809
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2                    0      464    2809
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2                    1       40    2809
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3                    0      857    2809
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3                    1       71    2809
6-24 months   CONTENT          PERU                           Wealth Q4                    0       52     215
6-24 months   CONTENT          PERU                           Wealth Q4                    1        0     215
6-24 months   CONTENT          PERU                           Wealth Q1                    0       59     215
6-24 months   CONTENT          PERU                           Wealth Q1                    1        0     215
6-24 months   CONTENT          PERU                           Wealth Q2                    0       52     215
6-24 months   CONTENT          PERU                           Wealth Q2                    1        0     215
6-24 months   CONTENT          PERU                           Wealth Q3                    0       52     215
6-24 months   CONTENT          PERU                           Wealth Q3                    1        0     215
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4                    0      123     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4                    1       25     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1                    0      112     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1                    1       34     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2                    0      126     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2                    1       29     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3                    0      117     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3                    1       24     590
6-24 months   IRC              INDIA                          Wealth Q4                    0       94     410
6-24 months   IRC              INDIA                          Wealth Q4                    1        6     410
6-24 months   IRC              INDIA                          Wealth Q1                    0       97     410
6-24 months   IRC              INDIA                          Wealth Q1                    1        8     410
6-24 months   IRC              INDIA                          Wealth Q2                    0       96     410
6-24 months   IRC              INDIA                          Wealth Q2                    1        6     410
6-24 months   IRC              INDIA                          Wealth Q3                    0       97     410
6-24 months   IRC              INDIA                          Wealth Q3                    1        6     410
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                    0     5009   17289
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                    1      116   17289
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                    0     3529   17289
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                    1      163   17289
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                    0     3897   17289
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                    1      136   17289
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                    0     4302   17289
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                    1      137   17289
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                    0     1305    5423
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                    1       42    5423
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                    0     1295    5423
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                    1       76    5423
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                    0     1283    5423
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                    1       61    5423
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                    0     1302    5423
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                    1       59    5423
6-24 months   LCNI-5           MALAWI                         Wealth Q4                    0      214     805
6-24 months   LCNI-5           MALAWI                         Wealth Q4                    1        2     805
6-24 months   LCNI-5           MALAWI                         Wealth Q1                    0      193     805
6-24 months   LCNI-5           MALAWI                         Wealth Q1                    1        3     805
6-24 months   LCNI-5           MALAWI                         Wealth Q2                    0      193     805
6-24 months   LCNI-5           MALAWI                         Wealth Q2                    1        3     805
6-24 months   LCNI-5           MALAWI                         Wealth Q3                    0      197     805
6-24 months   LCNI-5           MALAWI                         Wealth Q3                    1        0     805
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4                    0       60     240
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4                    1        1     240
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1                    0       57     240
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1                    1        1     240
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2                    0       59     240
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2                    1        2     240
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3                    0       59     240
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3                    1        1     240
6-24 months   MAL-ED           BRAZIL                         Wealth Q4                    0       52     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q4                    1        1     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q1                    0       52     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q1                    1        0     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q2                    0       51     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q2                    1        0     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q3                    0       51     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q3                    1        0     207
6-24 months   MAL-ED           INDIA                          Wealth Q4                    0       59     235
6-24 months   MAL-ED           INDIA                          Wealth Q4                    1        0     235
6-24 months   MAL-ED           INDIA                          Wealth Q1                    0       56     235
6-24 months   MAL-ED           INDIA                          Wealth Q1                    1        4     235
6-24 months   MAL-ED           INDIA                          Wealth Q2                    0       57     235
6-24 months   MAL-ED           INDIA                          Wealth Q2                    1        1     235
6-24 months   MAL-ED           INDIA                          Wealth Q3                    0       57     235
6-24 months   MAL-ED           INDIA                          Wealth Q3                    1        1     235
6-24 months   MAL-ED           NEPAL                          Wealth Q4                    0       59     235
6-24 months   MAL-ED           NEPAL                          Wealth Q4                    1        0     235
6-24 months   MAL-ED           NEPAL                          Wealth Q1                    0       57     235
6-24 months   MAL-ED           NEPAL                          Wealth Q1                    1        1     235
6-24 months   MAL-ED           NEPAL                          Wealth Q2                    0       59     235
6-24 months   MAL-ED           NEPAL                          Wealth Q2                    1        0     235
6-24 months   MAL-ED           NEPAL                          Wealth Q3                    0       58     235
6-24 months   MAL-ED           NEPAL                          Wealth Q3                    1        1     235
6-24 months   MAL-ED           PERU                           Wealth Q4                    0       66     270
6-24 months   MAL-ED           PERU                           Wealth Q4                    1        1     270
6-24 months   MAL-ED           PERU                           Wealth Q1                    0       68     270
6-24 months   MAL-ED           PERU                           Wealth Q1                    1        0     270
6-24 months   MAL-ED           PERU                           Wealth Q2                    0       70     270
6-24 months   MAL-ED           PERU                           Wealth Q2                    1        1     270
6-24 months   MAL-ED           PERU                           Wealth Q3                    0       63     270
6-24 months   MAL-ED           PERU                           Wealth Q3                    1        1     270
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                    0       62     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                    1        1     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                    0       62     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                    1        2     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                    0       60     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                    1        4     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                    0       61     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                    1        3     255
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       62     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1        1     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       57     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1        1     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       62     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1        0     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0       59     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1        3     245
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4                    0      133     615
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4                    1        5     615
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1                    0      159     615
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1                    1        1     615
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2                    0      163     615
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2                    1        2     615
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3                    0      147     615
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3                    1        5     615
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      464    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       24    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      588    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       21    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      388    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       19    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      487    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       19    2010


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
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/be01e53c-91a1-4445-a2a1-9a78f93dfbc0/7307af65-b58f-437c-a85c-24090eae3285/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/be01e53c-91a1-4445-a2a1-9a78f93dfbc0/7307af65-b58f-437c-a85c-24090eae3285/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/be01e53c-91a1-4445-a2a1-9a78f93dfbc0/7307af65-b58f-437c-a85c-24090eae3285/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/be01e53c-91a1-4445-a2a1-9a78f93dfbc0/7307af65-b58f-437c-a85c-24090eae3285/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1000932   0.0400095   0.1601768
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.2717010   0.1782976   0.3651045
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3788401   0.2781488   0.4795314
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2407995   0.1512301   0.3303688
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.0720043   0.0489693   0.0950392
0-24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.0620001   0.0317126   0.0922876
0-24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.0627658   0.0331418   0.0923897
0-24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.0953345   0.0603484   0.1303207
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1153619   0.0963529   0.1343709
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                0.1256257   0.1021570   0.1490943
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1236631   0.0956059   0.1517204
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1299101   0.1099707   0.1498496
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2012098   0.1409444   0.2614752
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2887342   0.2205412   0.3569273
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2791823   0.2117556   0.3466090
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2596495   0.1929768   0.3263223
0-24 months   IRC              INDIA                          Wealth Q4            NA                0.3173503   0.2260818   0.4086188
0-24 months   IRC              INDIA                          Wealth Q1            NA                0.3995356   0.3083543   0.4907169
0-24 months   IRC              INDIA                          Wealth Q2            NA                0.2746479   0.1888584   0.3604374
0-24 months   IRC              INDIA                          Wealth Q3            NA                0.3720624   0.2798714   0.4642534
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.0527471   0.0437343   0.0617600
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.0647712   0.0565407   0.0730017
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.0588642   0.0521173   0.0656110
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.0619577   0.0553412   0.0685742
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.0546283   0.0361994   0.0730573
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.0723275   0.0526311   0.0920240
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.0646250   0.0498346   0.0794154
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.0632200   0.0482098   0.0782301
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.0628571   0.0268723   0.0988420
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.0747126   0.0356178   0.1138075
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.0284091   0.0038466   0.0529716
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.0742857   0.0354053   0.1131661
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0740849   0.0528980   0.0952719
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0612264   0.0436397   0.0788130
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0645983   0.0421954   0.0870012
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0654060   0.0450371   0.0857750
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0631579   0.0141773   0.1121385
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1555556   0.0805755   0.2305357
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3333333   0.2373952   0.4292715
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1777778   0.0986824   0.2568731
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                0.0785908   0.0511206   0.1060609
0-6 months    COHORTS          GUATEMALA                      Wealth Q1            NA                0.0612245   0.0276447   0.0948042
0-6 months    COHORTS          GUATEMALA                      Wealth Q2            NA                0.0396040   0.0126960   0.0665119
0-6 months    COHORTS          GUATEMALA                      Wealth Q3            NA                0.0564516   0.0277136   0.0851896
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0847486   0.0656562   0.1038410
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0713573   0.0522457   0.0904689
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0507487   0.0321917   0.0693056
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0643439   0.0492276   0.0794602
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0658407   0.0285614   0.1031201
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1169455   0.0695737   0.1643172
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1424981   0.0902971   0.1946991
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1424680   0.0899938   0.1949422
0-6 months    IRC              INDIA                          Wealth Q4            NA                0.3088911   0.2214737   0.3963086
0-6 months    IRC              INDIA                          Wealth Q1            NA                0.3695370   0.2807395   0.4583344
0-6 months    IRC              INDIA                          Wealth Q2            NA                0.2584176   0.1745007   0.3423344
0-6 months    IRC              INDIA                          Wealth Q3            NA                0.3463701   0.2575783   0.4351619
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.0363409   0.0293389   0.0433430
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.0468599   0.0394570   0.0542628
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.0424806   0.0366252   0.0483361
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.0413942   0.0360248   0.0467636
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.0222210   0.0121873   0.0322547
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.0203702   0.0130560   0.0276844
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.0197059   0.0107949   0.0286169
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.0181778   0.0095031   0.0268525
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0348463   0.0201711   0.0495215
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0346726   0.0212443   0.0481009
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0272797   0.0126978   0.0418615
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0326025   0.0181674   0.0470377
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0302439   0.0181671   0.0423206
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0921583   0.0692784   0.1150382
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0783049   0.0546946   0.1019152
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0747100   0.0576842   0.0917359
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1816979   0.1192057   0.2441900
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2194653   0.1509748   0.2879559
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1844455   0.1207178   0.2481731
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1769214   0.1124923   0.2413504
6-24 months   IRC              INDIA                          Wealth Q4            NA                0.0600000   0.0133966   0.1066034
6-24 months   IRC              INDIA                          Wealth Q1            NA                0.0761905   0.0253833   0.1269977
6-24 months   IRC              INDIA                          Wealth Q2            NA                0.0588235   0.0131053   0.1045418
6-24 months   IRC              INDIA                          Wealth Q3            NA                0.0582524   0.0129643   0.1035405
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.0264500   0.0195409   0.0333591
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.0354268   0.0283113   0.0425424
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.0317823   0.0248164   0.0387482
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.0321453   0.0261237   0.0381669
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.0349040   0.0195191   0.0502890
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.0532336   0.0362223   0.0702450
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.0410486   0.0300355   0.0520618
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.0471464   0.0326834   0.0616094
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0491012   0.0298983   0.0683041
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0340461   0.0196911   0.0484012
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0471048   0.0264722   0.0677374
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0378957   0.0210741   0.0547173


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.2466488   0.2028447   0.2904529
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0736342   0.0592247   0.0880437
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1254928   0.1137225   0.1372631
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2580175   0.2252514   0.2907836
0-24 months   IRC              INDIA                          NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0610426   0.0575617   0.0645236
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.0630182   0.0560941   0.0699424
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0658557   0.0558973   0.0758141
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.1820652   0.1425842   0.2215462
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.0620690   0.0472181   0.0769198
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0693395   0.0603122   0.0783667
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.1151603   0.0912555   0.1390652
0-6 months    IRC              INDIA                          NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0414012   0.0384190   0.0443833
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.0218375   0.0173809   0.0262941
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0327181   0.0255755   0.0398607
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1898305   0.1581595   0.2215015
6-24 months   IRC              INDIA                          NA                   NA                0.0634146   0.0397960   0.0870333
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0319278   0.0290347   0.0348209
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.0438871   0.0380629   0.0497114
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0412935   0.0325931   0.0499940


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.7144808   1.3583331    5.4245946
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         3.7848743   1.9633305    7.2964148
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         2.4057531   1.1863098    4.8786986
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         0.8610616   0.4809183    1.5416904
0-24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.8716951   0.4933113    1.5403100
0-24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.3240124   0.8138944    2.1538532
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.0889700   0.8565742    1.3844169
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0719579   0.8140536    1.4115702
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.1261094   0.9077167    1.3970466
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4349910   0.9798866    2.1014669
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.3875186   0.9448251    2.0376340
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.2904419   0.8696403    1.9148611
0-24 months   IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         1.2589733   0.8742773    1.8129417
0-24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         0.8654407   0.5676423    1.3194711
0-24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         1.1724029   0.8041418    1.7093112
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.2279563   0.9928337    1.5187606
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.1159694   0.9205860    1.3528206
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.1746174   0.9673180    1.4263419
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.3239935   0.8592488    2.0401060
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.1829942   0.7896379    1.7723000
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.1572746   0.7617007    1.7582817
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         1.1886102   0.5472702    2.5815295
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.4519628   0.1602357    1.2748120
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         1.1818182   0.5440987    2.5669870
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.8264345   0.5510051    1.2395420
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8719496   0.5562036    1.3669386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.8828520   0.5784812    1.3473691
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.4629630   0.9883186    6.1378857
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         5.2777778   2.3077985   12.0699179
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         2.8148148   1.1512081    6.8824939
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         0.7790289   0.4065347    1.4928270
0-6 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.5039263   0.2347135    1.0819217
0-6 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.7182981   0.3873644    1.3319556
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.8419874   0.5936258    1.1942587
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.5988141   0.3898633    0.9197542
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.7592324   0.5488568    1.0502446
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.7761867   0.8850079    3.5647584
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         2.1642842   1.1021965    4.2498102
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         2.1638268   1.1006231    4.2540867
0-6 months    IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    IRC              INDIA                          Wealth Q1            Wealth Q4         1.1963340   0.8273867    1.7298019
0-6 months    IRC              INDIA                          Wealth Q2            Wealth Q4         0.8365976   0.5445958    1.2851651
0-6 months    IRC              INDIA                          Wealth Q3            Wealth Q4         1.1213340   0.7672490    1.6388291
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.2894523   1.0026574    1.6582805
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.1689467   0.9361621    1.4596152
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.1390509   0.9159055    1.4165621
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         0.9167090   0.5178027    1.6229259
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         0.8868127   0.4661078    1.6872421
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         0.8180461   0.4192057    1.5963510
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.9950157   0.5614618    1.7633545
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7828563   0.3964007    1.5460721
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9356094   0.5077984    1.7238436
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         3.0471746   1.9037729    4.8773007
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         2.5891179   1.5698721    4.2701129
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         2.4702551   1.5596918    3.9124143
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.2078585   0.7601163    1.9193408
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0151216   0.6233681    1.6530713
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9737118   0.5905785    1.6053999
6-24 months   IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         1.2698413   0.4562028    3.5346053
6-24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         0.9803922   0.3267370    2.9417201
6-24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         0.9708738   0.3235108    2.9136456
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.3393891   0.9630074    1.8628757
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.2015989   0.8512287    1.6961833
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.2153232   0.8828100    1.6730785
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.5251443   0.8864750    2.6239487
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.1760441   0.6989094    1.9789111
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.3507437   0.7853560    2.3231612
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6933866   0.3901143    1.2324209
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9593404   0.5332508    1.7258934
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.7717876   0.4271070    1.3946297


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1465556    0.0861054   0.2070058
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0016299   -0.0166996   0.0199595
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0101309   -0.0060615   0.0263232
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0568077    0.0028530   0.1107625
0-24 months   IRC              INDIA                          Wealth Q4            NA                 0.0241131   -0.0552408   0.1034670
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0082955   -0.0001251   0.0167161
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0083899   -0.0084739   0.0252537
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0028571   -0.0337992   0.0280849
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0082292   -0.0263275   0.0098691
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1189073    0.0667615   0.1710531
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0165218   -0.0371734   0.0041297
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0154092   -0.0309794   0.0001611
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0493196    0.0135975   0.0850417
0-6 months    IRC              INDIA                          Wealth Q4            NA                -0.0015741   -0.0779160   0.0747679
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0050602   -0.0015072   0.0116276
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0003835   -0.0097234   0.0089564
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0021282   -0.0146932   0.0104368
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0366839    0.0243723   0.0489955
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0081326   -0.0468827   0.0631480
6-24 months   IRC              INDIA                          Wealth Q4            NA                 0.0034146   -0.0374543   0.0442835
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0054778   -0.0010512   0.0120068
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0089831   -0.0052942   0.0232605
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0078077   -0.0241087   0.0084933


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.5941874    0.2880717    0.7686792
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0221356   -0.2612550    0.2418513
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0807286   -0.0571496    0.2006241
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2201700   -0.0184574    0.4028863
0-24 months   IRC              INDIA                          Wealth Q4            NA                 0.0706169   -0.1935300    0.2763040
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.1358968   -0.0136487    0.2633796
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.1331349   -0.1815364    0.3640018
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0476190   -0.7136457    0.3595492
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1249587   -0.4355980    0.1184635
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.6531029    0.2762967    0.8337197
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                -0.2661849   -0.6400766    0.0224700
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.2222277   -0.4659366   -0.0190349
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.4282690    0.0356378    0.6610440
0-6 months    IRC              INDIA                          Wealth Q4            NA                -0.0051219   -0.2869546    0.2149916
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.1222240   -0.0511274    0.2669864
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0175624   -0.5496289    0.3318186
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0650461   -0.5270957    0.2572023
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.5481117    0.3438050    0.6888074
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0428415   -0.2954055    0.2927678
6-24 months   IRC              INDIA                          Wealth Q4            NA                 0.0538462   -0.8692000    0.5210747
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.1715689   -0.0594107    0.3521887
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.2046873   -0.1986919    0.4723229
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1890778   -0.6547067    0.1455246
