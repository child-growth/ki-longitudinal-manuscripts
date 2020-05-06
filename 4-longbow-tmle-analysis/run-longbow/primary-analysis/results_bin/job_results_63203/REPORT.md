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

agecat        studyid          country                        hhwealth_quart    ever_sstunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  ---------------  --------------  -------  ------  -----------------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                     0       28     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                     1       68     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                     0       44     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                     1       47     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                     0       32     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                     1       63     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                     0       32     373  ever_sstunted    
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                     1       59     373  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      Wealth Q4                     0      291    1278  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      Wealth Q4                     1      194    1278  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      Wealth Q1                     0      112    1278  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      Wealth Q1                     1      133    1278  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      Wealth Q2                     0      117    1278  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      Wealth Q2                     1      143    1278  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      Wealth Q3                     0      154    1278  ever_sstunted    
0-24 months   COHORTS          GUATEMALA                      Wealth Q3                     1      134    1278  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4                     0      635    3057  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4                     1      208    3057  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1                     0      416    3057  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1                     1      271    3057  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2                     0      331    3057  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2                     1      211    3057  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3                     0      586    3057  ever_sstunted    
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3                     1      399    3057  ever_sstunted    
0-24 months   CONTENT          PERU                           Wealth Q4                     0       48     215  ever_sstunted    
0-24 months   CONTENT          PERU                           Wealth Q4                     1        4     215  ever_sstunted    
0-24 months   CONTENT          PERU                           Wealth Q1                     0       55     215  ever_sstunted    
0-24 months   CONTENT          PERU                           Wealth Q1                     1        4     215  ever_sstunted    
0-24 months   CONTENT          PERU                           Wealth Q2                     0       51     215  ever_sstunted    
0-24 months   CONTENT          PERU                           Wealth Q2                     1        1     215  ever_sstunted    
0-24 months   CONTENT          PERU                           Wealth Q3                     0       51     215  ever_sstunted    
0-24 months   CONTENT          PERU                           Wealth Q3                     1        1     215  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4                     0      133     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4                     1       42     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1                     0      132     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1                     1       43     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2                     0      130     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2                     1       44     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3                     0      134     698  ever_sstunted    
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3                     1       40     698  ever_sstunted    
0-24 months   IRC              INDIA                          Wealth Q4                     0       79     410  ever_sstunted    
0-24 months   IRC              INDIA                          Wealth Q4                     1       21     410  ever_sstunted    
0-24 months   IRC              INDIA                          Wealth Q1                     0       77     410  ever_sstunted    
0-24 months   IRC              INDIA                          Wealth Q1                     1       28     410  ever_sstunted    
0-24 months   IRC              INDIA                          Wealth Q2                     0       71     410  ever_sstunted    
0-24 months   IRC              INDIA                          Wealth Q2                     1       31     410  ever_sstunted    
0-24 months   IRC              INDIA                          Wealth Q3                     0       81     410  ever_sstunted    
0-24 months   IRC              INDIA                          Wealth Q3                     1       22     410  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                     0     6240   27203  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                     1      917   27203  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                     0     5110   27203  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                     1     1476   27203  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                     0     5283   27203  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                     1     1359   27203  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                     0     5550   27203  ever_sstunted    
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                     1     1268   27203  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                     0     1161    5426  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                     1      189    5426  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                     0     1012    5426  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                     1      360    5426  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                     0     1049    5426  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                     1      294    5426  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                     0     1100    5426  ever_sstunted    
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                     1      261    5426  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         Wealth Q4                     0      176     817  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         Wealth Q4                     1       41     817  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         Wealth Q1                     0      153     817  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         Wealth Q1                     1       51     817  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         Wealth Q2                     0      149     817  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         Wealth Q2                     1       50     817  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         Wealth Q3                     0      169     817  ever_sstunted    
0-24 months   LCNI-5           MALAWI                         Wealth Q3                     1       28     817  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4                     0       54     242  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4                     1        7     242  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1                     0       48     242  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1                     1       12     242  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2                     0       38     242  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2                     1       23     242  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3                     0       49     242  ever_sstunted    
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3                     1       11     242  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         Wealth Q4                     0       47     210  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         Wealth Q4                     1        6     210  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         Wealth Q1                     0       48     210  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         Wealth Q1                     1        5     210  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         Wealth Q2                     0       49     210  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         Wealth Q2                     1        4     210  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         Wealth Q3                     0       45     210  ever_sstunted    
0-24 months   MAL-ED           BRAZIL                         Wealth Q3                     1        6     210  ever_sstunted    
0-24 months   MAL-ED           INDIA                          Wealth Q4                     0       48     235  ever_sstunted    
0-24 months   MAL-ED           INDIA                          Wealth Q4                     1       11     235  ever_sstunted    
0-24 months   MAL-ED           INDIA                          Wealth Q1                     0       42     235  ever_sstunted    
0-24 months   MAL-ED           INDIA                          Wealth Q1                     1       18     235  ever_sstunted    
0-24 months   MAL-ED           INDIA                          Wealth Q2                     0       42     235  ever_sstunted    
0-24 months   MAL-ED           INDIA                          Wealth Q2                     1       16     235  ever_sstunted    
0-24 months   MAL-ED           INDIA                          Wealth Q3                     0       45     235  ever_sstunted    
0-24 months   MAL-ED           INDIA                          Wealth Q3                     1       13     235  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          Wealth Q4                     0       52     236  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          Wealth Q4                     1        7     236  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          Wealth Q1                     0       54     236  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          Wealth Q1                     1        5     236  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          Wealth Q2                     0       56     236  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          Wealth Q2                     1        3     236  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          Wealth Q3                     0       53     236  ever_sstunted    
0-24 months   MAL-ED           NEPAL                          Wealth Q3                     1        6     236  ever_sstunted    
0-24 months   MAL-ED           PERU                           Wealth Q4                     0       50     272  ever_sstunted    
0-24 months   MAL-ED           PERU                           Wealth Q4                     1       18     272  ever_sstunted    
0-24 months   MAL-ED           PERU                           Wealth Q1                     0       57     272  ever_sstunted    
0-24 months   MAL-ED           PERU                           Wealth Q1                     1       11     272  ever_sstunted    
0-24 months   MAL-ED           PERU                           Wealth Q2                     0       56     272  ever_sstunted    
0-24 months   MAL-ED           PERU                           Wealth Q2                     1       15     272  ever_sstunted    
0-24 months   MAL-ED           PERU                           Wealth Q3                     0       50     272  ever_sstunted    
0-24 months   MAL-ED           PERU                           Wealth Q3                     1       15     272  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                     0       49     257  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                     1       16     257  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                     0       49     257  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                     1       15     257  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                     0       43     257  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                     1       21     257  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                     0       46     257  ever_sstunted    
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                     1       18     257  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     0       25     250  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     1       38     250  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     0       35     250  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     1       28     250  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     0       29     250  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     1       33     250  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     0       27     250  ever_sstunted    
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     1       35     250  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4                     0      141     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4                     1       34     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1                     0      153     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1                     1       21     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2                     0      162     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2                     1       14     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3                     0      149     700  ever_sstunted    
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3                     1       26     700  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     0      515    2384  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     1       78    2384  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     0      656    2384  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     1       63    2384  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     0      436    2384  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     1       47    2384  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     0      540    2384  ever_sstunted    
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     1       49    2384  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4                     0       58     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4                     1       37     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1                     0       80     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1                     1       10     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2                     0       70     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2                     1       23     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3                     0       69     368  ever_sstunted    
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3                     1       21     368  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      Wealth Q4                     0      353    1037  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      Wealth Q4                     1       29    1037  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      Wealth Q1                     0      171    1037  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      Wealth Q1                     1       26    1037  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      Wealth Q2                     0      185    1037  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      Wealth Q2                     1       20    1037  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      Wealth Q3                     0      223    1037  ever_sstunted    
0-6 months    COHORTS          GUATEMALA                      Wealth Q3                     1       30    1037  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4                     0      806    3057  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4                     1       37    3057  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1                     0      632    3057  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1                     1       55    3057  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2                     0      505    3057  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2                     1       37    3057  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3                     0      923    3057  ever_sstunted    
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3                     1       62    3057  ever_sstunted    
0-6 months    CONTENT          PERU                           Wealth Q4                     0       48     215  ever_sstunted    
0-6 months    CONTENT          PERU                           Wealth Q4                     1        4     215  ever_sstunted    
0-6 months    CONTENT          PERU                           Wealth Q1                     0       57     215  ever_sstunted    
0-6 months    CONTENT          PERU                           Wealth Q1                     1        2     215  ever_sstunted    
0-6 months    CONTENT          PERU                           Wealth Q2                     0       51     215  ever_sstunted    
0-6 months    CONTENT          PERU                           Wealth Q2                     1        1     215  ever_sstunted    
0-6 months    CONTENT          PERU                           Wealth Q3                     0       51     215  ever_sstunted    
0-6 months    CONTENT          PERU                           Wealth Q3                     1        1     215  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4                     0      163     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4                     1       12     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1                     0      157     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1                     1       18     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2                     0      162     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2                     1       12     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3                     0      156     698  ever_sstunted    
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3                     1       18     698  ever_sstunted    
0-6 months    IRC              INDIA                          Wealth Q4                     0       87     410  ever_sstunted    
0-6 months    IRC              INDIA                          Wealth Q4                     1       13     410  ever_sstunted    
0-6 months    IRC              INDIA                          Wealth Q1                     0       91     410  ever_sstunted    
0-6 months    IRC              INDIA                          Wealth Q1                     1       14     410  ever_sstunted    
0-6 months    IRC              INDIA                          Wealth Q2                     0       78     410  ever_sstunted    
0-6 months    IRC              INDIA                          Wealth Q2                     1       24     410  ever_sstunted    
0-6 months    IRC              INDIA                          Wealth Q3                     0       92     410  ever_sstunted    
0-6 months    IRC              INDIA                          Wealth Q3                     1       11     410  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4                     0     6422   27137  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4                     1      709   27137  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1                     0     5369   27137  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1                     1     1203   27137  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2                     0     5517   27137  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2                     1     1108   27137  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3                     0     5827   27137  ever_sstunted    
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3                     1      982   27137  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4                     0     1175    5117  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4                     1      102    5117  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1                     0     1103    5117  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1                     1      164    5117  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2                     0     1146    5117  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2                     1      126    5117  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3                     0     1174    5117  ever_sstunted    
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3                     1      127    5117  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         Wealth Q4                     0       70     269  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         Wealth Q4                     1        3     269  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         Wealth Q1                     0       59     269  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         Wealth Q1                     1        9     269  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         Wealth Q2                     0       61     269  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         Wealth Q2                     1        3     269  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         Wealth Q3                     0       60     269  ever_sstunted    
0-6 months    LCNI-5           MALAWI                         Wealth Q3                     1        4     269  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4                     0       60     242  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4                     1        1     242  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1                     0       54     242  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1                     1        6     242  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2                     0       54     242  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2                     1        7     242  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3                     0       58     242  ever_sstunted    
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3                     1        2     242  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         Wealth Q4                     0       48     210  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         Wealth Q4                     1        5     210  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         Wealth Q1                     0       48     210  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         Wealth Q1                     1        5     210  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         Wealth Q2                     0       52     210  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         Wealth Q2                     1        1     210  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         Wealth Q3                     0       46     210  ever_sstunted    
0-6 months    MAL-ED           BRAZIL                         Wealth Q3                     1        5     210  ever_sstunted    
0-6 months    MAL-ED           INDIA                          Wealth Q4                     0       59     235  ever_sstunted    
0-6 months    MAL-ED           INDIA                          Wealth Q4                     1        0     235  ever_sstunted    
0-6 months    MAL-ED           INDIA                          Wealth Q1                     0       50     235  ever_sstunted    
0-6 months    MAL-ED           INDIA                          Wealth Q1                     1       10     235  ever_sstunted    
0-6 months    MAL-ED           INDIA                          Wealth Q2                     0       51     235  ever_sstunted    
0-6 months    MAL-ED           INDIA                          Wealth Q2                     1        7     235  ever_sstunted    
0-6 months    MAL-ED           INDIA                          Wealth Q3                     0       55     235  ever_sstunted    
0-6 months    MAL-ED           INDIA                          Wealth Q3                     1        3     235  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          Wealth Q4                     0       56     236  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          Wealth Q4                     1        3     236  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          Wealth Q1                     0       55     236  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          Wealth Q1                     1        4     236  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          Wealth Q2                     0       58     236  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          Wealth Q2                     1        1     236  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          Wealth Q3                     0       57     236  ever_sstunted    
0-6 months    MAL-ED           NEPAL                          Wealth Q3                     1        2     236  ever_sstunted    
0-6 months    MAL-ED           PERU                           Wealth Q4                     0       60     272  ever_sstunted    
0-6 months    MAL-ED           PERU                           Wealth Q4                     1        8     272  ever_sstunted    
0-6 months    MAL-ED           PERU                           Wealth Q1                     0       61     272  ever_sstunted    
0-6 months    MAL-ED           PERU                           Wealth Q1                     1        7     272  ever_sstunted    
0-6 months    MAL-ED           PERU                           Wealth Q2                     0       61     272  ever_sstunted    
0-6 months    MAL-ED           PERU                           Wealth Q2                     1       10     272  ever_sstunted    
0-6 months    MAL-ED           PERU                           Wealth Q3                     0       57     272  ever_sstunted    
0-6 months    MAL-ED           PERU                           Wealth Q3                     1        8     272  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4                     0       55     257  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4                     1       10     257  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1                     0       56     257  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1                     1        8     257  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2                     0       61     257  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2                     1        3     257  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3                     0       59     257  ever_sstunted    
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3                     1        5     257  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     0       56     250  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     1        7     250  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     0       51     250  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     1       12     250  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     0       53     250  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     1        9     250  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     0       55     250  ever_sstunted    
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     1        7     250  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4                     0      165     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4                     1       10     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1                     0      165     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1                     1        9     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2                     0      172     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2                     1        4     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3                     0      167     700  ever_sstunted    
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3                     1        8     700  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     0      555    2384  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                     1       38    2384  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     0      694    2384  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                     1       25    2384  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     0      461    2384  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                     1       22    2384  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     0      571    2384  ever_sstunted    
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                     1       18    2384  ever_sstunted    


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
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_glmnet_NULL_deviance_10_1_100_TRUE failed with message: Error in glmnet(x, y, weights = weights, offset = offset, lambda = lambda, : x should be a matrix with 2 or more columns
## . It will be removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The following
## learners failed for one or more folds and will be dropped from all folds:
## Lrnr_glmnet_NULL_deviance_10_1_100_TRUE
```




<!-- # Results Detail -->

<!-- ## Results Plots -->
<!-- ```{r plot_tsm, warning=FALSE, message=FALSE} -->
<!-- tsm_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_rr, warning=FALSE, message=FALSE} -->
<!-- rr_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_ate, warning=FALSE, message=FALSE} -->
<!-- ate_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_paf, warning=FALSE, message=FALSE} -->
<!-- paf_plot(formatted_results) -->
<!-- ``` -->

<!-- ```{r plot_par, warning=FALSE, message=FALSE} -->
<!-- par_plot(formatted_results) -->
<!-- ``` -->

<!-- ## Results Table -->
<!-- ```{r results_tables, results="asis"} -->
<!-- parameter_types <- unique(formatted_results$type) -->
<!-- for(parameter_type in parameter_types){ -->
<!--   cat(sprintf("\n\n### Parameter: %s\n", parameter_type)) -->
<!--   print_cols <- c(nodes$strata, "intervention_level", "baseline_level",  -->
<!--                   "estimate", "ci_lower", "ci_upper") -->
<!--   subset <- formatted_results[type==parameter_type, print_cols, with=FALSE] -->

<!--   k <- kable(subset) -->
<!--   print(k) -->
<!-- } -->
<!-- ``` -->
