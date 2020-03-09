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

agecat      studyid          country                        nrooms    stunted   n_cell       n
----------  ---------------  -----------------------------  -------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          4+              0        4      92
Birth       CMC-V-BCS-2002   INDIA                          4+              1        1      92
Birth       CMC-V-BCS-2002   INDIA                          1               0       32      92
Birth       CMC-V-BCS-2002   INDIA                          1               1        6      92
Birth       CMC-V-BCS-2002   INDIA                          2               0       22      92
Birth       CMC-V-BCS-2002   INDIA                          2               1        7      92
Birth       CMC-V-BCS-2002   INDIA                          3               0       17      92
Birth       CMC-V-BCS-2002   INDIA                          3               1        3      92
Birth       COHORTS          INDIA                          4+              0       84    4769
Birth       COHORTS          INDIA                          4+              1        8    4769
Birth       COHORTS          INDIA                          1               0     2705    4769
Birth       COHORTS          INDIA                          1               1      420    4769
Birth       COHORTS          INDIA                          2               0     1263    4769
Birth       COHORTS          INDIA                          2               1      122    4769
Birth       COHORTS          INDIA                          3               0      152    4769
Birth       COHORTS          INDIA                          3               1       15    4769
Birth       CONTENT          PERU                           4+              0        1       2
Birth       CONTENT          PERU                           4+              1        0       2
Birth       CONTENT          PERU                           1               0        0       2
Birth       CONTENT          PERU                           1               1        0       2
Birth       CONTENT          PERU                           2               0        1       2
Birth       CONTENT          PERU                           2               1        0       2
Birth       CONTENT          PERU                           3               0        0       2
Birth       CONTENT          PERU                           3               1        0       2
Birth       GMS-Nepal        NEPAL                          4+              0      276     696
Birth       GMS-Nepal        NEPAL                          4+              1       45     696
Birth       GMS-Nepal        NEPAL                          1               0       42     696
Birth       GMS-Nepal        NEPAL                          1               1        7     696
Birth       GMS-Nepal        NEPAL                          2               0      113     696
Birth       GMS-Nepal        NEPAL                          2               1       32     696
Birth       GMS-Nepal        NEPAL                          3               0      143     696
Birth       GMS-Nepal        NEPAL                          3               1       38     696
Birth       IRC              INDIA                          4+              0       16     386
Birth       IRC              INDIA                          4+              1        1     386
Birth       IRC              INDIA                          1               0      156     386
Birth       IRC              INDIA                          1               1       19     386
Birth       IRC              INDIA                          2               0      141     386
Birth       IRC              INDIA                          2               1       20     386
Birth       IRC              INDIA                          3               0       28     386
Birth       IRC              INDIA                          3               1        5     386
Birth       JiVitA-3         BANGLADESH                     4+              0      586   22429
Birth       JiVitA-3         BANGLADESH                     4+              1      169   22429
Birth       JiVitA-3         BANGLADESH                     1               0     9300   22429
Birth       JiVitA-3         BANGLADESH                     1               1     4642   22429
Birth       JiVitA-3         BANGLADESH                     2               0     3832   22429
Birth       JiVitA-3         BANGLADESH                     2               1     2014   22429
Birth       JiVitA-3         BANGLADESH                     3               0     1328   22429
Birth       JiVitA-3         BANGLADESH                     3               1      558   22429
Birth       JiVitA-4         BANGLADESH                     4+              0       81    2820
Birth       JiVitA-4         BANGLADESH                     4+              1       47    2820
Birth       JiVitA-4         BANGLADESH                     1               0     1157    2820
Birth       JiVitA-4         BANGLADESH                     1               1      548    2820
Birth       JiVitA-4         BANGLADESH                     2               0      517    2820
Birth       JiVitA-4         BANGLADESH                     2               1      192    2820
Birth       JiVitA-4         BANGLADESH                     3               0      209    2820
Birth       JiVitA-4         BANGLADESH                     3               1       69    2820
Birth       MAL-ED           BANGLADESH                     4+              0       12     213
Birth       MAL-ED           BANGLADESH                     4+              1        0     213
Birth       MAL-ED           BANGLADESH                     1               0      103     213
Birth       MAL-ED           BANGLADESH                     1               1       27     213
Birth       MAL-ED           BANGLADESH                     2               0       38     213
Birth       MAL-ED           BANGLADESH                     2               1        8     213
Birth       MAL-ED           BANGLADESH                     3               0       23     213
Birth       MAL-ED           BANGLADESH                     3               1        2     213
Birth       MAL-ED           BRAZIL                         4+              0       24      60
Birth       MAL-ED           BRAZIL                         4+              1        6      60
Birth       MAL-ED           BRAZIL                         1               0        0      60
Birth       MAL-ED           BRAZIL                         1               1        0      60
Birth       MAL-ED           BRAZIL                         2               0       10      60
Birth       MAL-ED           BRAZIL                         2               1        0      60
Birth       MAL-ED           BRAZIL                         3               0       17      60
Birth       MAL-ED           BRAZIL                         3               1        3      60
Birth       MAL-ED           INDIA                          4+              0        2      41
Birth       MAL-ED           INDIA                          4+              1        0      41
Birth       MAL-ED           INDIA                          1               0       16      41
Birth       MAL-ED           INDIA                          1               1        2      41
Birth       MAL-ED           INDIA                          2               0       11      41
Birth       MAL-ED           INDIA                          2               1        6      41
Birth       MAL-ED           INDIA                          3               0        4      41
Birth       MAL-ED           INDIA                          3               1        0      41
Birth       MAL-ED           NEPAL                          4+              0       15      26
Birth       MAL-ED           NEPAL                          4+              1        0      26
Birth       MAL-ED           NEPAL                          1               0        6      26
Birth       MAL-ED           NEPAL                          1               1        1      26
Birth       MAL-ED           NEPAL                          2               0        2      26
Birth       MAL-ED           NEPAL                          2               1        0      26
Birth       MAL-ED           NEPAL                          3               0        1      26
Birth       MAL-ED           NEPAL                          3               1        1      26
Birth       MAL-ED           PERU                           4+              0       89     215
Birth       MAL-ED           PERU                           4+              1       18     215
Birth       MAL-ED           PERU                           1               0       12     215
Birth       MAL-ED           PERU                           1               1        1     215
Birth       MAL-ED           PERU                           2               0       42     215
Birth       MAL-ED           PERU                           2               1        3     215
Birth       MAL-ED           PERU                           3               0       46     215
Birth       MAL-ED           PERU                           3               1        4     215
Birth       MAL-ED           SOUTH AFRICA                   4+              0       62      96
Birth       MAL-ED           SOUTH AFRICA                   4+              1        5      96
Birth       MAL-ED           SOUTH AFRICA                   1               0        5      96
Birth       MAL-ED           SOUTH AFRICA                   1               1        0      96
Birth       MAL-ED           SOUTH AFRICA                   2               0       10      96
Birth       MAL-ED           SOUTH AFRICA                   2               1        2      96
Birth       MAL-ED           SOUTH AFRICA                   3               0       11      96
Birth       MAL-ED           SOUTH AFRICA                   3               1        1      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              0       37     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              1       12     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        9     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        0     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               0       27     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               1        4     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               0       26     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               1        5     120
Birth       NIH-Crypto       BANGLADESH                     4+              0       82     732
Birth       NIH-Crypto       BANGLADESH                     4+              1       11     732
Birth       NIH-Crypto       BANGLADESH                     1               0      299     732
Birth       NIH-Crypto       BANGLADESH                     1               1       54     732
Birth       NIH-Crypto       BANGLADESH                     2               0      160     732
Birth       NIH-Crypto       BANGLADESH                     2               1       27     732
Birth       NIH-Crypto       BANGLADESH                     3               0       90     732
Birth       NIH-Crypto       BANGLADESH                     3               1        9     732
Birth       PROVIDE          BANGLADESH                     4+              0       16     539
Birth       PROVIDE          BANGLADESH                     4+              1        3     539
Birth       PROVIDE          BANGLADESH                     1               0      360     539
Birth       PROVIDE          BANGLADESH                     1               1       30     539
Birth       PROVIDE          BANGLADESH                     2               0       72     539
Birth       PROVIDE          BANGLADESH                     2               1       11     539
Birth       PROVIDE          BANGLADESH                     3               0       43     539
Birth       PROVIDE          BANGLADESH                     3               1        4     539
6 months    CMC-V-BCS-2002   INDIA                          4+              0       10     369
6 months    CMC-V-BCS-2002   INDIA                          4+              1        4     369
6 months    CMC-V-BCS-2002   INDIA                          1               0      143     369
6 months    CMC-V-BCS-2002   INDIA                          1               1       55     369
6 months    CMC-V-BCS-2002   INDIA                          2               0       70     369
6 months    CMC-V-BCS-2002   INDIA                          2               1       36     369
6 months    CMC-V-BCS-2002   INDIA                          3               0       35     369
6 months    CMC-V-BCS-2002   INDIA                          3               1       16     369
6 months    COHORTS          INDIA                          4+              0       87    4962
6 months    COHORTS          INDIA                          4+              1        6    4962
6 months    COHORTS          INDIA                          1               0     2448    4962
6 months    COHORTS          INDIA                          1               1      765    4962
6 months    COHORTS          INDIA                          2               0     1294    4962
6 months    COHORTS          INDIA                          2               1      180    4962
6 months    COHORTS          INDIA                          3               0      163    4962
6 months    COHORTS          INDIA                          3               1       19    4962
6 months    CONTENT          PERU                           4+              0       74     215
6 months    CONTENT          PERU                           4+              1        4     215
6 months    CONTENT          PERU                           1               0       42     215
6 months    CONTENT          PERU                           1               1        2     215
6 months    CONTENT          PERU                           2               0       51     215
6 months    CONTENT          PERU                           2               1        3     215
6 months    CONTENT          PERU                           3               0       39     215
6 months    CONTENT          PERU                           3               1        0     215
6 months    GMS-Nepal        NEPAL                          4+              0      213     564
6 months    GMS-Nepal        NEPAL                          4+              1       55     564
6 months    GMS-Nepal        NEPAL                          1               0       28     564
6 months    GMS-Nepal        NEPAL                          1               1       12     564
6 months    GMS-Nepal        NEPAL                          2               0       90     564
6 months    GMS-Nepal        NEPAL                          2               1       25     564
6 months    GMS-Nepal        NEPAL                          3               0      111     564
6 months    GMS-Nepal        NEPAL                          3               1       30     564
6 months    IRC              INDIA                          4+              0       13     405
6 months    IRC              INDIA                          4+              1        4     405
6 months    IRC              INDIA                          1               0      140     405
6 months    IRC              INDIA                          1               1       43     405
6 months    IRC              INDIA                          2               0      123     405
6 months    IRC              INDIA                          2               1       47     405
6 months    IRC              INDIA                          3               0       29     405
6 months    IRC              INDIA                          3               1        6     405
6 months    JiVitA-3         BANGLADESH                     4+              0      638   16800
6 months    JiVitA-3         BANGLADESH                     4+              1      106   16800
6 months    JiVitA-3         BANGLADESH                     1               0     7125   16800
6 months    JiVitA-3         BANGLADESH                     1               1     2500   16800
6 months    JiVitA-3         BANGLADESH                     2               0     3473   16800
6 months    JiVitA-3         BANGLADESH                     2               1     1267   16800
6 months    JiVitA-3         BANGLADESH                     3               0     1340   16800
6 months    JiVitA-3         BANGLADESH                     3               1      351   16800
6 months    JiVitA-4         BANGLADESH                     4+              0      214    4825
6 months    JiVitA-4         BANGLADESH                     4+              1       48    4825
6 months    JiVitA-4         BANGLADESH                     1               0     2089    4825
6 months    JiVitA-4         BANGLADESH                     1               1      761    4825
6 months    JiVitA-4         BANGLADESH                     2               0      928    4825
6 months    JiVitA-4         BANGLADESH                     2               1      297    4825
6 months    JiVitA-4         BANGLADESH                     3               0      376    4825
6 months    JiVitA-4         BANGLADESH                     3               1      112    4825
6 months    MAL-ED           BANGLADESH                     4+              0       11     240
6 months    MAL-ED           BANGLADESH                     4+              1        1     240
6 months    MAL-ED           BANGLADESH                     1               0      121     240
6 months    MAL-ED           BANGLADESH                     1               1       29     240
6 months    MAL-ED           BANGLADESH                     2               0       40     240
6 months    MAL-ED           BANGLADESH                     2               1       10     240
6 months    MAL-ED           BANGLADESH                     3               0       24     240
6 months    MAL-ED           BANGLADESH                     3               1        4     240
6 months    MAL-ED           BRAZIL                         4+              0      121     209
6 months    MAL-ED           BRAZIL                         4+              1        5     209
6 months    MAL-ED           BRAZIL                         1               0        4     209
6 months    MAL-ED           BRAZIL                         1               1        0     209
6 months    MAL-ED           BRAZIL                         2               0       20     209
6 months    MAL-ED           BRAZIL                         2               1        0     209
6 months    MAL-ED           BRAZIL                         3               0       58     209
6 months    MAL-ED           BRAZIL                         3               1        1     209
6 months    MAL-ED           INDIA                          4+              0       24     235
6 months    MAL-ED           INDIA                          4+              1        1     235
6 months    MAL-ED           INDIA                          1               0       65     235
6 months    MAL-ED           INDIA                          1               1       19     235
6 months    MAL-ED           INDIA                          2               0       59     235
6 months    MAL-ED           INDIA                          2               1       19     235
6 months    MAL-ED           INDIA                          3               0       43     235
6 months    MAL-ED           INDIA                          3               1        5     235
6 months    MAL-ED           NEPAL                          4+              0      123     236
6 months    MAL-ED           NEPAL                          4+              1        8     236
6 months    MAL-ED           NEPAL                          1               0       49     236
6 months    MAL-ED           NEPAL                          1               1        3     236
6 months    MAL-ED           NEPAL                          2               0       31     236
6 months    MAL-ED           NEPAL                          2               1        0     236
6 months    MAL-ED           NEPAL                          3               0       21     236
6 months    MAL-ED           NEPAL                          3               1        1     236
6 months    MAL-ED           PERU                           4+              0      103     270
6 months    MAL-ED           PERU                           4+              1       36     270
6 months    MAL-ED           PERU                           1               0       12     270
6 months    MAL-ED           PERU                           1               1        7     270
6 months    MAL-ED           PERU                           2               0       41     270
6 months    MAL-ED           PERU                           2               1        9     270
6 months    MAL-ED           PERU                           3               0       54     270
6 months    MAL-ED           PERU                           3               1        8     270
6 months    MAL-ED           SOUTH AFRICA                   4+              0      151     249
6 months    MAL-ED           SOUTH AFRICA                   4+              1       40     249
6 months    MAL-ED           SOUTH AFRICA                   1               0       10     249
6 months    MAL-ED           SOUTH AFRICA                   1               1        4     249
6 months    MAL-ED           SOUTH AFRICA                   2               0       19     249
6 months    MAL-ED           SOUTH AFRICA                   2               1        2     249
6 months    MAL-ED           SOUTH AFRICA                   3               0       20     249
6 months    MAL-ED           SOUTH AFRICA                   3               1        3     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              0       84     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              1       24     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        9     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        4     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               0       42     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               1       20     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               0       53     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               1       11     247
6 months    NIH-Crypto       BANGLADESH                     4+              0       76     715
6 months    NIH-Crypto       BANGLADESH                     4+              1       15     715
6 months    NIH-Crypto       BANGLADESH                     1               0      261     715
6 months    NIH-Crypto       BANGLADESH                     1               1       78     715
6 months    NIH-Crypto       BANGLADESH                     2               0      141     715
6 months    NIH-Crypto       BANGLADESH                     2               1       43     715
6 months    NIH-Crypto       BANGLADESH                     3               0       87     715
6 months    NIH-Crypto       BANGLADESH                     3               1       14     715
6 months    PROVIDE          BANGLADESH                     4+              0       17     604
6 months    PROVIDE          BANGLADESH                     4+              1        4     604
6 months    PROVIDE          BANGLADESH                     1               0      360     604
6 months    PROVIDE          BANGLADESH                     1               1       71     604
6 months    PROVIDE          BANGLADESH                     2               0       80     604
6 months    PROVIDE          BANGLADESH                     2               1       14     604
6 months    PROVIDE          BANGLADESH                     3               0       51     604
6 months    PROVIDE          BANGLADESH                     3               1        7     604
24 months   CMC-V-BCS-2002   INDIA                          4+              0        6     371
24 months   CMC-V-BCS-2002   INDIA                          4+              1        8     371
24 months   CMC-V-BCS-2002   INDIA                          1               0       45     371
24 months   CMC-V-BCS-2002   INDIA                          1               1      156     371
24 months   CMC-V-BCS-2002   INDIA                          2               0       35     371
24 months   CMC-V-BCS-2002   INDIA                          2               1       70     371
24 months   CMC-V-BCS-2002   INDIA                          3               0       19     371
24 months   CMC-V-BCS-2002   INDIA                          3               1       32     371
24 months   COHORTS          INDIA                          4+              0       57    3746
24 months   COHORTS          INDIA                          4+              1       19    3746
24 months   COHORTS          INDIA                          1               0      769    3746
24 months   COHORTS          INDIA                          1               1     1530    3746
24 months   COHORTS          INDIA                          2               0      708    3746
24 months   COHORTS          INDIA                          2               1      513    3746
24 months   COHORTS          INDIA                          3               0       88    3746
24 months   COHORTS          INDIA                          3               1       62    3746
24 months   CONTENT          PERU                           4+              0       60     164
24 months   CONTENT          PERU                           4+              1        3     164
24 months   CONTENT          PERU                           1               0       25     164
24 months   CONTENT          PERU                           1               1        5     164
24 months   CONTENT          PERU                           2               0       36     164
24 months   CONTENT          PERU                           2               1        3     164
24 months   CONTENT          PERU                           3               0       30     164
24 months   CONTENT          PERU                           3               1        2     164
24 months   GMS-Nepal        NEPAL                          4+              0      136     488
24 months   GMS-Nepal        NEPAL                          4+              1       95     488
24 months   GMS-Nepal        NEPAL                          1               0       15     488
24 months   GMS-Nepal        NEPAL                          1               1       20     488
24 months   GMS-Nepal        NEPAL                          2               0       54     488
24 months   GMS-Nepal        NEPAL                          2               1       52     488
24 months   GMS-Nepal        NEPAL                          3               0       64     488
24 months   GMS-Nepal        NEPAL                          3               1       52     488
24 months   IRC              INDIA                          4+              0        9     407
24 months   IRC              INDIA                          4+              1        8     407
24 months   IRC              INDIA                          1               0      101     407
24 months   IRC              INDIA                          1               1       83     407
24 months   IRC              INDIA                          2               0      108     407
24 months   IRC              INDIA                          2               1       62     407
24 months   IRC              INDIA                          3               0       18     407
24 months   IRC              INDIA                          3               1       18     407
24 months   JiVitA-3         BANGLADESH                     4+              0      261    8620
24 months   JiVitA-3         BANGLADESH                     4+              1      106    8620
24 months   JiVitA-3         BANGLADESH                     1               0     2417    8620
24 months   JiVitA-3         BANGLADESH                     1               1     2634    8620
24 months   JiVitA-3         BANGLADESH                     2               0     1238    8620
24 months   JiVitA-3         BANGLADESH                     2               1     1162    8620
24 months   JiVitA-3         BANGLADESH                     3               0      470    8620
24 months   JiVitA-3         BANGLADESH                     3               1      332    8620
24 months   JiVitA-4         BANGLADESH                     4+              0      182    4747
24 months   JiVitA-4         BANGLADESH                     4+              1       69    4747
24 months   JiVitA-4         BANGLADESH                     1               0     1559    4747
24 months   JiVitA-4         BANGLADESH                     1               1     1230    4747
24 months   JiVitA-4         BANGLADESH                     2               0      755    4747
24 months   JiVitA-4         BANGLADESH                     2               1      461    4747
24 months   JiVitA-4         BANGLADESH                     3               0      348    4747
24 months   JiVitA-4         BANGLADESH                     3               1      143    4747
24 months   MAL-ED           BANGLADESH                     4+              0        7     212
24 months   MAL-ED           BANGLADESH                     4+              1        4     212
24 months   MAL-ED           BANGLADESH                     1               0       69     212
24 months   MAL-ED           BANGLADESH                     1               1       65     212
24 months   MAL-ED           BANGLADESH                     2               0       20     212
24 months   MAL-ED           BANGLADESH                     2               1       20     212
24 months   MAL-ED           BANGLADESH                     3               0       15     212
24 months   MAL-ED           BANGLADESH                     3               1       12     212
24 months   MAL-ED           BRAZIL                         4+              0       99     169
24 months   MAL-ED           BRAZIL                         4+              1        5     169
24 months   MAL-ED           BRAZIL                         1               0        0     169
24 months   MAL-ED           BRAZIL                         1               1        0     169
24 months   MAL-ED           BRAZIL                         2               0       16     169
24 months   MAL-ED           BRAZIL                         2               1        0     169
24 months   MAL-ED           BRAZIL                         3               0       47     169
24 months   MAL-ED           BRAZIL                         3               1        2     169
24 months   MAL-ED           INDIA                          4+              0       14     227
24 months   MAL-ED           INDIA                          4+              1       11     227
24 months   MAL-ED           INDIA                          1               0       55     227
24 months   MAL-ED           INDIA                          1               1       27     227
24 months   MAL-ED           INDIA                          2               0       33     227
24 months   MAL-ED           INDIA                          2               1       41     227
24 months   MAL-ED           INDIA                          3               0       28     227
24 months   MAL-ED           INDIA                          3               1       18     227
24 months   MAL-ED           NEPAL                          4+              0      100     228
24 months   MAL-ED           NEPAL                          4+              1       27     228
24 months   MAL-ED           NEPAL                          1               0       38     228
24 months   MAL-ED           NEPAL                          1               1       10     228
24 months   MAL-ED           NEPAL                          2               0       25     228
24 months   MAL-ED           NEPAL                          2               1        6     228
24 months   MAL-ED           NEPAL                          3               0       15     228
24 months   MAL-ED           NEPAL                          3               1        7     228
24 months   MAL-ED           PERU                           4+              0       71     201
24 months   MAL-ED           PERU                           4+              1       39     201
24 months   MAL-ED           PERU                           1               0        7     201
24 months   MAL-ED           PERU                           1               1        9     201
24 months   MAL-ED           PERU                           2               0       20     201
24 months   MAL-ED           PERU                           2               1       12     201
24 months   MAL-ED           PERU                           3               0       29     201
24 months   MAL-ED           PERU                           3               1       14     201
24 months   MAL-ED           SOUTH AFRICA                   4+              0      120     238
24 months   MAL-ED           SOUTH AFRICA                   4+              1       63     238
24 months   MAL-ED           SOUTH AFRICA                   1               0        8     238
24 months   MAL-ED           SOUTH AFRICA                   1               1        5     238
24 months   MAL-ED           SOUTH AFRICA                   2               0       14     238
24 months   MAL-ED           SOUTH AFRICA                   2               1        5     238
24 months   MAL-ED           SOUTH AFRICA                   3               0       12     238
24 months   MAL-ED           SOUTH AFRICA                   3               1       11     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              0       28     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   4+              1       70     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        4     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        5     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               0        6     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   2               1       44     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               0       21     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   3               1       36     214
24 months   NIH-Crypto       BANGLADESH                     4+              0       69     514
24 months   NIH-Crypto       BANGLADESH                     4+              1       13     514
24 months   NIH-Crypto       BANGLADESH                     1               0      150     514
24 months   NIH-Crypto       BANGLADESH                     1               1       67     514
24 months   NIH-Crypto       BANGLADESH                     2               0       94     514
24 months   NIH-Crypto       BANGLADESH                     2               1       43     514
24 months   NIH-Crypto       BANGLADESH                     3               0       69     514
24 months   NIH-Crypto       BANGLADESH                     3               1        9     514
24 months   PROVIDE          BANGLADESH                     4+              0       17     578
24 months   PROVIDE          BANGLADESH                     4+              1        5     578
24 months   PROVIDE          BANGLADESH                     1               0      263     578
24 months   PROVIDE          BANGLADESH                     1               1      144     578
24 months   PROVIDE          BANGLADESH                     2               0       65     578
24 months   PROVIDE          BANGLADESH                     2               1       27     578
24 months   PROVIDE          BANGLADESH                     3               0       43     578
24 months   PROVIDE          BANGLADESH                     3               1       14     578


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/a2b24123-8d2f-4518-b2eb-c9891afbe0a0/4ea9624a-0ddc-4ff1-8d19-1eaeec33f6d3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a2b24123-8d2f-4518-b2eb-c9891afbe0a0/4ea9624a-0ddc-4ff1-8d19-1eaeec33f6d3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a2b24123-8d2f-4518-b2eb-c9891afbe0a0/4ea9624a-0ddc-4ff1-8d19-1eaeec33f6d3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a2b24123-8d2f-4518-b2eb-c9891afbe0a0/4ea9624a-0ddc-4ff1-8d19-1eaeec33f6d3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA          4+                   NA                0.0869565   0.0425224   0.1313907
Birth       COHORTS          INDIA          1                    NA                0.1344000   0.1224401   0.1463599
Birth       COHORTS          INDIA          2                    NA                0.0880866   0.0731587   0.1030146
Birth       COHORTS          INDIA          3                    NA                0.0898204   0.0464507   0.1331901
Birth       GMS-Nepal        NEPAL          4+                   NA                0.1401869   0.1021799   0.1781939
Birth       GMS-Nepal        NEPAL          1                    NA                0.1428571   0.0448089   0.2409054
Birth       GMS-Nepal        NEPAL          2                    NA                0.2206897   0.1531401   0.2882392
Birth       GMS-Nepal        NEPAL          3                    NA                0.2099448   0.1505699   0.2693196
Birth       JiVitA-3         BANGLADESH     4+                   NA                0.2673741   0.2519630   0.2827852
Birth       JiVitA-3         BANGLADESH     1                    NA                0.3302894   0.3189823   0.3415965
Birth       JiVitA-3         BANGLADESH     2                    NA                0.3319742   0.3119366   0.3520118
Birth       JiVitA-3         BANGLADESH     3                    NA                0.3271685   0.3029404   0.3513966
Birth       JiVitA-4         BANGLADESH     4+                   NA                0.4912210   0.4155359   0.5669060
Birth       JiVitA-4         BANGLADESH     1                    NA                0.3183896   0.2841002   0.3526790
Birth       JiVitA-4         BANGLADESH     2                    NA                0.2796344   0.2307053   0.3285634
Birth       JiVitA-4         BANGLADESH     3                    NA                0.2716110   0.1997967   0.3434253
Birth       NIH-Crypto       BANGLADESH     4+                   NA                0.1182796   0.0526010   0.1839582
Birth       NIH-Crypto       BANGLADESH     1                    NA                0.1529745   0.1153981   0.1905509
Birth       NIH-Crypto       BANGLADESH     2                    NA                0.1443850   0.0939741   0.1947959
Birth       NIH-Crypto       BANGLADESH     3                    NA                0.0909091   0.0342415   0.1475767
6 months    COHORTS          INDIA          4+                   NA                0.0645161   0.0270802   0.1019521
6 months    COHORTS          INDIA          1                    NA                0.2380952   0.2233666   0.2528239
6 months    COHORTS          INDIA          2                    NA                0.1221167   0.1054000   0.1388333
6 months    COHORTS          INDIA          3                    NA                0.1043956   0.0599677   0.1488235
6 months    GMS-Nepal        NEPAL          4+                   NA                0.2144963   0.1635125   0.2654801
6 months    GMS-Nepal        NEPAL          1                    NA                0.2795370   0.1502129   0.4088611
6 months    GMS-Nepal        NEPAL          2                    NA                0.2189984   0.1316811   0.3063157
6 months    GMS-Nepal        NEPAL          3                    NA                0.2032190   0.1347630   0.2716749
6 months    JiVitA-3         BANGLADESH     4+                   NA                0.2510899   0.2327434   0.2694365
6 months    JiVitA-3         BANGLADESH     1                    NA                0.2490505   0.2367085   0.2613926
6 months    JiVitA-3         BANGLADESH     2                    NA                0.2539820   0.2351456   0.2728184
6 months    JiVitA-3         BANGLADESH     3                    NA                0.2398901   0.2156463   0.2641339
6 months    JiVitA-4         BANGLADESH     4+                   NA                0.2573742   0.2070835   0.3076649
6 months    JiVitA-4         BANGLADESH     1                    NA                0.2405209   0.2204206   0.2606213
6 months    JiVitA-4         BANGLADESH     2                    NA                0.2558469   0.2198398   0.2918540
6 months    JiVitA-4         BANGLADESH     3                    NA                0.3201350   0.2709924   0.3692777
6 months    MAL-ED           PERU           4+                   NA                0.2589928   0.1860300   0.3319556
6 months    MAL-ED           PERU           1                    NA                0.3684211   0.1511194   0.5857227
6 months    MAL-ED           PERU           2                    NA                0.1800000   0.0733129   0.2866871
6 months    MAL-ED           PERU           3                    NA                0.1290323   0.0454319   0.2126326
6 months    NIH-Crypto       BANGLADESH     4+                   NA                0.1855744   0.1072760   0.2638729
6 months    NIH-Crypto       BANGLADESH     1                    NA                0.2217127   0.1772893   0.2661362
6 months    NIH-Crypto       BANGLADESH     2                    NA                0.2307907   0.1702541   0.2913274
6 months    NIH-Crypto       BANGLADESH     3                    NA                0.1456982   0.0762261   0.2151702
24 months   CMC-V-BCS-2002   INDIA          4+                   NA                0.5714286   0.3118536   0.8310035
24 months   CMC-V-BCS-2002   INDIA          1                    NA                0.7761194   0.7184150   0.8338238
24 months   CMC-V-BCS-2002   INDIA          2                    NA                0.6666667   0.5763780   0.7569553
24 months   CMC-V-BCS-2002   INDIA          3                    NA                0.6274510   0.4945798   0.7603221
24 months   COHORTS          INDIA          4+                   NA                0.3523978   0.2810021   0.4237936
24 months   COHORTS          INDIA          1                    NA                0.6287417   0.6079352   0.6495483
24 months   COHORTS          INDIA          2                    NA                0.4796772   0.4494600   0.5098943
24 months   COHORTS          INDIA          3                    NA                0.5048825   0.4316846   0.5780803
24 months   GMS-Nepal        NEPAL          4+                   NA                0.4271208   0.3615221   0.4927194
24 months   GMS-Nepal        NEPAL          1                    NA                0.6022604   0.4448076   0.7597131
24 months   GMS-Nepal        NEPAL          2                    NA                0.4595821   0.3625421   0.5566221
24 months   GMS-Nepal        NEPAL          3                    NA                0.4423479   0.3481673   0.5365285
24 months   IRC              INDIA          4+                   NA                0.4705882   0.2330272   0.7081492
24 months   IRC              INDIA          1                    NA                0.4510870   0.3790998   0.5230742
24 months   IRC              INDIA          2                    NA                0.3647059   0.2922595   0.4371523
24 months   IRC              INDIA          3                    NA                0.5000000   0.3364686   0.6635314
24 months   JiVitA-3         BANGLADESH     4+                   NA                0.5008639   0.4738979   0.5278300
24 months   JiVitA-3         BANGLADESH     1                    NA                0.4894192   0.4697308   0.5091076
24 months   JiVitA-3         BANGLADESH     2                    NA                0.4911061   0.4591194   0.5230928
24 months   JiVitA-3         BANGLADESH     3                    NA                0.5176020   0.4805268   0.5546771
24 months   JiVitA-4         BANGLADESH     4+                   NA                0.4532463   0.3927427   0.5137499
24 months   JiVitA-4         BANGLADESH     1                    NA                0.4110798   0.3839756   0.4381840
24 months   JiVitA-4         BANGLADESH     2                    NA                0.3901253   0.3424663   0.4377842
24 months   JiVitA-4         BANGLADESH     3                    NA                0.3270089   0.2780325   0.3759854
24 months   MAL-ED           INDIA          4+                   NA                0.4435547   0.2250357   0.6620737
24 months   MAL-ED           INDIA          1                    NA                0.3287354   0.2279106   0.4295602
24 months   MAL-ED           INDIA          2                    NA                0.5456634   0.4349987   0.6563281
24 months   MAL-ED           INDIA          3                    NA                0.4084539   0.2646321   0.5522758
24 months   MAL-ED           NEPAL          4+                   NA                0.2125984   0.1412838   0.2839131
24 months   MAL-ED           NEPAL          1                    NA                0.2083333   0.0931917   0.3234750
24 months   MAL-ED           NEPAL          2                    NA                0.1935484   0.0541667   0.3329301
24 months   MAL-ED           NEPAL          3                    NA                0.3181818   0.1231241   0.5132396
24 months   MAL-ED           PERU           4+                   NA                0.3545455   0.2649257   0.4441652
24 months   MAL-ED           PERU           1                    NA                0.5625000   0.3188191   0.8061809
24 months   MAL-ED           PERU           2                    NA                0.3750000   0.2068442   0.5431558
24 months   MAL-ED           PERU           3                    NA                0.3255814   0.1851735   0.4659893
24 months   MAL-ED           SOUTH AFRICA   4+                   NA                0.3442623   0.2752786   0.4132460
24 months   MAL-ED           SOUTH AFRICA   1                    NA                0.3846154   0.1195962   0.6496346
24 months   MAL-ED           SOUTH AFRICA   2                    NA                0.2631579   0.0647399   0.4615759
24 months   MAL-ED           SOUTH AFRICA   3                    NA                0.4782609   0.2736835   0.6828382
24 months   NIH-Crypto       BANGLADESH     4+                   NA                0.1585366   0.0794056   0.2376675
24 months   NIH-Crypto       BANGLADESH     1                    NA                0.3087558   0.2472290   0.3702826
24 months   NIH-Crypto       BANGLADESH     2                    NA                0.3138686   0.2360850   0.3916523
24 months   NIH-Crypto       BANGLADESH     3                    NA                0.1153846   0.0444146   0.1863546
24 months   PROVIDE          BANGLADESH     4+                   NA                0.2272727   0.0520060   0.4025395
24 months   PROVIDE          BANGLADESH     1                    NA                0.3538084   0.3073149   0.4003018
24 months   PROVIDE          BANGLADESH     2                    NA                0.2934783   0.2003501   0.3866064
24 months   PROVIDE          BANGLADESH     3                    NA                0.2456140   0.1337707   0.3574574


### Parameter: E(Y)


agecat      studyid          country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA          NA                   NA                0.1184735   0.1093005   0.1276464
Birth       GMS-Nepal        NEPAL          NA                   NA                0.1752874   0.1470202   0.2035545
Birth       JiVitA-3         BANGLADESH     NA                   NA                0.3291721   0.3217884   0.3365557
Birth       JiVitA-4         BANGLADESH     NA                   NA                0.3035461   0.2835868   0.3235054
Birth       NIH-Crypto       BANGLADESH     NA                   NA                0.1379781   0.1129774   0.1629789
6 months    COHORTS          INDIA          NA                   NA                0.1954857   0.1844503   0.2065211
6 months    GMS-Nepal        NEPAL          NA                   NA                0.2163121   0.1823021   0.2503220
6 months    JiVitA-3         BANGLADESH     NA                   NA                0.2514286   0.2432985   0.2595587
6 months    JiVitA-4         BANGLADESH     NA                   NA                0.2524352   0.2383740   0.2664965
6 months    MAL-ED           PERU           NA                   NA                0.2222222   0.1725409   0.2719036
6 months    NIH-Crypto       BANGLADESH     NA                   NA                0.2097902   0.1799252   0.2396552
24 months   CMC-V-BCS-2002   INDIA          NA                   NA                0.7169811   0.6710815   0.7628807
24 months   COHORTS          INDIA          NA                   NA                0.5670048   0.5511355   0.5828741
24 months   GMS-Nepal        NEPAL          NA                   NA                0.4487705   0.4045970   0.4929440
24 months   IRC              INDIA          NA                   NA                0.4201474   0.3721360   0.4681589
24 months   JiVitA-3         BANGLADESH     NA                   NA                0.4911833   0.4780660   0.5043006
24 months   JiVitA-4         BANGLADESH     NA                   NA                0.4008848   0.3839144   0.4178552
24 months   MAL-ED           INDIA          NA                   NA                0.4273128   0.3628178   0.4918077
24 months   MAL-ED           NEPAL          NA                   NA                0.2192982   0.1654718   0.2731246
24 months   MAL-ED           PERU           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   MAL-ED           SOUTH AFRICA   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   NIH-Crypto       BANGLADESH     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   PROVIDE          BANGLADESH     NA                   NA                0.3287197   0.2903909   0.3670485


### Parameter: RR


agecat      studyid          country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA          4+                   4+                1.0000000   1.0000000   1.0000000
Birth       COHORTS          INDIA          1                    4+                1.5456000   0.9201016   2.5963213
Birth       COHORTS          INDIA          2                    4+                1.0129964   0.5912897   1.7354635
Birth       COHORTS          INDIA          3                    4+                1.0329341   0.5113859   2.0863949
Birth       GMS-Nepal        NEPAL          4+                   4+                1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL          1                    4+                1.0190476   0.4872017   2.1314747
Birth       GMS-Nepal        NEPAL          2                    4+                1.5742529   1.0459129   2.3694822
Birth       GMS-Nepal        NEPAL          3                    4+                1.4976059   1.0121675   2.2158619
Birth       JiVitA-3         BANGLADESH     4+                   4+                1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH     1                    4+                1.2353081   1.1563259   1.3196851
Birth       JiVitA-3         BANGLADESH     2                    4+                1.2416093   1.1437488   1.3478429
Birth       JiVitA-3         BANGLADESH     3                    4+                1.2236356   1.1166141   1.3409145
Birth       JiVitA-4         BANGLADESH     4+                   4+                1.0000000   1.0000000   1.0000000
Birth       JiVitA-4         BANGLADESH     1                    4+                0.6481596   0.5370851   0.7822055
Birth       JiVitA-4         BANGLADESH     2                    4+                0.5692639   0.4523548   0.7163876
Birth       JiVitA-4         BANGLADESH     3                    4+                0.5529304   0.4071059   0.7509888
Birth       NIH-Crypto       BANGLADESH     4+                   4+                1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto       BANGLADESH     1                    4+                1.2933299   0.7047110   2.3736004
Birth       NIH-Crypto       BANGLADESH     2                    4+                1.2207098   0.6335011   2.3522175
Birth       NIH-Crypto       BANGLADESH     3                    4+                0.7685950   0.3335395   1.7711193
6 months    COHORTS          INDIA          4+                   4+                1.0000000   1.0000000   1.0000000
6 months    COHORTS          INDIA          1                    4+                3.6904762   2.0589789   6.6147422
6 months    COHORTS          INDIA          2                    4+                1.8928087   1.0427652   3.4357925
6 months    COHORTS          INDIA          3                    4+                1.6181319   0.7879522   3.3229819
6 months    GMS-Nepal        NEPAL          4+                   4+                1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal        NEPAL          1                    4+                1.3032254   0.7748379   2.1919376
6 months    GMS-Nepal        NEPAL          2                    4+                1.0209893   0.6416039   1.6247081
6 months    GMS-Nepal        NEPAL          3                    4+                0.9474242   0.6276238   1.4301763
6 months    JiVitA-3         BANGLADESH     4+                   4+                1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH     1                    4+                0.9918778   0.9119716   1.0787852
6 months    JiVitA-3         BANGLADESH     2                    4+                1.0115180   0.9151455   1.1180394
6 months    JiVitA-3         BANGLADESH     3                    4+                0.9553952   0.8422458   1.0837452
6 months    JiVitA-4         BANGLADESH     4+                   4+                1.0000000   1.0000000   1.0000000
6 months    JiVitA-4         BANGLADESH     1                    4+                0.9345185   0.7587250   1.1510426
6 months    JiVitA-4         BANGLADESH     2                    4+                0.9940658   0.7800858   1.2667413
6 months    JiVitA-4         BANGLADESH     3                    4+                1.2438506   0.9678866   1.5984974
6 months    MAL-ED           PERU           4+                   4+                1.0000000   1.0000000   1.0000000
6 months    MAL-ED           PERU           1                    4+                1.4225146   0.7399163   2.7348335
6 months    MAL-ED           PERU           2                    4+                0.6950000   0.3605609   1.3396490
6 months    MAL-ED           PERU           3                    4+                0.4982079   0.2457997   1.0098104
6 months    NIH-Crypto       BANGLADESH     4+                   4+                1.0000000   1.0000000   1.0000000
6 months    NIH-Crypto       BANGLADESH     1                    4+                1.1947376   0.7498850   1.9034891
6 months    NIH-Crypto       BANGLADESH     2                    4+                1.2436560   0.7580406   2.0403660
6 months    NIH-Crypto       BANGLADESH     3                    4+                0.7851199   0.4154452   1.4837417
24 months   CMC-V-BCS-2002   INDIA          4+                   4+                1.0000000   1.0000000   1.0000000
24 months   CMC-V-BCS-2002   INDIA          1                    4+                1.3582090   0.8571575   2.1521501
24 months   CMC-V-BCS-2002   INDIA          2                    4+                1.1666667   0.7262472   1.8741706
24 months   CMC-V-BCS-2002   INDIA          3                    4+                1.0980392   0.6652018   1.8125179
24 months   COHORTS          INDIA          4+                   4+                1.0000000   1.0000000   1.0000000
24 months   COHORTS          INDIA          1                    4+                1.7841816   1.4535653   2.1899973
24 months   COHORTS          INDIA          2                    4+                1.3611808   1.1014589   1.6821448
24 months   COHORTS          INDIA          3                    4+                1.4327059   1.1172510   1.8372293
24 months   GMS-Nepal        NEPAL          4+                   4+                1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL          1                    4+                1.4100470   1.0405760   1.9107040
24 months   GMS-Nepal        NEPAL          2                    4+                1.0760004   0.8289438   1.3966893
24 months   GMS-Nepal        NEPAL          3                    4+                1.0356507   0.7965679   1.3464921
24 months   IRC              INDIA          4+                   4+                1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA          1                    4+                0.9585598   0.5645284   1.6276185
24 months   IRC              INDIA          2                    4+                0.7750000   0.4505050   1.3332259
24 months   IRC              INDIA          3                    4+                1.0625000   0.5822344   1.9389205
24 months   JiVitA-3         BANGLADESH     4+                   4+                1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH     1                    4+                0.9771500   0.9173548   1.0408427
24 months   JiVitA-3         BANGLADESH     2                    4+                0.9805180   0.9037229   1.0638388
24 months   JiVitA-3         BANGLADESH     3                    4+                1.0334183   0.9487612   1.1256293
24 months   JiVitA-4         BANGLADESH     4+                   4+                1.0000000   1.0000000   1.0000000
24 months   JiVitA-4         BANGLADESH     1                    4+                0.9069677   0.7823204   1.0514752
24 months   JiVitA-4         BANGLADESH     2                    4+                0.8607357   0.7191556   1.0301885
24 months   JiVitA-4         BANGLADESH     3                    4+                0.7214817   0.5902914   0.8818287
24 months   MAL-ED           INDIA          4+                   4+                1.0000000   1.0000000   1.0000000
24 months   MAL-ED           INDIA          1                    4+                0.7411383   0.4151382   1.3231403
24 months   MAL-ED           INDIA          2                    4+                1.2302053   0.7230379   2.0931200
24 months   MAL-ED           INDIA          3                    4+                0.9208649   0.5028598   1.6863389
24 months   MAL-ED           NEPAL          4+                   4+                1.0000000   1.0000000   1.0000000
24 months   MAL-ED           NEPAL          1                    4+                0.9799383   0.5133603   1.8705751
24 months   MAL-ED           NEPAL          2                    4+                0.9103943   0.4113507   2.0148690
24 months   MAL-ED           NEPAL          3                    4+                1.4966330   0.7440893   3.0102709
24 months   MAL-ED           PERU           4+                   4+                1.0000000   1.0000000   1.0000000
24 months   MAL-ED           PERU           1                    4+                1.5865385   0.9607811   2.6198521
24 months   MAL-ED           PERU           2                    4+                1.0576923   0.6321278   1.7697577
24 months   MAL-ED           PERU           3                    4+                0.9183065   0.5570516   1.5138398
24 months   MAL-ED           SOUTH AFRICA   4+                   4+                1.0000000   1.0000000   1.0000000
24 months   MAL-ED           SOUTH AFRICA   1                    4+                1.1172161   0.5451169   2.2897323
24 months   MAL-ED           SOUTH AFRICA   2                    4+                0.7644110   0.3503542   1.6678098
24 months   MAL-ED           SOUTH AFRICA   3                    4+                1.3892340   0.8662267   2.2280207
24 months   NIH-Crypto       BANGLADESH     4+                   4+                1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto       BANGLADESH     1                    4+                1.9475363   1.1378298   3.3334493
24 months   NIH-Crypto       BANGLADESH     2                    4+                1.9797866   1.1339631   3.4565104
24 months   NIH-Crypto       BANGLADESH     3                    4+                0.7278107   0.3296145   1.6070544
24 months   PROVIDE          BANGLADESH     4+                   4+                1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH     1                    4+                1.5567568   0.7119946   3.4038063
24 months   PROVIDE          BANGLADESH     2                    4+                1.2913043   0.5608755   2.9729714
24 months   PROVIDE          BANGLADESH     3                    4+                1.0807018   0.4413269   2.6463746


### Parameter: PAR


agecat      studyid          country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA          4+                   NA                 0.0315170   -0.0127529    0.0757868
Birth       GMS-Nepal        NEPAL          4+                   NA                 0.0351004    0.0049159    0.0652850
Birth       JiVitA-3         BANGLADESH     4+                   NA                 0.0617979    0.0457885    0.0778074
Birth       JiVitA-4         BANGLADESH     4+                   NA                -0.1876749   -0.2631114   -0.1122383
Birth       NIH-Crypto       BANGLADESH     4+                   NA                 0.0196986   -0.0422903    0.0816874
6 months    COHORTS          INDIA          4+                   NA                 0.1309696    0.0928493    0.1690899
6 months    GMS-Nepal        NEPAL          4+                   NA                 0.0018158   -0.0362706    0.0399021
6 months    JiVitA-3         BANGLADESH     4+                   NA                 0.0003386   -0.0179796    0.0186568
6 months    JiVitA-4         BANGLADESH     4+                   NA                -0.0049390   -0.0540023    0.0441244
6 months    MAL-ED           PERU           4+                   NA                -0.0367706   -0.0848383    0.0112971
6 months    NIH-Crypto       BANGLADESH     4+                   NA                 0.0242158   -0.0499483    0.0983799
24 months   CMC-V-BCS-2002   INDIA          4+                   NA                 0.1455526   -0.1082204    0.3993255
24 months   COHORTS          INDIA          4+                   NA                 0.2146070    0.1435202    0.2856938
24 months   GMS-Nepal        NEPAL          4+                   NA                 0.0216497   -0.0271232    0.0704227
24 months   IRC              INDIA          4+                   NA                -0.0504408   -0.2828754    0.1819938
24 months   JiVitA-3         BANGLADESH     4+                   NA                -0.0096806   -0.0365336    0.0171723
24 months   JiVitA-4         BANGLADESH     4+                   NA                -0.0523616   -0.1118189    0.0070958
24 months   MAL-ED           INDIA          4+                   NA                -0.0162419   -0.2217822    0.1892984
24 months   MAL-ED           NEPAL          4+                   NA                 0.0066998   -0.0414388    0.0548384
24 months   MAL-ED           PERU           4+                   NA                 0.0136137   -0.0472857    0.0745132
24 months   MAL-ED           SOUTH AFRICA   4+                   NA                 0.0086789   -0.0251192    0.0424769
24 months   NIH-Crypto       BANGLADESH     4+                   NA                 0.0982728    0.0228208    0.1737247
24 months   PROVIDE          BANGLADESH     4+                   NA                 0.1014470   -0.0713219    0.2742159


### Parameter: PAF


agecat      studyid          country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA          4+                   NA                 0.2660254   -0.2191932    0.5581351
Birth       GMS-Nepal        NEPAL          4+                   NA                 0.2002451    0.0105904    0.3535460
Birth       JiVitA-3         BANGLADESH     4+                   NA                 0.1877375    0.1388226    0.2338740
Birth       JiVitA-4         BANGLADESH     4+                   NA                -0.6182747   -0.8963178   -0.3809990
Birth       NIH-Crypto       BANGLADESH     4+                   NA                 0.1427659   -0.4468845    0.4921154
6 months    COHORTS          INDIA          4+                   NA                 0.6699701    0.4116068    0.8148861
6 months    GMS-Nepal        NEPAL          4+                   NA                 0.0083943   -0.1842778    0.1697202
6 months    JiVitA-3         BANGLADESH     4+                   NA                 0.0013468   -0.0742228    0.0716002
6 months    JiVitA-4         BANGLADESH     4+                   NA                -0.0195652   -0.2337626    0.1574447
6 months    MAL-ED           PERU           4+                   NA                -0.1654676   -0.4018717    0.0310705
6 months    NIH-Crypto       BANGLADESH     4+                   NA                 0.1154286   -0.3182806    0.4064492
24 months   CMC-V-BCS-2002   INDIA          4+                   NA                 0.2030075   -0.2437129    0.4892736
24 months   COHORTS          INDIA          4+                   NA                 0.3784924    0.2402270    0.4915959
24 months   GMS-Nepal        NEPAL          4+                   NA                 0.0482423   -0.0669701    0.1510141
24 months   IRC              INDIA          4+                   NA                -0.1200550   -0.8356451    0.3165763
24 months   JiVitA-3         BANGLADESH     4+                   NA                -0.0197088   -0.0760041    0.0336411
24 months   JiVitA-4         BANGLADESH     4+                   NA                -0.1306150   -0.2897222    0.0088639
24 months   MAL-ED           INDIA          4+                   NA                -0.0380095   -0.6494649    0.3467799
24 months   MAL-ED           NEPAL          4+                   NA                 0.0305512   -0.2157265    0.2269388
24 months   MAL-ED           PERU           4+                   NA                 0.0369779   -0.1435142    0.1889812
24 months   MAL-ED           SOUTH AFRICA   4+                   NA                 0.0245902   -0.0760360    0.1158062
24 months   NIH-Crypto       BANGLADESH     4+                   NA                 0.3826681    0.0113978    0.6145076
24 months   PROVIDE          BANGLADESH     4+                   NA                 0.3086124   -0.4777979    0.6765344
