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
* delta_sex
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

agecat        studyid          country                        hhwealth_quart    ever_stunted   n_cell       n  outcome_variable 
------------  ---------------  -----------------------------  ---------------  -------------  -------  ------  -----------------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                    0        6     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       90     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                    0        6     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       85     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                    0        8     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       87     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                    0        8     373  ever_stunted     
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       83     373  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      Wealth Q4                    0      130    1278  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      Wealth Q4                    1      355    1278  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      Wealth Q1                    0       47    1278  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      Wealth Q1                    1      198    1278  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      Wealth Q2                    0       45    1278  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      Wealth Q2                    1      215    1278  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      Wealth Q3                    0       70    1278  ever_stunted     
0-24 months   COHORTS          GUATEMALA                      Wealth Q3                    1      218    1278  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4                    0      370    3057  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4                    1      473    3057  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1                    0      195    3057  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1                    1      492    3057  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2                    0      157    3057  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2                    1      385    3057  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3                    0      236    3057  ever_stunted     
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3                    1      749    3057  ever_stunted     
0-24 months   CONTENT          PERU                           Wealth Q4                    0       44     215  ever_stunted     
0-24 months   CONTENT          PERU                           Wealth Q4                    1        8     215  ever_stunted     
0-24 months   CONTENT          PERU                           Wealth Q1                    0       42     215  ever_stunted     
0-24 months   CONTENT          PERU                           Wealth Q1                    1       17     215  ever_stunted     
0-24 months   CONTENT          PERU                           Wealth Q2                    0       35     215  ever_stunted     
0-24 months   CONTENT          PERU                           Wealth Q2                    1       17     215  ever_stunted     
0-24 months   CONTENT          PERU                           Wealth Q3                    0       41     215  ever_stunted     
0-24 months   CONTENT          PERU                           Wealth Q3                    1       11     215  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4                    0       65     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4                    1      110     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1                    0       60     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1                    1      115     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2                    0       56     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2                    1      118     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3                    0       71     698  ever_stunted     
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3                    1      103     698  ever_stunted     
0-24 months   IRC              INDIA                          Wealth Q4                    0       48     410  ever_stunted     
0-24 months   IRC              INDIA                          Wealth Q4                    1       52     410  ever_stunted     
0-24 months   IRC              INDIA                          Wealth Q1                    0       34     410  ever_stunted     
0-24 months   IRC              INDIA                          Wealth Q1                    1       71     410  ever_stunted     
0-24 months   IRC              INDIA                          Wealth Q2                    0       32     410  ever_stunted     
0-24 months   IRC              INDIA                          Wealth Q2                    1       70     410  ever_stunted     
0-24 months   IRC              INDIA                          Wealth Q3                    0       33     410  ever_stunted     
0-24 months   IRC              INDIA                          Wealth Q3                    1       70     410  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                    0     4308   27203  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                    1     2849   27203  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                    0     2888   27203  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                    1     3698   27203  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                    0     3091   27203  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                    1     3551   27203  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                    0     3439   27203  ever_stunted     
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                    1     3379   27203  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                    0      682    5426  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                    1      668    5426  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                    0      498    5426  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                    1      874    5426  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                    0      506    5426  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                    1      837    5426  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                    0      583    5426  ever_stunted     
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                    1      778    5426  ever_stunted     
0-24 months   LCNI-5           MALAWI                         Wealth Q4                    0       84     817  ever_stunted     
0-24 months   LCNI-5           MALAWI                         Wealth Q4                    1      133     817  ever_stunted     
0-24 months   LCNI-5           MALAWI                         Wealth Q1                    0       80     817  ever_stunted     
0-24 months   LCNI-5           MALAWI                         Wealth Q1                    1      124     817  ever_stunted     
0-24 months   LCNI-5           MALAWI                         Wealth Q2                    0       72     817  ever_stunted     
0-24 months   LCNI-5           MALAWI                         Wealth Q2                    1      127     817  ever_stunted     
0-24 months   LCNI-5           MALAWI                         Wealth Q3                    0       60     817  ever_stunted     
0-24 months   LCNI-5           MALAWI                         Wealth Q3                    1      137     817  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4                    0       30     242  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4                    1       31     242  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1                    0       24     242  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1                    1       36     242  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2                    0       17     242  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2                    1       44     242  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3                    0       22     242  ever_stunted     
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3                    1       38     242  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         Wealth Q4                    0       38     210  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         Wealth Q4                    1       15     210  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         Wealth Q1                    0       39     210  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         Wealth Q1                    1       14     210  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         Wealth Q2                    0       41     210  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         Wealth Q2                    1       12     210  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         Wealth Q3                    0       36     210  ever_stunted     
0-24 months   MAL-ED           BRAZIL                         Wealth Q3                    1       15     210  ever_stunted     
0-24 months   MAL-ED           INDIA                          Wealth Q4                    0       21     235  ever_stunted     
0-24 months   MAL-ED           INDIA                          Wealth Q4                    1       38     235  ever_stunted     
0-24 months   MAL-ED           INDIA                          Wealth Q1                    0       24     235  ever_stunted     
0-24 months   MAL-ED           INDIA                          Wealth Q1                    1       36     235  ever_stunted     
0-24 months   MAL-ED           INDIA                          Wealth Q2                    0       22     235  ever_stunted     
0-24 months   MAL-ED           INDIA                          Wealth Q2                    1       36     235  ever_stunted     
0-24 months   MAL-ED           INDIA                          Wealth Q3                    0       22     235  ever_stunted     
0-24 months   MAL-ED           INDIA                          Wealth Q3                    1       36     235  ever_stunted     
0-24 months   MAL-ED           NEPAL                          Wealth Q4                    0       41     236  ever_stunted     
0-24 months   MAL-ED           NEPAL                          Wealth Q4                    1       18     236  ever_stunted     
0-24 months   MAL-ED           NEPAL                          Wealth Q1                    0       39     236  ever_stunted     
0-24 months   MAL-ED           NEPAL                          Wealth Q1                    1       20     236  ever_stunted     
0-24 months   MAL-ED           NEPAL                          Wealth Q2                    0       41     236  ever_stunted     
0-24 months   MAL-ED           NEPAL                          Wealth Q2                    1       18     236  ever_stunted     
0-24 months   MAL-ED           NEPAL                          Wealth Q3                    0       33     236  ever_stunted     
0-24 months   MAL-ED           NEPAL                          Wealth Q3                    1       26     236  ever_stunted     
0-24 months   MAL-ED           PERU                           Wealth Q4                    0       19     272  ever_stunted     
0-24 months   MAL-ED           PERU                           Wealth Q4                    1       49     272  ever_stunted     
0-24 months   MAL-ED           PERU                           Wealth Q1                    0       31     272  ever_stunted     
0-24 months   MAL-ED           PERU                           Wealth Q1                    1       37     272  ever_stunted     
0-24 months   MAL-ED           PERU                           Wealth Q2                    0       20     272  ever_stunted     
0-24 months   MAL-ED           PERU                           Wealth Q2                    1       51     272  ever_stunted     
0-24 months   MAL-ED           PERU                           Wealth Q3                    0       21     272  ever_stunted     
0-24 months   MAL-ED           PERU                           Wealth Q3                    1       44     272  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                    0       32     257  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                    1       33     257  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                    0       19     257  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                    1       45     257  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                    0       25     257  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                    1       39     257  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                    0       22     257  ever_stunted     
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                    1       42     257  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0        4     250  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       59     250  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       13     250  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       50     250  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0        9     250  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       53     250  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0        8     250  ever_stunted     
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       54     250  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4                    0       87     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4                    1       88     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1                    0      105     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1                    1       69     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2                    0      112     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2                    1       64     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3                    0       91     700  ever_stunted     
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3                    1       84     700  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      361    2384  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1      232    2384  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      498    2384  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1      221    2384  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      310    2384  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1      173    2384  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      388    2384  ever_stunted     
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1      201    2384  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       31     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       64     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       55     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       35     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       46     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       47     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       48     368  ever_stunted     
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       42     368  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      Wealth Q4                    0      277    1037  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      Wealth Q4                    1      105    1037  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      Wealth Q1                    0      127    1037  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      Wealth Q1                    1       70    1037  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      Wealth Q2                    0      132    1037  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      Wealth Q2                    1       73    1037  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      Wealth Q3                    0      165    1037  ever_stunted     
0-6 months    COHORTS          GUATEMALA                      Wealth Q3                    1       88    1037  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4                    0      689    3057  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4                    1      154    3057  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1                    0      506    3057  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1                    1      181    3057  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2                    0      398    3057  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2                    1      144    3057  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3                    0      733    3057  ever_stunted     
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3                    1      252    3057  ever_stunted     
0-6 months    CONTENT          PERU                           Wealth Q4                    0       47     215  ever_stunted     
0-6 months    CONTENT          PERU                           Wealth Q4                    1        5     215  ever_stunted     
0-6 months    CONTENT          PERU                           Wealth Q1                    0       52     215  ever_stunted     
0-6 months    CONTENT          PERU                           Wealth Q1                    1        7     215  ever_stunted     
0-6 months    CONTENT          PERU                           Wealth Q2                    0       41     215  ever_stunted     
0-6 months    CONTENT          PERU                           Wealth Q2                    1       11     215  ever_stunted     
0-6 months    CONTENT          PERU                           Wealth Q3                    0       48     215  ever_stunted     
0-6 months    CONTENT          PERU                           Wealth Q3                    1        4     215  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4                    0      123     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4                    1       52     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1                    0      116     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1                    1       59     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2                    0      116     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2                    1       58     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3                    0      121     698  ever_stunted     
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3                    1       53     698  ever_stunted     
0-6 months    IRC              INDIA                          Wealth Q4                    0       60     410  ever_stunted     
0-6 months    IRC              INDIA                          Wealth Q4                    1       40     410  ever_stunted     
0-6 months    IRC              INDIA                          Wealth Q1                    0       61     410  ever_stunted     
0-6 months    IRC              INDIA                          Wealth Q1                    1       44     410  ever_stunted     
0-6 months    IRC              INDIA                          Wealth Q2                    0       51     410  ever_stunted     
0-6 months    IRC              INDIA                          Wealth Q2                    1       51     410  ever_stunted     
0-6 months    IRC              INDIA                          Wealth Q3                    0       64     410  ever_stunted     
0-6 months    IRC              INDIA                          Wealth Q3                    1       39     410  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4                    0     4866   27137  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4                    1     2265   27137  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1                    0     3410   27137  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1                    1     3162   27137  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2                    0     3648   27137  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2                    1     2977   27137  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3                    0     4003   27137  ever_stunted     
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3                    1     2806   27137  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4                    0      908    5117  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4                    1      369    5117  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1                    0      763    5117  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1                    1      504    5117  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2                    0      802    5117  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2                    1      470    5117  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3                    0      866    5117  ever_stunted     
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3                    1      435    5117  ever_stunted     
0-6 months    LCNI-5           MALAWI                         Wealth Q4                    0       50     269  ever_stunted     
0-6 months    LCNI-5           MALAWI                         Wealth Q4                    1       23     269  ever_stunted     
0-6 months    LCNI-5           MALAWI                         Wealth Q1                    0       45     269  ever_stunted     
0-6 months    LCNI-5           MALAWI                         Wealth Q1                    1       23     269  ever_stunted     
0-6 months    LCNI-5           MALAWI                         Wealth Q2                    0       39     269  ever_stunted     
0-6 months    LCNI-5           MALAWI                         Wealth Q2                    1       25     269  ever_stunted     
0-6 months    LCNI-5           MALAWI                         Wealth Q3                    0       40     269  ever_stunted     
0-6 months    LCNI-5           MALAWI                         Wealth Q3                    1       24     269  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4                    0       45     242  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4                    1       16     242  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1                    0       35     242  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1                    1       25     242  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2                    0       39     242  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2                    1       22     242  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3                    0       41     242  ever_stunted     
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3                    1       19     242  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         Wealth Q4                    0       43     210  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         Wealth Q4                    1       10     210  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         Wealth Q1                    0       40     210  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         Wealth Q1                    1       13     210  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         Wealth Q2                    0       43     210  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         Wealth Q2                    1       10     210  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         Wealth Q3                    0       39     210  ever_stunted     
0-6 months    MAL-ED           BRAZIL                         Wealth Q3                    1       12     210  ever_stunted     
0-6 months    MAL-ED           INDIA                          Wealth Q4                    0       39     235  ever_stunted     
0-6 months    MAL-ED           INDIA                          Wealth Q4                    1       20     235  ever_stunted     
0-6 months    MAL-ED           INDIA                          Wealth Q1                    0       36     235  ever_stunted     
0-6 months    MAL-ED           INDIA                          Wealth Q1                    1       24     235  ever_stunted     
0-6 months    MAL-ED           INDIA                          Wealth Q2                    0       39     235  ever_stunted     
0-6 months    MAL-ED           INDIA                          Wealth Q2                    1       19     235  ever_stunted     
0-6 months    MAL-ED           INDIA                          Wealth Q3                    0       40     235  ever_stunted     
0-6 months    MAL-ED           INDIA                          Wealth Q3                    1       18     235  ever_stunted     
0-6 months    MAL-ED           NEPAL                          Wealth Q4                    0       49     236  ever_stunted     
0-6 months    MAL-ED           NEPAL                          Wealth Q4                    1       10     236  ever_stunted     
0-6 months    MAL-ED           NEPAL                          Wealth Q1                    0       47     236  ever_stunted     
0-6 months    MAL-ED           NEPAL                          Wealth Q1                    1       12     236  ever_stunted     
0-6 months    MAL-ED           NEPAL                          Wealth Q2                    0       51     236  ever_stunted     
0-6 months    MAL-ED           NEPAL                          Wealth Q2                    1        8     236  ever_stunted     
0-6 months    MAL-ED           NEPAL                          Wealth Q3                    0       48     236  ever_stunted     
0-6 months    MAL-ED           NEPAL                          Wealth Q3                    1       11     236  ever_stunted     
0-6 months    MAL-ED           PERU                           Wealth Q4                    0       40     272  ever_stunted     
0-6 months    MAL-ED           PERU                           Wealth Q4                    1       28     272  ever_stunted     
0-6 months    MAL-ED           PERU                           Wealth Q1                    0       40     272  ever_stunted     
0-6 months    MAL-ED           PERU                           Wealth Q1                    1       28     272  ever_stunted     
0-6 months    MAL-ED           PERU                           Wealth Q2                    0       37     272  ever_stunted     
0-6 months    MAL-ED           PERU                           Wealth Q2                    1       34     272  ever_stunted     
0-6 months    MAL-ED           PERU                           Wealth Q3                    0       33     272  ever_stunted     
0-6 months    MAL-ED           PERU                           Wealth Q3                    1       32     272  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4                    0       43     257  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4                    1       22     257  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1                    0       35     257  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1                    1       29     257  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2                    0       39     257  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2                    1       25     257  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3                    0       39     257  ever_stunted     
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3                    1       25     257  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       40     250  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       23     250  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       34     250  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       29     250  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       38     250  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       24     250  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0       35     250  ever_stunted     
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       27     250  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4                    0      127     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4                    1       48     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1                    0      130     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1                    1       44     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2                    0      146     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2                    1       30     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3                    0      129     700  ever_stunted     
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3                    1       46     700  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      448    2384  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1      145    2384  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      598    2384  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1      121    2384  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      385    2384  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       98    2384  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      488    2384  ever_stunted     
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1      101    2384  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                    0        6     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       26     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                    0        6     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       50     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                    0        8     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       40     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                    0        8     185  ever_stunted     
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       41     185  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      Wealth Q4                    0       90     848  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      Wealth Q4                    1      250     848  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      Wealth Q1                    0       32     848  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      Wealth Q1                    1      128     848  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      Wealth Q2                    0       30     848  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      Wealth Q2                    1      142     848  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      Wealth Q3                    0       46     848  ever_stunted     
6-24 months   COHORTS          GUATEMALA                      Wealth Q3                    1      130     848  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4                    0      309    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4                    1      319    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1                    0      125    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1                    1      311    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2                    0      129    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2                    1      241    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3                    0      190    2121  ever_stunted     
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3                    1      497    2121  ever_stunted     
6-24 months   CONTENT          PERU                           Wealth Q4                    0       44     188  ever_stunted     
6-24 months   CONTENT          PERU                           Wealth Q4                    1        3     188  ever_stunted     
6-24 months   CONTENT          PERU                           Wealth Q1                    0       42     188  ever_stunted     
6-24 months   CONTENT          PERU                           Wealth Q1                    1       10     188  ever_stunted     
6-24 months   CONTENT          PERU                           Wealth Q2                    0       35     188  ever_stunted     
6-24 months   CONTENT          PERU                           Wealth Q2                    1        6     188  ever_stunted     
6-24 months   CONTENT          PERU                           Wealth Q3                    0       41     188  ever_stunted     
6-24 months   CONTENT          PERU                           Wealth Q3                    1        7     188  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4                    0       46     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4                    1       58     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1                    0       38     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1                    1       56     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2                    0       43     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2                    1       60     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3                    0       46     397  ever_stunted     
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3                    1       50     397  ever_stunted     
6-24 months   IRC              INDIA                          Wealth Q4                    0       48     236  ever_stunted     
6-24 months   IRC              INDIA                          Wealth Q4                    1       12     236  ever_stunted     
6-24 months   IRC              INDIA                          Wealth Q1                    0       34     236  ever_stunted     
6-24 months   IRC              INDIA                          Wealth Q1                    1       27     236  ever_stunted     
6-24 months   IRC              INDIA                          Wealth Q2                    0       32     236  ever_stunted     
6-24 months   IRC              INDIA                          Wealth Q2                    1       19     236  ever_stunted     
6-24 months   IRC              INDIA                          Wealth Q3                    0       33     236  ever_stunted     
6-24 months   IRC              INDIA                          Wealth Q3                    1       31     236  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                    0     2944   10488  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                    1      584   10488  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                    0     1466   10488  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                    1      536   10488  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                    0     1716   10488  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                    1      574   10488  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                    0     2095   10488  ever_stunted     
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                    1      573   10488  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                    0      679    3644  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                    1      299    3644  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                    0      497    3644  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                    1      370    3644  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                    0      506    3644  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                    1      367    3644  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                    0      583    3644  ever_stunted     
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                    1      343    3644  ever_stunted     
6-24 months   LCNI-5           MALAWI                         Wealth Q4                    0       83     710  ever_stunted     
6-24 months   LCNI-5           MALAWI                         Wealth Q4                    1      110     710  ever_stunted     
6-24 months   LCNI-5           MALAWI                         Wealth Q1                    0       72     710  ever_stunted     
6-24 months   LCNI-5           MALAWI                         Wealth Q1                    1      101     710  ever_stunted     
6-24 months   LCNI-5           MALAWI                         Wealth Q2                    0       69     710  ever_stunted     
6-24 months   LCNI-5           MALAWI                         Wealth Q2                    1      102     710  ever_stunted     
6-24 months   LCNI-5           MALAWI                         Wealth Q3                    0       60     710  ever_stunted     
6-24 months   LCNI-5           MALAWI                         Wealth Q3                    1      113     710  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4                    0       30     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4                    1       15     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1                    0       22     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1                    1       11     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2                    0       17     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2                    1       22     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3                    0       22     158  ever_stunted     
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3                    1       19     158  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         Wealth Q4                    0       38     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         Wealth Q4                    1        5     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         Wealth Q1                    0       39     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         Wealth Q1                    1        1     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         Wealth Q2                    0       39     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         Wealth Q2                    1        2     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         Wealth Q3                    0       36     163  ever_stunted     
6-24 months   MAL-ED           BRAZIL                         Wealth Q3                    1        3     163  ever_stunted     
6-24 months   MAL-ED           INDIA                          Wealth Q4                    0       21     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          Wealth Q4                    1       18     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          Wealth Q1                    0       24     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          Wealth Q1                    1       12     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          Wealth Q2                    0       22     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          Wealth Q2                    1       17     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          Wealth Q3                    0       22     154  ever_stunted     
6-24 months   MAL-ED           INDIA                          Wealth Q3                    1       18     154  ever_stunted     
6-24 months   MAL-ED           NEPAL                          Wealth Q4                    0       41     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          Wealth Q4                    1        8     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          Wealth Q1                    0       38     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          Wealth Q1                    1        8     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          Wealth Q2                    0       41     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          Wealth Q2                    1       10     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          Wealth Q3                    0       33     194  ever_stunted     
6-24 months   MAL-ED           NEPAL                          Wealth Q3                    1       15     194  ever_stunted     
6-24 months   MAL-ED           PERU                           Wealth Q4                    0       18     149  ever_stunted     
6-24 months   MAL-ED           PERU                           Wealth Q4                    1       21     149  ever_stunted     
6-24 months   MAL-ED           PERU                           Wealth Q1                    0       31     149  ever_stunted     
6-24 months   MAL-ED           PERU                           Wealth Q1                    1        9     149  ever_stunted     
6-24 months   MAL-ED           PERU                           Wealth Q2                    0       20     149  ever_stunted     
6-24 months   MAL-ED           PERU                           Wealth Q2                    1       17     149  ever_stunted     
6-24 months   MAL-ED           PERU                           Wealth Q3                    0       21     149  ever_stunted     
6-24 months   MAL-ED           PERU                           Wealth Q3                    1       12     149  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                    0       31     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                    1       11     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                    0       19     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                    1       16     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                    0       25     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                    1       14     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                    0       22     155  ever_stunted     
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                    1       17     155  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0        4     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       36     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       10     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       21     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0        9     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       29     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0        8     144  ever_stunted     
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       27     144  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4                    0       55     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4                    1       40     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1                    0       93     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1                    1       25     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2                    0      101     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2                    1       34     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3                    0       70     456  ever_stunted     
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3                    1       38     456  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      276    1596  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       87    1596  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      396    1596  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1      100    1596  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      244    1596  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       75    1596  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      318    1596  ever_stunted     
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1      100    1596  ever_stunted     


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

* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
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
