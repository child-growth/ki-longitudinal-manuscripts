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

**Outcome Variable:** ever_co

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

agecat        studyid          country                        hhwealth_quart    ever_co   n_cell       n
------------  ---------------  -----------------------------  ---------------  --------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4               0       76     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4               1       20     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1               0       75     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1               1       16     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2               0       69     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2               1       26     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3               0       67     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3               1       24     373
0-24 months   COHORTS          GUATEMALA                      Wealth Q4               0      434    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q4               1       42    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q1               0      212    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q1               1       32    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q2               0      222    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q2               1       36    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q3               0      251    1263
0-24 months   COHORTS          GUATEMALA                      Wealth Q3               1       34    1263
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4               0      753    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4               1       87    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1               0      511    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1               1      170    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2               0      439    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2               1      101    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3               0      781    3044
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3               1      202    3044
0-24 months   CONTENT          PERU                           Wealth Q4               0       52     215
0-24 months   CONTENT          PERU                           Wealth Q4               1        0     215
0-24 months   CONTENT          PERU                           Wealth Q1               0       59     215
0-24 months   CONTENT          PERU                           Wealth Q1               1        0     215
0-24 months   CONTENT          PERU                           Wealth Q2               0       52     215
0-24 months   CONTENT          PERU                           Wealth Q2               1        0     215
0-24 months   CONTENT          PERU                           Wealth Q3               0       52     215
0-24 months   CONTENT          PERU                           Wealth Q3               1        0     215
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4               0      118     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4               1       52     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1               0      120     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1               1       54     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2               0      119     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2               1       53     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3               0      127     686
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3               1       43     686
0-24 months   IRC              INDIA                          Wealth Q4               0       83     410
0-24 months   IRC              INDIA                          Wealth Q4               1       17     410
0-24 months   IRC              INDIA                          Wealth Q1               0       82     410
0-24 months   IRC              INDIA                          Wealth Q1               1       23     410
0-24 months   IRC              INDIA                          Wealth Q2               0       82     410
0-24 months   IRC              INDIA                          Wealth Q2               1       20     410
0-24 months   IRC              INDIA                          Wealth Q3               0       87     410
0-24 months   IRC              INDIA                          Wealth Q3               1       16     410
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4               0     6646   26899
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4               1      479   26899
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1               0     5748   26899
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1               1      721   26899
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2               0     5934   26899
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2               1      626   26899
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3               0     6182   26899
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3               1      563   26899
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4               0     1206    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4               1      144    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1               0     1082    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1               1      290    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2               0     1098    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2               1      245    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3               0     1164    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3               1      197    5426
0-24 months   LCNI-5           MALAWI                         Wealth Q4               0      212     817
0-24 months   LCNI-5           MALAWI                         Wealth Q4               1        5     817
0-24 months   LCNI-5           MALAWI                         Wealth Q1               0      187     817
0-24 months   LCNI-5           MALAWI                         Wealth Q1               1       17     817
0-24 months   LCNI-5           MALAWI                         Wealth Q2               0      187     817
0-24 months   LCNI-5           MALAWI                         Wealth Q2               1       12     817
0-24 months   LCNI-5           MALAWI                         Wealth Q3               0      189     817
0-24 months   LCNI-5           MALAWI                         Wealth Q3               1        8     817
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4               0       55     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4               1        6     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1               0       51     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1               1        9     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2               0       46     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2               1       15     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3               0       51     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3               1        9     242
0-24 months   MAL-ED           BRAZIL                         Wealth Q4               0       52     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q4               1        1     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q1               0       53     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q1               1        0     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q2               0       52     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q2               1        1     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q3               0       50     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q3               1        1     210
0-24 months   MAL-ED           INDIA                          Wealth Q4               0       49     235
0-24 months   MAL-ED           INDIA                          Wealth Q4               1       10     235
0-24 months   MAL-ED           INDIA                          Wealth Q1               0       45     235
0-24 months   MAL-ED           INDIA                          Wealth Q1               1       15     235
0-24 months   MAL-ED           INDIA                          Wealth Q2               0       43     235
0-24 months   MAL-ED           INDIA                          Wealth Q2               1       15     235
0-24 months   MAL-ED           INDIA                          Wealth Q3               0       45     235
0-24 months   MAL-ED           INDIA                          Wealth Q3               1       13     235
0-24 months   MAL-ED           NEPAL                          Wealth Q4               0       55     236
0-24 months   MAL-ED           NEPAL                          Wealth Q4               1        4     236
0-24 months   MAL-ED           NEPAL                          Wealth Q1               0       55     236
0-24 months   MAL-ED           NEPAL                          Wealth Q1               1        4     236
0-24 months   MAL-ED           NEPAL                          Wealth Q2               0       56     236
0-24 months   MAL-ED           NEPAL                          Wealth Q2               1        3     236
0-24 months   MAL-ED           NEPAL                          Wealth Q3               0       48     236
0-24 months   MAL-ED           NEPAL                          Wealth Q3               1       11     236
0-24 months   MAL-ED           PERU                           Wealth Q4               0       65     272
0-24 months   MAL-ED           PERU                           Wealth Q4               1        3     272
0-24 months   MAL-ED           PERU                           Wealth Q1               0       65     272
0-24 months   MAL-ED           PERU                           Wealth Q1               1        3     272
0-24 months   MAL-ED           PERU                           Wealth Q2               0       70     272
0-24 months   MAL-ED           PERU                           Wealth Q2               1        1     272
0-24 months   MAL-ED           PERU                           Wealth Q3               0       61     272
0-24 months   MAL-ED           PERU                           Wealth Q3               1        4     272
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4               0       60     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4               1        5     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1               0       59     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1               1        5     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2               0       56     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2               1        8     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3               0       60     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3               1        4     257
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       60     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        3     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       59     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        4     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       55     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        7     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       53     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        9     250
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4               0      148     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4               1       27     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1               0      156     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1               1       18     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2               0      159     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2               1       17     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3               0      147     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3               1       28     700
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      548    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       45    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      691    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       28    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      461    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       22    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      565    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       24    2384
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4               0       86     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4               1        9     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1               0       87     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1               1        3     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2               0       81     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2               1       12     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3               0       83     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3               1        7     368
0-6 months    COHORTS          GUATEMALA                      Wealth Q4               0      363    1014
0-6 months    COHORTS          GUATEMALA                      Wealth Q4               1        6    1014
0-6 months    COHORTS          GUATEMALA                      Wealth Q1               0      190    1014
0-6 months    COHORTS          GUATEMALA                      Wealth Q1               1        5    1014
0-6 months    COHORTS          GUATEMALA                      Wealth Q2               0      200    1014
0-6 months    COHORTS          GUATEMALA                      Wealth Q2               1        2    1014
0-6 months    COHORTS          GUATEMALA                      Wealth Q3               0      242    1014
0-6 months    COHORTS          GUATEMALA                      Wealth Q3               1        6    1014
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4               0      827    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4               1       13    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1               0      658    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1               1       22    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2               0      527    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2               1       13    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3               0      959    3043
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3               1       24    3043
0-6 months    CONTENT          PERU                           Wealth Q4               0       52     215
0-6 months    CONTENT          PERU                           Wealth Q4               1        0     215
0-6 months    CONTENT          PERU                           Wealth Q1               0       59     215
0-6 months    CONTENT          PERU                           Wealth Q1               1        0     215
0-6 months    CONTENT          PERU                           Wealth Q2               0       52     215
0-6 months    CONTENT          PERU                           Wealth Q2               1        0     215
0-6 months    CONTENT          PERU                           Wealth Q3               0       52     215
0-6 months    CONTENT          PERU                           Wealth Q3               1        0     215
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4               0      159     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4               1       11     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1               0      163     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1               1       11     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2               0      166     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2               1        6     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3               0      162     686
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3               1        8     686
0-6 months    IRC              INDIA                          Wealth Q4               0       95     409
0-6 months    IRC              INDIA                          Wealth Q4               1        5     409
0-6 months    IRC              INDIA                          Wealth Q1               0       99     409
0-6 months    IRC              INDIA                          Wealth Q1               1        6     409
0-6 months    IRC              INDIA                          Wealth Q2               0       92     409
0-6 months    IRC              INDIA                          Wealth Q2               1        9     409
0-6 months    IRC              INDIA                          Wealth Q3               0       98     409
0-6 months    IRC              INDIA                          Wealth Q3               1        5     409
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4               0     6891   26792
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4               1      202   26792
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1               0     6126   26792
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1               1      321   26792
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2               0     6248   26792
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2               1      281   26792
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3               0     6465   26792
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3               1      258   26792
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4               0     1246    5079
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4               1       25    5079
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1               0     1210    5079
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1               1       43    5079
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2               0     1221    5079
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2               1       39    5079
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3               0     1268    5079
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3               1       27    5079
0-6 months    LCNI-5           MALAWI                         Wealth Q4               0       73     269
0-6 months    LCNI-5           MALAWI                         Wealth Q4               1        0     269
0-6 months    LCNI-5           MALAWI                         Wealth Q1               0       68     269
0-6 months    LCNI-5           MALAWI                         Wealth Q1               1        0     269
0-6 months    LCNI-5           MALAWI                         Wealth Q2               0       64     269
0-6 months    LCNI-5           MALAWI                         Wealth Q2               1        0     269
0-6 months    LCNI-5           MALAWI                         Wealth Q3               0       64     269
0-6 months    LCNI-5           MALAWI                         Wealth Q3               1        0     269
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4               0       60     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4               1        1     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1               0       56     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1               1        4     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2               0       59     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2               1        2     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3               0       58     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3               1        2     242
0-6 months    MAL-ED           BRAZIL                         Wealth Q4               0       52     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q4               1        1     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q1               0       53     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q1               1        0     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q2               0       53     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q2               1        0     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q3               0       51     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q3               1        0     210
0-6 months    MAL-ED           INDIA                          Wealth Q4               0       57     235
0-6 months    MAL-ED           INDIA                          Wealth Q4               1        2     235
0-6 months    MAL-ED           INDIA                          Wealth Q1               0       54     235
0-6 months    MAL-ED           INDIA                          Wealth Q1               1        6     235
0-6 months    MAL-ED           INDIA                          Wealth Q2               0       53     235
0-6 months    MAL-ED           INDIA                          Wealth Q2               1        5     235
0-6 months    MAL-ED           INDIA                          Wealth Q3               0       53     235
0-6 months    MAL-ED           INDIA                          Wealth Q3               1        5     235
0-6 months    MAL-ED           NEPAL                          Wealth Q4               0       56     236
0-6 months    MAL-ED           NEPAL                          Wealth Q4               1        3     236
0-6 months    MAL-ED           NEPAL                          Wealth Q1               0       56     236
0-6 months    MAL-ED           NEPAL                          Wealth Q1               1        3     236
0-6 months    MAL-ED           NEPAL                          Wealth Q2               0       57     236
0-6 months    MAL-ED           NEPAL                          Wealth Q2               1        2     236
0-6 months    MAL-ED           NEPAL                          Wealth Q3               0       59     236
0-6 months    MAL-ED           NEPAL                          Wealth Q3               1        0     236
0-6 months    MAL-ED           PERU                           Wealth Q4               0       68     272
0-6 months    MAL-ED           PERU                           Wealth Q4               1        0     272
0-6 months    MAL-ED           PERU                           Wealth Q1               0       68     272
0-6 months    MAL-ED           PERU                           Wealth Q1               1        0     272
0-6 months    MAL-ED           PERU                           Wealth Q2               0       71     272
0-6 months    MAL-ED           PERU                           Wealth Q2               1        0     272
0-6 months    MAL-ED           PERU                           Wealth Q3               0       64     272
0-6 months    MAL-ED           PERU                           Wealth Q3               1        1     272
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4               0       62     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4               1        3     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1               0       64     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1               1        0     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2               0       64     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2               1        0     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3               0       63     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3               1        1     257
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       63     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        0     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       62     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        1     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       60     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        2     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       61     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        1     250
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4               0      169     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4               1        6     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1               0      165     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1               1        9     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2               0      173     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2               1        3     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3               0      163     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3               1       12     700
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      583    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       10    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      713    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        6    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      483    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      586    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        3    2384
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4               0       81     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4               1       15     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1               0       76     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1               1       15     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2               0       75     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2               1       20     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3               0       71     373
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3               1       20     373
6-24 months   COHORTS          GUATEMALA                      Wealth Q4               0      396    1153
6-24 months   COHORTS          GUATEMALA                      Wealth Q4               1       37    1153
6-24 months   COHORTS          GUATEMALA                      Wealth Q1               0      194    1153
6-24 months   COHORTS          GUATEMALA                      Wealth Q1               1       31    1153
6-24 months   COHORTS          GUATEMALA                      Wealth Q2               0      205    1153
6-24 months   COHORTS          GUATEMALA                      Wealth Q2               1       36    1153
6-24 months   COHORTS          GUATEMALA                      Wealth Q3               0      225    1153
6-24 months   COHORTS          GUATEMALA                      Wealth Q3               1       29    1153
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4               0      690    2808
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4               1       80    2808
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1               0      442    2808
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1               1      164    2808
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2               0      407    2808
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2               1       97    2808
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3               0      733    2808
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3               1      195    2808
6-24 months   CONTENT          PERU                           Wealth Q4               0       52     215
6-24 months   CONTENT          PERU                           Wealth Q4               1        0     215
6-24 months   CONTENT          PERU                           Wealth Q1               0       59     215
6-24 months   CONTENT          PERU                           Wealth Q1               1        0     215
6-24 months   CONTENT          PERU                           Wealth Q2               0       52     215
6-24 months   CONTENT          PERU                           Wealth Q2               1        0     215
6-24 months   CONTENT          PERU                           Wealth Q3               0       52     215
6-24 months   CONTENT          PERU                           Wealth Q3               1        0     215
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4               0      100     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4               1       48     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1               0       94     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1               1       52     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2               0      104     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2               1       51     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3               0      100     590
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3               1       41     590
6-24 months   IRC              INDIA                          Wealth Q4               0       85     410
6-24 months   IRC              INDIA                          Wealth Q4               1       15     410
6-24 months   IRC              INDIA                          Wealth Q1               0       86     410
6-24 months   IRC              INDIA                          Wealth Q1               1       19     410
6-24 months   IRC              INDIA                          Wealth Q2               0       85     410
6-24 months   IRC              INDIA                          Wealth Q2               1       17     410
6-24 months   IRC              INDIA                          Wealth Q3               0       90     410
6-24 months   IRC              INDIA                          Wealth Q3               1       13     410
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4               0     4825   17271
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4               1      299   17271
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1               0     3221   17271
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1               1      462   17271
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2               0     3634   17271
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2               1      394   17271
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3               0     4092   17271
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3               1      344   17271
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4               0     1215    5422
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4               1      132    5422
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1               0     1104    5422
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1               1      267    5422
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2               0     1117    5422
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2               1      226    5422
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3               0     1185    5422
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3               1      176    5422
6-24 months   LCNI-5           MALAWI                         Wealth Q4               0      211     805
6-24 months   LCNI-5           MALAWI                         Wealth Q4               1        5     805
6-24 months   LCNI-5           MALAWI                         Wealth Q1               0      179     805
6-24 months   LCNI-5           MALAWI                         Wealth Q1               1       17     805
6-24 months   LCNI-5           MALAWI                         Wealth Q2               0      184     805
6-24 months   LCNI-5           MALAWI                         Wealth Q2               1       12     805
6-24 months   LCNI-5           MALAWI                         Wealth Q3               0      189     805
6-24 months   LCNI-5           MALAWI                         Wealth Q3               1        8     805
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4               0       55     239
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4               1        6     239
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1               0       51     239
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1               1        6     239
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2               0       46     239
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2               1       15     239
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3               0       52     239
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3               1        8     239
6-24 months   MAL-ED           BRAZIL                         Wealth Q4               0       53     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q4               1        0     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q1               0       52     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q1               1        0     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q2               0       50     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q2               1        1     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q3               0       50     207
6-24 months   MAL-ED           BRAZIL                         Wealth Q3               1        1     207
6-24 months   MAL-ED           INDIA                          Wealth Q4               0       50     235
6-24 months   MAL-ED           INDIA                          Wealth Q4               1        9     235
6-24 months   MAL-ED           INDIA                          Wealth Q1               0       45     235
6-24 months   MAL-ED           INDIA                          Wealth Q1               1       15     235
6-24 months   MAL-ED           INDIA                          Wealth Q2               0       45     235
6-24 months   MAL-ED           INDIA                          Wealth Q2               1       13     235
6-24 months   MAL-ED           INDIA                          Wealth Q3               0       48     235
6-24 months   MAL-ED           INDIA                          Wealth Q3               1       10     235
6-24 months   MAL-ED           NEPAL                          Wealth Q4               0       57     235
6-24 months   MAL-ED           NEPAL                          Wealth Q4               1        2     235
6-24 months   MAL-ED           NEPAL                          Wealth Q1               0       56     235
6-24 months   MAL-ED           NEPAL                          Wealth Q1               1        2     235
6-24 months   MAL-ED           NEPAL                          Wealth Q2               0       58     235
6-24 months   MAL-ED           NEPAL                          Wealth Q2               1        1     235
6-24 months   MAL-ED           NEPAL                          Wealth Q3               0       48     235
6-24 months   MAL-ED           NEPAL                          Wealth Q3               1       11     235
6-24 months   MAL-ED           PERU                           Wealth Q4               0       64     270
6-24 months   MAL-ED           PERU                           Wealth Q4               1        3     270
6-24 months   MAL-ED           PERU                           Wealth Q1               0       65     270
6-24 months   MAL-ED           PERU                           Wealth Q1               1        3     270
6-24 months   MAL-ED           PERU                           Wealth Q2               0       70     270
6-24 months   MAL-ED           PERU                           Wealth Q2               1        1     270
6-24 months   MAL-ED           PERU                           Wealth Q3               0       60     270
6-24 months   MAL-ED           PERU                           Wealth Q3               1        4     270
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4               0       60     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4               1        3     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1               0       59     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1               1        5     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2               0       56     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2               1        8     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3               0       60     255
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3               1        4     255
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       60     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        3     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       54     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        4     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       57     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        5     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       53     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        9     245
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4               0      114     614
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4               1       23     614
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1               0      148     614
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1               1       12     614
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2               0      148     614
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2               1       17     614
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3               0      129     614
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3               1       23     614
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      444    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       44    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      583    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       26    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      384    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       22    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      485    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       21    2009


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
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
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
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/72efe52d-4885-463e-aa03-d43b039f9008/61f9d204-c18e-45f7-b5e3-f8c07d518c09/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/72efe52d-4885-463e-aa03-d43b039f9008/61f9d204-c18e-45f7-b5e3-f8c07d518c09/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/72efe52d-4885-463e-aa03-d43b039f9008/61f9d204-c18e-45f7-b5e3-f8c07d518c09/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/72efe52d-4885-463e-aa03-d43b039f9008/61f9d204-c18e-45f7-b5e3-f8c07d518c09/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1990356   0.1174755   0.2805957
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1770908   0.1007503   0.2534313
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2823274   0.1899397   0.3747151
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2621545   0.1717058   0.3526031
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.0879639   0.0625554   0.1133724
0-24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.1326568   0.0899340   0.1753797
0-24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.1365433   0.0941576   0.1789289
0-24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.1208090   0.0830379   0.1585801
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1363905   0.1142570   0.1585240
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2317372   0.1994665   0.2640079
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1673769   0.1356092   0.1991447
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1917000   0.1673524   0.2160475
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3268178   0.2588905   0.3947451
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2772041   0.2110966   0.3433115
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3188079   0.2503048   0.3873110
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2593988   0.1960442   0.3227534
0-24 months   IRC              INDIA                          Wealth Q4            NA                0.1648436   0.0906824   0.2390049
0-24 months   IRC              INDIA                          Wealth Q1            NA                0.2176699   0.1377308   0.2976090
0-24 months   IRC              INDIA                          Wealth Q2            NA                0.1951068   0.1173441   0.2728695
0-24 months   IRC              INDIA                          Wealth Q3            NA                0.1531780   0.0815842   0.2247719
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.0885468   0.0777553   0.0993383
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.0952260   0.0871459   0.1033061
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.0878250   0.0800889   0.0955610
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.0849322   0.0777427   0.0921217
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.1294488   0.1072741   0.1516236
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.1996602   0.1736599   0.2256605
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.1778845   0.1542599   0.2015092
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.1461751   0.1246905   0.1676597
0-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                0.0230415   0.0030669   0.0430160
0-24 months   LCNI-5           MALAWI                         Wealth Q1            NA                0.0833333   0.0453831   0.1212835
0-24 months   LCNI-5           MALAWI                         Wealth Q2            NA                0.0603015   0.0272078   0.0933952
0-24 months   LCNI-5           MALAWI                         Wealth Q3            NA                0.0406091   0.0130294   0.0681889
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                0.0983607   0.0234731   0.1732482
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                0.1500000   0.0594629   0.2405371
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                0.2459016   0.1376145   0.3541888
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                0.1500000   0.0594629   0.2405371
0-24 months   MAL-ED           INDIA                          Wealth Q4            NA                0.1738394   0.0759453   0.2717336
0-24 months   MAL-ED           INDIA                          Wealth Q1            NA                0.2541441   0.1421264   0.3661617
0-24 months   MAL-ED           INDIA                          Wealth Q2            NA                0.2586510   0.1440658   0.3732362
0-24 months   MAL-ED           INDIA                          Wealth Q3            NA                0.2263906   0.1162205   0.3365608
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.1374090   0.0857327   0.1890852
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.1237712   0.0652412   0.1823012
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.0927637   0.0494063   0.1361211
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.1576083   0.1028376   0.2123790
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0751724   0.0537631   0.0965818
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0384771   0.0242936   0.0526606
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0456355   0.0269440   0.0643270
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0411641   0.0250539   0.0572743
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0158055   0.0071896   0.0244215
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0345215   0.0207458   0.0482973
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0237246   0.0104059   0.0370433
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0245748   0.0146637   0.0344858
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0647059   0.0276987   0.1017131
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0632184   0.0270332   0.0994036
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0348837   0.0074426   0.0623248
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                0.0470588   0.0152026   0.0789150
0-6 months    IRC              INDIA                          Wealth Q4            NA                0.0500000   0.0072313   0.0927687
0-6 months    IRC              INDIA                          Wealth Q1            NA                0.0571429   0.0126911   0.1015946
0-6 months    IRC              INDIA                          Wealth Q2            NA                0.0891089   0.0334784   0.1447394
0-6 months    IRC              INDIA                          Wealth Q3            NA                0.0485437   0.0069888   0.0900986
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.0344942   0.0273161   0.0416723
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.0439004   0.0379585   0.0498423
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.0395388   0.0344821   0.0445955
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.0401256   0.0354246   0.0448265
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.0188705   0.0102691   0.0274719
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.0260913   0.0160888   0.0360938
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.0294612   0.0180009   0.0409214
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.0208065   0.0117985   0.0298146
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1538149   0.0802124   0.2274173
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1656283   0.0892710   0.2419857
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2197150   0.1361383   0.3032917
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2121032   0.1243261   0.2998802
6-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.0861680   0.0599721   0.1123640
6-24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.1354499   0.0899968   0.1809031
6-24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.1439000   0.0988635   0.1889365
6-24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.1188329   0.0793664   0.1582995
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1367381   0.1136531   0.1598231
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2518101   0.2168517   0.2867685
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1757752   0.1417200   0.2098304
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1942922   0.1691140   0.2194703
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3442520   0.2696934   0.4188107
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3155010   0.2397961   0.3912060
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3393650   0.2662981   0.4124318
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2917566   0.2196830   0.3638302
6-24 months   IRC              INDIA                          Wealth Q4            NA                0.1574781   0.0873042   0.2276520
6-24 months   IRC              INDIA                          Wealth Q1            NA                0.1852107   0.1113696   0.2590517
6-24 months   IRC              INDIA                          Wealth Q2            NA                0.1758158   0.1028487   0.2487830
6-24 months   IRC              INDIA                          Wealth Q3            NA                0.1327395   0.0671786   0.1983003
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.0779996   0.0654197   0.0905795
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.1015099   0.0909162   0.1121035
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.0923280   0.0817015   0.1029546
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.0783496   0.0684849   0.0882142
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.1228025   0.1003050   0.1452999
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.1924956   0.1673037   0.2176876
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.1624500   0.1387757   0.1861243
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.1325851   0.1116205   0.1535497
6-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                0.0231481   0.0030820   0.0432143
6-24 months   LCNI-5           MALAWI                         Wealth Q1            NA                0.0867347   0.0473085   0.1261609
6-24 months   LCNI-5           MALAWI                         Wealth Q2            NA                0.0612245   0.0276404   0.0948086
6-24 months   LCNI-5           MALAWI                         Wealth Q3            NA                0.0406091   0.0130291   0.0681892
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                0.0983607   0.0234712   0.1732501
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                0.1052632   0.0254256   0.1851007
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                0.2459016   0.1376116   0.3541916
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                0.1333333   0.0471391   0.2195276
6-24 months   MAL-ED           INDIA                          Wealth Q4            NA                0.1525424   0.0606028   0.2444819
6-24 months   MAL-ED           INDIA                          Wealth Q1            NA                0.2500000   0.1402008   0.3597992
6-24 months   MAL-ED           INDIA                          Wealth Q2            NA                0.2241379   0.1165880   0.3316878
6-24 months   MAL-ED           INDIA                          Wealth Q3            NA                0.1724138   0.0749928   0.2698348
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.1477910   0.0864993   0.2090828
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.0853108   0.0352359   0.1353857
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.1004468   0.0540747   0.1468189
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.1465331   0.0896704   0.2033958
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0891605   0.0637407   0.1145804
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0423379   0.0262786   0.0583971
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0548076   0.0326021   0.0770130
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0419963   0.0245205   0.0594720


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1140143   0.0964790   0.1315495
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1839685   0.1702020   0.1977349
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2944606   0.2603274   0.3285938
0-24 months   IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0888137   0.0849063   0.0927211
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1614449   0.1501252   0.1727646
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.0514076   0.0362561   0.0665591
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1611570   0.1147371   0.2075770
0-24 months   MAL-ED           INDIA                          NA                   NA                0.2255319   0.1719836   0.2790802
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0499161   0.0411726   0.0586596
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0236609   0.0182597   0.0290620
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.0524781   0.0357793   0.0691770
0-6 months    IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0396387   0.0371359   0.0421415
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.0263831   0.0210411   0.0317252
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1153513   0.0969046   0.1337979
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.3254237   0.2875855   0.3632619
6-24 months   IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0867929   0.0821342   0.0914516
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1477315   0.1371478   0.1583151
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.0521739   0.0368026   0.0675452
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   MAL-ED           INDIA                          NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0562469   0.0461696   0.0663242


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.8897446   0.4926451   1.6069284
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.4184771   0.8374482   2.4026288
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.3171237   0.7730679   2.2440654
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.5080831   0.9788297   2.3235040
0-24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.5522652   1.0164939   2.3704297
0-24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.3733928   0.8977849   2.1009574
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.6990715   1.3741483   2.1008242
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.2271892   0.9578991   1.5721836
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4055231   1.1468977   1.7224685
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.8481914   0.6205572   1.1593269
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.9754912   0.7258500   1.3109913
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.7937107   0.5784659   1.0890473
0-24 months   IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         1.3204631   0.7390952   2.3591315
0-24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         1.1835871   0.6487637   2.1593048
0-24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         0.9292324   0.4857292   1.7776836
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.0754312   0.9267212   1.2480046
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         0.9918479   0.8611231   1.1424176
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         0.9591785   0.8295584   1.1090519
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.5423872   1.2438938   1.9125091
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.3741687   1.1061256   1.7071657
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.1292112   0.9011150   1.4150445
0-24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         3.6166667   1.3584145   9.6290769
0-24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.6170854   0.9380536   7.3014338
0-24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.7624365   0.5859301   5.3012855
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         1.5250000   0.5771872   4.0292386
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         2.5000000   1.0374362   6.0244669
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         1.5250000   0.5771872   4.0292386
0-24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         1.4619470   0.7146697   2.9905970
0-24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         1.4878729   0.7261357   3.0486943
0-24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         1.3022973   0.6183377   2.7428024
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         0.9007505   0.4926546   1.6468972
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.6750918   0.3706678   1.2295348
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         1.1470017   0.6877083   1.9130393
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.5118510   0.3213035   0.8154017
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.6070779   0.3686338   0.9997554
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.5475961   0.3374591   0.8885860
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.1841457   1.1110967   4.2934991
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.5010323   0.6863902   3.2825322
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.5548221   0.7890360   3.0638294
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9770115   0.4350001   2.1943708
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.5391121   0.2038413   1.4258236
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.7272727   0.2997947   1.7642930
0-6 months    IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          Wealth Q1            Wealth Q4         1.1428571   0.3596332   3.6318188
0-6 months    IRC              INDIA                          Wealth Q2            Wealth Q4         1.7821782   0.6180834   5.1387223
0-6 months    IRC              INDIA                          Wealth Q3            Wealth Q4         0.9708738   0.2894696   3.2562863
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.2726902   0.9961059   1.6260724
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.1462446   0.9086595   1.4459504
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.1632558   0.9161615   1.4769930
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.3826500   0.7556961   2.5297487
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.5612289   0.8609488   2.8311041
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.1025965   0.5839884   2.0817520
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0768033   0.5550628   2.0889623
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.4284379   0.7748239   2.6334177
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.3789512   0.7319457   2.5978789
6-24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.5719279   0.9999763   2.4710158
6-24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.6699928   1.0809438   2.5800379
6-24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.3790835   0.8803673   2.1603156
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.8415504   1.4824564   2.2876272
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.2854882   0.9961918   1.6587968
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4209072   1.1515438   1.7532787
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9164828   0.6653273   1.2624474
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.9858039   0.7282745   1.3343998
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.8475088   0.6126597   1.1723818
6-24 months   IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         1.1761043   0.6465236   2.1394755
6-24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         1.1164462   0.6066469   2.0546585
6-24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         0.8429074   0.4331215   1.6404008
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.3014151   1.0716050   1.5805089
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.1836987   0.9684579   1.4467771
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.0044866   0.8168659   1.2352008
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.5675224   1.2517530   1.9629483
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.3228559   1.0465802   1.6720629
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.0796619   0.8503268   1.3708491
6-24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         3.7469388   1.4079441   9.9716670
6-24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.6448980   0.9481883   7.3777385
6-24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.7543147   0.5832458   5.2767121
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         1.0701754   0.3653632   3.1346219
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         2.5000000   1.0374124   6.0246049
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         1.3555556   0.4992800   3.6803612
6-24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         1.6388889   0.7774452   3.4548502
6-24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         1.4693487   0.6800584   3.1747059
6-24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         1.1302682   0.4947497   2.5821264
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         0.5772392   0.2815567   1.1834388
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.6796541   0.3658720   1.2625446
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         0.9914886   0.5624911   1.7476713
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.4748498   0.2955183   0.7630064
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.6147066   0.3745219   1.0089241
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.4710187   0.2844058   0.7800777


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0315274   -0.0397874    0.1028423
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0260504    0.0045355    0.0475652
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0475780    0.0271608    0.0679952
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0323572   -0.0903162    0.0256019
0-24 months   IRC              INDIA                          Wealth Q4            NA                 0.0205222   -0.0446958    0.0857402
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0002669   -0.0096986    0.0102324
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0319961    0.0104246    0.0535675
0-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0283661    0.0079551    0.0487771
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0627964   -0.0074582    0.1330510
0-24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0516925   -0.0363756    0.1397605
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0088375   -0.0532731    0.0355980
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0252563   -0.0428044   -0.0077083
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0078554   -0.0001370    0.0158477
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0122277   -0.0433663    0.0189108
0-6 months    IRC              INDIA                          Wealth Q4            NA                 0.0111247   -0.0272816    0.0495309
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0051445   -0.0016644    0.0119534
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0075126   -0.0005110    0.0155363
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0338527   -0.0313042    0.0990096
6-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0291832    0.0067137    0.0516527
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0541451    0.0326858    0.0756043
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0188283   -0.0826677    0.0450111
6-24 months   IRC              INDIA                          Wealth Q4            NA                -0.0013805   -0.0628786    0.0601175
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0087933   -0.0034087    0.0209953
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0249290    0.0031526    0.0467054
6-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0290258    0.0084625    0.0495890
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0480829   -0.0209323    0.1170980
6-24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0474576   -0.0352170    0.1301323
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0256412   -0.0789781    0.0276956
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0329136   -0.0537456   -0.0120816


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1367410   -0.2351447    0.3966569
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2284835    0.0179606    0.3938758
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2586203    0.1416236    0.3596703
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.1098862   -0.3253970    0.0705823
0-24 months   IRC              INDIA                          Wealth Q4            NA                 0.1107121   -0.3207837    0.4012397
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0030052   -0.1157636    0.1091316
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.1981857    0.0553769    0.3194045
0-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.5517885   -0.0096188    0.8010204
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.3896595   -0.2240431    0.6956680
0-24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.2292024   -0.2755807    0.5342287
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0687364   -0.4764571    0.2263930
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.5059756   -0.8889248   -0.2006633
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3319978   -0.0942402    0.5922038
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.2330065   -0.9886031    0.2354909
0-6 months    IRC              INDIA                          Wealth Q4            NA                 0.1820000   -0.7560322    0.6189569
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.1297852   -0.0600318    0.2856121
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.2847516   -0.0830526    0.5276497
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1803866   -0.2505915    0.4628412
6-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2529944    0.0350915    0.4216888
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2836556    0.1651665    0.3853274
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0578578   -0.2734511    0.1212360
6-24 months   IRC              INDIA                          Wealth Q4            NA                -0.0088441   -0.4908880    0.3173421
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.1013133   -0.0502996    0.2310405
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.1687453    0.0093872    0.3024678
6-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.5563272    0.0006791    0.8030206
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.3283372   -0.3380546    0.6628457
6-24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.2372881   -0.3066459    0.5547919
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.2099161   -0.7334717    0.1555115
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.5851635   -0.9859968   -0.2652303
