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

agecat        studyid          country                        hhwealth_quart    ever_stunted   n_cell       n
------------  ---------------  -----------------------------  ---------------  -------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                    0        6     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       90     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                    0        6     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       85     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                    0        8     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       87     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                    0        8     373
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       83     373
0-24 months   COHORTS          GUATEMALA                      Wealth Q4                    0      130    1278
0-24 months   COHORTS          GUATEMALA                      Wealth Q4                    1      355    1278
0-24 months   COHORTS          GUATEMALA                      Wealth Q1                    0       47    1278
0-24 months   COHORTS          GUATEMALA                      Wealth Q1                    1      198    1278
0-24 months   COHORTS          GUATEMALA                      Wealth Q2                    0       45    1278
0-24 months   COHORTS          GUATEMALA                      Wealth Q2                    1      215    1278
0-24 months   COHORTS          GUATEMALA                      Wealth Q3                    0       70    1278
0-24 months   COHORTS          GUATEMALA                      Wealth Q3                    1      218    1278
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4                    0      370    3057
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4                    1      473    3057
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1                    0      195    3057
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1                    1      492    3057
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2                    0      157    3057
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2                    1      385    3057
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3                    0      236    3057
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3                    1      749    3057
0-24 months   CONTENT          PERU                           Wealth Q4                    0       44     215
0-24 months   CONTENT          PERU                           Wealth Q4                    1        8     215
0-24 months   CONTENT          PERU                           Wealth Q1                    0       42     215
0-24 months   CONTENT          PERU                           Wealth Q1                    1       17     215
0-24 months   CONTENT          PERU                           Wealth Q2                    0       35     215
0-24 months   CONTENT          PERU                           Wealth Q2                    1       17     215
0-24 months   CONTENT          PERU                           Wealth Q3                    0       41     215
0-24 months   CONTENT          PERU                           Wealth Q3                    1       11     215
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4                    0       65     698
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4                    1      110     698
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1                    0       60     698
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1                    1      115     698
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2                    0       56     698
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2                    1      118     698
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3                    0       71     698
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3                    1      103     698
0-24 months   IRC              INDIA                          Wealth Q4                    0       48     410
0-24 months   IRC              INDIA                          Wealth Q4                    1       52     410
0-24 months   IRC              INDIA                          Wealth Q1                    0       34     410
0-24 months   IRC              INDIA                          Wealth Q1                    1       71     410
0-24 months   IRC              INDIA                          Wealth Q2                    0       32     410
0-24 months   IRC              INDIA                          Wealth Q2                    1       70     410
0-24 months   IRC              INDIA                          Wealth Q3                    0       33     410
0-24 months   IRC              INDIA                          Wealth Q3                    1       70     410
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                    0     4308   27203
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                    1     2849   27203
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                    0     2888   27203
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                    1     3698   27203
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                    0     3091   27203
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                    1     3551   27203
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                    0     3439   27203
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                    1     3379   27203
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                    0      682    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                    1      668    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                    0      498    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                    1      874    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                    0      506    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                    1      837    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                    0      583    5426
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                    1      778    5426
0-24 months   LCNI-5           MALAWI                         Wealth Q4                    0       84     817
0-24 months   LCNI-5           MALAWI                         Wealth Q4                    1      133     817
0-24 months   LCNI-5           MALAWI                         Wealth Q1                    0       80     817
0-24 months   LCNI-5           MALAWI                         Wealth Q1                    1      124     817
0-24 months   LCNI-5           MALAWI                         Wealth Q2                    0       72     817
0-24 months   LCNI-5           MALAWI                         Wealth Q2                    1      127     817
0-24 months   LCNI-5           MALAWI                         Wealth Q3                    0       60     817
0-24 months   LCNI-5           MALAWI                         Wealth Q3                    1      137     817
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4                    0       30     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4                    1       31     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1                    0       24     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1                    1       36     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2                    0       17     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2                    1       44     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3                    0       22     242
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3                    1       38     242
0-24 months   MAL-ED           BRAZIL                         Wealth Q4                    0       38     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q4                    1       15     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q1                    0       39     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q1                    1       14     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q2                    0       41     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q2                    1       12     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q3                    0       36     210
0-24 months   MAL-ED           BRAZIL                         Wealth Q3                    1       15     210
0-24 months   MAL-ED           INDIA                          Wealth Q4                    0       21     235
0-24 months   MAL-ED           INDIA                          Wealth Q4                    1       38     235
0-24 months   MAL-ED           INDIA                          Wealth Q1                    0       24     235
0-24 months   MAL-ED           INDIA                          Wealth Q1                    1       36     235
0-24 months   MAL-ED           INDIA                          Wealth Q2                    0       22     235
0-24 months   MAL-ED           INDIA                          Wealth Q2                    1       36     235
0-24 months   MAL-ED           INDIA                          Wealth Q3                    0       22     235
0-24 months   MAL-ED           INDIA                          Wealth Q3                    1       36     235
0-24 months   MAL-ED           NEPAL                          Wealth Q4                    0       41     236
0-24 months   MAL-ED           NEPAL                          Wealth Q4                    1       18     236
0-24 months   MAL-ED           NEPAL                          Wealth Q1                    0       39     236
0-24 months   MAL-ED           NEPAL                          Wealth Q1                    1       20     236
0-24 months   MAL-ED           NEPAL                          Wealth Q2                    0       41     236
0-24 months   MAL-ED           NEPAL                          Wealth Q2                    1       18     236
0-24 months   MAL-ED           NEPAL                          Wealth Q3                    0       33     236
0-24 months   MAL-ED           NEPAL                          Wealth Q3                    1       26     236
0-24 months   MAL-ED           PERU                           Wealth Q4                    0       19     272
0-24 months   MAL-ED           PERU                           Wealth Q4                    1       49     272
0-24 months   MAL-ED           PERU                           Wealth Q1                    0       31     272
0-24 months   MAL-ED           PERU                           Wealth Q1                    1       37     272
0-24 months   MAL-ED           PERU                           Wealth Q2                    0       20     272
0-24 months   MAL-ED           PERU                           Wealth Q2                    1       51     272
0-24 months   MAL-ED           PERU                           Wealth Q3                    0       21     272
0-24 months   MAL-ED           PERU                           Wealth Q3                    1       44     272
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                    0       32     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                    1       33     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                    0       19     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                    1       45     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                    0       25     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                    1       39     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                    0       22     257
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                    1       42     257
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0        4     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       59     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       13     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       50     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0        9     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       53     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0        8     250
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       54     250
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4                    0       87     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4                    1       88     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1                    0      105     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1                    1       69     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2                    0      112     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2                    1       64     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3                    0       91     700
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3                    1       84     700
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      361    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1      232    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      498    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1      221    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      310    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1      173    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      388    2384
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1      201    2384
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       31     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       64     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       55     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       35     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       46     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       47     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       48     368
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       42     368
0-6 months    COHORTS          GUATEMALA                      Wealth Q4                    0      277    1037
0-6 months    COHORTS          GUATEMALA                      Wealth Q4                    1      105    1037
0-6 months    COHORTS          GUATEMALA                      Wealth Q1                    0      127    1037
0-6 months    COHORTS          GUATEMALA                      Wealth Q1                    1       70    1037
0-6 months    COHORTS          GUATEMALA                      Wealth Q2                    0      132    1037
0-6 months    COHORTS          GUATEMALA                      Wealth Q2                    1       73    1037
0-6 months    COHORTS          GUATEMALA                      Wealth Q3                    0      165    1037
0-6 months    COHORTS          GUATEMALA                      Wealth Q3                    1       88    1037
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4                    0      689    3057
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4                    1      154    3057
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1                    0      506    3057
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1                    1      181    3057
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2                    0      398    3057
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2                    1      144    3057
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3                    0      733    3057
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3                    1      252    3057
0-6 months    CONTENT          PERU                           Wealth Q4                    0       47     215
0-6 months    CONTENT          PERU                           Wealth Q4                    1        5     215
0-6 months    CONTENT          PERU                           Wealth Q1                    0       52     215
0-6 months    CONTENT          PERU                           Wealth Q1                    1        7     215
0-6 months    CONTENT          PERU                           Wealth Q2                    0       41     215
0-6 months    CONTENT          PERU                           Wealth Q2                    1       11     215
0-6 months    CONTENT          PERU                           Wealth Q3                    0       48     215
0-6 months    CONTENT          PERU                           Wealth Q3                    1        4     215
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4                    0      123     698
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4                    1       52     698
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1                    0      116     698
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1                    1       59     698
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2                    0      116     698
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2                    1       58     698
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3                    0      121     698
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3                    1       53     698
0-6 months    IRC              INDIA                          Wealth Q4                    0       60     410
0-6 months    IRC              INDIA                          Wealth Q4                    1       40     410
0-6 months    IRC              INDIA                          Wealth Q1                    0       61     410
0-6 months    IRC              INDIA                          Wealth Q1                    1       44     410
0-6 months    IRC              INDIA                          Wealth Q2                    0       51     410
0-6 months    IRC              INDIA                          Wealth Q2                    1       51     410
0-6 months    IRC              INDIA                          Wealth Q3                    0       64     410
0-6 months    IRC              INDIA                          Wealth Q3                    1       39     410
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4                    0     4866   27137
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4                    1     2265   27137
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1                    0     3410   27137
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1                    1     3162   27137
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2                    0     3648   27137
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2                    1     2977   27137
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3                    0     4003   27137
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3                    1     2806   27137
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4                    0      908    5117
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4                    1      369    5117
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1                    0      763    5117
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1                    1      504    5117
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2                    0      802    5117
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2                    1      470    5117
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3                    0      866    5117
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3                    1      435    5117
0-6 months    LCNI-5           MALAWI                         Wealth Q4                    0       50     269
0-6 months    LCNI-5           MALAWI                         Wealth Q4                    1       23     269
0-6 months    LCNI-5           MALAWI                         Wealth Q1                    0       45     269
0-6 months    LCNI-5           MALAWI                         Wealth Q1                    1       23     269
0-6 months    LCNI-5           MALAWI                         Wealth Q2                    0       39     269
0-6 months    LCNI-5           MALAWI                         Wealth Q2                    1       25     269
0-6 months    LCNI-5           MALAWI                         Wealth Q3                    0       40     269
0-6 months    LCNI-5           MALAWI                         Wealth Q3                    1       24     269
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4                    0       45     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4                    1       16     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1                    0       35     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1                    1       25     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2                    0       39     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2                    1       22     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3                    0       41     242
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3                    1       19     242
0-6 months    MAL-ED           BRAZIL                         Wealth Q4                    0       43     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q4                    1       10     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q1                    0       40     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q1                    1       13     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q2                    0       43     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q2                    1       10     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q3                    0       39     210
0-6 months    MAL-ED           BRAZIL                         Wealth Q3                    1       12     210
0-6 months    MAL-ED           INDIA                          Wealth Q4                    0       39     235
0-6 months    MAL-ED           INDIA                          Wealth Q4                    1       20     235
0-6 months    MAL-ED           INDIA                          Wealth Q1                    0       36     235
0-6 months    MAL-ED           INDIA                          Wealth Q1                    1       24     235
0-6 months    MAL-ED           INDIA                          Wealth Q2                    0       39     235
0-6 months    MAL-ED           INDIA                          Wealth Q2                    1       19     235
0-6 months    MAL-ED           INDIA                          Wealth Q3                    0       40     235
0-6 months    MAL-ED           INDIA                          Wealth Q3                    1       18     235
0-6 months    MAL-ED           NEPAL                          Wealth Q4                    0       49     236
0-6 months    MAL-ED           NEPAL                          Wealth Q4                    1       10     236
0-6 months    MAL-ED           NEPAL                          Wealth Q1                    0       47     236
0-6 months    MAL-ED           NEPAL                          Wealth Q1                    1       12     236
0-6 months    MAL-ED           NEPAL                          Wealth Q2                    0       51     236
0-6 months    MAL-ED           NEPAL                          Wealth Q2                    1        8     236
0-6 months    MAL-ED           NEPAL                          Wealth Q3                    0       48     236
0-6 months    MAL-ED           NEPAL                          Wealth Q3                    1       11     236
0-6 months    MAL-ED           PERU                           Wealth Q4                    0       40     272
0-6 months    MAL-ED           PERU                           Wealth Q4                    1       28     272
0-6 months    MAL-ED           PERU                           Wealth Q1                    0       40     272
0-6 months    MAL-ED           PERU                           Wealth Q1                    1       28     272
0-6 months    MAL-ED           PERU                           Wealth Q2                    0       37     272
0-6 months    MAL-ED           PERU                           Wealth Q2                    1       34     272
0-6 months    MAL-ED           PERU                           Wealth Q3                    0       33     272
0-6 months    MAL-ED           PERU                           Wealth Q3                    1       32     272
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4                    0       43     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4                    1       22     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1                    0       35     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1                    1       29     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2                    0       39     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2                    1       25     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3                    0       39     257
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3                    1       25     257
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       40     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       23     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       34     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       29     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       38     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       24     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0       35     250
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       27     250
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4                    0      127     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4                    1       48     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1                    0      130     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1                    1       44     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2                    0      146     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2                    1       30     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3                    0      129     700
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3                    1       46     700
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      448    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1      145    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      598    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1      121    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      385    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       98    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      488    2384
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1      101    2384
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                    0        6     185
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       26     185
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                    0        6     185
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       50     185
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                    0        8     185
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       40     185
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                    0        8     185
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       41     185
6-24 months   COHORTS          GUATEMALA                      Wealth Q4                    0       90     848
6-24 months   COHORTS          GUATEMALA                      Wealth Q4                    1      250     848
6-24 months   COHORTS          GUATEMALA                      Wealth Q1                    0       32     848
6-24 months   COHORTS          GUATEMALA                      Wealth Q1                    1      128     848
6-24 months   COHORTS          GUATEMALA                      Wealth Q2                    0       30     848
6-24 months   COHORTS          GUATEMALA                      Wealth Q2                    1      142     848
6-24 months   COHORTS          GUATEMALA                      Wealth Q3                    0       46     848
6-24 months   COHORTS          GUATEMALA                      Wealth Q3                    1      130     848
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4                    0      309    2121
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4                    1      319    2121
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1                    0      125    2121
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1                    1      311    2121
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2                    0      129    2121
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2                    1      241    2121
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3                    0      190    2121
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3                    1      497    2121
6-24 months   CONTENT          PERU                           Wealth Q4                    0       44     188
6-24 months   CONTENT          PERU                           Wealth Q4                    1        3     188
6-24 months   CONTENT          PERU                           Wealth Q1                    0       42     188
6-24 months   CONTENT          PERU                           Wealth Q1                    1       10     188
6-24 months   CONTENT          PERU                           Wealth Q2                    0       35     188
6-24 months   CONTENT          PERU                           Wealth Q2                    1        6     188
6-24 months   CONTENT          PERU                           Wealth Q3                    0       41     188
6-24 months   CONTENT          PERU                           Wealth Q3                    1        7     188
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4                    0       46     397
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4                    1       58     397
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1                    0       38     397
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1                    1       56     397
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2                    0       43     397
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2                    1       60     397
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3                    0       46     397
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3                    1       50     397
6-24 months   IRC              INDIA                          Wealth Q4                    0       48     236
6-24 months   IRC              INDIA                          Wealth Q4                    1       12     236
6-24 months   IRC              INDIA                          Wealth Q1                    0       34     236
6-24 months   IRC              INDIA                          Wealth Q1                    1       27     236
6-24 months   IRC              INDIA                          Wealth Q2                    0       32     236
6-24 months   IRC              INDIA                          Wealth Q2                    1       19     236
6-24 months   IRC              INDIA                          Wealth Q3                    0       33     236
6-24 months   IRC              INDIA                          Wealth Q3                    1       31     236
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                    0     2944   10488
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4                    1      584   10488
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                    0     1466   10488
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1                    1      536   10488
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                    0     1716   10488
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2                    1      574   10488
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                    0     2095   10488
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3                    1      573   10488
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                    0      679    3644
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4                    1      299    3644
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                    0      497    3644
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1                    1      370    3644
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                    0      506    3644
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2                    1      367    3644
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                    0      583    3644
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3                    1      343    3644
6-24 months   LCNI-5           MALAWI                         Wealth Q4                    0       83     710
6-24 months   LCNI-5           MALAWI                         Wealth Q4                    1      110     710
6-24 months   LCNI-5           MALAWI                         Wealth Q1                    0       72     710
6-24 months   LCNI-5           MALAWI                         Wealth Q1                    1      101     710
6-24 months   LCNI-5           MALAWI                         Wealth Q2                    0       69     710
6-24 months   LCNI-5           MALAWI                         Wealth Q2                    1      102     710
6-24 months   LCNI-5           MALAWI                         Wealth Q3                    0       60     710
6-24 months   LCNI-5           MALAWI                         Wealth Q3                    1      113     710
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4                    0       30     158
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4                    1       15     158
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1                    0       22     158
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1                    1       11     158
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2                    0       17     158
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2                    1       22     158
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3                    0       22     158
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3                    1       19     158
6-24 months   MAL-ED           BRAZIL                         Wealth Q4                    0       38     163
6-24 months   MAL-ED           BRAZIL                         Wealth Q4                    1        5     163
6-24 months   MAL-ED           BRAZIL                         Wealth Q1                    0       39     163
6-24 months   MAL-ED           BRAZIL                         Wealth Q1                    1        1     163
6-24 months   MAL-ED           BRAZIL                         Wealth Q2                    0       39     163
6-24 months   MAL-ED           BRAZIL                         Wealth Q2                    1        2     163
6-24 months   MAL-ED           BRAZIL                         Wealth Q3                    0       36     163
6-24 months   MAL-ED           BRAZIL                         Wealth Q3                    1        3     163
6-24 months   MAL-ED           INDIA                          Wealth Q4                    0       21     154
6-24 months   MAL-ED           INDIA                          Wealth Q4                    1       18     154
6-24 months   MAL-ED           INDIA                          Wealth Q1                    0       24     154
6-24 months   MAL-ED           INDIA                          Wealth Q1                    1       12     154
6-24 months   MAL-ED           INDIA                          Wealth Q2                    0       22     154
6-24 months   MAL-ED           INDIA                          Wealth Q2                    1       17     154
6-24 months   MAL-ED           INDIA                          Wealth Q3                    0       22     154
6-24 months   MAL-ED           INDIA                          Wealth Q3                    1       18     154
6-24 months   MAL-ED           NEPAL                          Wealth Q4                    0       41     194
6-24 months   MAL-ED           NEPAL                          Wealth Q4                    1        8     194
6-24 months   MAL-ED           NEPAL                          Wealth Q1                    0       38     194
6-24 months   MAL-ED           NEPAL                          Wealth Q1                    1        8     194
6-24 months   MAL-ED           NEPAL                          Wealth Q2                    0       41     194
6-24 months   MAL-ED           NEPAL                          Wealth Q2                    1       10     194
6-24 months   MAL-ED           NEPAL                          Wealth Q3                    0       33     194
6-24 months   MAL-ED           NEPAL                          Wealth Q3                    1       15     194
6-24 months   MAL-ED           PERU                           Wealth Q4                    0       18     149
6-24 months   MAL-ED           PERU                           Wealth Q4                    1       21     149
6-24 months   MAL-ED           PERU                           Wealth Q1                    0       31     149
6-24 months   MAL-ED           PERU                           Wealth Q1                    1        9     149
6-24 months   MAL-ED           PERU                           Wealth Q2                    0       20     149
6-24 months   MAL-ED           PERU                           Wealth Q2                    1       17     149
6-24 months   MAL-ED           PERU                           Wealth Q3                    0       21     149
6-24 months   MAL-ED           PERU                           Wealth Q3                    1       12     149
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                    0       31     155
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                    1       11     155
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                    0       19     155
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                    1       16     155
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                    0       25     155
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                    1       14     155
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                    0       22     155
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                    1       17     155
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0        4     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       36     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       10     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       21     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0        9     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       29     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0        8     144
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       27     144
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4                    0       55     456
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4                    1       40     456
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1                    0       93     456
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1                    1       25     456
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2                    0      101     456
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2                    1       34     456
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3                    0       70     456
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3                    1       38     456
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      276    1596
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       87    1596
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      396    1596
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1      100    1596
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      244    1596
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       75    1596
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      318    1596
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1      100    1596


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/ac4d721b-7737-4bc9-92c9-ef686ad8fea7/367bc9a3-e738-4bc9-ba49-dadc289fed3c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ac4d721b-7737-4bc9-92c9-ef686ad8fea7/367bc9a3-e738-4bc9-ba49-dadc289fed3c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ac4d721b-7737-4bc9-92c9-ef686ad8fea7/367bc9a3-e738-4bc9-ba49-dadc289fed3c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ac4d721b-7737-4bc9-92c9-ef686ad8fea7/367bc9a3-e738-4bc9-ba49-dadc289fed3c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.9375000   0.8890135   0.9859865
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.9340659   0.8830091   0.9851228
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.9157895   0.8598717   0.9717073
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.9120879   0.8538303   0.9703456
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.7333611   0.6948127   0.7719095
0-24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.7901894   0.7419478   0.8384310
0-24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.8291288   0.7834194   0.8748383
0-24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.7671513   0.7204346   0.8138680
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.6422650   0.6121023   0.6724278
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                0.6893668   0.6552429   0.7234907
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6794216   0.6420826   0.7167606
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                0.7328946   0.7060062   0.7597830
0-24 months   CONTENT          PERU                           Wealth Q4            NA                0.1538462   0.0555522   0.2521401
0-24 months   CONTENT          PERU                           Wealth Q1            NA                0.2881356   0.1723028   0.4039684
0-24 months   CONTENT          PERU                           Wealth Q2            NA                0.3269231   0.1991281   0.4547181
0-24 months   CONTENT          PERU                           Wealth Q3            NA                0.2115385   0.1002773   0.3227996
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.6560259   0.5880385   0.7240133
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.6056763   0.5392861   0.6720664
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.6951339   0.6315399   0.7587278
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5970876   0.5285676   0.6656077
0-24 months   IRC              INDIA                          Wealth Q4            NA                0.5222506   0.4269409   0.6175604
0-24 months   IRC              INDIA                          Wealth Q1            NA                0.6897830   0.6024553   0.7771106
0-24 months   IRC              INDIA                          Wealth Q2            NA                0.6817961   0.5932913   0.7703008
0-24 months   IRC              INDIA                          Wealth Q3            NA                0.6751821   0.5837996   0.7665645
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.4904500   0.4758680   0.5050320
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.4999511   0.4847013   0.5152009
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.5110941   0.4986842   0.5235040
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.4932872   0.4811481   0.5054263
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.5529577   0.5198522   0.5860632
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.6023091   0.5718601   0.6327582
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.5998492   0.5674424   0.6322560
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.5745148   0.5395783   0.6094512
0-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                0.6197206   0.5546836   0.6847576
0-24 months   LCNI-5           MALAWI                         Wealth Q1            NA                0.6051178   0.5374879   0.6727478
0-24 months   LCNI-5           MALAWI                         Wealth Q2            NA                0.6412214   0.5747274   0.7077155
0-24 months   LCNI-5           MALAWI                         Wealth Q3            NA                0.6896914   0.6260588   0.7533239
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                0.5818136   0.4607234   0.7029037
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                0.5073268   0.3778032   0.6368505
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                0.7248781   0.6189547   0.8308015
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                0.6918063   0.5813500   0.8022626
0-24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                0.2791508   0.1602964   0.3980051
0-24 months   MAL-ED           BRAZIL                         Wealth Q1            NA                0.2521854   0.1457210   0.3586497
0-24 months   MAL-ED           BRAZIL                         Wealth Q2            NA                0.2417822   0.1328498   0.3507146
0-24 months   MAL-ED           BRAZIL                         Wealth Q3            NA                0.2970114   0.1753046   0.4187182
0-24 months   MAL-ED           INDIA                          Wealth Q4            NA                0.6432480   0.5158995   0.7705965
0-24 months   MAL-ED           INDIA                          Wealth Q1            NA                0.6123912   0.4889367   0.7358457
0-24 months   MAL-ED           INDIA                          Wealth Q2            NA                0.6183611   0.4911576   0.7455646
0-24 months   MAL-ED           INDIA                          Wealth Q3            NA                0.6320443   0.5044763   0.7596122
0-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                0.3135232   0.1920957   0.4349506
0-24 months   MAL-ED           NEPAL                          Wealth Q1            NA                0.3442661   0.2204271   0.4681052
0-24 months   MAL-ED           NEPAL                          Wealth Q2            NA                0.2923621   0.1744080   0.4103163
0-24 months   MAL-ED           NEPAL                          Wealth Q3            NA                0.4530204   0.3236256   0.5824152
0-24 months   MAL-ED           PERU                           Wealth Q4            NA                0.6969051   0.5911322   0.8026780
0-24 months   MAL-ED           PERU                           Wealth Q1            NA                0.5574154   0.4397413   0.6750895
0-24 months   MAL-ED           PERU                           Wealth Q2            NA                0.6973105   0.5962564   0.7983647
0-24 months   MAL-ED           PERU                           Wealth Q3            NA                0.6876315   0.5787110   0.7965520
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.5053187   0.3807246   0.6299128
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.6990191   0.5857582   0.8122800
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.6039909   0.4822327   0.7257491
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.6805128   0.5634800   0.7975455
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.4505987   0.3792197   0.5219776
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.4452474   0.3847327   0.5057620
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.3795270   0.3058152   0.4532387
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.4861255   0.4117016   0.5605493
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.3792446   0.3405835   0.4179057
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.3158447   0.2829178   0.3487716
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.3627831   0.3200057   0.4055606
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.3368285   0.2981976   0.3754594
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.6706320   0.5729304   0.7683335
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.3907443   0.2868734   0.4946153
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.5004500   0.3978335   0.6030665
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4762724   0.3712681   0.5812766
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                0.2902266   0.2473728   0.3330803
0-6 months    COHORTS          GUATEMALA                      Wealth Q1            NA                0.3337611   0.2726579   0.3948642
0-6 months    COHORTS          GUATEMALA                      Wealth Q2            NA                0.3413327   0.2861739   0.3964916
0-6 months    COHORTS          GUATEMALA                      Wealth Q3            NA                0.3464227   0.2936387   0.3992067
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2320719   0.2070578   0.2570859
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2456999   0.2163421   0.2750576
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2447715   0.2130089   0.2765341
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2416474   0.2172207   0.2660741
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3163502   0.2560903   0.3766101
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3072847   0.2504668   0.3641027
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3518022   0.2909593   0.4126450
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2941320   0.2385898   0.3496743
0-6 months    IRC              INDIA                          Wealth Q4            NA                0.4058018   0.3149057   0.4966980
0-6 months    IRC              INDIA                          Wealth Q1            NA                0.4358804   0.3467802   0.5249805
0-6 months    IRC              INDIA                          Wealth Q2            NA                0.4995308   0.4079041   0.5911575
0-6 months    IRC              INDIA                          Wealth Q3            NA                0.3842626   0.2930247   0.4755004
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.3985580   0.3855359   0.4115801
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.4218664   0.4086487   0.4350841
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.4247838   0.4133088   0.4362588
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.4112944   0.4009245   0.4216642
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.3318783   0.3012842   0.3624725
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.3645528   0.3356983   0.3934074
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.3556211   0.3292150   0.3820272
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.3336708   0.3077559   0.3595858
0-6 months    LCNI-5           MALAWI                         Wealth Q4            NA                0.3320292   0.2211165   0.4429420
0-6 months    LCNI-5           MALAWI                         Wealth Q1            NA                0.3423958   0.2320864   0.4527051
0-6 months    LCNI-5           MALAWI                         Wealth Q2            NA                0.3917937   0.2703279   0.5132595
0-6 months    LCNI-5           MALAWI                         Wealth Q3            NA                0.3748465   0.2578757   0.4918173
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                0.2651314   0.1528955   0.3773674
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1            NA                0.4165760   0.2911735   0.5419785
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2            NA                0.3617113   0.2393395   0.4840832
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3            NA                0.3170667   0.1978989   0.4362345
0-6 months    MAL-ED           BRAZIL                         Wealth Q4            NA                0.1893860   0.0831446   0.2956275
0-6 months    MAL-ED           BRAZIL                         Wealth Q1            NA                0.2398129   0.1205677   0.3590581
0-6 months    MAL-ED           BRAZIL                         Wealth Q2            NA                0.1889876   0.0822598   0.2957154
0-6 months    MAL-ED           BRAZIL                         Wealth Q3            NA                0.2336154   0.1138731   0.3533576
0-6 months    MAL-ED           INDIA                          Wealth Q4            NA                0.3426597   0.2180215   0.4672979
0-6 months    MAL-ED           INDIA                          Wealth Q1            NA                0.4082548   0.2875275   0.5289820
0-6 months    MAL-ED           INDIA                          Wealth Q2            NA                0.3209913   0.1987897   0.4431929
0-6 months    MAL-ED           INDIA                          Wealth Q3            NA                0.3059270   0.1843555   0.4274984
0-6 months    MAL-ED           NEPAL                          Wealth Q4            NA                0.1694915   0.0735536   0.2654294
0-6 months    MAL-ED           NEPAL                          Wealth Q1            NA                0.2033898   0.1004623   0.3063174
0-6 months    MAL-ED           NEPAL                          Wealth Q2            NA                0.1355932   0.0480501   0.2231364
0-6 months    MAL-ED           NEPAL                          Wealth Q3            NA                0.1864407   0.0868522   0.2860292
0-6 months    MAL-ED           PERU                           Wealth Q4            NA                0.3745259   0.2647981   0.4842536
0-6 months    MAL-ED           PERU                           Wealth Q1            NA                0.4501240   0.3397226   0.5605253
0-6 months    MAL-ED           PERU                           Wealth Q2            NA                0.4621316   0.3524183   0.5718449
0-6 months    MAL-ED           PERU                           Wealth Q3            NA                0.5023743   0.3944736   0.6102750
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.3286070   0.2094997   0.4477142
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.4521247   0.3296227   0.5746266
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.4106563   0.2928647   0.5284479
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.3890533   0.2683839   0.5097226
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.3471659   0.2350190   0.4593129
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.4446528   0.3277793   0.5615263
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.3920163   0.2751867   0.5088459
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.4557224   0.3378483   0.5735965
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                0.2267199   0.1739640   0.2794758
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1            NA                0.2611969   0.2068354   0.3155585
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2            NA                0.2035429   0.1489061   0.2581797
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3            NA                0.2663699   0.2065699   0.3261700
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2337162   0.2009533   0.2664790
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1713187   0.1450163   0.1976212
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2005584   0.1651667   0.2359501
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1696795   0.1391891   0.2001699
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.8125000   0.6768992   0.9481008
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.8928571   0.8116295   0.9740847
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.8333333   0.7276180   0.9390487
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.8367347   0.7329656   0.9405037
6-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.7337617   0.6873835   0.7801400
6-24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.7808265   0.7188593   0.8427936
6-24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.8322754   0.7754437   0.8891070
6-24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.7512058   0.6876415   0.8147701
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5761970   0.5391538   0.6132402
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                0.6883989   0.6444355   0.7323622
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6305409   0.5807312   0.6803505
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                0.7009094   0.6670631   0.7347556
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.5609778   0.4657174   0.6562382
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5688426   0.4702259   0.6674594
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5914579   0.4980289   0.6848868
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5311181   0.4303353   0.6319009
6-24 months   IRC              INDIA                          Wealth Q4            NA                0.1999432   0.0944043   0.3054821
6-24 months   IRC              INDIA                          Wealth Q1            NA                0.4430944   0.3169747   0.5692141
6-24 months   IRC              INDIA                          Wealth Q2            NA                0.3563702   0.2197849   0.4929555
6-24 months   IRC              INDIA                          Wealth Q3            NA                0.4646286   0.3365863   0.5926709
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.2026386   0.1820725   0.2232048
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.2337347   0.2085305   0.2589389
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.2413577   0.2191498   0.2635656
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.2084857   0.1897200   0.2272514
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.3518179   0.3071427   0.3964931
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.3872040   0.3496416   0.4247663
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.4013009   0.3614295   0.4411723
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.3680865   0.3254448   0.4107282
6-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                0.5703957   0.5002753   0.6405161
6-24 months   LCNI-5           MALAWI                         Wealth Q1            NA                0.5843635   0.5103294   0.6583977
6-24 months   LCNI-5           MALAWI                         Wealth Q2            NA                0.5951104   0.5210891   0.6691318
6-24 months   LCNI-5           MALAWI                         Wealth Q3            NA                0.6536478   0.5823893   0.7249063
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                0.3401567   0.2026782   0.4776352
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                0.3454009   0.1807916   0.5100101
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                0.5916276   0.4306604   0.7525948
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                0.4650350   0.3064566   0.6236133
6-24 months   MAL-ED           INDIA                          Wealth Q4            NA                0.4333625   0.2747226   0.5920025
6-24 months   MAL-ED           INDIA                          Wealth Q1            NA                0.3069118   0.1468427   0.4669810
6-24 months   MAL-ED           INDIA                          Wealth Q2            NA                0.4101801   0.2491601   0.5712001
6-24 months   MAL-ED           INDIA                          Wealth Q3            NA                0.4193909   0.2602863   0.5784956
6-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                0.1632653   0.0595093   0.2670213
6-24 months   MAL-ED           NEPAL                          Wealth Q1            NA                0.1739130   0.0640958   0.2837302
6-24 months   MAL-ED           NEPAL                          Wealth Q2            NA                0.1960784   0.0868321   0.3053248
6-24 months   MAL-ED           NEPAL                          Wealth Q3            NA                0.3125000   0.1810347   0.4439653
6-24 months   MAL-ED           PERU                           Wealth Q4            NA                0.5384615   0.3814761   0.6954470
6-24 months   MAL-ED           PERU                           Wealth Q1            NA                0.2250000   0.0951558   0.3548442
6-24 months   MAL-ED           PERU                           Wealth Q2            NA                0.4594595   0.2983403   0.6205786
6-24 months   MAL-ED           PERU                           Wealth Q3            NA                0.3636364   0.1989568   0.5283159
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.2565394   0.1278309   0.3852478
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.4630530   0.2926880   0.6334180
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.3704625   0.2126799   0.5282452
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.4417673   0.2788648   0.6046697
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.3889614   0.2909288   0.4869939
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.2128186   0.1417135   0.2839237
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.2485746   0.1741985   0.3229506
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.3483957   0.2581952   0.4385962
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2363465   0.1922121   0.2804808
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2079040   0.1725371   0.2432710
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2375715   0.1897239   0.2854191
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2369247   0.1963138   0.2775357


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.9249330   0.8981563   0.9517096
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.7715180   0.7484902   0.7945458
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6866209   0.6701747   0.7030670
0-24 months   CONTENT          PERU                           NA                   NA                0.2465116   0.1887688   0.3042545
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.6389685   0.6033115   0.6746254
0-24 months   IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4954233   0.4875870   0.5032596
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.5818282   0.5658219   0.5978346
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.6376989   0.6047193   0.6706785
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.6157025   0.5542897   0.6771153
0-24 months   MAL-ED           BRAZIL                         NA                   NA                0.2666667   0.2067138   0.3266195
0-24 months   MAL-ED           INDIA                          NA                   NA                0.6212766   0.5591262   0.6834270
0-24 months   MAL-ED           NEPAL                          NA                   NA                0.3474576   0.2865784   0.4083369
0-24 months   MAL-ED           PERU                           NA                   NA                0.6654412   0.6092647   0.7216177
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.6186770   0.5591785   0.6781756
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.4357143   0.3989556   0.4724730
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3468960   0.3277853   0.3660067
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.3240116   0.2955133   0.3525098
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2391233   0.2240003   0.2542464
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.3180516   0.2834770   0.3526261
0-6 months    IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.4130891   0.4056400   0.4205383
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.3474692   0.3322601   0.3626783
0-6 months    LCNI-5           MALAWI                         NA                   NA                0.3531599   0.2959376   0.4103821
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.3388430   0.2790857   0.3986003
0-6 months    MAL-ED           BRAZIL                         NA                   NA                0.2142857   0.1586564   0.2699151
0-6 months    MAL-ED           INDIA                          NA                   NA                0.3446809   0.2837868   0.4055749
0-6 months    MAL-ED           NEPAL                          NA                   NA                0.1737288   0.1252880   0.2221696
0-6 months    MAL-ED           PERU                           NA                   NA                0.4485294   0.3893160   0.5077428
0-6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.3929961   0.3331663   0.4528260
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4120000   0.3508656   0.4731344
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2400000   0.2083392   0.2716608
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1950503   0.1791413   0.2109594
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.8486486   0.7968646   0.9004327
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.7665094   0.7380190   0.7949999
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6449788   0.6246093   0.6653483
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.5642317   0.5153938   0.6130696
6-24 months   IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2161518   0.2067762   0.2255274
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.3784303   0.3598372   0.3970234
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.6000000   0.5639396   0.6360604
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months   MAL-ED           INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months   MAL-ED           NEPAL                          NA                   NA                0.2113402   0.1537425   0.2689379
6-24 months   MAL-ED           PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.3741935   0.2977649   0.4506221
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2268170   0.2062654   0.2473687


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.9963370   0.9241135   1.0742051
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9768421   0.9017212   1.0582212
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9728938   0.8961328   1.0562300
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0774902   0.9952743   1.1664977
0-24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1305874   1.0482695   1.2193695
0-24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0460758   0.9667632   1.1318952
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.0733370   1.0039442   1.1475262
0-24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0578525   0.9858634   1.1350983
0-24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.1411093   1.0768162   1.2092411
0-24 months   CONTENT          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   CONTENT          PERU                           Wealth Q1            Wealth Q4         1.8728814   0.8803953   3.9842154
0-24 months   CONTENT          PERU                           Wealth Q2            Wealth Q4         2.1250000   1.0047762   4.4941600
0-24 months   CONTENT          PERU                           Wealth Q3            Wealth Q4         1.3750000   0.6010371   3.1456043
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9232506   0.7968565   1.0696927
0-24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0596135   0.9261892   1.2122585
0-24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9101587   0.7823090   1.0589023
0-24 months   IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         1.3207891   1.0604249   1.6450801
0-24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         1.3054959   1.0460409   1.6293048
0-24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         1.2928315   1.0316797   1.6200893
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.0193723   0.9809397   1.0593105
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.0420923   1.0074569   1.0779183
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.0057849   0.9719686   1.0407777
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.0892498   1.0100361   1.1746760
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.0848012   1.0026756   1.1736535
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.0389849   0.9566045   1.1284597
0-24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         0.9764365   0.8377025   1.1381465
0-24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.0346944   0.8929203   1.1989788
0-24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1129069   0.9682427   1.2791853
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         0.8719749   0.6304378   1.2060513
0-24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         1.2458941   0.9742095   1.5933452
0-24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         1.1890515   0.9209396   1.5352186
0-24 months   MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         0.9034020   0.5060151   1.6128671
0-24 months   MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         0.8661348   0.4719133   1.5896765
0-24 months   MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         1.0639820   0.5953005   1.9016577
0-24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         0.9520297   0.7180248   1.2622970
0-24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         0.9613106   0.7225970   1.2788845
0-24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         0.9825826   0.7407174   1.3034236
0-24 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         1.0980565   0.6473222   1.8626396
0-24 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         0.9325056   0.5330606   1.6312717
0-24 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         1.4449344   0.8926510   2.3389156
0-24 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4         0.7998441   0.6181759   1.0349005
0-24 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         1.0005817   0.8137983   1.2302357
0-24 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4         0.9866931   0.7947539   1.2249871
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         1.3833232   1.0301516   1.8575742
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.1952673   0.8692594   1.6435415
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         1.3467001   0.9973017   1.8185080
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         0.9881240   0.8090367   1.2068539
0-24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.8422727   0.6581437   1.0779156
0-24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         1.0788436   0.8695995   1.3384362
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.8328259   0.7208768   0.9621602
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9565940   0.8196612   1.1164028
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.8881563   0.7626763   1.0342811
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.5826509   0.4301689   0.7891833
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.7462364   0.5801701   0.9598372
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.7101844   0.5449470   0.9255247
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1500018   0.9157485   1.4441783
0-6 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1760906   0.9550986   1.4482161
0-6 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1936285   0.9749348   1.4613786
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.0587231   0.9085998   1.2336506
0-6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0547228   0.8982893   1.2383986
0-6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.0412611   0.9062671   1.1963632
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9713436   0.7597300   1.2418995
0-6 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1120655   0.8739764   1.4150151
0-6 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9297671   0.7249567   1.1924394
0-6 months    IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          Wealth Q1            Wealth Q4         1.0741212   0.7991293   1.4437419
0-6 months    IRC              INDIA                          Wealth Q2            Wealth Q4         1.2309723   0.9274243   1.6338722
0-6 months    IRC              INDIA                          Wealth Q3            Wealth Q4         0.9469217   0.6880067   1.3032732
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.0584818   1.0176795   1.1009201
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.0658017   1.0273411   1.1057022
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.0319562   0.9971607   1.0679658
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.0984532   0.9793066   1.2320957
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.0715406   0.9597546   1.1963468
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.0054011   0.9017613   1.1209522
0-6 months    LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0312217   0.6494549   1.6374013
0-6 months    LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.1799977   0.7477270   1.8621697
0-6 months    LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1289563   0.7144702   1.7838985
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         1.5712056   0.9339107   2.6433865
0-6 months    MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         1.3642718   0.7930738   2.3468656
0-6 months    MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         1.1958849   0.6782653   2.1085270
0-6 months    MAL-ED           BRAZIL                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           BRAZIL                         Wealth Q1            Wealth Q4         1.2662649   0.5983990   2.6795280
0-6 months    MAL-ED           BRAZIL                         Wealth Q2            Wealth Q4         0.9978961   0.4500914   2.2124323
0-6 months    MAL-ED           BRAZIL                         Wealth Q3            Wealth Q4         1.2335407   0.5766964   2.6385158
0-6 months    MAL-ED           INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           INDIA                          Wealth Q1            Wealth Q4         1.1914291   0.7485657   1.8962974
0-6 months    MAL-ED           INDIA                          Wealth Q2            Wealth Q4         0.9367640   0.5547753   1.5817699
0-6 months    MAL-ED           INDIA                          Wealth Q3            Wealth Q4         0.8928010   0.5223570   1.5259556
0-6 months    MAL-ED           NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         1.2000000   0.5616094   2.5640596
0-6 months    MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         0.8000000   0.3389962   1.8879268
0-6 months    MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         1.1000000   0.5051155   2.3954916
0-6 months    MAL-ED           PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           PERU                           Wealth Q1            Wealth Q4         1.2018502   0.8320161   1.7360767
0-6 months    MAL-ED           PERU                           Wealth Q2            Wealth Q4         1.2339111   0.8571014   1.7763785
0-6 months    MAL-ED           PERU                           Wealth Q3            Wealth Q4         1.3413608   0.9468394   1.9002682
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         1.3758829   0.8773476   2.1577009
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.2496884   0.7881862   1.9814115
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         1.1839471   0.7359847   1.9045651
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.2808078   0.8538332   1.9212986
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.1291900   0.7350136   1.7347571
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.3126934   0.8763405   1.9663179
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         1.1520688   0.8627503   1.5384086
0-6 months    PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.8977725   0.6412301   1.2569520
0-6 months    PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         1.1748856   0.8670582   1.5919995
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7330204   0.5973926   0.8994403
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8581279   0.6868450   1.0721248
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.7260068   0.5795410   0.9094885
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0989011   0.9086750   1.3289500
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0256410   0.8316727   1.2648479
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.0298273   0.8364943   1.2678440
6-24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0641417   0.9622610   1.1768092
6-24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1342584   1.0338477   1.2444212
6-24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0237735   0.9221271   1.1366245
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.1947283   1.0926646   1.3063255
6-24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0943147   0.9897243   1.2099579
6-24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.2164406   1.1239763   1.3165114
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0140199   0.7968022   1.2904538
6-24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0543338   0.8384118   1.3258638
6-24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9467720   0.7340457   1.2211464
6-24 months   IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         2.2161014   1.2148035   4.0427161
6-24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         1.7823572   0.9272532   3.4260299
6-24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         2.3238029   1.2760591   4.2318261
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.1534557   0.9989902   1.3318048
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.1910745   1.0439644   1.3589146
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.0288546   0.8994623   1.1768606
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.1005807   0.9400265   1.2885571
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.1406493   0.9697589   1.3416541
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.0462415   0.8798175   1.2441459
6-24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0244880   0.8586045   1.2224203
6-24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.0433291   0.8758963   1.2427677
6-24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1459550   0.9723233   1.3505928
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         1.0154170   0.5451601   1.8913189
6-24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         1.7392796   1.0696070   2.8282290
6-24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         1.3671199   0.8055280   2.3202381
6-24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         0.7082103   0.3744918   1.3393132
6-24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         0.9465056   0.5523028   1.6220684
6-24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         0.9677600   0.5694992   1.6445315
6-24 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         1.0652174   0.4348746   2.6092306
6-24 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         1.2009804   0.5158090   2.7962946
6-24 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         1.9140625   0.8932358   4.1015321
6-24 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4         0.4178571   0.2188947   0.7976648
6-24 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         0.8532819   0.5408026   1.3463135
6-24 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4         0.6753247   0.3940962   1.1572387
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         1.8049979   0.9703690   3.3575035
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.4440767   0.7463328   2.7941389
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         1.7220253   0.9189330   3.2269720
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         0.5471459   0.3614749   0.8281866
6-24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.6390727   0.4327540   0.9437553
6-24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         0.8957077   0.6250337   1.2835984
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.8796579   0.6833265   1.1323986
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0051832   0.7638668   1.3227348
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.0024467   0.7784921   1.2908280


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0125670   -0.0556692    0.0305351
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0381569    0.0093650    0.0669488
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0443559    0.0196732    0.0690385
0-24 months   CONTENT          PERU                           Wealth Q4            NA                 0.0926655    0.0014385    0.1838925
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0170574   -0.0744590    0.0403443
0-24 months   IRC              INDIA                          Wealth Q4            NA                 0.1192128    0.0380778    0.2003477
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0049733   -0.0072161    0.0171627
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0288705   -0.0003743    0.0581153
0-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0179783   -0.0373318    0.0732883
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0338889   -0.0690367    0.1368146
0-24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0124841   -0.1117401    0.0867719
0-24 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.0219714   -0.1322105    0.0882677
0-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.0339345   -0.0721573    0.1400262
0-24 months   MAL-ED           PERU                           Wealth Q4            NA                -0.0314639   -0.1231540    0.0602261
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.1133583    0.0070046    0.2197121
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0148844   -0.0749641    0.0451953
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0323486   -0.0655740    0.0008767
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1597624   -0.2460786   -0.0734461
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0337850    0.0008619    0.0667081
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0070515   -0.0137936    0.0278965
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0017014   -0.0471594    0.0505622
0-6 months    IRC              INDIA                          Wealth Q4            NA                 0.0185884   -0.0592639    0.0964407
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0145311    0.0040871    0.0249752
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0155909   -0.0109861    0.0421679
0-6 months    LCNI-5           MALAWI                         Wealth Q4            NA                 0.0211306   -0.0744602    0.1167214
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0737115   -0.0259864    0.1734095
0-6 months    MAL-ED           BRAZIL                         Wealth Q4            NA                 0.0248997   -0.0685765    0.1183759
0-6 months    MAL-ED           INDIA                          Wealth Q4            NA                 0.0020211   -0.1045899    0.1086322
0-6 months    MAL-ED           NEPAL                          Wealth Q4            NA                 0.0042373   -0.0791207    0.0875953
0-6 months    MAL-ED           PERU                           Wealth Q4            NA                 0.0740036   -0.0173802    0.1653873
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.0643892   -0.0390832    0.1678615
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0648341   -0.0302389    0.1599071
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0132801   -0.0284955    0.0550557
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0386659   -0.0662110   -0.0111207
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0361486   -0.0851282    0.1574255
6-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0327477   -0.0018414    0.0673368
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0687818    0.0383417    0.0992219
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0032540   -0.0780958    0.0846037
6-24 months   IRC              INDIA                          Wealth Q4            NA                 0.1771754    0.0791844    0.2751665
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0135132   -0.0051124    0.0321387
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0266124   -0.0137170    0.0669418
6-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0296043   -0.0300026    0.0892112
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0838940   -0.0346039    0.2023918
6-24 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.0112846   -0.1485641    0.1259948
6-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.0480749   -0.0449018    0.1410516
6-24 months   MAL-ED           PERU                           Wealth Q4            NA                -0.1424884   -0.2764712   -0.0085056
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.1176542    0.0021134    0.2331950
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0885228   -0.1739714   -0.0030742
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0095294   -0.0481594    0.0291005


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0135870   -0.0613168    0.0319963
0-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0494569    0.0112194    0.0862156
0-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0646002    0.0278585    0.0999533
0-24 months   CONTENT          PERU                           Wealth Q4            NA                 0.3759071   -0.1179586    0.6516043
0-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0266952   -0.1205687    0.0593143
0-24 months   IRC              INDIA                          Wealth Q4            NA                 0.1858450    0.0474651    0.3041217
0-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0100385   -0.0148766    0.0343420
0-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0496203   -0.0019920    0.0985741
0-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0281924   -0.0625793    0.1112099
0-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0550411   -0.1280868    0.2084409
0-24 months   MAL-ED           BRAZIL                         Wealth Q4            NA                -0.0468154   -0.4931440    0.2660973
0-24 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.0353649   -0.2288962    0.1276883
0-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.0976650   -0.2659576    0.3568439
0-24 months   MAL-ED           PERU                           Wealth Q4            NA                -0.0472828   -0.1947779    0.0820040
0-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.1832270   -0.0103681    0.3397276
0-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0341609   -0.1815982    0.0948795
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0932517   -0.1933893   -0.0015167
0-6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.3127264   -0.4983747   -0.1500799
0-6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1042710   -0.0034645    0.2004396
0-6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0294888   -0.0616191    0.1127778
0-6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0053494   -0.1607860    0.1477069
0-6 months    IRC              INDIA                          Wealth Q4            NA                 0.0438003   -0.1584288    0.2107259
0-6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0351767    0.0095306    0.0601588
0-6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0448699   -0.0347864    0.1183943
0-6 months    LCNI-5           MALAWI                         Wealth Q4            NA                 0.0598330   -0.2539287    0.2950843
0-6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.2175389   -0.1390076    0.4624748
0-6 months    MAL-ED           BRAZIL                         Wealth Q4            NA                 0.1161985   -0.4469280    0.4601631
0-6 months    MAL-ED           INDIA                          Wealth Q4            NA                 0.0058637   -0.3570127    0.2717040
0-6 months    MAL-ED           NEPAL                          Wealth Q4            NA                 0.0243902   -0.5953455    0.4033804
0-6 months    MAL-ED           PERU                           Wealth Q4            NA                 0.1649915   -0.0677073    0.3469754
0-6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.1638417   -0.1469604    0.3904230
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1573643   -0.1091115    0.3598165
0-6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0553338   -0.1361019    0.2145121
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1982353   -0.3478779   -0.0652061
6-24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0425955   -0.1117937    0.1755455
6-24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0427232   -0.0036325    0.0869378
6-24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1066419    0.0579634    0.1528051
6-24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0057670   -0.1493952    0.1399832
6-24 months   IRC              INDIA                          Wealth Q4            NA                 0.4698135    0.1396873    0.6732610
6-24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0625170   -0.0276821    0.1447993
6-24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0703231   -0.0427195    0.1711106
6-24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0493405   -0.0554785    0.1437500
6-24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.1978395   -0.1366389    0.4338910
6-24 months   MAL-ED           INDIA                          Wealth Q4            NA                -0.0267358   -0.4093868    0.2520247
6-24 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.2274764   -0.3607913    0.5614369
6-24 months   MAL-ED           PERU                           Wealth Q4            NA                -0.3598435   -0.7515813   -0.0557172
6-24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.3144207   -0.0711036    0.5611825
6-24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.2946451   -0.6126344   -0.0393589
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0420137   -0.2269922    0.1150780
