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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** nrooms

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_nchldlt5
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
* delta_W_nchldlt5
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

agecat      studyid          country                        nrooms    sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          4+               0        5      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          4+               1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1                0       36      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1                1        2      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          2                0       28      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          2                1        1      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          3                0       19      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          3                1        1      92  sstunted         
Birth       COHORTS          INDIA                          4+               0       91    4769  sstunted         
Birth       COHORTS          INDIA                          4+               1        1    4769  sstunted         
Birth       COHORTS          INDIA                          1                0     3021    4769  sstunted         
Birth       COHORTS          INDIA                          1                1      104    4769  sstunted         
Birth       COHORTS          INDIA                          2                0     1356    4769  sstunted         
Birth       COHORTS          INDIA                          2                1       29    4769  sstunted         
Birth       COHORTS          INDIA                          3                0      160    4769  sstunted         
Birth       COHORTS          INDIA                          3                1        7    4769  sstunted         
Birth       CONTENT          PERU                           4+               0        1       2  sstunted         
Birth       CONTENT          PERU                           4+               1        0       2  sstunted         
Birth       CONTENT          PERU                           1                0        0       2  sstunted         
Birth       CONTENT          PERU                           1                1        0       2  sstunted         
Birth       CONTENT          PERU                           2                0        1       2  sstunted         
Birth       CONTENT          PERU                           2                1        0       2  sstunted         
Birth       CONTENT          PERU                           3                0        0       2  sstunted         
Birth       CONTENT          PERU                           3                1        0       2  sstunted         
Birth       GMS-Nepal        NEPAL                          4+               0      306     696  sstunted         
Birth       GMS-Nepal        NEPAL                          4+               1       15     696  sstunted         
Birth       GMS-Nepal        NEPAL                          1                0       44     696  sstunted         
Birth       GMS-Nepal        NEPAL                          1                1        5     696  sstunted         
Birth       GMS-Nepal        NEPAL                          2                0      139     696  sstunted         
Birth       GMS-Nepal        NEPAL                          2                1        6     696  sstunted         
Birth       GMS-Nepal        NEPAL                          3                0      176     696  sstunted         
Birth       GMS-Nepal        NEPAL                          3                1        5     696  sstunted         
Birth       IRC              INDIA                          4+               0       17     386  sstunted         
Birth       IRC              INDIA                          4+               1        0     386  sstunted         
Birth       IRC              INDIA                          1                0      167     386  sstunted         
Birth       IRC              INDIA                          1                1        8     386  sstunted         
Birth       IRC              INDIA                          2                0      153     386  sstunted         
Birth       IRC              INDIA                          2                1        8     386  sstunted         
Birth       IRC              INDIA                          3                0       33     386  sstunted         
Birth       IRC              INDIA                          3                1        0     386  sstunted         
Birth       JiVitA-3         BANGLADESH                     4+               0      704   22429  sstunted         
Birth       JiVitA-3         BANGLADESH                     4+               1       51   22429  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                0    12420   22429  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                1     1522   22429  sstunted         
Birth       JiVitA-3         BANGLADESH                     2                0     5152   22429  sstunted         
Birth       JiVitA-3         BANGLADESH                     2                1      694   22429  sstunted         
Birth       JiVitA-3         BANGLADESH                     3                0     1705   22429  sstunted         
Birth       JiVitA-3         BANGLADESH                     3                1      181   22429  sstunted         
Birth       JiVitA-4         BANGLADESH                     4+               0      118    2820  sstunted         
Birth       JiVitA-4         BANGLADESH                     4+               1       10    2820  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                0     1548    2820  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                1      157    2820  sstunted         
Birth       JiVitA-4         BANGLADESH                     2                0      660    2820  sstunted         
Birth       JiVitA-4         BANGLADESH                     2                1       49    2820  sstunted         
Birth       JiVitA-4         BANGLADESH                     3                0      261    2820  sstunted         
Birth       JiVitA-4         BANGLADESH                     3                1       17    2820  sstunted         
Birth       MAL-ED           BANGLADESH                     4+               0       12     213  sstunted         
Birth       MAL-ED           BANGLADESH                     4+               1        0     213  sstunted         
Birth       MAL-ED           BANGLADESH                     1                0      125     213  sstunted         
Birth       MAL-ED           BANGLADESH                     1                1        5     213  sstunted         
Birth       MAL-ED           BANGLADESH                     2                0       45     213  sstunted         
Birth       MAL-ED           BANGLADESH                     2                1        1     213  sstunted         
Birth       MAL-ED           BANGLADESH                     3                0       25     213  sstunted         
Birth       MAL-ED           BANGLADESH                     3                1        0     213  sstunted         
Birth       MAL-ED           BRAZIL                         4+               0       29      60  sstunted         
Birth       MAL-ED           BRAZIL                         4+               1        1      60  sstunted         
Birth       MAL-ED           BRAZIL                         1                0        0      60  sstunted         
Birth       MAL-ED           BRAZIL                         1                1        0      60  sstunted         
Birth       MAL-ED           BRAZIL                         2                0       10      60  sstunted         
Birth       MAL-ED           BRAZIL                         2                1        0      60  sstunted         
Birth       MAL-ED           BRAZIL                         3                0       18      60  sstunted         
Birth       MAL-ED           BRAZIL                         3                1        2      60  sstunted         
Birth       MAL-ED           INDIA                          4+               0        2      41  sstunted         
Birth       MAL-ED           INDIA                          4+               1        0      41  sstunted         
Birth       MAL-ED           INDIA                          1                0       17      41  sstunted         
Birth       MAL-ED           INDIA                          1                1        1      41  sstunted         
Birth       MAL-ED           INDIA                          2                0       16      41  sstunted         
Birth       MAL-ED           INDIA                          2                1        1      41  sstunted         
Birth       MAL-ED           INDIA                          3                0        4      41  sstunted         
Birth       MAL-ED           INDIA                          3                1        0      41  sstunted         
Birth       MAL-ED           NEPAL                          4+               0       15      26  sstunted         
Birth       MAL-ED           NEPAL                          4+               1        0      26  sstunted         
Birth       MAL-ED           NEPAL                          1                0        6      26  sstunted         
Birth       MAL-ED           NEPAL                          1                1        1      26  sstunted         
Birth       MAL-ED           NEPAL                          2                0        2      26  sstunted         
Birth       MAL-ED           NEPAL                          2                1        0      26  sstunted         
Birth       MAL-ED           NEPAL                          3                0        2      26  sstunted         
Birth       MAL-ED           NEPAL                          3                1        0      26  sstunted         
Birth       MAL-ED           PERU                           4+               0      103     215  sstunted         
Birth       MAL-ED           PERU                           4+               1        4     215  sstunted         
Birth       MAL-ED           PERU                           1                0       13     215  sstunted         
Birth       MAL-ED           PERU                           1                1        0     215  sstunted         
Birth       MAL-ED           PERU                           2                0       45     215  sstunted         
Birth       MAL-ED           PERU                           2                1        0     215  sstunted         
Birth       MAL-ED           PERU                           3                0       50     215  sstunted         
Birth       MAL-ED           PERU                           3                1        0     215  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   4+               0       66      96  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   4+               1        1      96  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                0        5      96  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                1        0      96  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   2                0       12      96  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   2                1        0      96  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   3                0       12      96  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   3                1        0      96  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+               0       45     120  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+               1        4     120  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        9     120  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     120  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0       28     120  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1        3     120  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0       30     120  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1        1     120  sstunted         
Birth       NIH-Crypto       BANGLADESH                     4+               0       92     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     4+               1        1     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     1                0      350     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     1                1        3     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     2                0      183     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     2                1        4     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     3                0       97     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     3                1        2     732  sstunted         
Birth       PROVIDE          BANGLADESH                     4+               0       19     539  sstunted         
Birth       PROVIDE          BANGLADESH                     4+               1        0     539  sstunted         
Birth       PROVIDE          BANGLADESH                     1                0      387     539  sstunted         
Birth       PROVIDE          BANGLADESH                     1                1        3     539  sstunted         
Birth       PROVIDE          BANGLADESH                     2                0       82     539  sstunted         
Birth       PROVIDE          BANGLADESH                     2                1        1     539  sstunted         
Birth       PROVIDE          BANGLADESH                     3                0       47     539  sstunted         
Birth       PROVIDE          BANGLADESH                     3                1        0     539  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          4+               0       14     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          4+               1        0     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                0      179     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                1       19     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          2                0       91     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          2                1       15     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          3                0       43     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          3                1        8     369  sstunted         
6 months    COHORTS          INDIA                          4+               0       93    4962  sstunted         
6 months    COHORTS          INDIA                          4+               1        0    4962  sstunted         
6 months    COHORTS          INDIA                          1                0     3000    4962  sstunted         
6 months    COHORTS          INDIA                          1                1      213    4962  sstunted         
6 months    COHORTS          INDIA                          2                0     1448    4962  sstunted         
6 months    COHORTS          INDIA                          2                1       26    4962  sstunted         
6 months    COHORTS          INDIA                          3                0      179    4962  sstunted         
6 months    COHORTS          INDIA                          3                1        3    4962  sstunted         
6 months    CONTENT          PERU                           4+               0       78     215  sstunted         
6 months    CONTENT          PERU                           4+               1        0     215  sstunted         
6 months    CONTENT          PERU                           1                0       43     215  sstunted         
6 months    CONTENT          PERU                           1                1        1     215  sstunted         
6 months    CONTENT          PERU                           2                0       54     215  sstunted         
6 months    CONTENT          PERU                           2                1        0     215  sstunted         
6 months    CONTENT          PERU                           3                0       39     215  sstunted         
6 months    CONTENT          PERU                           3                1        0     215  sstunted         
6 months    GMS-Nepal        NEPAL                          4+               0      262     564  sstunted         
6 months    GMS-Nepal        NEPAL                          4+               1        6     564  sstunted         
6 months    GMS-Nepal        NEPAL                          1                0       38     564  sstunted         
6 months    GMS-Nepal        NEPAL                          1                1        2     564  sstunted         
6 months    GMS-Nepal        NEPAL                          2                0      107     564  sstunted         
6 months    GMS-Nepal        NEPAL                          2                1        8     564  sstunted         
6 months    GMS-Nepal        NEPAL                          3                0      136     564  sstunted         
6 months    GMS-Nepal        NEPAL                          3                1        5     564  sstunted         
6 months    IRC              INDIA                          4+               0       16     405  sstunted         
6 months    IRC              INDIA                          4+               1        1     405  sstunted         
6 months    IRC              INDIA                          1                0      172     405  sstunted         
6 months    IRC              INDIA                          1                1       11     405  sstunted         
6 months    IRC              INDIA                          2                0      156     405  sstunted         
6 months    IRC              INDIA                          2                1       14     405  sstunted         
6 months    IRC              INDIA                          3                0       32     405  sstunted         
6 months    IRC              INDIA                          3                1        3     405  sstunted         
6 months    JiVitA-3         BANGLADESH                     4+               0      718   16800  sstunted         
6 months    JiVitA-3         BANGLADESH                     4+               1       26   16800  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                0     9033   16800  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                1      592   16800  sstunted         
6 months    JiVitA-3         BANGLADESH                     2                0     4427   16800  sstunted         
6 months    JiVitA-3         BANGLADESH                     2                1      313   16800  sstunted         
6 months    JiVitA-3         BANGLADESH                     3                0     1603   16800  sstunted         
6 months    JiVitA-3         BANGLADESH                     3                1       88   16800  sstunted         
6 months    JiVitA-4         BANGLADESH                     4+               0      251    4825  sstunted         
6 months    JiVitA-4         BANGLADESH                     4+               1       11    4825  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                0     2670    4825  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                1      180    4825  sstunted         
6 months    JiVitA-4         BANGLADESH                     2                0     1165    4825  sstunted         
6 months    JiVitA-4         BANGLADESH                     2                1       60    4825  sstunted         
6 months    JiVitA-4         BANGLADESH                     3                0      468    4825  sstunted         
6 months    JiVitA-4         BANGLADESH                     3                1       20    4825  sstunted         
6 months    MAL-ED           BANGLADESH                     4+               0       12     240  sstunted         
6 months    MAL-ED           BANGLADESH                     4+               1        0     240  sstunted         
6 months    MAL-ED           BANGLADESH                     1                0      145     240  sstunted         
6 months    MAL-ED           BANGLADESH                     1                1        5     240  sstunted         
6 months    MAL-ED           BANGLADESH                     2                0       47     240  sstunted         
6 months    MAL-ED           BANGLADESH                     2                1        3     240  sstunted         
6 months    MAL-ED           BANGLADESH                     3                0       28     240  sstunted         
6 months    MAL-ED           BANGLADESH                     3                1        0     240  sstunted         
6 months    MAL-ED           BRAZIL                         4+               0      126     209  sstunted         
6 months    MAL-ED           BRAZIL                         4+               1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         1                0        4     209  sstunted         
6 months    MAL-ED           BRAZIL                         1                1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         2                0       20     209  sstunted         
6 months    MAL-ED           BRAZIL                         2                1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         3                0       59     209  sstunted         
6 months    MAL-ED           BRAZIL                         3                1        0     209  sstunted         
6 months    MAL-ED           INDIA                          4+               0       25     235  sstunted         
6 months    MAL-ED           INDIA                          4+               1        0     235  sstunted         
6 months    MAL-ED           INDIA                          1                0       81     235  sstunted         
6 months    MAL-ED           INDIA                          1                1        3     235  sstunted         
6 months    MAL-ED           INDIA                          2                0       74     235  sstunted         
6 months    MAL-ED           INDIA                          2                1        4     235  sstunted         
6 months    MAL-ED           INDIA                          3                0       46     235  sstunted         
6 months    MAL-ED           INDIA                          3                1        2     235  sstunted         
6 months    MAL-ED           NEPAL                          4+               0      131     236  sstunted         
6 months    MAL-ED           NEPAL                          4+               1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          1                0       51     236  sstunted         
6 months    MAL-ED           NEPAL                          1                1        1     236  sstunted         
6 months    MAL-ED           NEPAL                          2                0       31     236  sstunted         
6 months    MAL-ED           NEPAL                          2                1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          3                0       22     236  sstunted         
6 months    MAL-ED           NEPAL                          3                1        0     236  sstunted         
6 months    MAL-ED           PERU                           4+               0      133     270  sstunted         
6 months    MAL-ED           PERU                           4+               1        6     270  sstunted         
6 months    MAL-ED           PERU                           1                0       18     270  sstunted         
6 months    MAL-ED           PERU                           1                1        1     270  sstunted         
6 months    MAL-ED           PERU                           2                0       49     270  sstunted         
6 months    MAL-ED           PERU                           2                1        1     270  sstunted         
6 months    MAL-ED           PERU                           3                0       60     270  sstunted         
6 months    MAL-ED           PERU                           3                1        2     270  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   4+               0      185     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   4+               1        6     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                0       14     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                1        0     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   2                0       21     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   2                1        0     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   3                0       23     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   3                1        0     249  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+               0      103     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+               1        5     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       11     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        2     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0       56     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1        6     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0       63     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1        1     247  sstunted         
6 months    NIH-Crypto       BANGLADESH                     4+               0       90     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     4+               1        1     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     1                0      326     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     1                1       13     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     2                0      178     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     2                1        6     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     3                0       98     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     3                1        3     715  sstunted         
6 months    PROVIDE          BANGLADESH                     4+               0       21     604  sstunted         
6 months    PROVIDE          BANGLADESH                     4+               1        0     604  sstunted         
6 months    PROVIDE          BANGLADESH                     1                0      419     604  sstunted         
6 months    PROVIDE          BANGLADESH                     1                1       12     604  sstunted         
6 months    PROVIDE          BANGLADESH                     2                0       92     604  sstunted         
6 months    PROVIDE          BANGLADESH                     2                1        2     604  sstunted         
6 months    PROVIDE          BANGLADESH                     3                0       58     604  sstunted         
6 months    PROVIDE          BANGLADESH                     3                1        0     604  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          4+               0       11     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          4+               1        3     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                0      129     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                1       72     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          2                0       71     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          2                1       34     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          3                0       35     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          3                1       16     371  sstunted         
24 months   COHORTS          INDIA                          4+               0       71    3746  sstunted         
24 months   COHORTS          INDIA                          4+               1        5    3746  sstunted         
24 months   COHORTS          INDIA                          1                0     1541    3746  sstunted         
24 months   COHORTS          INDIA                          1                1      758    3746  sstunted         
24 months   COHORTS          INDIA                          2                0     1042    3746  sstunted         
24 months   COHORTS          INDIA                          2                1      179    3746  sstunted         
24 months   COHORTS          INDIA                          3                0      130    3746  sstunted         
24 months   COHORTS          INDIA                          3                1       20    3746  sstunted         
24 months   CONTENT          PERU                           4+               0       63     164  sstunted         
24 months   CONTENT          PERU                           4+               1        0     164  sstunted         
24 months   CONTENT          PERU                           1                0       30     164  sstunted         
24 months   CONTENT          PERU                           1                1        0     164  sstunted         
24 months   CONTENT          PERU                           2                0       38     164  sstunted         
24 months   CONTENT          PERU                           2                1        1     164  sstunted         
24 months   CONTENT          PERU                           3                0       32     164  sstunted         
24 months   CONTENT          PERU                           3                1        0     164  sstunted         
24 months   GMS-Nepal        NEPAL                          4+               0      209     488  sstunted         
24 months   GMS-Nepal        NEPAL                          4+               1       22     488  sstunted         
24 months   GMS-Nepal        NEPAL                          1                0       29     488  sstunted         
24 months   GMS-Nepal        NEPAL                          1                1        6     488  sstunted         
24 months   GMS-Nepal        NEPAL                          2                0       91     488  sstunted         
24 months   GMS-Nepal        NEPAL                          2                1       15     488  sstunted         
24 months   GMS-Nepal        NEPAL                          3                0      106     488  sstunted         
24 months   GMS-Nepal        NEPAL                          3                1       10     488  sstunted         
24 months   IRC              INDIA                          4+               0       15     407  sstunted         
24 months   IRC              INDIA                          4+               1        2     407  sstunted         
24 months   IRC              INDIA                          1                0      159     407  sstunted         
24 months   IRC              INDIA                          1                1       25     407  sstunted         
24 months   IRC              INDIA                          2                0      158     407  sstunted         
24 months   IRC              INDIA                          2                1       12     407  sstunted         
24 months   IRC              INDIA                          3                0       34     407  sstunted         
24 months   IRC              INDIA                          3                1        2     407  sstunted         
24 months   JiVitA-3         BANGLADESH                     4+               0      337    8620  sstunted         
24 months   JiVitA-3         BANGLADESH                     4+               1       30    8620  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                0     4191    8620  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                1      860    8620  sstunted         
24 months   JiVitA-3         BANGLADESH                     2                0     2037    8620  sstunted         
24 months   JiVitA-3         BANGLADESH                     2                1      363    8620  sstunted         
24 months   JiVitA-3         BANGLADESH                     3                0      710    8620  sstunted         
24 months   JiVitA-3         BANGLADESH                     3                1       92    8620  sstunted         
24 months   JiVitA-4         BANGLADESH                     4+               0      244    4747  sstunted         
24 months   JiVitA-4         BANGLADESH                     4+               1        7    4747  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                0     2482    4747  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                1      307    4747  sstunted         
24 months   JiVitA-4         BANGLADESH                     2                0     1112    4747  sstunted         
24 months   JiVitA-4         BANGLADESH                     2                1      104    4747  sstunted         
24 months   JiVitA-4         BANGLADESH                     3                0      457    4747  sstunted         
24 months   JiVitA-4         BANGLADESH                     3                1       34    4747  sstunted         
24 months   MAL-ED           BANGLADESH                     4+               0       11     212  sstunted         
24 months   MAL-ED           BANGLADESH                     4+               1        0     212  sstunted         
24 months   MAL-ED           BANGLADESH                     1                0      111     212  sstunted         
24 months   MAL-ED           BANGLADESH                     1                1       23     212  sstunted         
24 months   MAL-ED           BANGLADESH                     2                0       36     212  sstunted         
24 months   MAL-ED           BANGLADESH                     2                1        4     212  sstunted         
24 months   MAL-ED           BANGLADESH                     3                0       26     212  sstunted         
24 months   MAL-ED           BANGLADESH                     3                1        1     212  sstunted         
24 months   MAL-ED           BRAZIL                         4+               0      104     169  sstunted         
24 months   MAL-ED           BRAZIL                         4+               1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         1                0        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         1                1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         2                0       16     169  sstunted         
24 months   MAL-ED           BRAZIL                         2                1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         3                0       48     169  sstunted         
24 months   MAL-ED           BRAZIL                         3                1        1     169  sstunted         
24 months   MAL-ED           INDIA                          4+               0       22     227  sstunted         
24 months   MAL-ED           INDIA                          4+               1        3     227  sstunted         
24 months   MAL-ED           INDIA                          1                0       73     227  sstunted         
24 months   MAL-ED           INDIA                          1                1        9     227  sstunted         
24 months   MAL-ED           INDIA                          2                0       60     227  sstunted         
24 months   MAL-ED           INDIA                          2                1       14     227  sstunted         
24 months   MAL-ED           INDIA                          3                0       42     227  sstunted         
24 months   MAL-ED           INDIA                          3                1        4     227  sstunted         
24 months   MAL-ED           NEPAL                          4+               0      122     228  sstunted         
24 months   MAL-ED           NEPAL                          4+               1        5     228  sstunted         
24 months   MAL-ED           NEPAL                          1                0       47     228  sstunted         
24 months   MAL-ED           NEPAL                          1                1        1     228  sstunted         
24 months   MAL-ED           NEPAL                          2                0       31     228  sstunted         
24 months   MAL-ED           NEPAL                          2                1        0     228  sstunted         
24 months   MAL-ED           NEPAL                          3                0       21     228  sstunted         
24 months   MAL-ED           NEPAL                          3                1        1     228  sstunted         
24 months   MAL-ED           PERU                           4+               0      100     201  sstunted         
24 months   MAL-ED           PERU                           4+               1       10     201  sstunted         
24 months   MAL-ED           PERU                           1                0       13     201  sstunted         
24 months   MAL-ED           PERU                           1                1        3     201  sstunted         
24 months   MAL-ED           PERU                           2                0       32     201  sstunted         
24 months   MAL-ED           PERU                           2                1        0     201  sstunted         
24 months   MAL-ED           PERU                           3                0       41     201  sstunted         
24 months   MAL-ED           PERU                           3                1        2     201  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   4+               0      165     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   4+               1       18     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                0       10     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                1        3     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   2                0       17     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   2                1        2     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   3                0       19     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   3                1        4     238  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+               0       68     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+               1       30     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        7     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        2     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                0       27     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2                1       23     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                0       42     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3                1       15     214  sstunted         
24 months   NIH-Crypto       BANGLADESH                     4+               0       80     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     4+               1        2     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     1                0      200     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     1                1       17     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     2                0      120     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     2                1       17     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     3                0       78     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     3                1        0     514  sstunted         
24 months   PROVIDE          BANGLADESH                     4+               0       21     578  sstunted         
24 months   PROVIDE          BANGLADESH                     4+               1        1     578  sstunted         
24 months   PROVIDE          BANGLADESH                     1                0      368     578  sstunted         
24 months   PROVIDE          BANGLADESH                     1                1       39     578  sstunted         
24 months   PROVIDE          BANGLADESH                     2                0       84     578  sstunted         
24 months   PROVIDE          BANGLADESH                     2                1        8     578  sstunted         
24 months   PROVIDE          BANGLADESH                     3                0       53     578  sstunted         
24 months   PROVIDE          BANGLADESH                     3                1        4     578  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
