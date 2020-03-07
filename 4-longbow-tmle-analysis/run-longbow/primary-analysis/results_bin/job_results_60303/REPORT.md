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

**Outcome Variable:** wasted

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

agecat      studyid          country                        hhwealth_quart    wasted   n_cell       n
----------  ---------------  -----------------------------  ---------------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4              0       26      86
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4              1        6      86
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1              0       12      86
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1              1        1      86
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2              0       16      86
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2              1        3      86
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3              0       21      86
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3              1        1      86
Birth       COHORTS          GUATEMALA                      Wealth Q4              0      190     729
Birth       COHORTS          GUATEMALA                      Wealth Q4              1       68     729
Birth       COHORTS          GUATEMALA                      Wealth Q1              0       98     729
Birth       COHORTS          GUATEMALA                      Wealth Q1              1       46     729
Birth       COHORTS          GUATEMALA                      Wealth Q2              0      108     729
Birth       COHORTS          GUATEMALA                      Wealth Q2              1       33     729
Birth       COHORTS          GUATEMALA                      Wealth Q3              0      148     729
Birth       COHORTS          GUATEMALA                      Wealth Q3              1       38     729
Birth       COHORTS          PHILIPPINES                    Wealth Q4              0      671    2898
Birth       COHORTS          PHILIPPINES                    Wealth Q4              1      144    2898
Birth       COHORTS          PHILIPPINES                    Wealth Q1              0      533    2898
Birth       COHORTS          PHILIPPINES                    Wealth Q1              1      114    2898
Birth       COHORTS          PHILIPPINES                    Wealth Q2              0      442    2898
Birth       COHORTS          PHILIPPINES                    Wealth Q2              1       64    2898
Birth       COHORTS          PHILIPPINES                    Wealth Q3              0      801    2898
Birth       COHORTS          PHILIPPINES                    Wealth Q3              1      129    2898
Birth       CONTENT          PERU                           Wealth Q4              0        0       2
Birth       CONTENT          PERU                           Wealth Q4              1        0       2
Birth       CONTENT          PERU                           Wealth Q1              0        0       2
Birth       CONTENT          PERU                           Wealth Q1              1        0       2
Birth       CONTENT          PERU                           Wealth Q2              0        1       2
Birth       CONTENT          PERU                           Wealth Q2              1        0       2
Birth       CONTENT          PERU                           Wealth Q3              0        1       2
Birth       CONTENT          PERU                           Wealth Q3              1        0       2
Birth       GMS-Nepal        NEPAL                          Wealth Q4              0      130     641
Birth       GMS-Nepal        NEPAL                          Wealth Q4              1       31     641
Birth       GMS-Nepal        NEPAL                          Wealth Q1              0      132     641
Birth       GMS-Nepal        NEPAL                          Wealth Q1              1       32     641
Birth       GMS-Nepal        NEPAL                          Wealth Q2              0      127     641
Birth       GMS-Nepal        NEPAL                          Wealth Q2              1       33     641
Birth       GMS-Nepal        NEPAL                          Wealth Q3              0      120     641
Birth       GMS-Nepal        NEPAL                          Wealth Q3              1       36     641
Birth       IRC              INDIA                          Wealth Q4              0       63     343
Birth       IRC              INDIA                          Wealth Q4              1       16     343
Birth       IRC              INDIA                          Wealth Q1              0       58     343
Birth       IRC              INDIA                          Wealth Q1              1       32     343
Birth       IRC              INDIA                          Wealth Q2              0       60     343
Birth       IRC              INDIA                          Wealth Q2              1       23     343
Birth       IRC              INDIA                          Wealth Q3              0       70     343
Birth       IRC              INDIA                          Wealth Q3              1       21     343
Birth       JiVitA-3         BANGLADESH                     Wealth Q4              0     4052   17994
Birth       JiVitA-3         BANGLADESH                     Wealth Q4              1      453   17994
Birth       JiVitA-3         BANGLADESH                     Wealth Q1              0     3909   17994
Birth       JiVitA-3         BANGLADESH                     Wealth Q1              1      526   17994
Birth       JiVitA-3         BANGLADESH                     Wealth Q2              0     3977   17994
Birth       JiVitA-3         BANGLADESH                     Wealth Q2              1      499   17994
Birth       JiVitA-3         BANGLADESH                     Wealth Q3              0     4083   17994
Birth       JiVitA-3         BANGLADESH                     Wealth Q3              1      495   17994
Birth       JiVitA-4         BANGLADESH                     Wealth Q4              0      517    2394
Birth       JiVitA-4         BANGLADESH                     Wealth Q4              1       55    2394
Birth       JiVitA-4         BANGLADESH                     Wealth Q1              0      499    2394
Birth       JiVitA-4         BANGLADESH                     Wealth Q1              1       61    2394
Birth       JiVitA-4         BANGLADESH                     Wealth Q2              0      562    2394
Birth       JiVitA-4         BANGLADESH                     Wealth Q2              1       55    2394
Birth       JiVitA-4         BANGLADESH                     Wealth Q3              0      578    2394
Birth       JiVitA-4         BANGLADESH                     Wealth Q3              1       67    2394
Birth       MAL-ED           BANGLADESH                     Wealth Q4              0       47     201
Birth       MAL-ED           BANGLADESH                     Wealth Q4              1        9     201
Birth       MAL-ED           BANGLADESH                     Wealth Q1              0       42     201
Birth       MAL-ED           BANGLADESH                     Wealth Q1              1        6     201
Birth       MAL-ED           BANGLADESH                     Wealth Q2              0       35     201
Birth       MAL-ED           BANGLADESH                     Wealth Q2              1       11     201
Birth       MAL-ED           BANGLADESH                     Wealth Q3              0       42     201
Birth       MAL-ED           BANGLADESH                     Wealth Q3              1        9     201
Birth       MAL-ED           BRAZIL                         Wealth Q4              0        9      57
Birth       MAL-ED           BRAZIL                         Wealth Q4              1        1      57
Birth       MAL-ED           BRAZIL                         Wealth Q1              0       19      57
Birth       MAL-ED           BRAZIL                         Wealth Q1              1        1      57
Birth       MAL-ED           BRAZIL                         Wealth Q2              0       16      57
Birth       MAL-ED           BRAZIL                         Wealth Q2              1        0      57
Birth       MAL-ED           BRAZIL                         Wealth Q3              0       11      57
Birth       MAL-ED           BRAZIL                         Wealth Q3              1        0      57
Birth       MAL-ED           INDIA                          Wealth Q4              0        8      39
Birth       MAL-ED           INDIA                          Wealth Q4              1        0      39
Birth       MAL-ED           INDIA                          Wealth Q1              0       12      39
Birth       MAL-ED           INDIA                          Wealth Q1              1        1      39
Birth       MAL-ED           INDIA                          Wealth Q2              0        7      39
Birth       MAL-ED           INDIA                          Wealth Q2              1        2      39
Birth       MAL-ED           INDIA                          Wealth Q3              0        7      39
Birth       MAL-ED           INDIA                          Wealth Q3              1        2      39
Birth       MAL-ED           NEPAL                          Wealth Q4              0        5      25
Birth       MAL-ED           NEPAL                          Wealth Q4              1        1      25
Birth       MAL-ED           NEPAL                          Wealth Q1              0        8      25
Birth       MAL-ED           NEPAL                          Wealth Q1              1        0      25
Birth       MAL-ED           NEPAL                          Wealth Q2              0        2      25
Birth       MAL-ED           NEPAL                          Wealth Q2              1        1      25
Birth       MAL-ED           NEPAL                          Wealth Q3              0        8      25
Birth       MAL-ED           NEPAL                          Wealth Q3              1        0      25
Birth       MAL-ED           PERU                           Wealth Q4              0       52     210
Birth       MAL-ED           PERU                           Wealth Q4              1        1     210
Birth       MAL-ED           PERU                           Wealth Q1              0       54     210
Birth       MAL-ED           PERU                           Wealth Q1              1        1     210
Birth       MAL-ED           PERU                           Wealth Q2              0       50     210
Birth       MAL-ED           PERU                           Wealth Q2              1        1     210
Birth       MAL-ED           PERU                           Wealth Q3              0       49     210
Birth       MAL-ED           PERU                           Wealth Q3              1        2     210
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4              0       16      95
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4              1        1      95
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1              0       23      95
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1              1        3      95
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2              0       22      95
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2              1        2      95
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3              0       24      95
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3              1        4      95
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0       23     112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1        0     112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1              0       26     112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1              1        0     112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0       29     112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1        1     112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       33     112
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3              1        0     112
Birth       PROVIDE          BANGLADESH                     Wealth Q4              0      103     532
Birth       PROVIDE          BANGLADESH                     Wealth Q4              1       29     532
Birth       PROVIDE          BANGLADESH                     Wealth Q1              0       99     532
Birth       PROVIDE          BANGLADESH                     Wealth Q1              1       30     532
Birth       PROVIDE          BANGLADESH                     Wealth Q2              0      110     532
Birth       PROVIDE          BANGLADESH                     Wealth Q2              1       26     532
Birth       PROVIDE          BANGLADESH                     Wealth Q3              0      103     532
Birth       PROVIDE          BANGLADESH                     Wealth Q3              1       32     532
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4              0       87     368
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4              1        8     368
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1              0       74     368
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1              1       16     368
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2              0       80     368
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2              1       13     368
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3              0       81     368
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3              1        9     368
6 months    COHORTS          GUATEMALA                      Wealth Q4              0      332     926
6 months    COHORTS          GUATEMALA                      Wealth Q4              1        7     926
6 months    COHORTS          GUATEMALA                      Wealth Q1              0      170     926
6 months    COHORTS          GUATEMALA                      Wealth Q1              1        6     926
6 months    COHORTS          GUATEMALA                      Wealth Q2              0      189     926
6 months    COHORTS          GUATEMALA                      Wealth Q2              1        5     926
6 months    COHORTS          GUATEMALA                      Wealth Q3              0      205     926
6 months    COHORTS          GUATEMALA                      Wealth Q3              1       12     926
6 months    COHORTS          PHILIPPINES                    Wealth Q4              0      715    2706
6 months    COHORTS          PHILIPPINES                    Wealth Q4              1       29    2706
6 months    COHORTS          PHILIPPINES                    Wealth Q1              0      520    2706
6 months    COHORTS          PHILIPPINES                    Wealth Q1              1       49    2706
6 months    COHORTS          PHILIPPINES                    Wealth Q2              0      453    2706
6 months    COHORTS          PHILIPPINES                    Wealth Q2              1       32    2706
6 months    COHORTS          PHILIPPINES                    Wealth Q3              0      857    2706
6 months    COHORTS          PHILIPPINES                    Wealth Q3              1       51    2706
6 months    CONTENT          PERU                           Wealth Q4              0       52     215
6 months    CONTENT          PERU                           Wealth Q4              1        0     215
6 months    CONTENT          PERU                           Wealth Q1              0       59     215
6 months    CONTENT          PERU                           Wealth Q1              1        0     215
6 months    CONTENT          PERU                           Wealth Q2              0       52     215
6 months    CONTENT          PERU                           Wealth Q2              1        0     215
6 months    CONTENT          PERU                           Wealth Q3              0       52     215
6 months    CONTENT          PERU                           Wealth Q3              1        0     215
6 months    GMS-Nepal        NEPAL                          Wealth Q4              0      131     564
6 months    GMS-Nepal        NEPAL                          Wealth Q4              1        9     564
6 months    GMS-Nepal        NEPAL                          Wealth Q1              0      128     564
6 months    GMS-Nepal        NEPAL                          Wealth Q1              1       13     564
6 months    GMS-Nepal        NEPAL                          Wealth Q2              0      135     564
6 months    GMS-Nepal        NEPAL                          Wealth Q2              1       13     564
6 months    GMS-Nepal        NEPAL                          Wealth Q3              0      119     564
6 months    GMS-Nepal        NEPAL                          Wealth Q3              1       16     564
6 months    IRC              INDIA                          Wealth Q4              0       84     408
6 months    IRC              INDIA                          Wealth Q4              1       16     408
6 months    IRC              INDIA                          Wealth Q1              0       96     408
6 months    IRC              INDIA                          Wealth Q1              1        8     408
6 months    IRC              INDIA                          Wealth Q2              0       91     408
6 months    IRC              INDIA                          Wealth Q2              1       11     408
6 months    IRC              INDIA                          Wealth Q3              0       83     408
6 months    IRC              INDIA                          Wealth Q3              1       19     408
6 months    JiVitA-3         BANGLADESH                     Wealth Q4              0     4625   16776
6 months    JiVitA-3         BANGLADESH                     Wealth Q4              1      346   16776
6 months    JiVitA-3         BANGLADESH                     Wealth Q1              0     3216   16776
6 months    JiVitA-3         BANGLADESH                     Wealth Q1              1      369   16776
6 months    JiVitA-3         BANGLADESH                     Wealth Q2              0     3545   16776
6 months    JiVitA-3         BANGLADESH                     Wealth Q2              1      357   16776
6 months    JiVitA-3         BANGLADESH                     Wealth Q3              0     3971   16776
6 months    JiVitA-3         BANGLADESH                     Wealth Q3              1      347   16776
6 months    JiVitA-4         BANGLADESH                     Wealth Q4              0     1155    4827
6 months    JiVitA-4         BANGLADESH                     Wealth Q4              1       44    4827
6 months    JiVitA-4         BANGLADESH                     Wealth Q1              0     1110    4827
6 months    JiVitA-4         BANGLADESH                     Wealth Q1              1       89    4827
6 months    JiVitA-4         BANGLADESH                     Wealth Q2              0     1116    4827
6 months    JiVitA-4         BANGLADESH                     Wealth Q2              1       85    4827
6 months    JiVitA-4         BANGLADESH                     Wealth Q3              0     1171    4827
6 months    JiVitA-4         BANGLADESH                     Wealth Q3              1       57    4827
6 months    LCNI-5           MALAWI                         Wealth Q4              0      216     816
6 months    LCNI-5           MALAWI                         Wealth Q4              1        1     816
6 months    LCNI-5           MALAWI                         Wealth Q1              0      195     816
6 months    LCNI-5           MALAWI                         Wealth Q1              1        8     816
6 months    LCNI-5           MALAWI                         Wealth Q2              0      197     816
6 months    LCNI-5           MALAWI                         Wealth Q2              1        2     816
6 months    LCNI-5           MALAWI                         Wealth Q3              0      194     816
6 months    LCNI-5           MALAWI                         Wealth Q3              1        3     816
6 months    MAL-ED           BANGLADESH                     Wealth Q4              0       57     240
6 months    MAL-ED           BANGLADESH                     Wealth Q4              1        4     240
6 months    MAL-ED           BANGLADESH                     Wealth Q1              0       58     240
6 months    MAL-ED           BANGLADESH                     Wealth Q1              1        1     240
6 months    MAL-ED           BANGLADESH                     Wealth Q2              0       59     240
6 months    MAL-ED           BANGLADESH                     Wealth Q2              1        2     240
6 months    MAL-ED           BANGLADESH                     Wealth Q3              0       58     240
6 months    MAL-ED           BANGLADESH                     Wealth Q3              1        1     240
6 months    MAL-ED           BRAZIL                         Wealth Q4              0       53     209
6 months    MAL-ED           BRAZIL                         Wealth Q4              1        0     209
6 months    MAL-ED           BRAZIL                         Wealth Q1              0       52     209
6 months    MAL-ED           BRAZIL                         Wealth Q1              1        1     209
6 months    MAL-ED           BRAZIL                         Wealth Q2              0       52     209
6 months    MAL-ED           BRAZIL                         Wealth Q2              1        0     209
6 months    MAL-ED           BRAZIL                         Wealth Q3              0       51     209
6 months    MAL-ED           BRAZIL                         Wealth Q3              1        0     209
6 months    MAL-ED           INDIA                          Wealth Q4              0       55     235
6 months    MAL-ED           INDIA                          Wealth Q4              1        4     235
6 months    MAL-ED           INDIA                          Wealth Q1              0       55     235
6 months    MAL-ED           INDIA                          Wealth Q1              1        5     235
6 months    MAL-ED           INDIA                          Wealth Q2              0       52     235
6 months    MAL-ED           INDIA                          Wealth Q2              1        6     235
6 months    MAL-ED           INDIA                          Wealth Q3              0       54     235
6 months    MAL-ED           INDIA                          Wealth Q3              1        4     235
6 months    MAL-ED           NEPAL                          Wealth Q4              0       58     236
6 months    MAL-ED           NEPAL                          Wealth Q4              1        1     236
6 months    MAL-ED           NEPAL                          Wealth Q1              0       57     236
6 months    MAL-ED           NEPAL                          Wealth Q1              1        2     236
6 months    MAL-ED           NEPAL                          Wealth Q2              0       59     236
6 months    MAL-ED           NEPAL                          Wealth Q2              1        0     236
6 months    MAL-ED           NEPAL                          Wealth Q3              0       58     236
6 months    MAL-ED           NEPAL                          Wealth Q3              1        1     236
6 months    MAL-ED           PERU                           Wealth Q4              0       67     270
6 months    MAL-ED           PERU                           Wealth Q4              1        0     270
6 months    MAL-ED           PERU                           Wealth Q1              0       68     270
6 months    MAL-ED           PERU                           Wealth Q1              1        0     270
6 months    MAL-ED           PERU                           Wealth Q2              0       71     270
6 months    MAL-ED           PERU                           Wealth Q2              1        0     270
6 months    MAL-ED           PERU                           Wealth Q3              0       64     270
6 months    MAL-ED           PERU                           Wealth Q3              1        0     270
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4              0       62     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4              1        0     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1              0       57     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1              1        3     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2              0       62     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2              1        2     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3              0       61     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3              1        2     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0       63     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1              0       63     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1              1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0       61     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1        0     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       59     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3              1        1     247
6 months    PROVIDE          BANGLADESH                     Wealth Q4              0      129     603
6 months    PROVIDE          BANGLADESH                     Wealth Q4              1        5     603
6 months    PROVIDE          BANGLADESH                     Wealth Q1              0      148     603
6 months    PROVIDE          BANGLADESH                     Wealth Q1              1        8     603
6 months    PROVIDE          BANGLADESH                     Wealth Q2              0      158     603
6 months    PROVIDE          BANGLADESH                     Wealth Q2              1        6     603
6 months    PROVIDE          BANGLADESH                     Wealth Q3              0      143     603
6 months    PROVIDE          BANGLADESH                     Wealth Q3              1        6     603
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0      485    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1       16    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              0      573    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              1       32    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0      395    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1       14    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0      479    2019
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              1       25    2019
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4              0       93     372
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4              1        2     372
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1              0       84     372
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1              1        7     372
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2              0       88     372
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2              1        7     372
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3              0       84     372
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3              1        7     372
24 months   COHORTS          GUATEMALA                      Wealth Q4              0      392    1046
24 months   COHORTS          GUATEMALA                      Wealth Q4              1       13    1046
24 months   COHORTS          GUATEMALA                      Wealth Q1              0      195    1046
24 months   COHORTS          GUATEMALA                      Wealth Q1              1        8    1046
24 months   COHORTS          GUATEMALA                      Wealth Q2              0      204    1046
24 months   COHORTS          GUATEMALA                      Wealth Q2              1       11    1046
24 months   COHORTS          GUATEMALA                      Wealth Q3              0      208    1046
24 months   COHORTS          GUATEMALA                      Wealth Q3              1       15    1046
24 months   COHORTS          PHILIPPINES                    Wealth Q4              0      654    2449
24 months   COHORTS          PHILIPPINES                    Wealth Q4              1       31    2449
24 months   COHORTS          PHILIPPINES                    Wealth Q1              0      447    2449
24 months   COHORTS          PHILIPPINES                    Wealth Q1              1       45    2449
24 months   COHORTS          PHILIPPINES                    Wealth Q2              0      396    2449
24 months   COHORTS          PHILIPPINES                    Wealth Q2              1       28    2449
24 months   COHORTS          PHILIPPINES                    Wealth Q3              0      785    2449
24 months   COHORTS          PHILIPPINES                    Wealth Q3              1       63    2449
24 months   CONTENT          PERU                           Wealth Q4              0       40     164
24 months   CONTENT          PERU                           Wealth Q4              1        1     164
24 months   CONTENT          PERU                           Wealth Q1              0       40     164
24 months   CONTENT          PERU                           Wealth Q1              1        0     164
24 months   CONTENT          PERU                           Wealth Q2              0       42     164
24 months   CONTENT          PERU                           Wealth Q2              1        0     164
24 months   CONTENT          PERU                           Wealth Q3              0       41     164
24 months   CONTENT          PERU                           Wealth Q3              1        0     164
24 months   GMS-Nepal        NEPAL                          Wealth Q4              0       98     487
24 months   GMS-Nepal        NEPAL                          Wealth Q4              1       26     487
24 months   GMS-Nepal        NEPAL                          Wealth Q1              0       97     487
24 months   GMS-Nepal        NEPAL                          Wealth Q1              1       24     487
24 months   GMS-Nepal        NEPAL                          Wealth Q2              0      104     487
24 months   GMS-Nepal        NEPAL                          Wealth Q2              1       24     487
24 months   GMS-Nepal        NEPAL                          Wealth Q3              0       97     487
24 months   GMS-Nepal        NEPAL                          Wealth Q3              1       17     487
24 months   IRC              INDIA                          Wealth Q4              0       93     409
24 months   IRC              INDIA                          Wealth Q4              1        7     409
24 months   IRC              INDIA                          Wealth Q1              0       96     409
24 months   IRC              INDIA                          Wealth Q1              1        9     409
24 months   IRC              INDIA                          Wealth Q2              0       92     409
24 months   IRC              INDIA                          Wealth Q2              1        9     409
24 months   IRC              INDIA                          Wealth Q3              0       97     409
24 months   IRC              INDIA                          Wealth Q3              1        6     409
24 months   JiVitA-3         BANGLADESH                     Wealth Q4              0     1897    8594
24 months   JiVitA-3         BANGLADESH                     Wealth Q4              1      454    8594
24 months   JiVitA-3         BANGLADESH                     Wealth Q1              0     1535    8594
24 months   JiVitA-3         BANGLADESH                     Wealth Q1              1      461    8594
24 months   JiVitA-3         BANGLADESH                     Wealth Q2              0     1612    8594
24 months   JiVitA-3         BANGLADESH                     Wealth Q2              1      491    8594
24 months   JiVitA-3         BANGLADESH                     Wealth Q3              0     1676    8594
24 months   JiVitA-3         BANGLADESH                     Wealth Q3              1      468    8594
24 months   JiVitA-4         BANGLADESH                     Wealth Q4              0      983    4730
24 months   JiVitA-4         BANGLADESH                     Wealth Q4              1      204    4730
24 months   JiVitA-4         BANGLADESH                     Wealth Q1              0      918    4730
24 months   JiVitA-4         BANGLADESH                     Wealth Q1              1      235    4730
24 months   JiVitA-4         BANGLADESH                     Wealth Q2              0      922    4730
24 months   JiVitA-4         BANGLADESH                     Wealth Q2              1      247    4730
24 months   JiVitA-4         BANGLADESH                     Wealth Q3              0      987    4730
24 months   JiVitA-4         BANGLADESH                     Wealth Q3              1      234    4730
24 months   LCNI-5           MALAWI                         Wealth Q4              0      154     558
24 months   LCNI-5           MALAWI                         Wealth Q4              1        1     558
24 months   LCNI-5           MALAWI                         Wealth Q1              0      123     558
24 months   LCNI-5           MALAWI                         Wealth Q1              1        4     558
24 months   LCNI-5           MALAWI                         Wealth Q2              0      138     558
24 months   LCNI-5           MALAWI                         Wealth Q2              1        2     558
24 months   LCNI-5           MALAWI                         Wealth Q3              0      133     558
24 months   LCNI-5           MALAWI                         Wealth Q3              1        3     558
24 months   MAL-ED           BANGLADESH                     Wealth Q4              0       53     212
24 months   MAL-ED           BANGLADESH                     Wealth Q4              1        8     212
24 months   MAL-ED           BANGLADESH                     Wealth Q1              0       29     212
24 months   MAL-ED           BANGLADESH                     Wealth Q1              1        1     212
24 months   MAL-ED           BANGLADESH                     Wealth Q2              0       54     212
24 months   MAL-ED           BANGLADESH                     Wealth Q2              1        7     212
24 months   MAL-ED           BANGLADESH                     Wealth Q3              0       55     212
24 months   MAL-ED           BANGLADESH                     Wealth Q3              1        5     212
24 months   MAL-ED           BRAZIL                         Wealth Q4              0       52     169
24 months   MAL-ED           BRAZIL                         Wealth Q4              1        1     169
24 months   MAL-ED           BRAZIL                         Wealth Q1              0       25     169
24 months   MAL-ED           BRAZIL                         Wealth Q1              1        1     169
24 months   MAL-ED           BRAZIL                         Wealth Q2              0       38     169
24 months   MAL-ED           BRAZIL                         Wealth Q2              1        1     169
24 months   MAL-ED           BRAZIL                         Wealth Q3              0       51     169
24 months   MAL-ED           BRAZIL                         Wealth Q3              1        0     169
24 months   MAL-ED           INDIA                          Wealth Q4              0       54     227
24 months   MAL-ED           INDIA                          Wealth Q4              1        5     227
24 months   MAL-ED           INDIA                          Wealth Q1              0       45     227
24 months   MAL-ED           INDIA                          Wealth Q1              1        7     227
24 months   MAL-ED           INDIA                          Wealth Q2              0       50     227
24 months   MAL-ED           INDIA                          Wealth Q2              1        8     227
24 months   MAL-ED           INDIA                          Wealth Q3              0       51     227
24 months   MAL-ED           INDIA                          Wealth Q3              1        7     227
24 months   MAL-ED           NEPAL                          Wealth Q4              0       59     228
24 months   MAL-ED           NEPAL                          Wealth Q4              1        0     228
24 months   MAL-ED           NEPAL                          Wealth Q1              0       52     228
24 months   MAL-ED           NEPAL                          Wealth Q1              1        3     228
24 months   MAL-ED           NEPAL                          Wealth Q2              0       53     228
24 months   MAL-ED           NEPAL                          Wealth Q2              1        2     228
24 months   MAL-ED           NEPAL                          Wealth Q3              0       59     228
24 months   MAL-ED           NEPAL                          Wealth Q3              1        0     228
24 months   MAL-ED           PERU                           Wealth Q4              0       64     201
24 months   MAL-ED           PERU                           Wealth Q4              1        1     201
24 months   MAL-ED           PERU                           Wealth Q1              0       41     201
24 months   MAL-ED           PERU                           Wealth Q1              1        1     201
24 months   MAL-ED           PERU                           Wealth Q2              0       38     201
24 months   MAL-ED           PERU                           Wealth Q2              1        0     201
24 months   MAL-ED           PERU                           Wealth Q3              0       54     201
24 months   MAL-ED           PERU                           Wealth Q3              1        2     201
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4              0       63     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4              1        0     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1              0       49     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1              1        0     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2              0       63     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2              1        0     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3              0       62     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3              1        1     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0       63     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1        0     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1              0       27     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1              1        1     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0       61     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1        1     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       59     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3              1        2     214
24 months   PROVIDE          BANGLADESH                     Wealth Q4              0      106     579
24 months   PROVIDE          BANGLADESH                     Wealth Q4              1       16     579
24 months   PROVIDE          BANGLADESH                     Wealth Q1              0      136     579
24 months   PROVIDE          BANGLADESH                     Wealth Q1              1       19     579
24 months   PROVIDE          BANGLADESH                     Wealth Q2              0      148     579
24 months   PROVIDE          BANGLADESH                     Wealth Q2              1        9     579
24 months   PROVIDE          BANGLADESH                     Wealth Q3              0      127     579
24 months   PROVIDE          BANGLADESH                     Wealth Q3              1       18     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              0        4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              1        0       6


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
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
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/5cb293b1-984f-4899-80d5-912080f44668/e67f440f-0f09-4e8a-a464-38cf395a7112/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5cb293b1-984f-4899-80d5-912080f44668/e67f440f-0f09-4e8a-a464-38cf395a7112/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5cb293b1-984f-4899-80d5-912080f44668/e67f440f-0f09-4e8a-a464-38cf395a7112/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5cb293b1-984f-4899-80d5-912080f44668/e67f440f-0f09-4e8a-a464-38cf395a7112/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                0.2595676   0.2075037   0.3116315
Birth       COHORTS          GUATEMALA                      Wealth Q1            NA                0.3337702   0.2585065   0.4090340
Birth       COHORTS          GUATEMALA                      Wealth Q2            NA                0.2281906   0.1601376   0.2962435
Birth       COHORTS          GUATEMALA                      Wealth Q3            NA                0.2055175   0.1484630   0.2625720
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1549067   0.1410558   0.1687576
Birth       COHORTS          PHILIPPINES                    Wealth Q1            NA                0.1560396   0.1421104   0.1699687
Birth       COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1561071   0.1416935   0.1705207
Birth       COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1555764   0.1419486   0.1692041
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1921228   0.1296474   0.2545982
Birth       GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2016944   0.1416827   0.2617061
Birth       GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2061842   0.1419262   0.2704423
Birth       GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2263763   0.1594587   0.2932938
Birth       IRC              INDIA                          Wealth Q4            NA                0.2096733   0.1244733   0.2948733
Birth       IRC              INDIA                          Wealth Q1            NA                0.3566919   0.2635008   0.4498831
Birth       IRC              INDIA                          Wealth Q2            NA                0.3008302   0.2076746   0.3939858
Birth       IRC              INDIA                          Wealth Q3            NA                0.2356242   0.1609941   0.3102544
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.1125347   0.1064657   0.1186037
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.1126394   0.1067855   0.1184934
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.1094804   0.1039562   0.1150045
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.1100869   0.1044936   0.1156802
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.0959308   0.0803215   0.1115401
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.0914178   0.0744163   0.1084192
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.0942241   0.0772553   0.1111929
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.1055101   0.0829321   0.1280882
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                0.1607143   0.0642827   0.2571459
Birth       MAL-ED           BANGLADESH                     Wealth Q1            NA                0.1250000   0.0312072   0.2187928
Birth       MAL-ED           BANGLADESH                     Wealth Q2            NA                0.2391304   0.1155571   0.3627038
Birth       MAL-ED           BANGLADESH                     Wealth Q3            NA                0.1764706   0.0715836   0.2813576
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                0.2180237   0.1473056   0.2887418
Birth       PROVIDE          BANGLADESH                     Wealth Q1            NA                0.2344944   0.1596350   0.3093538
Birth       PROVIDE          BANGLADESH                     Wealth Q2            NA                0.1962052   0.1281980   0.2642125
Birth       PROVIDE          BANGLADESH                     Wealth Q3            NA                0.2342704   0.1614629   0.3070779
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0842105   0.0282917   0.1401294
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1777778   0.0986824   0.2568731
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.1397849   0.0692131   0.2103567
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1000000   0.0379361   0.1620639
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                0.0206490   0.0055029   0.0357951
6 months    COHORTS          GUATEMALA                      Wealth Q1            NA                0.0340909   0.0072675   0.0609143
6 months    COHORTS          GUATEMALA                      Wealth Q2            NA                0.0257732   0.0034634   0.0480830
6 months    COHORTS          GUATEMALA                      Wealth Q3            NA                0.0552995   0.0248724   0.0857266
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0397310   0.0258285   0.0536335
6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0901112   0.0669969   0.1132255
6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0658062   0.0437327   0.0878796
6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0551343   0.0401825   0.0700861
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0642857   0.0236228   0.1049486
6 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0921986   0.0444037   0.1399935
6 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0878378   0.0421943   0.1334814
6 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1185185   0.0639470   0.1730901
6 months    IRC              INDIA                          Wealth Q4            NA                0.1600000   0.0880583   0.2319417
6 months    IRC              INDIA                          Wealth Q1            NA                0.0769231   0.0256474   0.1281988
6 months    IRC              INDIA                          Wealth Q2            NA                0.1078431   0.0475736   0.1681127
6 months    IRC              INDIA                          Wealth Q3            NA                0.1862745   0.1106267   0.2619224
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.0794814   0.0669788   0.0919841
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.0985710   0.0835586   0.1135834
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.0925840   0.0802861   0.1048820
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.0834453   0.0729843   0.0939064
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.0425845   0.0282029   0.0569662
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.0602521   0.0401977   0.0803065
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.0677854   0.0471188   0.0884521
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.0529634   0.0370645   0.0688623
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                0.0373134   0.0051967   0.0694302
6 months    PROVIDE          BANGLADESH                     Wealth Q1            NA                0.0512821   0.0166405   0.0859236
6 months    PROVIDE          BANGLADESH                     Wealth Q2            NA                0.0365854   0.0078281   0.0653426
6 months    PROVIDE          BANGLADESH                     Wealth Q3            NA                0.0402685   0.0086768   0.0718601
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0321444   0.0165555   0.0477332
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0530095   0.0350912   0.0709277
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0334058   0.0161708   0.0506408
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0498695   0.0307707   0.0689683
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.0320988   0.0149241   0.0492734
24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.0394089   0.0126311   0.0661866
24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.0511628   0.0216976   0.0806280
24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.0672646   0.0343737   0.1001555
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0504330   0.0337457   0.0671203
24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0866791   0.0616291   0.1117292
24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0642410   0.0401305   0.0883515
24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0721989   0.0545973   0.0898005
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2180218   0.1464675   0.2895761
24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2016655   0.1303468   0.2729841
24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1989995   0.1305314   0.2674675
24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1630412   0.0967255   0.2293569
24 months   IRC              INDIA                          Wealth Q4            NA                0.0700000   0.0199309   0.1200691
24 months   IRC              INDIA                          Wealth Q1            NA                0.0857143   0.0321034   0.1393251
24 months   IRC              INDIA                          Wealth Q2            NA                0.0891089   0.0334784   0.1447394
24 months   IRC              INDIA                          Wealth Q3            NA                0.0582524   0.0129642   0.1035407
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.2151001   0.1881987   0.2420014
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.2376142   0.2128902   0.2623382
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.2289924   0.2071026   0.2508821
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.2209016   0.1988711   0.2429321
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.1807268   0.1535665   0.2078872
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.2154069   0.1880188   0.2427949
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.2117889   0.1833817   0.2401961
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.1968185   0.1673579   0.2262790
24 months   MAL-ED           INDIA                          Wealth Q4            NA                0.0847458   0.0135243   0.1559672
24 months   MAL-ED           INDIA                          Wealth Q1            NA                0.1346154   0.0416423   0.2275884
24 months   MAL-ED           INDIA                          Wealth Q2            NA                0.1379310   0.0489915   0.2268706
24 months   MAL-ED           INDIA                          Wealth Q3            NA                0.1206897   0.0366665   0.2047128
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.1311475   0.0711965   0.1910986
24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.1225806   0.0709066   0.1742547
24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.0573248   0.0209312   0.0937185
24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.1241379   0.0704212   0.1778547


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.2537723   0.2221611   0.2853834
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.1556246   0.1424244   0.1688248
Birth       GMS-Nepal        NEPAL                          NA                   NA                0.2059282   0.1745993   0.2372572
Birth       IRC              INDIA                          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.1096477   0.1045230   0.1147723
Birth       JiVitA-4         BANGLADESH                     NA                   NA                0.0994152   0.0840401   0.1147903
Birth       MAL-ED           BANGLADESH                     NA                   NA                0.1741294   0.1215730   0.2266857
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.2199248   0.1846953   0.2551543
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.1250000   0.0911644   0.1588356
6 months    COHORTS          GUATEMALA                      NA                   NA                0.0323974   0.0209875   0.0438073
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0594974   0.0505830   0.0684118
6 months    GMS-Nepal        NEPAL                          NA                   NA                0.0904255   0.0667359   0.1141152
6 months    IRC              INDIA                          NA                   NA                0.1323529   0.0994307   0.1652752
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0845851   0.0797798   0.0893904
6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.0569712   0.0481278   0.0658146
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0414594   0.0255348   0.0573839
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0430906   0.0342310   0.0519502
24 months   COHORTS          GUATEMALA                      NA                   NA                0.0449331   0.0323731   0.0574931
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0681911   0.0582056   0.0781766
24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1868583   0.1522030   0.2215136
24 months   IRC              INDIA                          NA                   NA                0.0757946   0.0501131   0.1014762
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2180591   0.2081778   0.2279404
24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1945032   0.1812962   0.2077102
24 months   MAL-ED           INDIA                          NA                   NA                0.1189427   0.0767376   0.1611478
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1070812   0.0818727   0.1322897


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2858702   0.9541111   1.7329871
Birth       COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.8791181   0.6168697   1.2528556
Birth       COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.7917688   0.5645784   1.1103824
Birth       COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.0073131   0.9637827   1.0528096
Birth       COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0077493   0.9569669   1.0612265
Birth       COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.0043229   0.9623683   1.0481067
Birth       GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0498204   0.6756435   1.6312195
Birth       GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0731900   0.6840343   1.6837414
Birth       GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1782895   0.7589619   1.8292964
Birth       IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       IRC              INDIA                          Wealth Q1            Wealth Q4         1.7011798   1.0615776   2.7261432
Birth       IRC              INDIA                          Wealth Q2            Wealth Q4         1.4347571   0.8709086   2.3636557
Birth       IRC              INDIA                          Wealth Q3            Wealth Q4         1.1237684   0.6811183   1.8540912
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.0009303   0.9612815   1.0422144
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         0.9728582   0.9368071   1.0102967
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         0.9782484   0.9406811   1.0173159
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         0.9529557   0.8526083   1.0651135
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         0.9822093   0.8848898   1.0902321
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.0998571   0.9122912   1.3259862
Birth       MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         0.7777778   0.2975830   2.0328390
Birth       MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         1.4879227   0.6740216   3.2846335
Birth       MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         1.0980392   0.4718772   2.5550931
Birth       PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         1.0755455   0.6821006   1.6959348
Birth       PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.8999262   0.5597651   1.4467984
Birth       PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         1.0745181   0.6860344   1.6829902
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.1111111   0.9492417   4.6951055
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.6599462   0.7208115   3.8226658
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.1875000   0.4785137   2.9469505
6 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.6509740   0.5630837   4.8406932
6 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2481591   0.4013444   3.8817062
6 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.6780777   1.0705381   6.6995283
6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.2680332   1.4700493   3.4991850
6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.6562928   1.0202658   2.6888147
6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.3876900   0.8915422   2.1599468
6 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4342002   0.6330463   3.2492572
6 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.3663664   0.6026293   3.0980190
6 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.8436214   0.8431221   4.0313730
6 months    IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA                          Wealth Q1            Wealth Q4         0.4807692   0.2151491   1.0743205
6 months    IRC              INDIA                          Wealth Q2            Wealth Q4         0.6740196   0.3289721   1.3809758
6 months    IRC              INDIA                          Wealth Q3            Wealth Q4         1.1642157   0.6351858   2.1338609
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.2401767   0.9886280   1.5557299
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.1648514   0.9495083   1.4290330
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.0498724   0.8622037   1.2783893
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.4148809   0.8848107   2.2625043
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.5917852   1.0103338   2.5078644
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.2437231   0.8198417   1.8867631
6 months    PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         1.3743590   0.4601679   4.1047250
6 months    PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.9804878   0.3056433   3.1453542
6 months    PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         1.0791946   0.3367539   3.4584932
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.6491049   0.9129386   2.9788937
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0392413   0.5118064   2.1102170
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.5514208   0.8361322   2.8786196
24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2277378   0.5170124   2.9154814
24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.5939177   0.7262154   3.4983748
24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.0955502   1.0150945   4.3260315
24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.7186981   1.1079244   2.6661776
24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.2737888   0.7723726   2.1007189
24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4315796   0.9490926   2.1593469
24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9249783   0.5701298   1.5006843
24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.9127502   0.5672743   1.4686243
24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.7478206   0.4439268   1.2597473
24 months   IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         1.2244898   0.4734817   3.1667018
24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         1.2729844   0.4926099   3.2895994
24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         0.8321775   0.2893443   2.3934100
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.1046684   0.9460620   1.2898650
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.0645854   0.9091372   1.2466127
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.0269714   0.8772786   1.2022069
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.1918921   0.9807856   1.4484375
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.1718730   0.9605169   1.4297369
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.0890386   0.8800001   1.3477329
24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         1.5884615   0.5352452   4.7141198
24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         1.6275862   0.5642924   4.6944398
24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         1.4241379   0.4781876   4.2413662
24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         0.9346774   0.5018862   1.7406771
24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.4371019   0.1999062   0.9557387
24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         0.9465517   0.5044021   1.7762816


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0057953   -0.0468730   0.0352825
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0007179   -0.0033964   0.0048322
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0138055   -0.0407462   0.0683571
Birth       IRC              INDIA                          Wealth Q4            NA                 0.0585483   -0.0169537   0.1340502
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0028871   -0.0062180   0.0004439
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0034844   -0.0028212   0.0097900
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0134151   -0.0695286   0.0963588
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0019011   -0.0595591   0.0633614
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0407895   -0.0107598   0.0923387
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0117484   -0.0020944   0.0255913
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0197664    0.0068704   0.0326625
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0261398   -0.0111938   0.0634734
6 months    IRC              INDIA                          Wealth Q4            NA                -0.0276471   -0.0886587   0.0333646
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0051037   -0.0065215   0.0167289
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0143867    0.0013979   0.0273754
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0041459   -0.0246054   0.0328972
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0109463   -0.0032909   0.0251834
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0128343   -0.0021425   0.0278111
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0177581    0.0024285   0.0330877
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0311635   -0.0922272   0.0299002
24 months   IRC              INDIA                          Wealth Q4            NA                 0.0057946   -0.0382574   0.0498467
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0029591   -0.0216067   0.0275248
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0137763   -0.0117948   0.0393475
24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0341970   -0.0307412   0.0991351
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0240664   -0.0761717   0.0280390


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0228366   -0.1982151   0.1268724
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0046128   -0.0221842   0.0307073
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0670401   -0.2393481   0.2976839
Birth       IRC              INDIA                          Wealth Q4            NA                 0.2182833   -0.1192867   0.4540442
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0263306   -0.0572085   0.0036455
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0350492   -0.0297819   0.0957988
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0770408   -0.5458102   0.4489274
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0086444   -0.3141801   0.2521680
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.3263158   -0.2283944   0.6305336
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.3626352   -0.2100558   0.6642850
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3322231    0.0840470   0.5131563
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2890756   -0.2599919   0.5988756
6 months    IRC              INDIA                          Wealth Q4            NA                -0.2088889   -0.7673694   0.1731144
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0603381   -0.0876400   0.1881831
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.2525251   -0.0093219   0.4464415
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.1000000   -0.9427092   0.5830565
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2540285   -0.1557537   0.5185190
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2856317   -0.1247612   0.5462841
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2604165    0.0028473   0.4514544
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.1667761   -0.5440180   0.1182962
24 months   IRC              INDIA                          Wealth Q4            NA                 0.0764516   -0.7319580   0.5075275
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0135700   -0.1058054   0.1200584
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0708284   -0.0697529   0.1929352
24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.2875078   -0.5164954   0.6652512
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.2247488   -0.8191640   0.1754401
