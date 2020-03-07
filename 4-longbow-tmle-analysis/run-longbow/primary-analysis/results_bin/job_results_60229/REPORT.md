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

**Outcome Variable:** ever_sstunted

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

agecat        studyid          country                        hhwealth_quart    ever_sstunted   n_cell       n
------------  ---------------  -----------------------------  ---------------  --------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                     0       28     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                     1       68     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                     0       44     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                     1       47     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                     0       32     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                     1       63     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                     0       32     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                     1       59     373
0-24 months   COHORTS          GUATEMALA                      Wealth Q4                     0      291    1278
0-24 months   COHORTS          GUATEMALA                      Wealth Q4                     1      194    1278
0-24 months   COHORTS          GUATEMALA                      Wealth Q1                     0      112    1278
0-24 months   COHORTS          GUATEMALA                      Wealth Q1                     1      133    1278
0-24 months   COHORTS          GUATEMALA                      Wealth Q2                     0      117    1278
0-24 months   COHORTS          GUATEMALA                      Wealth Q2                     1      143    1278
0-24 months   COHORTS          GUATEMALA                      Wealth Q3                     0      154    1278
0-24 months   COHORTS          GUATEMALA                      Wealth Q3                     1      134    1278
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4                     0      635    3057
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4                     1      208    3057
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1                     0      416    3057
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1                     1      271    3057
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2                     0      331    3057
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2                     1      211    3057
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3                     0      586    3057
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3                     1      399    3057
0-24 months   CONTENT          PERU                           Wealth Q4                     0       48     215
0-24 months   CONTENT          PERU                           Wealth Q4                     1        4     215
0-24 months   CONTENT          PERU                           Wealth Q1                     0       55     215
0-24 months   CONTENT          PERU                           Wealth Q1                     1        4     215
0-24 months   CONTENT          PERU                           Wealth Q2                     0       51     215
0-24 months   CONTENT          PERU                           Wealth Q2                     1        1     215
0-24 months   CONTENT          PERU                           Wealth Q3                     0       51     215
0-24 months   CONTENT          PERU                           Wealth Q3                     1        1     215
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4                     0      133     698
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4                     1       42     698
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1                     0      132     698
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1                     1       43     698
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2                     0      130     698
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2                     1       44     698
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3                     0      134     698
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3                     1       40     698
0-24 months   IRC              INDIA                          Wealth Q4                     0       79     410
0-24 months   IRC              INDIA                          Wealth Q4                     1       21     410
0-24 months   IRC              INDIA                          Wealth Q1                     0       77     410
0-24 months   IRC              INDIA                          Wealth Q1                     1       28     410
0-24 months   IRC              INDIA                          Wealth Q2                     0       71     410
0-24 months   IRC              INDIA                          Wealth Q2                     1       31     410
0-24 months   IRC              INDIA                          Wealth Q3                     0       81     410
0-24 months   IRC              INDIA                          Wealth Q3                     1       22     410
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                     0     6240   27203
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                     1      917   27203
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                     0     5110   27203
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                     1     1476   27203
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                     0     5283   27203
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                     1     1359   27203
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                     0     5550   27203
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                     1     1268   27203
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                     0     1161    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                     1      189    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                     0     1012    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                     1      360    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                     0     1049    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                     1      294    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                     0     1100    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                     1      261    5426
0-24 months   LCNI-5           MALAWI                         Wealth Q4                     0      176     817
0-24 months   LCNI-5           MALAWI                         Wealth Q4                     1       41     817
0-24 months   LCNI-5           MALAWI                         Wealth Q1                     0      153     817
0-24 months   LCNI-5           MALAWI                         Wealth Q1                     1       51     817
0-24 months   LCNI-5           MALAWI                         Wealth Q2                     0      149     817
0-24 months   LCNI-5           MALAWI                         Wealth Q2                     1       50     817
0-24 months   LCNI-5           MALAWI                         Wealth Q3                     0      169     817
0-24 months   LCNI-5           MALAWI                         Wealth Q3                     1       28     817
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4                     0       54     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4                     1        7     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1                     0       48     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1                     1       12     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2                     0       38     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2                     1       23     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3                     0       49     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3                     1       11     242
0-24 months   MAL-ED           BRAZIL                         Wealth Q4                     0       47     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q4                     1        6     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q1                     0       48     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q1                     1        5     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q2                     0       49     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q2                     1        4     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q3                     0       45     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q3                     1        6     210
0-24 months   MAL-ED           INDIA                          Wealth Q4                     0       48     235
0-24 months   MAL-ED           INDIA                          Wealth Q4                     1       11     235
0-24 months   MAL-ED           INDIA                          Wealth Q1                     0       42     235
0-24 months   MAL-ED           INDIA                          Wealth Q1                     1       18     235
0-24 months   MAL-ED           INDIA                          Wealth Q2                     0       42     235
0-24 months   MAL-ED           INDIA                          Wealth Q2                     1       16     235
0-24 months   MAL-ED           INDIA                          Wealth Q3                     0       45     235
0-24 months   MAL-ED           INDIA                          Wealth Q3                     1       13     235
0-24 months   MAL-ED           NEPAL                          Wealth Q4                     0       52     236
0-24 months   MAL-ED           NEPAL                          Wealth Q4                     1        7     236
0-24 months   MAL-ED           NEPAL                          Wealth Q1                     0       54     236
0-24 months   MAL-ED           NEPAL                          Wealth Q1                     1        5     236
0-24 months   MAL-ED           NEPAL                          Wealth Q2                     0       56     236
0-24 months   MAL-ED           NEPAL                          Wealth Q2                     1        3     236
0-24 months   MAL-ED           NEPAL                          Wealth Q3                     0       53     236
0-24 months   MAL-ED           NEPAL                          Wealth Q3                     1        6     236
0-24 months   MAL-ED           PERU                           Wealth Q4                     0       50     272
0-24 months   MAL-ED           PERU                           Wealth Q4                     1       18     272
0-24 months   MAL-ED           PERU                           Wealth Q1                     0       57     272
0-24 months   MAL-ED           PERU                           Wealth Q1                     1       11     272
0-24 months   MAL-ED           PERU                           Wealth Q2                     0       56     272
0-24 months   MAL-ED           PERU                           Wealth Q2                     1       15     272
0-24 months   MAL-ED           PERU                           Wealth Q3                     0       50     272
0-24 months   MAL-ED           PERU                           Wealth Q3                     1       15     272
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                     0       49     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                     1       16     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                     0       49     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                     1       15     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                     0       43     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                     1       21     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                     0       46     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                     1       18     257
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     0       25     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     1       38     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     0       35     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     1       28     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     0       29     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     1       33     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     0       27     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     1       35     250
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4                     0      141     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4                     1       34     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1                     0      153     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1                     1       21     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2                     0      162     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2                     1       14     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3                     0      149     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3                     1       26     700
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     0      515    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     1       78    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     0      656    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     1       63    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     0      436    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     1       47    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     0      540    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     1       49    2384
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4                     0       58     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4                     1       37     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1                     0       80     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1                     1       10     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2                     0       70     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2                     1       23     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3                     0       69     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3                     1       21     368
0-6 months    COHORTS          GUATEMALA                      Wealth Q4                     0      353    1037
0-6 months    COHORTS          GUATEMALA                      Wealth Q4                     1       29    1037
0-6 months    COHORTS          GUATEMALA                      Wealth Q1                     0      171    1037
0-6 months    COHORTS          GUATEMALA                      Wealth Q1                     1       26    1037
0-6 months    COHORTS          GUATEMALA                      Wealth Q2                     0      185    1037
0-6 months    COHORTS          GUATEMALA                      Wealth Q2                     1       20    1037
0-6 months    COHORTS          GUATEMALA                      Wealth Q3                     0      223    1037
0-6 months    COHORTS          GUATEMALA                      Wealth Q3                     1       30    1037
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4                     0      806    3057
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4                     1       37    3057
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1                     0      632    3057
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1                     1       55    3057
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2                     0      505    3057
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2                     1       37    3057
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3                     0      923    3057
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3                     1       62    3057
0-6 months    CONTENT          PERU                           Wealth Q4                     0       48     215
0-6 months    CONTENT          PERU                           Wealth Q4                     1        4     215
0-6 months    CONTENT          PERU                           Wealth Q1                     0       57     215
0-6 months    CONTENT          PERU                           Wealth Q1                     1        2     215
0-6 months    CONTENT          PERU                           Wealth Q2                     0       51     215
0-6 months    CONTENT          PERU                           Wealth Q2                     1        1     215
0-6 months    CONTENT          PERU                           Wealth Q3                     0       51     215
0-6 months    CONTENT          PERU                           Wealth Q3                     1        1     215
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4                     0      163     698
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4                     1       12     698
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1                     0      157     698
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1                     1       18     698
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2                     0      162     698
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2                     1       12     698
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3                     0      156     698
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3                     1       18     698
0-6 months    IRC              INDIA                          Wealth Q4                     0       87     410
0-6 months    IRC              INDIA                          Wealth Q4                     1       13     410
0-6 months    IRC              INDIA                          Wealth Q1                     0       91     410
0-6 months    IRC              INDIA                          Wealth Q1                     1       14     410
0-6 months    IRC              INDIA                          Wealth Q2                     0       78     410
0-6 months    IRC              INDIA                          Wealth Q2                     1       24     410
0-6 months    IRC              INDIA                          Wealth Q3                     0       92     410
0-6 months    IRC              INDIA                          Wealth Q3                     1       11     410
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4                     0     6422   27137
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4                     1      709   27137
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1                     0     5369   27137
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1                     1     1203   27137
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2                     0     5517   27137
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2                     1     1108   27137
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3                     0     5827   27137
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3                     1      982   27137
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4                     0     1175    5117
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4                     1      102    5117
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1                     0     1103    5117
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1                     1      164    5117
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2                     0     1146    5117
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2                     1      126    5117
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3                     0     1174    5117
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3                     1      127    5117
0-6 months    LCNI-5           MALAWI                         Wealth Q4                     0       70     269
0-6 months    LCNI-5           MALAWI                         Wealth Q4                     1        3     269
0-6 months    LCNI-5           MALAWI                         Wealth Q1                     0       59     269
0-6 months    LCNI-5           MALAWI                         Wealth Q1                     1        9     269
0-6 months    LCNI-5           MALAWI                         Wealth Q2                     0       61     269
0-6 months    LCNI-5           MALAWI                         Wealth Q2                     1        3     269
0-6 months    LCNI-5           MALAWI                         Wealth Q3                     0       60     269
0-6 months    LCNI-5           MALAWI                         Wealth Q3                     1        4     269
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4                     0       60     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4                     1        1     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1                     0       54     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1                     1        6     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2                     0       54     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2                     1        7     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3                     0       58     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3                     1        2     242
0-6 months    MAL-ED           BRAZIL                         Wealth Q4                     0       48     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q4                     1        5     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q1                     0       48     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q1                     1        5     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q2                     0       52     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q2                     1        1     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q3                     0       46     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q3                     1        5     210
0-6 months    MAL-ED           INDIA                          Wealth Q4                     0       59     235
0-6 months    MAL-ED           INDIA                          Wealth Q4                     1        0     235
0-6 months    MAL-ED           INDIA                          Wealth Q1                     0       50     235
0-6 months    MAL-ED           INDIA                          Wealth Q1                     1       10     235
0-6 months    MAL-ED           INDIA                          Wealth Q2                     0       51     235
0-6 months    MAL-ED           INDIA                          Wealth Q2                     1        7     235
0-6 months    MAL-ED           INDIA                          Wealth Q3                     0       55     235
0-6 months    MAL-ED           INDIA                          Wealth Q3                     1        3     235
0-6 months    MAL-ED           NEPAL                          Wealth Q4                     0       56     236
0-6 months    MAL-ED           NEPAL                          Wealth Q4                     1        3     236
0-6 months    MAL-ED           NEPAL                          Wealth Q1                     0       55     236
0-6 months    MAL-ED           NEPAL                          Wealth Q1                     1        4     236
0-6 months    MAL-ED           NEPAL                          Wealth Q2                     0       58     236
0-6 months    MAL-ED           NEPAL                          Wealth Q2                     1        1     236
0-6 months    MAL-ED           NEPAL                          Wealth Q3                     0       57     236
0-6 months    MAL-ED           NEPAL                          Wealth Q3                     1        2     236
0-6 months    MAL-ED           PERU                           Wealth Q4                     0       60     272
0-6 months    MAL-ED           PERU                           Wealth Q4                     1        8     272
0-6 months    MAL-ED           PERU                           Wealth Q1                     0       61     272
0-6 months    MAL-ED           PERU                           Wealth Q1                     1        7     272
0-6 months    MAL-ED           PERU                           Wealth Q2                     0       61     272
0-6 months    MAL-ED           PERU                           Wealth Q2                     1       10     272
0-6 months    MAL-ED           PERU                           Wealth Q3                     0       57     272
0-6 months    MAL-ED           PERU                           Wealth Q3                     1        8     272
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4                     0       55     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4                     1       10     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1                     0       56     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1                     1        8     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2                     0       61     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2                     1        3     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3                     0       59     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3                     1        5     257
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     0       56     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     1        7     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     0       51     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     1       12     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     0       53     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     1        9     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     0       55     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     1        7     250
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4                     0      165     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4                     1       10     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1                     0      165     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1                     1        9     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2                     0      172     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2                     1        4     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3                     0      167     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3                     1        8     700
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     0      555    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     1       38    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     0      694    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     1       25    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     0      461    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     1       22    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     0      571    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     1       18    2384


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/34aeb54c-b72c-4f55-b57c-4b859f2a5e34/60d34d10-0966-4735-8413-e450127f9679/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/34aeb54c-b72c-4f55-b57c-4b859f2a5e34/60d34d10-0966-4735-8413-e450127f9679/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/34aeb54c-b72c-4f55-b57c-4b859f2a5e34/60d34d10-0966-4735-8413-e450127f9679/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/34aeb54c-b72c-4f55-b57c-4b859f2a5e34/60d34d10-0966-4735-8413-e450127f9679/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7074119   0.6154605   0.7993634
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5163482   0.4107932   0.6219033
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6578304   0.5598163   0.7558446
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6529742   0.5537867   0.7521618
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.4157382   0.3728988   0.4585776
0-24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.5106782   0.4494686   0.5718879
0-24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.5336463   0.4758986   0.5913939
0-24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.4761689   0.4193546   0.5329831
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.3069092   0.2781311   0.3356873
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                0.3742977   0.3384255   0.4101699
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                0.3594648   0.3206834   0.3982463
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                0.3742665   0.3449106   0.4036223
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2485969   0.1878218   0.3093719
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2262113   0.1661055   0.2863172
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2673258   0.2049997   0.3296520
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2245398   0.1679705   0.2811091
0-24 months   IRC              INDIA                          Wealth Q4            NA                0.2104904   0.1302169   0.2907638
0-24 months   IRC              INDIA                          Wealth Q1            NA                0.2906431   0.2070500   0.3742362
0-24 months   IRC              INDIA                          Wealth Q2            NA                0.3036612   0.2178844   0.3894379
0-24 months   IRC              INDIA                          Wealth Q3            NA                0.2268242   0.1488671   0.3047813
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.1754406   0.1639885   0.1868927
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.1919886   0.1816295   0.2023477
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.1867636   0.1776450   0.1958821
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.1867201   0.1782151   0.1952250
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.1832110   0.1593064   0.2071156
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.2352402   0.2110547   0.2594257
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.2102711   0.1860165   0.2345256
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.1890201   0.1673282   0.2107121
0-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                0.1856525   0.1338083   0.2374967
0-24 months   LCNI-5           MALAWI                         Wealth Q1            NA                0.2489479   0.1890144   0.3088814
0-24 months   LCNI-5           MALAWI                         Wealth Q2            NA                0.2564915   0.1960943   0.3168886
0-24 months   LCNI-5           MALAWI                         Wealth Q3            NA                0.1384343   0.0903231   0.1865455
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                0.1147541   0.0346050   0.1949032
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                0.2000000   0.0985781   0.3014219
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                0.3770492   0.2551760   0.4989224
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                0.1833333   0.0852230   0.2814437
0-24 months   MAL-ED           INDIA                          Wealth Q4            NA                0.1793535   0.0791232   0.2795839
0-24 months   MAL-ED           INDIA                          Wealth Q1            NA                0.2913918   0.1745072   0.4082764
0-24 months   MAL-ED           INDIA                          Wealth Q2            NA                0.2668779   0.1498366   0.3839192
0-24 months   MAL-ED           INDIA                          Wealth Q3            NA                0.2206843   0.1111737   0.3301949
0-24 months   MAL-ED           PERU                           Wealth Q4            NA                0.2572014   0.1563847   0.3580181
0-24 months   MAL-ED           PERU                           Wealth Q1            NA                0.1764499   0.0940482   0.2588515
0-24 months   MAL-ED           PERU                           Wealth Q2            NA                0.1958638   0.1067040   0.2850235
0-24 months   MAL-ED           PERU                           Wealth Q3            NA                0.2452564   0.1472612   0.3432517
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.2461459   0.1384789   0.3538129
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.2371915   0.1323925   0.3419905
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.3216265   0.2034966   0.4397564
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.2810069   0.1681968   0.3938170
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.5959416   0.4753293   0.7165538
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.4362514   0.3126144   0.5598884
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.5166800   0.3928533   0.6405067
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.5599743   0.4384868   0.6814618
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.1661839   0.1138360   0.2185318
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.1324840   0.0761017   0.1888664
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.0792110   0.0385576   0.1198644
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.1418583   0.0892000   0.1945166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1264018   0.0994606   0.1533430
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0891308   0.0686932   0.1095684
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0973396   0.0707165   0.1239628
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0823351   0.0600809   0.1045892
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.3683134   0.2689770   0.4676497
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1107328   0.0444453   0.1770204
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2376525   0.1481407   0.3271643
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2240303   0.1347192   0.3133415
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                0.0749069   0.0486722   0.1011415
0-6 months    COHORTS          GUATEMALA                      Wealth Q1            NA                0.1517558   0.1033156   0.2001960
0-6 months    COHORTS          GUATEMALA                      Wealth Q2            NA                0.0911016   0.0509642   0.1312390
0-6 months    COHORTS          GUATEMALA                      Wealth Q3            NA                0.1191804   0.0791705   0.1591903
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0506780   0.0357918   0.0655643
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0777779   0.0571452   0.0984106
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0704412   0.0470231   0.0938593
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0608167   0.0453797   0.0762536
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0673444   0.0296112   0.1050776
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0912022   0.0505013   0.1319032
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0680812   0.0306509   0.1055115
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1049746   0.0587998   0.1511495
0-6 months    IRC              INDIA                          Wealth Q4            NA                0.1232119   0.0574272   0.1889965
0-6 months    IRC              INDIA                          Wealth Q1            NA                0.1259124   0.0625795   0.1892452
0-6 months    IRC              INDIA                          Wealth Q2            NA                0.2206834   0.1432819   0.2980848
0-6 months    IRC              INDIA                          Wealth Q3            NA                0.1132278   0.0496209   0.1768348
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.1398529   0.1306481   0.1490576
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.1594284   0.1501895   0.1686673
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.1518242   0.1440462   0.1596023
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.1448781   0.1374872   0.1522690
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.1067295   0.0905009   0.1229580
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.1164476   0.1015745   0.1313206
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.0973658   0.0809040   0.1138277
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.0935033   0.0789848   0.1080217
0-6 months    MAL-ED           PERU                           Wealth Q4            NA                0.1176471   0.0409277   0.1943664
0-6 months    MAL-ED           PERU                           Wealth Q1            NA                0.1029412   0.0305812   0.1753012
0-6 months    MAL-ED           PERU                           Wealth Q2            NA                0.1408451   0.0597816   0.2219086
0-6 months    MAL-ED           PERU                           Wealth Q3            NA                0.1230769   0.0430640   0.2030899
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1111111   0.0333521   0.1888701
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1904762   0.0933171   0.2876353
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1451613   0.0573015   0.2330211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1129032   0.0339697   0.1918367
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0637764   0.0442403   0.0833125
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0355179   0.0222594   0.0487764
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0459797   0.0273383   0.0646211
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0318718   0.0179339   0.0458097


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6353887   0.5864772   0.6843003
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4726135   0.4452311   0.4999958
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.3562316   0.3392530   0.3732102
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2421203   0.2103189   0.2739218
0-24 months   IRC              INDIA                          NA                   NA                0.2487805   0.2068840   0.2906770
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1845385   0.1789329   0.1901441
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.2034648   0.1916516   0.2152780
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.2080783   0.1802263   0.2359304
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.2190083   0.1667935   0.2712230
0-24 months   MAL-ED           INDIA                          NA                   NA                0.2468085   0.1915661   0.3020510
0-24 months   MAL-ED           PERU                           NA                   NA                0.2169118   0.1678424   0.2659811
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2723735   0.2178399   0.3269072
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5360000   0.4740573   0.5979427
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1357143   0.1103250   0.1611036
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0994128   0.0873992   0.1114263
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.2472826   0.2031431   0.2914222
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.1012536   0.0828843   0.1196229
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0624796   0.0538987   0.0710604
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.0859599   0.0651504   0.1067694
0-6 months    IRC              INDIA                          NA                   NA                0.1512195   0.1164988   0.1859402
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1474739   0.1424227   0.1525252
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.1014266   0.0924810   0.1103722
0-6 months    MAL-ED           PERU                           NA                   NA                0.1213235   0.0824503   0.1601967
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1400000   0.0969015   0.1830985
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0432047   0.0350415   0.0513679


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.7299117   0.5727830   0.9301447
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9299114   0.7631030   1.1331829
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9230467   0.7558393   1.1272439
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2283650   1.0513708   1.4351555
0-24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2836114   1.1091164   1.4855593
0-24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1453575   0.9811252   1.3370810
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.2195714   1.0695915   1.3905818
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.1712415   1.0185340   1.3468443
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.2194695   1.0827347   1.3734721
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9099525   0.6387992   1.2962031
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0753387   0.7719354   1.4979924
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9032286   0.6414617   1.2718169
0-24 months   IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         1.3807906   0.8590022   2.2195318
0-24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         1.4426368   0.9007679   2.3104741
0-24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         1.0775989   0.6478470   1.7924285
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.0943227   1.0130366   1.1821313
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.0645405   0.9895599   1.1452025
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.0642924   0.9930695   1.1406234
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.2839852   1.0942046   1.5066816
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.1476990   0.9726576   1.3542412
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.0317075   0.8744348   1.2172667
0-24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.3409346   0.9276444   1.9383565
0-24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.3815673   0.9583617   1.9916575
0-24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.7456635   0.4779228   1.1633974
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         1.7428571   0.7352116   4.1315329
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         3.2857143   1.5219238   7.0935998
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         1.5976190   0.6627391   3.8512693
0-24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         1.6246787   0.8168804   3.2312940
0-24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         1.4879993   0.7331685   3.0199635
0-24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         1.2304432   0.5847076   2.5893120
0-24 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4         0.6860377   0.3803095   1.2375388
0-24 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         0.7615190   0.4246275   1.3656938
0-24 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4         0.9535579   0.5530249   1.6441803
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         0.9636217   0.5182911   1.7915931
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.3066498   0.7376827   2.3144554
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         1.1416273   0.6314028   2.0641546
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7320373   0.5179857   1.0345432
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8669978   0.6361061   1.1816978
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9396464   0.7006362   1.2601909
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         0.7972134   0.4700033   1.3522229
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.4766464   0.2610235   0.8703883
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         0.8536223   0.5252891   1.3871810
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7051385   0.5160703   0.9634740
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7700812   0.5447097   1.0886993
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.6513757   0.4619888   0.9183997
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.3006484   0.1560600   0.5791970
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.6452454   0.4059857   1.0255081
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.6082602   0.3760578   0.9838392
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         2.0259254   1.2644365   3.2460100
0-6 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2161981   0.6951937   2.1276629
0-6 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.5910467   0.9810073   2.5804391
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.5347456   1.0337422   2.2785603
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.3899746   0.8924160   2.1649426
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.2000595   0.8139976   1.7692223
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.3542665   0.6613647   2.7731110
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0109410   0.4608106   2.2178346
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.5587732   0.7641950   3.1795210
0-6 months    IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          Wealth Q1            Wealth Q4         1.0219175   0.4900223   2.1311591
0-6 months    IRC              INDIA                          Wealth Q2            Wealth Q4         1.7910886   0.9430958   3.4015613
0-6 months    IRC              INDIA                          Wealth Q3            Wealth Q4         0.9189685   0.4231957   1.9955378
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.1399725   1.0556197   1.2310658
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.0855998   1.0102253   1.1665981
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.0359325   0.9671547   1.1096013
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.0910535   0.9103871   1.3075733
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         0.9122674   0.7366149   1.1298059
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         0.8760774   0.7209682   1.0645568
0-6 months    MAL-ED           PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           PERU                           Wealth Q1            Wealth Q4         0.8750000   0.3354229   2.2825660
0-6 months    MAL-ED           PERU                           Wealth Q2            Wealth Q4         1.1971831   0.5016735   2.8569328
0-6 months    MAL-ED           PERU                           Wealth Q3            Wealth Q4         1.0461538   0.4165748   2.6272303
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.7142857   0.7210837   4.0754987
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.3064516   0.5179166   3.2955420
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.0161290   0.3778677   2.7324859
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.5569131   0.3442343   0.9009916
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7209524   0.4338425   1.1980668
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.4997434   0.2933463   0.8513608


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0720232   -0.1530186    0.0089723
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0568753    0.0235849    0.0901657
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0493224    0.0242458    0.0743989
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0064765   -0.0580333    0.0450802
0-24 months   IRC              INDIA                          Wealth Q4            NA                 0.0382901   -0.0321656    0.1087458
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0090979   -0.0005043    0.0187001
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0202538   -0.0015533    0.0420609
0-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0224258   -0.0225791    0.0674307
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.1042542    0.0273661    0.1811422
0-24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0674550   -0.0225326    0.1574426
0-24 months   MAL-ED           PERU                           Wealth Q4            NA                -0.0402896   -0.1231134    0.0425341
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.0262276   -0.0678030    0.1202582
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0599416   -0.1637379    0.0438548
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0304696   -0.0739058    0.0129665
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0269890   -0.0494954   -0.0044827
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1210307   -0.2037097   -0.0383518
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0263467    0.0038187    0.0488747
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0118015   -0.0017997    0.0254027
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0186155   -0.0155713    0.0528023
0-6 months    IRC              INDIA                          Wealth Q4            NA                 0.0280077   -0.0310065    0.0870218
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0076211    0.0002485    0.0149936
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0053029   -0.0189391    0.0083334
0-6 months    MAL-ED           PERU                           Wealth Q4            NA                 0.0036765   -0.0630623    0.0704152
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0288889   -0.0407999    0.0985776
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0205717   -0.0365728   -0.0045706


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1133529   -0.2493576    0.0078463
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1203420    0.0467273    0.1882720
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1384559    0.0655193    0.2056998
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0267492   -0.2633814    0.1655616
0-24 months   IRC              INDIA                          Wealth Q4            NA                 0.1539113   -0.1824198    0.3945753
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0493008   -0.0043164    0.1000556
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0995446   -0.0138967    0.2002933
0-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.1077758   -0.1367632    0.2997099
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.4760285    0.0014882    0.7250446
0-24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.2733091   -0.1974494    0.5589962
0-24 months   MAL-ED           PERU                           Wealth Q4            NA                -0.1857420   -0.6330074    0.1390216
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.0962929   -0.3243113    0.3833122
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1118313   -0.3239569    0.0663074
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.2245131   -0.5886998    0.0561890
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.2714847   -0.5166803   -0.0659290
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.4894430   -0.8623421   -0.1912100
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2602053    0.0059764    0.4494132
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1888861   -0.0574411    0.3778322
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2165604   -0.2964173    0.5265586
0-6 months    IRC              INDIA                          Wealth Q4            NA                 0.1852119   -0.3130934    0.4944155
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0516774    0.0001895    0.1005138
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0522826   -0.1958393    0.0740405
0-6 months    MAL-ED           PERU                           Wealth Q4            NA                 0.0303030   -0.7099137    0.4500821
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2063492   -0.4803640    0.5745090
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.4761445   -0.8849202   -0.1560184
