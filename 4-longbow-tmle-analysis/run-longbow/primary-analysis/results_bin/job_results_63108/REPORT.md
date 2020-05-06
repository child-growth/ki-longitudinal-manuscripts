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

**Outcome Variable:** stunted

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

agecat      studyid          country                        nrooms    stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  -------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          4+              0        4      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          4+              1        1      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1               0       32      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1               1        6      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          2               0       22      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          2               1        7      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          3               0       17      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          3               1        3      92  stunted          
Birth       COHORTS          INDIA                          4+              0       84    4769  stunted          
Birth       COHORTS          INDIA                          4+              1        8    4769  stunted          
Birth       COHORTS          INDIA                          1               0     2705    4769  stunted          
Birth       COHORTS          INDIA                          1               1      420    4769  stunted          
Birth       COHORTS          INDIA                          2               0     1263    4769  stunted          
Birth       COHORTS          INDIA                          2               1      122    4769  stunted          
Birth       COHORTS          INDIA                          3               0      152    4769  stunted          
Birth       COHORTS          INDIA                          3               1       15    4769  stunted          
Birth       CONTENT          PERU                           4+              0        1       2  stunted          
Birth       CONTENT          PERU                           4+              1        0       2  stunted          
Birth       CONTENT          PERU                           1               0        0       2  stunted          
Birth       CONTENT          PERU                           1               1        0       2  stunted          
Birth       CONTENT          PERU                           2               0        1       2  stunted          
Birth       CONTENT          PERU                           2               1        0       2  stunted          
Birth       CONTENT          PERU                           3               0        0       2  stunted          
Birth       CONTENT          PERU                           3               1        0       2  stunted          
Birth       GMS-Nepal        NEPAL                          4+              0      276     696  stunted          
Birth       GMS-Nepal        NEPAL                          4+              1       45     696  stunted          
Birth       GMS-Nepal        NEPAL                          1               0       42     696  stunted          
Birth       GMS-Nepal        NEPAL                          1               1        7     696  stunted          
Birth       GMS-Nepal        NEPAL                          2               0      113     696  stunted          
Birth       GMS-Nepal        NEPAL                          2               1       32     696  stunted          
Birth       GMS-Nepal        NEPAL                          3               0      143     696  stunted          
Birth       GMS-Nepal        NEPAL                          3               1       38     696  stunted          
Birth       IRC              INDIA                          4+              0       16     386  stunted          
Birth       IRC              INDIA                          4+              1        1     386  stunted          
Birth       IRC              INDIA                          1               0      156     386  stunted          
Birth       IRC              INDIA                          1               1       19     386  stunted          
Birth       IRC              INDIA                          2               0      141     386  stunted          
Birth       IRC              INDIA                          2               1       20     386  stunted          
Birth       IRC              INDIA                          3               0       28     386  stunted          
Birth       IRC              INDIA                          3               1        5     386  stunted          
Birth       JiVitA-3         BANGLADESH                     4+              0      586   22429  stunted          
Birth       JiVitA-3         BANGLADESH                     4+              1      169   22429  stunted          
Birth       JiVitA-3         BANGLADESH                     1               0     9300   22429  stunted          
Birth       JiVitA-3         BANGLADESH                     1               1     4642   22429  stunted          
Birth       JiVitA-3         BANGLADESH                     2               0     3832   22429  stunted          
Birth       JiVitA-3         BANGLADESH                     2               1     2014   22429  stunted          
Birth       JiVitA-3         BANGLADESH                     3               0     1328   22429  stunted          
Birth       JiVitA-3         BANGLADESH                     3               1      558   22429  stunted          
Birth       JiVitA-4         BANGLADESH                     4+              0       81    2820  stunted          
Birth       JiVitA-4         BANGLADESH                     4+              1       47    2820  stunted          
Birth       JiVitA-4         BANGLADESH                     1               0     1157    2820  stunted          
Birth       JiVitA-4         BANGLADESH                     1               1      548    2820  stunted          
Birth       JiVitA-4         BANGLADESH                     2               0      517    2820  stunted          
Birth       JiVitA-4         BANGLADESH                     2               1      192    2820  stunted          
Birth       JiVitA-4         BANGLADESH                     3               0      209    2820  stunted          
Birth       JiVitA-4         BANGLADESH                     3               1       69    2820  stunted          
Birth       MAL-ED           BANGLADESH                     4+              0       12     213  stunted          
Birth       MAL-ED           BANGLADESH                     4+              1        0     213  stunted          
Birth       MAL-ED           BANGLADESH                     1               0      103     213  stunted          
Birth       MAL-ED           BANGLADESH                     1               1       27     213  stunted          
Birth       MAL-ED           BANGLADESH                     2               0       38     213  stunted          
Birth       MAL-ED           BANGLADESH                     2               1        8     213  stunted          
Birth       MAL-ED           BANGLADESH                     3               0       23     213  stunted          
Birth       MAL-ED           BANGLADESH                     3               1        2     213  stunted          
Birth       MAL-ED           BRAZIL                         4+              0       24      60  stunted          
Birth       MAL-ED           BRAZIL                         4+              1        6      60  stunted          
Birth       MAL-ED           BRAZIL                         1               0        0      60  stunted          
Birth       MAL-ED           BRAZIL                         1               1        0      60  stunted          
Birth       MAL-ED           BRAZIL                         2               0       10      60  stunted          
Birth       MAL-ED           BRAZIL                         2               1        0      60  stunted          
Birth       MAL-ED           BRAZIL                         3               0       17      60  stunted          
Birth       MAL-ED           BRAZIL                         3               1        3      60  stunted          
Birth       MAL-ED           INDIA                          4+              0        2      41  stunted          
Birth       MAL-ED           INDIA                          4+              1        0      41  stunted          
Birth       MAL-ED           INDIA                          1               0       16      41  stunted          
Birth       MAL-ED           INDIA                          1               1        2      41  stunted          
Birth       MAL-ED           INDIA                          2               0       11      41  stunted          
Birth       MAL-ED           INDIA                          2               1        6      41  stunted          
Birth       MAL-ED           INDIA                          3               0        4      41  stunted          
Birth       MAL-ED           INDIA                          3               1        0      41  stunted          
Birth       MAL-ED           NEPAL                          4+              0       15      26  stunted          
Birth       MAL-ED           NEPAL                          4+              1        0      26  stunted          
Birth       MAL-ED           NEPAL                          1               0        6      26  stunted          
Birth       MAL-ED           NEPAL                          1               1        1      26  stunted          
Birth       MAL-ED           NEPAL                          2               0        2      26  stunted          
Birth       MAL-ED           NEPAL                          2               1        0      26  stunted          
Birth       MAL-ED           NEPAL                          3               0        1      26  stunted          
Birth       MAL-ED           NEPAL                          3               1        1      26  stunted          
Birth       MAL-ED           PERU                           4+              0       89     215  stunted          
Birth       MAL-ED           PERU                           4+              1       18     215  stunted          
Birth       MAL-ED           PERU                           1               0       12     215  stunted          
Birth       MAL-ED           PERU                           1               1        1     215  stunted          
Birth       MAL-ED           PERU                           2               0       42     215  stunted          
Birth       MAL-ED           PERU                           2               1        3     215  stunted          
Birth       MAL-ED           PERU                           3               0       46     215  stunted          
Birth       MAL-ED           PERU                           3               1        4     215  stunted          
Birth       MAL-ED           SOUTH AFRICA                   4+              0       62      96  stunted          
Birth       MAL-ED           SOUTH AFRICA                   4+              1        5      96  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1               0        5      96  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1               1        0      96  stunted          
Birth       MAL-ED           SOUTH AFRICA                   2               0       10      96  stunted          
Birth       MAL-ED           SOUTH AFRICA                   2               1        2      96  stunted          
Birth       MAL-ED           SOUTH AFRICA                   3               0       11      96  stunted          
Birth       MAL-ED           SOUTH AFRICA                   3               1        1      96  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              0       37     120  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              1       12     120  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        9     120  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        0     120  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               0       27     120  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               1        4     120  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               0       26     120  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               1        5     120  stunted          
Birth       NIH-Crypto       BANGLADESH                     4+              0       82     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     4+              1       11     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     1               0      299     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     1               1       54     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     2               0      160     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     2               1       27     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     3               0       90     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     3               1        9     732  stunted          
Birth       PROVIDE          BANGLADESH                     4+              0       16     539  stunted          
Birth       PROVIDE          BANGLADESH                     4+              1        3     539  stunted          
Birth       PROVIDE          BANGLADESH                     1               0      360     539  stunted          
Birth       PROVIDE          BANGLADESH                     1               1       30     539  stunted          
Birth       PROVIDE          BANGLADESH                     2               0       72     539  stunted          
Birth       PROVIDE          BANGLADESH                     2               1       11     539  stunted          
Birth       PROVIDE          BANGLADESH                     3               0       43     539  stunted          
Birth       PROVIDE          BANGLADESH                     3               1        4     539  stunted          
6 months    CMC-V-BCS-2002   INDIA                          4+              0       10     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          4+              1        4     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1               0      143     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1               1       55     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          2               0       70     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          2               1       36     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          3               0       35     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          3               1       16     369  stunted          
6 months    COHORTS          INDIA                          4+              0       87    4962  stunted          
6 months    COHORTS          INDIA                          4+              1        6    4962  stunted          
6 months    COHORTS          INDIA                          1               0     2448    4962  stunted          
6 months    COHORTS          INDIA                          1               1      765    4962  stunted          
6 months    COHORTS          INDIA                          2               0     1294    4962  stunted          
6 months    COHORTS          INDIA                          2               1      180    4962  stunted          
6 months    COHORTS          INDIA                          3               0      163    4962  stunted          
6 months    COHORTS          INDIA                          3               1       19    4962  stunted          
6 months    CONTENT          PERU                           4+              0       74     215  stunted          
6 months    CONTENT          PERU                           4+              1        4     215  stunted          
6 months    CONTENT          PERU                           1               0       42     215  stunted          
6 months    CONTENT          PERU                           1               1        2     215  stunted          
6 months    CONTENT          PERU                           2               0       51     215  stunted          
6 months    CONTENT          PERU                           2               1        3     215  stunted          
6 months    CONTENT          PERU                           3               0       39     215  stunted          
6 months    CONTENT          PERU                           3               1        0     215  stunted          
6 months    GMS-Nepal        NEPAL                          4+              0      213     564  stunted          
6 months    GMS-Nepal        NEPAL                          4+              1       55     564  stunted          
6 months    GMS-Nepal        NEPAL                          1               0       28     564  stunted          
6 months    GMS-Nepal        NEPAL                          1               1       12     564  stunted          
6 months    GMS-Nepal        NEPAL                          2               0       90     564  stunted          
6 months    GMS-Nepal        NEPAL                          2               1       25     564  stunted          
6 months    GMS-Nepal        NEPAL                          3               0      111     564  stunted          
6 months    GMS-Nepal        NEPAL                          3               1       30     564  stunted          
6 months    IRC              INDIA                          4+              0       13     405  stunted          
6 months    IRC              INDIA                          4+              1        4     405  stunted          
6 months    IRC              INDIA                          1               0      140     405  stunted          
6 months    IRC              INDIA                          1               1       43     405  stunted          
6 months    IRC              INDIA                          2               0      123     405  stunted          
6 months    IRC              INDIA                          2               1       47     405  stunted          
6 months    IRC              INDIA                          3               0       29     405  stunted          
6 months    IRC              INDIA                          3               1        6     405  stunted          
6 months    JiVitA-3         BANGLADESH                     4+              0      638   16800  stunted          
6 months    JiVitA-3         BANGLADESH                     4+              1      106   16800  stunted          
6 months    JiVitA-3         BANGLADESH                     1               0     7125   16800  stunted          
6 months    JiVitA-3         BANGLADESH                     1               1     2500   16800  stunted          
6 months    JiVitA-3         BANGLADESH                     2               0     3473   16800  stunted          
6 months    JiVitA-3         BANGLADESH                     2               1     1267   16800  stunted          
6 months    JiVitA-3         BANGLADESH                     3               0     1340   16800  stunted          
6 months    JiVitA-3         BANGLADESH                     3               1      351   16800  stunted          
6 months    JiVitA-4         BANGLADESH                     4+              0      214    4825  stunted          
6 months    JiVitA-4         BANGLADESH                     4+              1       48    4825  stunted          
6 months    JiVitA-4         BANGLADESH                     1               0     2089    4825  stunted          
6 months    JiVitA-4         BANGLADESH                     1               1      761    4825  stunted          
6 months    JiVitA-4         BANGLADESH                     2               0      928    4825  stunted          
6 months    JiVitA-4         BANGLADESH                     2               1      297    4825  stunted          
6 months    JiVitA-4         BANGLADESH                     3               0      376    4825  stunted          
6 months    JiVitA-4         BANGLADESH                     3               1      112    4825  stunted          
6 months    MAL-ED           BANGLADESH                     4+              0       11     240  stunted          
6 months    MAL-ED           BANGLADESH                     4+              1        1     240  stunted          
6 months    MAL-ED           BANGLADESH                     1               0      121     240  stunted          
6 months    MAL-ED           BANGLADESH                     1               1       29     240  stunted          
6 months    MAL-ED           BANGLADESH                     2               0       40     240  stunted          
6 months    MAL-ED           BANGLADESH                     2               1       10     240  stunted          
6 months    MAL-ED           BANGLADESH                     3               0       24     240  stunted          
6 months    MAL-ED           BANGLADESH                     3               1        4     240  stunted          
6 months    MAL-ED           BRAZIL                         4+              0      121     209  stunted          
6 months    MAL-ED           BRAZIL                         4+              1        5     209  stunted          
6 months    MAL-ED           BRAZIL                         1               0        4     209  stunted          
6 months    MAL-ED           BRAZIL                         1               1        0     209  stunted          
6 months    MAL-ED           BRAZIL                         2               0       20     209  stunted          
6 months    MAL-ED           BRAZIL                         2               1        0     209  stunted          
6 months    MAL-ED           BRAZIL                         3               0       58     209  stunted          
6 months    MAL-ED           BRAZIL                         3               1        1     209  stunted          
6 months    MAL-ED           INDIA                          4+              0       24     235  stunted          
6 months    MAL-ED           INDIA                          4+              1        1     235  stunted          
6 months    MAL-ED           INDIA                          1               0       65     235  stunted          
6 months    MAL-ED           INDIA                          1               1       19     235  stunted          
6 months    MAL-ED           INDIA                          2               0       59     235  stunted          
6 months    MAL-ED           INDIA                          2               1       19     235  stunted          
6 months    MAL-ED           INDIA                          3               0       43     235  stunted          
6 months    MAL-ED           INDIA                          3               1        5     235  stunted          
6 months    MAL-ED           NEPAL                          4+              0      123     236  stunted          
6 months    MAL-ED           NEPAL                          4+              1        8     236  stunted          
6 months    MAL-ED           NEPAL                          1               0       49     236  stunted          
6 months    MAL-ED           NEPAL                          1               1        3     236  stunted          
6 months    MAL-ED           NEPAL                          2               0       31     236  stunted          
6 months    MAL-ED           NEPAL                          2               1        0     236  stunted          
6 months    MAL-ED           NEPAL                          3               0       21     236  stunted          
6 months    MAL-ED           NEPAL                          3               1        1     236  stunted          
6 months    MAL-ED           PERU                           4+              0      103     270  stunted          
6 months    MAL-ED           PERU                           4+              1       36     270  stunted          
6 months    MAL-ED           PERU                           1               0       12     270  stunted          
6 months    MAL-ED           PERU                           1               1        7     270  stunted          
6 months    MAL-ED           PERU                           2               0       41     270  stunted          
6 months    MAL-ED           PERU                           2               1        9     270  stunted          
6 months    MAL-ED           PERU                           3               0       54     270  stunted          
6 months    MAL-ED           PERU                           3               1        8     270  stunted          
6 months    MAL-ED           SOUTH AFRICA                   4+              0      151     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   4+              1       40     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1               0       10     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1               1        4     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   2               0       19     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   2               1        2     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   3               0       20     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   3               1        3     249  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              0       84     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              1       24     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        9     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        4     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               0       42     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               1       20     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               0       53     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               1       11     247  stunted          
6 months    NIH-Crypto       BANGLADESH                     4+              0       76     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     4+              1       15     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     1               0      261     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     1               1       78     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     2               0      141     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     2               1       43     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     3               0       87     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     3               1       14     715  stunted          
6 months    PROVIDE          BANGLADESH                     4+              0       17     604  stunted          
6 months    PROVIDE          BANGLADESH                     4+              1        4     604  stunted          
6 months    PROVIDE          BANGLADESH                     1               0      360     604  stunted          
6 months    PROVIDE          BANGLADESH                     1               1       71     604  stunted          
6 months    PROVIDE          BANGLADESH                     2               0       80     604  stunted          
6 months    PROVIDE          BANGLADESH                     2               1       14     604  stunted          
6 months    PROVIDE          BANGLADESH                     3               0       51     604  stunted          
6 months    PROVIDE          BANGLADESH                     3               1        7     604  stunted          
24 months   CMC-V-BCS-2002   INDIA                          4+              0        6     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          4+              1        8     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1               0       45     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1               1      156     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          2               0       35     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          2               1       70     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          3               0       19     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          3               1       32     371  stunted          
24 months   COHORTS          INDIA                          4+              0       57    3746  stunted          
24 months   COHORTS          INDIA                          4+              1       19    3746  stunted          
24 months   COHORTS          INDIA                          1               0      769    3746  stunted          
24 months   COHORTS          INDIA                          1               1     1530    3746  stunted          
24 months   COHORTS          INDIA                          2               0      708    3746  stunted          
24 months   COHORTS          INDIA                          2               1      513    3746  stunted          
24 months   COHORTS          INDIA                          3               0       88    3746  stunted          
24 months   COHORTS          INDIA                          3               1       62    3746  stunted          
24 months   CONTENT          PERU                           4+              0       60     164  stunted          
24 months   CONTENT          PERU                           4+              1        3     164  stunted          
24 months   CONTENT          PERU                           1               0       25     164  stunted          
24 months   CONTENT          PERU                           1               1        5     164  stunted          
24 months   CONTENT          PERU                           2               0       36     164  stunted          
24 months   CONTENT          PERU                           2               1        3     164  stunted          
24 months   CONTENT          PERU                           3               0       30     164  stunted          
24 months   CONTENT          PERU                           3               1        2     164  stunted          
24 months   GMS-Nepal        NEPAL                          4+              0      136     488  stunted          
24 months   GMS-Nepal        NEPAL                          4+              1       95     488  stunted          
24 months   GMS-Nepal        NEPAL                          1               0       15     488  stunted          
24 months   GMS-Nepal        NEPAL                          1               1       20     488  stunted          
24 months   GMS-Nepal        NEPAL                          2               0       54     488  stunted          
24 months   GMS-Nepal        NEPAL                          2               1       52     488  stunted          
24 months   GMS-Nepal        NEPAL                          3               0       64     488  stunted          
24 months   GMS-Nepal        NEPAL                          3               1       52     488  stunted          
24 months   IRC              INDIA                          4+              0        9     407  stunted          
24 months   IRC              INDIA                          4+              1        8     407  stunted          
24 months   IRC              INDIA                          1               0      101     407  stunted          
24 months   IRC              INDIA                          1               1       83     407  stunted          
24 months   IRC              INDIA                          2               0      108     407  stunted          
24 months   IRC              INDIA                          2               1       62     407  stunted          
24 months   IRC              INDIA                          3               0       18     407  stunted          
24 months   IRC              INDIA                          3               1       18     407  stunted          
24 months   JiVitA-3         BANGLADESH                     4+              0      261    8620  stunted          
24 months   JiVitA-3         BANGLADESH                     4+              1      106    8620  stunted          
24 months   JiVitA-3         BANGLADESH                     1               0     2417    8620  stunted          
24 months   JiVitA-3         BANGLADESH                     1               1     2634    8620  stunted          
24 months   JiVitA-3         BANGLADESH                     2               0     1238    8620  stunted          
24 months   JiVitA-3         BANGLADESH                     2               1     1162    8620  stunted          
24 months   JiVitA-3         BANGLADESH                     3               0      470    8620  stunted          
24 months   JiVitA-3         BANGLADESH                     3               1      332    8620  stunted          
24 months   JiVitA-4         BANGLADESH                     4+              0      182    4747  stunted          
24 months   JiVitA-4         BANGLADESH                     4+              1       69    4747  stunted          
24 months   JiVitA-4         BANGLADESH                     1               0     1559    4747  stunted          
24 months   JiVitA-4         BANGLADESH                     1               1     1230    4747  stunted          
24 months   JiVitA-4         BANGLADESH                     2               0      755    4747  stunted          
24 months   JiVitA-4         BANGLADESH                     2               1      461    4747  stunted          
24 months   JiVitA-4         BANGLADESH                     3               0      348    4747  stunted          
24 months   JiVitA-4         BANGLADESH                     3               1      143    4747  stunted          
24 months   MAL-ED           BANGLADESH                     4+              0        7     212  stunted          
24 months   MAL-ED           BANGLADESH                     4+              1        4     212  stunted          
24 months   MAL-ED           BANGLADESH                     1               0       69     212  stunted          
24 months   MAL-ED           BANGLADESH                     1               1       65     212  stunted          
24 months   MAL-ED           BANGLADESH                     2               0       20     212  stunted          
24 months   MAL-ED           BANGLADESH                     2               1       20     212  stunted          
24 months   MAL-ED           BANGLADESH                     3               0       15     212  stunted          
24 months   MAL-ED           BANGLADESH                     3               1       12     212  stunted          
24 months   MAL-ED           BRAZIL                         4+              0       99     169  stunted          
24 months   MAL-ED           BRAZIL                         4+              1        5     169  stunted          
24 months   MAL-ED           BRAZIL                         1               0        0     169  stunted          
24 months   MAL-ED           BRAZIL                         1               1        0     169  stunted          
24 months   MAL-ED           BRAZIL                         2               0       16     169  stunted          
24 months   MAL-ED           BRAZIL                         2               1        0     169  stunted          
24 months   MAL-ED           BRAZIL                         3               0       47     169  stunted          
24 months   MAL-ED           BRAZIL                         3               1        2     169  stunted          
24 months   MAL-ED           INDIA                          4+              0       14     227  stunted          
24 months   MAL-ED           INDIA                          4+              1       11     227  stunted          
24 months   MAL-ED           INDIA                          1               0       55     227  stunted          
24 months   MAL-ED           INDIA                          1               1       27     227  stunted          
24 months   MAL-ED           INDIA                          2               0       33     227  stunted          
24 months   MAL-ED           INDIA                          2               1       41     227  stunted          
24 months   MAL-ED           INDIA                          3               0       28     227  stunted          
24 months   MAL-ED           INDIA                          3               1       18     227  stunted          
24 months   MAL-ED           NEPAL                          4+              0      100     228  stunted          
24 months   MAL-ED           NEPAL                          4+              1       27     228  stunted          
24 months   MAL-ED           NEPAL                          1               0       38     228  stunted          
24 months   MAL-ED           NEPAL                          1               1       10     228  stunted          
24 months   MAL-ED           NEPAL                          2               0       25     228  stunted          
24 months   MAL-ED           NEPAL                          2               1        6     228  stunted          
24 months   MAL-ED           NEPAL                          3               0       15     228  stunted          
24 months   MAL-ED           NEPAL                          3               1        7     228  stunted          
24 months   MAL-ED           PERU                           4+              0       71     201  stunted          
24 months   MAL-ED           PERU                           4+              1       39     201  stunted          
24 months   MAL-ED           PERU                           1               0        7     201  stunted          
24 months   MAL-ED           PERU                           1               1        9     201  stunted          
24 months   MAL-ED           PERU                           2               0       20     201  stunted          
24 months   MAL-ED           PERU                           2               1       12     201  stunted          
24 months   MAL-ED           PERU                           3               0       29     201  stunted          
24 months   MAL-ED           PERU                           3               1       14     201  stunted          
24 months   MAL-ED           SOUTH AFRICA                   4+              0      120     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   4+              1       63     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1               0        8     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1               1        5     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   2               0       14     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   2               1        5     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   3               0       12     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   3               1       11     238  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              0       28     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              1       70     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        4     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        5     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               0        6     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               1       44     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               0       21     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               1       36     214  stunted          
24 months   NIH-Crypto       BANGLADESH                     4+              0       69     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     4+              1       13     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     1               0      150     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     1               1       67     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     2               0       94     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     2               1       43     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     3               0       69     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     3               1        9     514  stunted          
24 months   PROVIDE          BANGLADESH                     4+              0       17     578  stunted          
24 months   PROVIDE          BANGLADESH                     4+              1        5     578  stunted          
24 months   PROVIDE          BANGLADESH                     1               0      263     578  stunted          
24 months   PROVIDE          BANGLADESH                     1               1      144     578  stunted          
24 months   PROVIDE          BANGLADESH                     2               0       65     578  stunted          
24 months   PROVIDE          BANGLADESH                     2               1       27     578  stunted          
24 months   PROVIDE          BANGLADESH                     3               0       43     578  stunted          
24 months   PROVIDE          BANGLADESH                     3               1       14     578  stunted          


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
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
