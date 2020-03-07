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

unadjusted

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/ba1aea50-9841-4859-8c2f-2cb11e19b071/d7027938-d0e9-4173-8a44-65cbbf2cdc81/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ba1aea50-9841-4859-8c2f-2cb11e19b071/d7027938-d0e9-4173-8a44-65cbbf2cdc81/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ba1aea50-9841-4859-8c2f-2cb11e19b071/d7027938-d0e9-4173-8a44-65cbbf2cdc81/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ba1aea50-9841-4859-8c2f-2cb11e19b071/d7027938-d0e9-4173-8a44-65cbbf2cdc81/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                0.2635659   0.2097702   0.3173616
Birth       COHORTS          GUATEMALA                      Wealth Q1            NA                0.3194444   0.2432375   0.3956514
Birth       COHORTS          GUATEMALA                      Wealth Q2            NA                0.2340426   0.1641089   0.3039762
Birth       COHORTS          GUATEMALA                      Wealth Q3            NA                0.2043011   0.1463182   0.2622839
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1766871   0.1504975   0.2028767
Birth       COHORTS          PHILIPPINES                    Wealth Q1            NA                0.1761978   0.1468360   0.2055596
Birth       COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1264822   0.0975156   0.1554489
Birth       COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1387097   0.1164914   0.1609279
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1925466   0.1315928   0.2535004
Birth       GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1951220   0.1344227   0.2558212
Birth       GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2062500   0.1435069   0.2689931
Birth       GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2307692   0.1646021   0.2969363
Birth       IRC              INDIA                          Wealth Q4            NA                0.2025316   0.1137810   0.2912823
Birth       IRC              INDIA                          Wealth Q1            NA                0.3555556   0.2565163   0.4545948
Birth       IRC              INDIA                          Wealth Q2            NA                0.2771084   0.1806801   0.3735367
Birth       IRC              INDIA                          Wealth Q3            NA                0.2307692   0.1440773   0.3174612
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.1005549   0.0903049   0.1108050
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.1186020   0.1079661   0.1292380
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.1114835   0.1019743   0.1209926
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.1081258   0.0987368   0.1175149
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.0961538   0.0670216   0.1252861
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.1089286   0.0766397   0.1412174
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.0891410   0.0616835   0.1165985
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.1038760   0.0723944   0.1353575
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                0.1607143   0.0642827   0.2571459
Birth       MAL-ED           BANGLADESH                     Wealth Q1            NA                0.1250000   0.0312072   0.2187928
Birth       MAL-ED           BANGLADESH                     Wealth Q2            NA                0.2391304   0.1155571   0.3627038
Birth       MAL-ED           BANGLADESH                     Wealth Q3            NA                0.1764706   0.0715836   0.2813576
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                0.2196970   0.1489980   0.2903960
Birth       PROVIDE          BANGLADESH                     Wealth Q1            NA                0.2325581   0.1595871   0.3055291
Birth       PROVIDE          BANGLADESH                     Wealth Q2            NA                0.1911765   0.1250262   0.2573267
Birth       PROVIDE          BANGLADESH                     Wealth Q3            NA                0.2370370   0.1652329   0.3088412
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0842105   0.0282917   0.1401294
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1777778   0.0986824   0.2568731
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.1397849   0.0692131   0.2103567
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1000000   0.0379361   0.1620639
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                0.0206490   0.0055029   0.0357951
6 months    COHORTS          GUATEMALA                      Wealth Q1            NA                0.0340909   0.0072675   0.0609143
6 months    COHORTS          GUATEMALA                      Wealth Q2            NA                0.0257732   0.0034634   0.0480830
6 months    COHORTS          GUATEMALA                      Wealth Q3            NA                0.0552995   0.0248724   0.0857266
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0389785   0.0250687   0.0528883
6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0861160   0.0630613   0.1091707
6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0659794   0.0438820   0.0880767
6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0561674   0.0411887   0.0711461
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0642857   0.0236228   0.1049486
6 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0921986   0.0444037   0.1399935
6 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0878378   0.0421943   0.1334814
6 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1185185   0.0639470   0.1730901
6 months    IRC              INDIA                          Wealth Q4            NA                0.1600000   0.0880583   0.2319417
6 months    IRC              INDIA                          Wealth Q1            NA                0.0769231   0.0256474   0.1281988
6 months    IRC              INDIA                          Wealth Q2            NA                0.1078431   0.0475736   0.1681127
6 months    IRC              INDIA                          Wealth Q3            NA                0.1862745   0.1106267   0.2619224
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.0696037   0.0611742   0.0780332
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.1029289   0.0923431   0.1135147
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.0914915   0.0814239   0.1015592
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.0803613   0.0716284   0.0890942
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.0366972   0.0189192   0.0544753
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.0742285   0.0558824   0.0925747
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.0707744   0.0506869   0.0908618
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.0464169   0.0333921   0.0594418
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                0.0373134   0.0051967   0.0694302
6 months    PROVIDE          BANGLADESH                     Wealth Q1            NA                0.0512821   0.0166405   0.0859236
6 months    PROVIDE          BANGLADESH                     Wealth Q2            NA                0.0365854   0.0078281   0.0653426
6 months    PROVIDE          BANGLADESH                     Wealth Q3            NA                0.0402685   0.0086768   0.0718601
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0319361   0.0165358   0.0473365
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0528926   0.0350534   0.0707317
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0342298   0.0166047   0.0518550
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0496032   0.0306428   0.0685636
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.0320988   0.0149241   0.0492734
24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.0394089   0.0126311   0.0661866
24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.0511628   0.0216976   0.0806280
24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.0672646   0.0343737   0.1001555
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0452555   0.0296861   0.0608248
24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0914634   0.0659864   0.1169405
24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0660377   0.0423941   0.0896814
24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0742925   0.0566383   0.0919467
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2096774   0.1379539   0.2814009
24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1983471   0.1272245   0.2694697
24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1875000   0.1198135   0.2551865
24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1491228   0.0836671   0.2145785
24 months   IRC              INDIA                          Wealth Q4            NA                0.0700000   0.0199309   0.1200691
24 months   IRC              INDIA                          Wealth Q1            NA                0.0857143   0.0321034   0.1393251
24 months   IRC              INDIA                          Wealth Q2            NA                0.0891089   0.0334784   0.1447394
24 months   IRC              INDIA                          Wealth Q3            NA                0.0582524   0.0129642   0.1035407
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.1931093   0.1757618   0.2104568
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.2309619   0.2121949   0.2497290
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.2334760   0.2134835   0.2534685
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.2182836   0.1978030   0.2387641
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.1718618   0.1446032   0.1991205
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.2038161   0.1763996   0.2312326
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.2112917   0.1862462   0.2363372
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.1916462   0.1658575   0.2174349
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
Birth       COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2120098   0.8854314   1.6590419
Birth       COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.8879850   0.6183722   1.2751500
Birth       COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.7751423   0.5464613   1.0995208
Birth       COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.9972308   0.7978792   1.2463908
Birth       COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.7158542   0.5449403   0.9403732
Birth       COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.7850582   0.6311349   0.9765209
Birth       GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0133753   0.6501540   1.5795173
Birth       GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0711694   0.6905336   1.6616190
Birth       GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1985112   0.7818969   1.8371080
Birth       IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       IRC              INDIA                          Wealth Q1            Wealth Q4         1.7555556   1.0445037   2.9506601
Birth       IRC              INDIA                          Wealth Q2            Wealth Q4         1.3682229   0.7818797   2.3942734
Birth       IRC              INDIA                          Wealth Q3            Wealth Q4         1.1394231   0.6397558   2.0293445
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.1794749   1.0274562   1.3539857
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.1086822   0.9728176   1.2635217
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.0752910   0.9383492   1.2322179
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.1328571   0.7394251   1.7356257
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         0.9270665   0.6024351   1.4266304
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.0803101   0.7059639   1.6531579
Birth       MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         0.7777778   0.2975830   2.0328390
Birth       MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         1.4879227   0.6740216   3.2846335
Birth       MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         1.0980392   0.4718772   2.5550931
Birth       PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         1.0585405   0.6753217   1.6592210
Birth       PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.8701826   0.5424920   1.3958134
Birth       PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         1.0789272   0.6935149   1.6785276
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.1111111   0.9492417   4.6951055
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.6599462   0.7208115   3.8226658
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.1875000   0.4785137   2.9469505
6 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.6509740   0.5630837   4.8406932
6 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2481591   0.4013444   3.8817062
6 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.6780777   1.0705381   6.6995283
6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.2093206   1.4142059   3.4514759
6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.6927124   1.0376205   2.7613904
6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4409844   0.9229603   2.2497564
6 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4342002   0.6330463   3.2492572
6 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.3663664   0.6026293   3.0980190
6 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.8436214   0.8431221   4.0313730
6 months    IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA                          Wealth Q1            Wealth Q4         0.4807692   0.2151491   1.0743205
6 months    IRC              INDIA                          Wealth Q2            Wealth Q4         0.6740196   0.3289721   1.3809758
6 months    IRC              INDIA                          Wealth Q3            Wealth Q4         1.1642157   0.6351858   2.1338609
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.4787844   1.2554430   1.7418580
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.3144638   1.1191062   1.5439241
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.1545547   0.9833658   1.3555449
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         2.0227273   1.1785222   3.4716576
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.9286012   1.1015655   3.3765605
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.2648616   0.7311272   2.1882304
6 months    PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         1.3743590   0.4601679   4.1047250
6 months    PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.9804878   0.3056433   3.1453542
6 months    PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         1.0791946   0.3367539   3.4584932
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.6561983   0.9194862   2.9831802
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0718215   0.5293549   2.1701911
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.5531994   0.8394348   2.8738724
24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2277378   0.5170124   2.9154814
24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.5939177   0.7262154   3.4983748
24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.0955502   1.0150945   4.3260315
24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.0210464   1.2981696   3.1464522
24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.4592209   0.8881355   2.3975235
24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.6416236   1.0806499   2.4938030
24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9459631   0.5763049   1.5527306
24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.8942308   0.5438345   1.4703898
24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.7112011   0.4076748   1.2407118
24 months   IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         1.2244898   0.4734817   3.1667018
24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         1.2729844   0.4926099   3.2895994
24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         0.8321775   0.2893443   2.3934100
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.1960165   1.0654223   1.3426182
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.2090353   1.0670173   1.3699557
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.1303628   0.9958316   1.2830683
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.1859301   0.9583916   1.4674902
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.2294277   1.0075352   1.5001882
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.1151178   0.9051084   1.3738550
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
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0097936   -0.0527451   0.0331579
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0210625   -0.0428422   0.0007171
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0133817   -0.0398207   0.0665840
Birth       IRC              INDIA                          Wealth Q4            NA                 0.0656899   -0.0146408   0.1460207
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0090927    0.0001186   0.0180669
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0032614   -0.0227339   0.0292566
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0134151   -0.0695286   0.0963588
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0002278   -0.0610835   0.0615392
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0407895   -0.0107598   0.0923387
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0117484   -0.0020944   0.0255913
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0205189    0.0076133   0.0334246
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0261398   -0.0111938   0.0634734
6 months    IRC              INDIA                          Wealth Q4            NA                -0.0276471   -0.0886587   0.0333646
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0149814    0.0077399   0.0222230
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0202740    0.0051007   0.0354472
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0041459   -0.0246054   0.0328972
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0111545   -0.0029153   0.0252243
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0128343   -0.0021425   0.0278111
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0229356    0.0085651   0.0373061
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0228191   -0.0838567   0.0382185
24 months   IRC              INDIA                          Wealth Q4            NA                 0.0057946   -0.0382574   0.0498467
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0249498    0.0103289   0.0395707
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0226413   -0.0012453   0.0465280
24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0341970   -0.0307412   0.0991351
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0240664   -0.0761717   0.0280390


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0385921   -0.2223922    0.1175717
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1353420   -0.2839735   -0.0039161
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0649821   -0.2324638    0.2906417
Birth       IRC              INDIA                          Wealth Q4            NA                 0.2449092   -0.1206368    0.4912160
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0829267   -0.0027023    0.1612431
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0328054   -0.2669716    0.2616525
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0770408   -0.5458102    0.4489274
Birth       PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.0010360   -0.3205335    0.2442985
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.3263158   -0.2283944    0.6305336
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.3626352   -0.2100558    0.6642850
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3448708    0.0956664    0.5254027
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2890756   -0.2599919    0.5988756
6 months    IRC              INDIA                          Wealth Q4            NA                -0.2088889   -0.7673694    0.1731144
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.1771165    0.0869533    0.2583761
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.3558632    0.0150791    0.5787355
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                 0.1000000   -0.9427092    0.5830565
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2588616   -0.1451042    0.5203178
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2856317   -0.1247612    0.5462841
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3363434    0.0955045    0.5130544
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.1221198   -0.5007767    0.1609992
24 months   IRC              INDIA                          Wealth Q4            NA                 0.0764516   -0.7319580    0.5075275
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.1144176    0.0447503    0.1790040
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.1164060   -0.0156103    0.2312619
24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.2875078   -0.5164954    0.6652512
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.2247488   -0.8191640    0.1754401
