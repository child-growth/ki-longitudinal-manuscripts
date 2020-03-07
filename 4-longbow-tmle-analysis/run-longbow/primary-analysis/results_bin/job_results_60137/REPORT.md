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

agecat      studyid          country                        hhwealth_quart    stunted   n_cell       n
----------  ---------------  -----------------------------  ---------------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4               0       24      92
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4               1        8      92
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1               0       13      92
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1               1        2      92
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2               0       18      92
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2               1        2      92
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3               0       20      92
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3               1        5      92
Birth       COHORTS          GUATEMALA                      Wealth Q4               0      278     816
Birth       COHORTS          GUATEMALA                      Wealth Q4               1       15     816
Birth       COHORTS          GUATEMALA                      Wealth Q1               0      147     816
Birth       COHORTS          GUATEMALA                      Wealth Q1               1       10     816
Birth       COHORTS          GUATEMALA                      Wealth Q2               0      149     816
Birth       COHORTS          GUATEMALA                      Wealth Q2               1       12     816
Birth       COHORTS          GUATEMALA                      Wealth Q3               0      195     816
Birth       COHORTS          GUATEMALA                      Wealth Q3               1       10     816
Birth       COHORTS          PHILIPPINES                    Wealth Q4               0      810    3049
Birth       COHORTS          PHILIPPINES                    Wealth Q4               1       32    3049
Birth       COHORTS          PHILIPPINES                    Wealth Q1               0      635    3049
Birth       COHORTS          PHILIPPINES                    Wealth Q1               1       52    3049
Birth       COHORTS          PHILIPPINES                    Wealth Q2               0      500    3049
Birth       COHORTS          PHILIPPINES                    Wealth Q2               1       38    3049
Birth       COHORTS          PHILIPPINES                    Wealth Q3               0      917    3049
Birth       COHORTS          PHILIPPINES                    Wealth Q3               1       65    3049
Birth       CONTENT          PERU                           Wealth Q4               0        0       2
Birth       CONTENT          PERU                           Wealth Q4               1        0       2
Birth       CONTENT          PERU                           Wealth Q1               0        0       2
Birth       CONTENT          PERU                           Wealth Q1               1        0       2
Birth       CONTENT          PERU                           Wealth Q2               0        1       2
Birth       CONTENT          PERU                           Wealth Q2               1        0       2
Birth       CONTENT          PERU                           Wealth Q3               0        1       2
Birth       CONTENT          PERU                           Wealth Q3               1        0       2
Birth       GMS-Nepal        NEPAL                          Wealth Q4               0      147     696
Birth       GMS-Nepal        NEPAL                          Wealth Q4               1       26     696
Birth       GMS-Nepal        NEPAL                          Wealth Q1               0      142     696
Birth       GMS-Nepal        NEPAL                          Wealth Q1               1       33     696
Birth       GMS-Nepal        NEPAL                          Wealth Q2               0      144     696
Birth       GMS-Nepal        NEPAL                          Wealth Q2               1       30     696
Birth       GMS-Nepal        NEPAL                          Wealth Q3               0      141     696
Birth       GMS-Nepal        NEPAL                          Wealth Q3               1       33     696
Birth       IRC              INDIA                          Wealth Q4               0       80     388
Birth       IRC              INDIA                          Wealth Q4               1       11     388
Birth       IRC              INDIA                          Wealth Q1               0       90     388
Birth       IRC              INDIA                          Wealth Q1               1        8     388
Birth       IRC              INDIA                          Wealth Q2               0       83     388
Birth       IRC              INDIA                          Wealth Q2               1       16     388
Birth       IRC              INDIA                          Wealth Q3               0       90     388
Birth       IRC              INDIA                          Wealth Q3               1       10     388
Birth       JiVitA-3         BANGLADESH                     Wealth Q4               0     3893   22434
Birth       JiVitA-3         BANGLADESH                     Wealth Q4               1     1385   22434
Birth       JiVitA-3         BANGLADESH                     Wealth Q1               0     3614   22434
Birth       JiVitA-3         BANGLADESH                     Wealth Q1               1     2158   22434
Birth       JiVitA-3         BANGLADESH                     Wealth Q2               0     3714   22434
Birth       JiVitA-3         BANGLADESH                     Wealth Q2               1     1987   22434
Birth       JiVitA-3         BANGLADESH                     Wealth Q3               0     3830   22434
Birth       JiVitA-3         BANGLADESH                     Wealth Q3               1     1853   22434
Birth       JiVitA-4         BANGLADESH                     Wealth Q4               0      478    2820
Birth       JiVitA-4         BANGLADESH                     Wealth Q4               1      176    2820
Birth       JiVitA-4         BANGLADESH                     Wealth Q1               0      456    2820
Birth       JiVitA-4         BANGLADESH                     Wealth Q1               1      229    2820
Birth       JiVitA-4         BANGLADESH                     Wealth Q2               0      489    2820
Birth       JiVitA-4         BANGLADESH                     Wealth Q2               1      233    2820
Birth       JiVitA-4         BANGLADESH                     Wealth Q3               0      541    2820
Birth       JiVitA-4         BANGLADESH                     Wealth Q3               1      218    2820
Birth       MAL-ED           BANGLADESH                     Wealth Q4               0       51     213
Birth       MAL-ED           BANGLADESH                     Wealth Q4               1        5     213
Birth       MAL-ED           BANGLADESH                     Wealth Q1               0       41     213
Birth       MAL-ED           BANGLADESH                     Wealth Q1               1       11     213
Birth       MAL-ED           BANGLADESH                     Wealth Q2               0       39     213
Birth       MAL-ED           BANGLADESH                     Wealth Q2               1       12     213
Birth       MAL-ED           BANGLADESH                     Wealth Q3               0       45     213
Birth       MAL-ED           BANGLADESH                     Wealth Q3               1        9     213
Birth       MAL-ED           BRAZIL                         Wealth Q4               0        9      60
Birth       MAL-ED           BRAZIL                         Wealth Q4               1        2      60
Birth       MAL-ED           BRAZIL                         Wealth Q1               0       17      60
Birth       MAL-ED           BRAZIL                         Wealth Q1               1        4      60
Birth       MAL-ED           BRAZIL                         Wealth Q2               0       16      60
Birth       MAL-ED           BRAZIL                         Wealth Q2               1        1      60
Birth       MAL-ED           BRAZIL                         Wealth Q3               0        9      60
Birth       MAL-ED           BRAZIL                         Wealth Q3               1        2      60
Birth       MAL-ED           INDIA                          Wealth Q4               0        8      41
Birth       MAL-ED           INDIA                          Wealth Q4               1        0      41
Birth       MAL-ED           INDIA                          Wealth Q1               0       10      41
Birth       MAL-ED           INDIA                          Wealth Q1               1        4      41
Birth       MAL-ED           INDIA                          Wealth Q2               0        6      41
Birth       MAL-ED           INDIA                          Wealth Q2               1        3      41
Birth       MAL-ED           INDIA                          Wealth Q3               0        9      41
Birth       MAL-ED           INDIA                          Wealth Q3               1        1      41
Birth       MAL-ED           NEPAL                          Wealth Q4               0        6      26
Birth       MAL-ED           NEPAL                          Wealth Q4               1        0      26
Birth       MAL-ED           NEPAL                          Wealth Q1               0        8      26
Birth       MAL-ED           NEPAL                          Wealth Q1               1        1      26
Birth       MAL-ED           NEPAL                          Wealth Q2               0        2      26
Birth       MAL-ED           NEPAL                          Wealth Q2               1        1      26
Birth       MAL-ED           NEPAL                          Wealth Q3               0        8      26
Birth       MAL-ED           NEPAL                          Wealth Q3               1        0      26
Birth       MAL-ED           PERU                           Wealth Q4               0       49     215
Birth       MAL-ED           PERU                           Wealth Q4               1        5     215
Birth       MAL-ED           PERU                           Wealth Q1               0       49     215
Birth       MAL-ED           PERU                           Wealth Q1               1        6     215
Birth       MAL-ED           PERU                           Wealth Q2               0       47     215
Birth       MAL-ED           PERU                           Wealth Q2               1        7     215
Birth       MAL-ED           PERU                           Wealth Q3               0       44     215
Birth       MAL-ED           PERU                           Wealth Q3               1        8     215
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4               0       16      96
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4               1        1      96
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1               0       24      96
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1               1        3      96
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2               0       23      96
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2               1        1      96
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3               0       25      96
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3               1        3      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       21     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        5     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       22     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        6     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       26     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        6     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       30     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        4     120
Birth       PROVIDE          BANGLADESH                     Wealth Q4               0      121     539
Birth       PROVIDE          BANGLADESH                     Wealth Q4               1       11     539
Birth       PROVIDE          BANGLADESH                     Wealth Q1               0      112     539
Birth       PROVIDE          BANGLADESH                     Wealth Q1               1       22     539
Birth       PROVIDE          BANGLADESH                     Wealth Q2               0      133     539
Birth       PROVIDE          BANGLADESH                     Wealth Q2               1        3     539
Birth       PROVIDE          BANGLADESH                     Wealth Q3               0      125     539
Birth       PROVIDE          BANGLADESH                     Wealth Q3               1       12     539
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4               0       54     369
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4               1       40     369
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1               0       77     369
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1               1       14     369
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2               0       64     369
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2               1       30     369
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3               0       63     369
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3               1       27     369
6 months    COHORTS          GUATEMALA                      Wealth Q4               0      220     925
6 months    COHORTS          GUATEMALA                      Wealth Q4               1      119     925
6 months    COHORTS          GUATEMALA                      Wealth Q1               0       98     925
6 months    COHORTS          GUATEMALA                      Wealth Q1               1       77     925
6 months    COHORTS          GUATEMALA                      Wealth Q2               0      104     925
6 months    COHORTS          GUATEMALA                      Wealth Q2               1       91     925
6 months    COHORTS          GUATEMALA                      Wealth Q3               0      125     925
6 months    COHORTS          GUATEMALA                      Wealth Q3               1       91     925
6 months    COHORTS          PHILIPPINES                    Wealth Q4               0      623    2708
6 months    COHORTS          PHILIPPINES                    Wealth Q4               1      120    2708
6 months    COHORTS          PHILIPPINES                    Wealth Q1               0      431    2708
6 months    COHORTS          PHILIPPINES                    Wealth Q1               1      139    2708
6 months    COHORTS          PHILIPPINES                    Wealth Q2               0      382    2708
6 months    COHORTS          PHILIPPINES                    Wealth Q2               1      103    2708
6 months    COHORTS          PHILIPPINES                    Wealth Q3               0      700    2708
6 months    COHORTS          PHILIPPINES                    Wealth Q3               1      210    2708
6 months    CONTENT          PERU                           Wealth Q4               0       50     215
6 months    CONTENT          PERU                           Wealth Q4               1        2     215
6 months    CONTENT          PERU                           Wealth Q1               0       57     215
6 months    CONTENT          PERU                           Wealth Q1               1        2     215
6 months    CONTENT          PERU                           Wealth Q2               0       49     215
6 months    CONTENT          PERU                           Wealth Q2               1        3     215
6 months    CONTENT          PERU                           Wealth Q3               0       50     215
6 months    CONTENT          PERU                           Wealth Q3               1        2     215
6 months    GMS-Nepal        NEPAL                          Wealth Q4               0      111     564
6 months    GMS-Nepal        NEPAL                          Wealth Q4               1       29     564
6 months    GMS-Nepal        NEPAL                          Wealth Q1               0      109     564
6 months    GMS-Nepal        NEPAL                          Wealth Q1               1       32     564
6 months    GMS-Nepal        NEPAL                          Wealth Q2               0      115     564
6 months    GMS-Nepal        NEPAL                          Wealth Q2               1       33     564
6 months    GMS-Nepal        NEPAL                          Wealth Q3               0      107     564
6 months    GMS-Nepal        NEPAL                          Wealth Q3               1       28     564
6 months    IRC              INDIA                          Wealth Q4               0       78     407
6 months    IRC              INDIA                          Wealth Q4               1       21     407
6 months    IRC              INDIA                          Wealth Q1               0       79     407
6 months    IRC              INDIA                          Wealth Q1               1       26     407
6 months    IRC              INDIA                          Wealth Q2               0       67     407
6 months    IRC              INDIA                          Wealth Q2               1       33     407
6 months    IRC              INDIA                          Wealth Q3               0       83     407
6 months    IRC              INDIA                          Wealth Q3               1       20     407
6 months    JiVitA-3         BANGLADESH                     Wealth Q4               0     4061   16803
6 months    JiVitA-3         BANGLADESH                     Wealth Q4               1      923   16803
6 months    JiVitA-3         BANGLADESH                     Wealth Q1               0     2538   16803
6 months    JiVitA-3         BANGLADESH                     Wealth Q1               1     1048   16803
6 months    JiVitA-3         BANGLADESH                     Wealth Q2               0     2790   16803
6 months    JiVitA-3         BANGLADESH                     Wealth Q2               1     1117   16803
6 months    JiVitA-3         BANGLADESH                     Wealth Q3               0     3190   16803
6 months    JiVitA-3         BANGLADESH                     Wealth Q3               1     1136   16803
6 months    JiVitA-4         BANGLADESH                     Wealth Q4               0      969    4825
6 months    JiVitA-4         BANGLADESH                     Wealth Q4               1      230    4825
6 months    JiVitA-4         BANGLADESH                     Wealth Q1               0      828    4825
6 months    JiVitA-4         BANGLADESH                     Wealth Q1               1      368    4825
6 months    JiVitA-4         BANGLADESH                     Wealth Q2               0      880    4825
6 months    JiVitA-4         BANGLADESH                     Wealth Q2               1      321    4825
6 months    JiVitA-4         BANGLADESH                     Wealth Q3               0      930    4825
6 months    JiVitA-4         BANGLADESH                     Wealth Q3               1      299    4825
6 months    LCNI-5           MALAWI                         Wealth Q4               0      142     816
6 months    LCNI-5           MALAWI                         Wealth Q4               1       75     816
6 months    LCNI-5           MALAWI                         Wealth Q1               0      127     816
6 months    LCNI-5           MALAWI                         Wealth Q1               1       76     816
6 months    LCNI-5           MALAWI                         Wealth Q2               0      122     816
6 months    LCNI-5           MALAWI                         Wealth Q2               1       77     816
6 months    LCNI-5           MALAWI                         Wealth Q3               0      129     816
6 months    LCNI-5           MALAWI                         Wealth Q3               1       68     816
6 months    MAL-ED           BANGLADESH                     Wealth Q4               0       54     240
6 months    MAL-ED           BANGLADESH                     Wealth Q4               1        7     240
6 months    MAL-ED           BANGLADESH                     Wealth Q1               0       51     240
6 months    MAL-ED           BANGLADESH                     Wealth Q1               1        8     240
6 months    MAL-ED           BANGLADESH                     Wealth Q2               0       45     240
6 months    MAL-ED           BANGLADESH                     Wealth Q2               1       16     240
6 months    MAL-ED           BANGLADESH                     Wealth Q3               0       46     240
6 months    MAL-ED           BANGLADESH                     Wealth Q3               1       13     240
6 months    MAL-ED           BRAZIL                         Wealth Q4               0       52     209
6 months    MAL-ED           BRAZIL                         Wealth Q4               1        1     209
6 months    MAL-ED           BRAZIL                         Wealth Q1               0       51     209
6 months    MAL-ED           BRAZIL                         Wealth Q1               1        2     209
6 months    MAL-ED           BRAZIL                         Wealth Q2               0       50     209
6 months    MAL-ED           BRAZIL                         Wealth Q2               1        2     209
6 months    MAL-ED           BRAZIL                         Wealth Q3               0       50     209
6 months    MAL-ED           BRAZIL                         Wealth Q3               1        1     209
6 months    MAL-ED           INDIA                          Wealth Q4               0       51     235
6 months    MAL-ED           INDIA                          Wealth Q4               1        8     235
6 months    MAL-ED           INDIA                          Wealth Q1               0       43     235
6 months    MAL-ED           INDIA                          Wealth Q1               1       17     235
6 months    MAL-ED           INDIA                          Wealth Q2               0       47     235
6 months    MAL-ED           INDIA                          Wealth Q2               1       11     235
6 months    MAL-ED           INDIA                          Wealth Q3               0       50     235
6 months    MAL-ED           INDIA                          Wealth Q3               1        8     235
6 months    MAL-ED           NEPAL                          Wealth Q4               0       56     236
6 months    MAL-ED           NEPAL                          Wealth Q4               1        3     236
6 months    MAL-ED           NEPAL                          Wealth Q1               0       56     236
6 months    MAL-ED           NEPAL                          Wealth Q1               1        3     236
6 months    MAL-ED           NEPAL                          Wealth Q2               0       57     236
6 months    MAL-ED           NEPAL                          Wealth Q2               1        2     236
6 months    MAL-ED           NEPAL                          Wealth Q3               0       55     236
6 months    MAL-ED           NEPAL                          Wealth Q3               1        4     236
6 months    MAL-ED           PERU                           Wealth Q4               0       53     270
6 months    MAL-ED           PERU                           Wealth Q4               1       14     270
6 months    MAL-ED           PERU                           Wealth Q1               0       56     270
6 months    MAL-ED           PERU                           Wealth Q1               1       12     270
6 months    MAL-ED           PERU                           Wealth Q2               0       57     270
6 months    MAL-ED           PERU                           Wealth Q2               1       14     270
6 months    MAL-ED           PERU                           Wealth Q3               0       44     270
6 months    MAL-ED           PERU                           Wealth Q3               1       20     270
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4               0       49     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4               1       13     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1               0       48     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1               1       12     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2               0       48     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2               1       16     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3               0       55     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3               1        8     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       46     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       17     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       48     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       15     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       46     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       15     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       48     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       12     247
6 months    PROVIDE          BANGLADESH                     Wealth Q4               0      106     604
6 months    PROVIDE          BANGLADESH                     Wealth Q4               1       29     604
6 months    PROVIDE          BANGLADESH                     Wealth Q1               0      130     604
6 months    PROVIDE          BANGLADESH                     Wealth Q1               1       26     604
6 months    PROVIDE          BANGLADESH                     Wealth Q2               0      145     604
6 months    PROVIDE          BANGLADESH                     Wealth Q2               1       19     604
6 months    PROVIDE          BANGLADESH                     Wealth Q3               0      127     604
6 months    PROVIDE          BANGLADESH                     Wealth Q3               1       22     604
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      435    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       67    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      556    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       49    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      366    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       43    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      468    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       36    2020
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4               0       26     371
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4               1       68     371
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1               0       21     371
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1               1       70     371
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2               0       26     371
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2               1       69     371
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3               0       32     371
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3               1       59     371
24 months   COHORTS          GUATEMALA                      Wealth Q4               0       93    1035
24 months   COHORTS          GUATEMALA                      Wealth Q4               1      309    1035
24 months   COHORTS          GUATEMALA                      Wealth Q1               0       33    1035
24 months   COHORTS          GUATEMALA                      Wealth Q1               1      169    1035
24 months   COHORTS          GUATEMALA                      Wealth Q2               0       39    1035
24 months   COHORTS          GUATEMALA                      Wealth Q2               1      173    1035
24 months   COHORTS          GUATEMALA                      Wealth Q3               0       30    1035
24 months   COHORTS          GUATEMALA                      Wealth Q3               1      189    1035
24 months   COHORTS          PHILIPPINES                    Wealth Q4               0      371    2445
24 months   COHORTS          PHILIPPINES                    Wealth Q4               1      317    2445
24 months   COHORTS          PHILIPPINES                    Wealth Q1               0      139    2445
24 months   COHORTS          PHILIPPINES                    Wealth Q1               1      350    2445
24 months   COHORTS          PHILIPPINES                    Wealth Q2               0      136    2445
24 months   COHORTS          PHILIPPINES                    Wealth Q2               1      287    2445
24 months   COHORTS          PHILIPPINES                    Wealth Q3               0      276    2445
24 months   COHORTS          PHILIPPINES                    Wealth Q3               1      569    2445
24 months   CONTENT          PERU                           Wealth Q4               0       39     164
24 months   CONTENT          PERU                           Wealth Q4               1        2     164
24 months   CONTENT          PERU                           Wealth Q1               0       37     164
24 months   CONTENT          PERU                           Wealth Q1               1        3     164
24 months   CONTENT          PERU                           Wealth Q2               0       36     164
24 months   CONTENT          PERU                           Wealth Q2               1        6     164
24 months   CONTENT          PERU                           Wealth Q3               0       39     164
24 months   CONTENT          PERU                           Wealth Q3               1        2     164
24 months   GMS-Nepal        NEPAL                          Wealth Q4               0       73     488
24 months   GMS-Nepal        NEPAL                          Wealth Q4               1       51     488
24 months   GMS-Nepal        NEPAL                          Wealth Q1               0       61     488
24 months   GMS-Nepal        NEPAL                          Wealth Q1               1       61     488
24 months   GMS-Nepal        NEPAL                          Wealth Q2               0       71     488
24 months   GMS-Nepal        NEPAL                          Wealth Q2               1       57     488
24 months   GMS-Nepal        NEPAL                          Wealth Q3               0       64     488
24 months   GMS-Nepal        NEPAL                          Wealth Q3               1       50     488
24 months   IRC              INDIA                          Wealth Q4               0       69     409
24 months   IRC              INDIA                          Wealth Q4               1       31     409
24 months   IRC              INDIA                          Wealth Q1               0       50     409
24 months   IRC              INDIA                          Wealth Q1               1       55     409
24 months   IRC              INDIA                          Wealth Q2               0       55     409
24 months   IRC              INDIA                          Wealth Q2               1       46     409
24 months   IRC              INDIA                          Wealth Q3               0       63     409
24 months   IRC              INDIA                          Wealth Q3               1       40     409
24 months   JiVitA-3         BANGLADESH                     Wealth Q4               0     1511    8623
24 months   JiVitA-3         BANGLADESH                     Wealth Q4               1      855    8623
24 months   JiVitA-3         BANGLADESH                     Wealth Q1               0      808    8623
24 months   JiVitA-3         BANGLADESH                     Wealth Q1               1     1193    8623
24 months   JiVitA-3         BANGLADESH                     Wealth Q2               0      963    8623
24 months   JiVitA-3         BANGLADESH                     Wealth Q2               1     1143    8623
24 months   JiVitA-3         BANGLADESH                     Wealth Q3               0     1106    8623
24 months   JiVitA-3         BANGLADESH                     Wealth Q3               1     1044    8623
24 months   JiVitA-4         BANGLADESH                     Wealth Q4               0      824    4747
24 months   JiVitA-4         BANGLADESH                     Wealth Q4               1      369    4747
24 months   JiVitA-4         BANGLADESH                     Wealth Q1               0      610    4747
24 months   JiVitA-4         BANGLADESH                     Wealth Q1               1      546    4747
24 months   JiVitA-4         BANGLADESH                     Wealth Q2               0      669    4747
24 months   JiVitA-4         BANGLADESH                     Wealth Q2               1      504    4747
24 months   JiVitA-4         BANGLADESH                     Wealth Q3               0      741    4747
24 months   JiVitA-4         BANGLADESH                     Wealth Q3               1      484    4747
24 months   LCNI-5           MALAWI                         Wealth Q4               0       96     574
24 months   LCNI-5           MALAWI                         Wealth Q4               1       64     574
24 months   LCNI-5           MALAWI                         Wealth Q1               0       72     574
24 months   LCNI-5           MALAWI                         Wealth Q1               1       57     574
24 months   LCNI-5           MALAWI                         Wealth Q2               0       74     574
24 months   LCNI-5           MALAWI                         Wealth Q2               1       72     574
24 months   LCNI-5           MALAWI                         Wealth Q3               0       78     574
24 months   LCNI-5           MALAWI                         Wealth Q3               1       61     574
24 months   MAL-ED           BANGLADESH                     Wealth Q4               0       37     212
24 months   MAL-ED           BANGLADESH                     Wealth Q4               1       24     212
24 months   MAL-ED           BANGLADESH                     Wealth Q1               0       15     212
24 months   MAL-ED           BANGLADESH                     Wealth Q1               1       15     212
24 months   MAL-ED           BANGLADESH                     Wealth Q2               0       25     212
24 months   MAL-ED           BANGLADESH                     Wealth Q2               1       36     212
24 months   MAL-ED           BANGLADESH                     Wealth Q3               0       34     212
24 months   MAL-ED           BANGLADESH                     Wealth Q3               1       26     212
24 months   MAL-ED           BRAZIL                         Wealth Q4               0       51     169
24 months   MAL-ED           BRAZIL                         Wealth Q4               1        2     169
24 months   MAL-ED           BRAZIL                         Wealth Q1               0       26     169
24 months   MAL-ED           BRAZIL                         Wealth Q1               1        0     169
24 months   MAL-ED           BRAZIL                         Wealth Q2               0       35     169
24 months   MAL-ED           BRAZIL                         Wealth Q2               1        4     169
24 months   MAL-ED           BRAZIL                         Wealth Q3               0       50     169
24 months   MAL-ED           BRAZIL                         Wealth Q3               1        1     169
24 months   MAL-ED           INDIA                          Wealth Q4               0       36     227
24 months   MAL-ED           INDIA                          Wealth Q4               1       23     227
24 months   MAL-ED           INDIA                          Wealth Q1               0       26     227
24 months   MAL-ED           INDIA                          Wealth Q1               1       26     227
24 months   MAL-ED           INDIA                          Wealth Q2               0       36     227
24 months   MAL-ED           INDIA                          Wealth Q2               1       22     227
24 months   MAL-ED           INDIA                          Wealth Q3               0       32     227
24 months   MAL-ED           INDIA                          Wealth Q3               1       26     227
24 months   MAL-ED           NEPAL                          Wealth Q4               0       47     228
24 months   MAL-ED           NEPAL                          Wealth Q4               1       12     228
24 months   MAL-ED           NEPAL                          Wealth Q1               0       47     228
24 months   MAL-ED           NEPAL                          Wealth Q1               1        8     228
24 months   MAL-ED           NEPAL                          Wealth Q2               0       42     228
24 months   MAL-ED           NEPAL                          Wealth Q2               1       13     228
24 months   MAL-ED           NEPAL                          Wealth Q3               0       42     228
24 months   MAL-ED           NEPAL                          Wealth Q3               1       17     228
24 months   MAL-ED           PERU                           Wealth Q4               0       43     201
24 months   MAL-ED           PERU                           Wealth Q4               1       22     201
24 months   MAL-ED           PERU                           Wealth Q1               0       31     201
24 months   MAL-ED           PERU                           Wealth Q1               1       11     201
24 months   MAL-ED           PERU                           Wealth Q2               0       20     201
24 months   MAL-ED           PERU                           Wealth Q2               1       18     201
24 months   MAL-ED           PERU                           Wealth Q3               0       33     201
24 months   MAL-ED           PERU                           Wealth Q3               1       23     201
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4               0       54     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4               1        9     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1               0       31     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1               1       18     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2               0       34     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2               1       29     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3               0       35     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3               1       28     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       17     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       46     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       14     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       14     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       15     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       47     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       13     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       48     214
24 months   PROVIDE          BANGLADESH                     Wealth Q4               0       59     578
24 months   PROVIDE          BANGLADESH                     Wealth Q4               1       62     578
24 months   PROVIDE          BANGLADESH                     Wealth Q1               0      117     578
24 months   PROVIDE          BANGLADESH                     Wealth Q1               1       38     578
24 months   PROVIDE          BANGLADESH                     Wealth Q2               0      116     578
24 months   PROVIDE          BANGLADESH                     Wealth Q2               1       41     578
24 months   PROVIDE          BANGLADESH                     Wealth Q3               0       96     578
24 months   PROVIDE          BANGLADESH                     Wealth Q3               1       49     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0        4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        0       6


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
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
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




# Results Detail

## Results Plots
![](/tmp/b54a6eee-5f92-4083-809c-6e16d7e6d21e/561fd160-86ea-4684-8058-3f8c31b3da55/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b54a6eee-5f92-4083-809c-6e16d7e6d21e/561fd160-86ea-4684-8058-3f8c31b3da55/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b54a6eee-5f92-4083-809c-6e16d7e6d21e/561fd160-86ea-4684-8058-3f8c31b3da55/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b54a6eee-5f92-4083-809c-6e16d7e6d21e/561fd160-86ea-4684-8058-3f8c31b3da55/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                0.0512776   0.0260748   0.0764803
Birth       COHORTS          GUATEMALA                      Wealth Q1            NA                0.0639319   0.0255949   0.1022690
Birth       COHORTS          GUATEMALA                      Wealth Q2            NA                0.0751873   0.0343367   0.1160378
Birth       COHORTS          GUATEMALA                      Wealth Q3            NA                0.0489981   0.0192977   0.0786986
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0438126   0.0302774   0.0573478
Birth       COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0721140   0.0526360   0.0915920
Birth       COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0646041   0.0429733   0.0862348
Birth       COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0652671   0.0494182   0.0811160
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1664444   0.1312238   0.2016650
Birth       GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1720457   0.1346617   0.2094297
Birth       GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1906189   0.1564560   0.2247819
Birth       GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1757618   0.1425912   0.2089324
Birth       IRC              INDIA                          Wealth Q4            NA                0.1208791   0.0538154   0.1879429
Birth       IRC              INDIA                          Wealth Q1            NA                0.0816327   0.0273532   0.1359121
Birth       IRC              INDIA                          Wealth Q2            NA                0.1616162   0.0890131   0.2342192
Birth       IRC              INDIA                          Wealth Q3            NA                0.1000000   0.0411252   0.1588748
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.3290868   0.3204744   0.3376991
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.3318688   0.3238006   0.3399370
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.3271642   0.3195846   0.3347439
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.3279615   0.3202203   0.3357026
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.3063060   0.2854369   0.3271752
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.3033278   0.2788191   0.3278366
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.3034495   0.2752381   0.3316609
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.3019292   0.2799989   0.3238594
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                0.0892857   0.0144243   0.1641471
Birth       MAL-ED           BANGLADESH                     Wealth Q1            NA                0.2115385   0.1002748   0.3228021
Birth       MAL-ED           BANGLADESH                     Wealth Q2            NA                0.2352941   0.1186030   0.3519852
Birth       MAL-ED           BANGLADESH                     Wealth Q3            NA                0.1666667   0.0670328   0.2663005
Birth       MAL-ED           PERU                           Wealth Q4            NA                0.0925926   0.0151013   0.1700839
Birth       MAL-ED           PERU                           Wealth Q1            NA                0.1090909   0.0265080   0.1916738
Birth       MAL-ED           PERU                           Wealth Q2            NA                0.1296296   0.0398314   0.2194279
Birth       MAL-ED           PERU                           Wealth Q3            NA                0.1538462   0.0555522   0.2521401
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.4109079   0.3093044   0.5125115
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1551062   0.0775955   0.2326170
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3266349   0.2284633   0.4248064
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.3043792   0.2063776   0.4023808
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                0.3677540   0.3185628   0.4169452
6 months    COHORTS          GUATEMALA                      Wealth Q1            NA                0.4184559   0.3499787   0.4869331
6 months    COHORTS          GUATEMALA                      Wealth Q2            NA                0.4489124   0.3842748   0.5135499
6 months    COHORTS          GUATEMALA                      Wealth Q3            NA                0.4286111   0.3665424   0.4906797
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2126508   0.1856330   0.2396685
6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2300669   0.1964170   0.2637168
6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1997967   0.1636473   0.2359462
6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2120993   0.1865537   0.2376450
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2268396   0.1559874   0.2976918
6 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2370452   0.1657942   0.3082961
6 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2254902   0.1538127   0.2971676
6 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2004567   0.1312318   0.2696816
6 months    IRC              INDIA                          Wealth Q4            NA                0.2055661   0.1269446   0.2841876
6 months    IRC              INDIA                          Wealth Q1            NA                0.2622611   0.1835657   0.3409565
6 months    IRC              INDIA                          Wealth Q2            NA                0.3362266   0.2451470   0.4273061
6 months    IRC              INDIA                          Wealth Q3            NA                0.1980548   0.1190017   0.2771080
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.2365503   0.2194111   0.2536895
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.2545724   0.2365383   0.2726065
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.2582533   0.2430773   0.2734293
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.2595348   0.2456892   0.2733805
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.2286843   0.1939362   0.2634324
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.2657350   0.2401406   0.2913293
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.2587063   0.2280837   0.2893289
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.2461827   0.2189183   0.2734471
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                0.3485480   0.2852747   0.4118214
6 months    LCNI-5           MALAWI                         Wealth Q1            NA                0.3730651   0.3063065   0.4398238
6 months    LCNI-5           MALAWI                         Wealth Q2            NA                0.3929073   0.3260402   0.4597744
6 months    LCNI-5           MALAWI                         Wealth Q3            NA                0.3343365   0.2692608   0.3994123
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                0.1147541   0.0346037   0.1949045
6 months    MAL-ED           BANGLADESH                     Wealth Q1            NA                0.1355932   0.0480532   0.2231333
6 months    MAL-ED           BANGLADESH                     Wealth Q2            NA                0.2622951   0.1516770   0.3729132
6 months    MAL-ED           BANGLADESH                     Wealth Q3            NA                0.2203390   0.1143581   0.3263198
6 months    MAL-ED           INDIA                          Wealth Q4            NA                0.1355932   0.0480493   0.2231372
6 months    MAL-ED           INDIA                          Wealth Q1            NA                0.2833333   0.1690703   0.3975964
6 months    MAL-ED           INDIA                          Wealth Q2            NA                0.1896552   0.0885491   0.2907613
6 months    MAL-ED           INDIA                          Wealth Q3            NA                0.1379310   0.0489982   0.2268639
6 months    MAL-ED           PERU                           Wealth Q4            NA                0.2010293   0.1017829   0.3002757
6 months    MAL-ED           PERU                           Wealth Q1            NA                0.1994224   0.1082281   0.2906168
6 months    MAL-ED           PERU                           Wealth Q2            NA                0.1860473   0.0996279   0.2724666
6 months    MAL-ED           PERU                           Wealth Q3            NA                0.3276771   0.2270164   0.4283377
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.2096774   0.1081451   0.3112097
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.2000000   0.0985840   0.3014160
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.2500000   0.1437002   0.3562998
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.1269841   0.0446012   0.2093671
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2718875   0.1609360   0.3828390
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2354061   0.1275407   0.3432714
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2320377   0.1204779   0.3435976
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1963105   0.0946014   0.2980196
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                0.1867159   0.1204246   0.2530072
6 months    PROVIDE          BANGLADESH                     Wealth Q1            NA                0.2097477   0.1339413   0.2855541
6 months    PROVIDE          BANGLADESH                     Wealth Q2            NA                0.1159010   0.0657378   0.1660643
6 months    PROVIDE          BANGLADESH                     Wealth Q3            NA                0.1454430   0.0872583   0.2036276
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1281534   0.0987852   0.1575216
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0845250   0.0624686   0.1065815
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1061787   0.0759126   0.1364448
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0705321   0.0478964   0.0931678
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7245414   0.6331452   0.8159376
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.7713919   0.6849973   0.8577865
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7239504   0.6323855   0.8155153
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6462811   0.5469257   0.7456364
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.7732233   0.7322902   0.8141564
24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.8263430   0.7742361   0.8784499
24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.8118331   0.7590111   0.8646552
24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.8694971   0.8254633   0.9135310
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5450418   0.5098720   0.5802115
24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                0.6966059   0.6561244   0.7370873
24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6534492   0.6094270   0.6974715
24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6398105   0.6084401   0.6711809
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4429382   0.3571886   0.5286877
24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4696951   0.3822278   0.5571624
24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.4483399   0.3632663   0.5334135
24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.4313304   0.3396377   0.5230231
24 months   IRC              INDIA                          Wealth Q4            NA                0.3055633   0.2148915   0.3962350
24 months   IRC              INDIA                          Wealth Q1            NA                0.5285120   0.4344866   0.6225374
24 months   IRC              INDIA                          Wealth Q2            NA                0.4568629   0.3589828   0.5547430
24 months   IRC              INDIA                          Wealth Q3            NA                0.3832431   0.2876071   0.4788790
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.4352693   0.4028340   0.4677045
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.5529780   0.5190582   0.5868979
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.5146452   0.4880738   0.5412165
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.4907193   0.4658407   0.5155980
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.3704403   0.3335056   0.4073750
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.4552463   0.4229959   0.4874967
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.4112083   0.3758511   0.4465656
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.3861873   0.3507818   0.4215927
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                0.3990135   0.3227153   0.4753116
24 months   LCNI-5           MALAWI                         Wealth Q1            NA                0.4413685   0.3549915   0.5277454
24 months   LCNI-5           MALAWI                         Wealth Q2            NA                0.4965200   0.4147589   0.5782812
24 months   LCNI-5           MALAWI                         Wealth Q3            NA                0.4386839   0.3554592   0.5219086
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                0.4548061   0.3307969   0.5788153
24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                0.4376938   0.2527300   0.6226575
24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                0.5686522   0.4459182   0.6913863
24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                0.4491392   0.3169267   0.5813516
24 months   MAL-ED           INDIA                          Wealth Q4            NA                0.3848455   0.2592434   0.5104475
24 months   MAL-ED           INDIA                          Wealth Q1            NA                0.4716981   0.3306721   0.6127242
24 months   MAL-ED           INDIA                          Wealth Q2            NA                0.3714172   0.2451969   0.4976374
24 months   MAL-ED           INDIA                          Wealth Q3            NA                0.4398670   0.3083523   0.5713818
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                0.2033898   0.1004546   0.3063251
24 months   MAL-ED           NEPAL                          Wealth Q1            NA                0.1454545   0.0520748   0.2388342
24 months   MAL-ED           NEPAL                          Wealth Q2            NA                0.2363636   0.1238371   0.3488902
24 months   MAL-ED           NEPAL                          Wealth Q3            NA                0.2881356   0.1723182   0.4039530
24 months   MAL-ED           PERU                           Wealth Q4            NA                0.3374878   0.2207947   0.4541809
24 months   MAL-ED           PERU                           Wealth Q1            NA                0.2482780   0.1166536   0.3799024
24 months   MAL-ED           PERU                           Wealth Q2            NA                0.4468955   0.2815105   0.6122805
24 months   MAL-ED           PERU                           Wealth Q3            NA                0.4020502   0.2708783   0.5332221
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.1428571   0.0562668   0.2294475
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.3673469   0.2320820   0.5026119
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.4603175   0.3369814   0.5836535
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.4444444   0.3214842   0.5674047
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.7378926   0.6270305   0.8487547
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.5055699   0.3183558   0.6927840
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7654301   0.6551329   0.8757272
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.7735393   0.6688547   0.8782239
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.4760211   0.3821064   0.5699358
24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.3489099   0.2786963   0.4191235
24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.2575364   0.1880560   0.3270168
24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.3304475   0.2452006   0.4156944


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.0575980   0.0416028   0.0735933
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.0613316   0.0528136   0.0698496
Birth       GMS-Nepal        NEPAL                          NA                   NA                0.1752874   0.1470202   0.2035545
Birth       IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.3290987   0.3217223   0.3364751
Birth       JiVitA-4         BANGLADESH                     NA                   NA                0.3035461   0.2835868   0.3235054
Birth       MAL-ED           BANGLADESH                     NA                   NA                0.1737089   0.1227104   0.2247075
Birth       MAL-ED           PERU                           NA                   NA                0.1209302   0.0772464   0.1646140
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    COHORTS          GUATEMALA                      NA                   NA                0.4086486   0.3769522   0.4403450
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    GMS-Nepal        NEPAL                          NA                   NA                0.2163121   0.1823021   0.2503220
6 months    IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.2513837   0.2432545   0.2595129
6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.2524352   0.2383740   0.2664965
6 months    LCNI-5           MALAWI                         NA                   NA                0.3627451   0.3297365   0.3957537
6 months    MAL-ED           BANGLADESH                     NA                   NA                0.1833333   0.1342773   0.2323893
6 months    MAL-ED           INDIA                          NA                   NA                0.1872340   0.1372518   0.2372162
6 months    MAL-ED           PERU                           NA                   NA                0.2222222   0.1725409   0.2719036
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.1967871   0.1473064   0.2462679
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2388664   0.1855834   0.2921494
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965347   0.0836528   0.1094165
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7169811   0.6710815   0.7628807
24 months   COHORTS          GUATEMALA                      NA                   NA                0.8115942   0.7877598   0.8354286
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6229039   0.6036892   0.6421186
24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4487705   0.4045970   0.4929440
24 months   IRC              INDIA                          NA                   NA                0.4205379   0.3726382   0.4684376
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4911284   0.4780181   0.5042387
24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.4008848   0.3839144   0.4178552
24 months   LCNI-5           MALAWI                         NA                   NA                0.4425087   0.4018409   0.4831765
24 months   MAL-ED           BANGLADESH                     NA                   NA                0.4764151   0.4090254   0.5438047
24 months   MAL-ED           INDIA                          NA                   NA                0.4273128   0.3628178   0.4918077
24 months   MAL-ED           NEPAL                          NA                   NA                0.2192982   0.1654718   0.2731246
24 months   MAL-ED           PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7242991   0.6642873   0.7843108
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2467814   0.5740432   2.7079211
Birth       COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.4662798   0.7046113   3.0512943
Birth       COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.9555471   0.4379218   2.0850074
Birth       COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.6459636   1.0943913   2.4755278
Birth       COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.4745538   0.9364753   2.3218006
Birth       COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4896869   1.0082174   2.2010800
Birth       GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0336528   0.8285021   1.2896022
Birth       GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1452409   0.9498468   1.3808297
Birth       GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0559791   0.8733854   1.2767466
Birth       IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       IRC              INDIA                          Wealth Q1            Wealth Q4         0.6753247   0.2840672   1.6054774
Birth       IRC              INDIA                          Wealth Q2            Wealth Q4         1.3370064   0.6547919   2.7300066
Birth       IRC              INDIA                          Wealth Q3            Wealth Q4         0.8272727   0.3683993   1.8577130
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.0084538   0.9913497   1.0258530
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         0.9941579   0.9786121   1.0099507
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         0.9965804   0.9810921   1.0123133
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         0.9902769   0.9316969   1.0525402
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         0.9906743   0.9186020   1.0684013
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         0.9857107   0.9391172   1.0346160
Birth       MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         2.3692308   0.8805542   6.3746834
Birth       MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         2.6352941   0.9948682   6.9805978
Birth       MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         1.8666667   0.6665867   5.2272936
Birth       MAL-ED           PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       MAL-ED           PERU                           Wealth Q1            Wealth Q4         1.1781818   0.3811695   3.6417197
Birth       MAL-ED           PERU                           Wealth Q2            Wealth Q4         1.4000000   0.4723963   4.1490587
Birth       MAL-ED           PERU                           Wealth Q3            Wealth Q4         1.6615385   0.5797459   4.7619313
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.3774720   0.2157544   0.6604043
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.7949102   0.5382290   1.1740023
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.7407480   0.4932742   1.1123785
6 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1378690   0.9256299   1.3987728
6 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2206865   1.0082890   1.4778258
6 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1654831   0.9625440   1.4112090
6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.0819000   0.8957640   1.3067144
6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.9395531   0.7563301   1.1671623
6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.9974068   0.8424101   1.1809216
6 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0449902   0.6777313   1.6112646
6 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.9940511   0.6363599   1.5527967
6 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.8836935   0.5553002   1.4062920
6 months    IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA                          Wealth Q1            Wealth Q4         1.2757992   0.7904181   2.0592437
6 months    IRC              INDIA                          Wealth Q2            Wealth Q4         1.6356127   1.0268729   2.6052193
6 months    IRC              INDIA                          Wealth Q3            Wealth Q4         0.9634605   0.5550306   1.6724411
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.0761873   0.9816770   1.1797964
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.0917479   0.9979296   1.1943863
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.0971655   1.0069359   1.1954805
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.1620166   0.9738290   1.3865704
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.1312813   0.9347282   1.3691653
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.0765177   0.8976990   1.2909565
6 months    LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0703407   0.8294912   1.3811228
6 months    LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.1272688   0.8791434   1.4454241
6 months    LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.9592267   0.7357414   1.2505966
6 months    MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         1.1815981   0.4564566   3.0587224
6 months    MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         2.2857143   1.0108353   5.1684874
6 months    MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         1.9200969   0.8222798   4.4835977
6 months    MAL-ED           INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    MAL-ED           INDIA                          Wealth Q1            Wealth Q4         2.0895833   0.9760193   4.4736393
6 months    MAL-ED           INDIA                          Wealth Q2            Wealth Q4         1.3987069   0.6054776   3.2311367
6 months    MAL-ED           INDIA                          Wealth Q3            Wealth Q4         1.0172414   0.4084621   2.5333562
6 months    MAL-ED           PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    MAL-ED           PERU                           Wealth Q1            Wealth Q4         0.9920067   0.5092572   1.9323776
6 months    MAL-ED           PERU                           Wealth Q2            Wealth Q4         0.9254732   0.4740789   1.8066627
6 months    MAL-ED           PERU                           Wealth Q3            Wealth Q4         1.6299963   0.9200928   2.8876302
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         0.9538462   0.4731222   1.9230179
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.1923077   0.6259237   2.2711997
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         0.6056166   0.2695338   1.3607625
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.8658215   0.4686555   1.5995694
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8534328   0.4545884   1.6022134
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.7220285   0.3735213   1.3957039
6 months    PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         1.1233520   0.6778495   1.8616519
6 months    PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.6207347   0.3546425   1.0864790
6 months    PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         0.7789534   0.4566008   1.3288816
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6595611   0.4661223   0.9332761
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8285281   0.5748929   1.1940638
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.5503723   0.3710065   0.8164538
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0646623   0.8991548   1.2606347
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9991843   0.8359535   1.1942879
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.8919864   0.7311239   1.0882421
24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0686990   0.9844496   1.1601585
24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.0499336   0.9656183   1.1416112
24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1245098   1.0457860   1.2091596
24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.2780780   1.1737169   1.3917183
24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.1988976   1.0942513   1.3135515
24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.1738743   1.0848452   1.2702097
24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0604078   0.8121450   1.3845616
24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0121952   0.7740996   1.3235236
24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9737937   0.7315785   1.2962030
24 months   IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         1.7296321   1.2263563   2.4394436
24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         1.4951499   1.0384182   2.1527679
24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         1.2542185   0.8518399   1.8466662
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.2704275   1.1563778   1.3957254
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.1823605   1.0818026   1.2922656
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.1273926   1.0327574   1.2306996
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.2289329   1.0891271   1.3866850
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.1100528   0.9819874   1.2548198
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.0425086   0.9164330   1.1859288
24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.1061493   0.8413719   1.4542516
24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.2443691   0.9668520   1.6015423
24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.0994213   0.8397221   1.4394373
24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         0.9623745   0.5856611   1.5814005
24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         1.2503181   0.8872963   1.7618638
24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         0.9875400   0.6651955   1.4660881
24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         1.2256819   0.7877777   1.9070053
24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         0.9651073   0.6029504   1.5447907
24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         1.1429705   0.7339878   1.7798411
24 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         0.7151515   0.3157687   1.6196719
24 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         1.1621212   0.5800865   2.3281452
24 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         1.4166667   0.7423068   2.7036589
24 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4         0.7356650   0.3918151   1.3812714
24 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         1.3241826   0.7969572   2.2001929
24 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4         1.1913028   0.7382742   1.9223242
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         2.5714286   1.2652226   5.2261515
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         3.2222222   1.6608995   6.2512609
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         3.1111111   1.5979048   6.0573148
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6851538   0.4597152   1.0211447
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0373191   0.8416934   1.2784119
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.0483088   0.8567596   1.2826835
24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         0.7329714   0.5539434   0.9698593
24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.5410188   0.3882794   0.7538421
24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         0.6941866   0.5012915   0.9613071


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0063205   -0.0145216    0.0271625
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0175190    0.0049529    0.0300850
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0088430   -0.0127704    0.0304563
Birth       IRC              INDIA                          Wealth Q4            NA                -0.0048997   -0.0632572    0.0534577
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0000119   -0.0042443    0.0042681
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0027600   -0.0123968    0.0068769
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0844232    0.0119094    0.1569370
Birth       MAL-ED           PERU                           Wealth Q4            NA                 0.0283376   -0.0416392    0.0983145
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1100949   -0.1961397   -0.0240501
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0408946    0.0028081    0.0789812
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0014248   -0.0247308    0.0218812
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0105276   -0.0726355    0.0515804
6 months    IRC              INDIA                          Wealth Q4            NA                 0.0401341   -0.0290364    0.1093046
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0148334   -0.0000726    0.0297394
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0237509   -0.0084806    0.0559825
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                 0.0141971   -0.0401259    0.0685201
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0685792   -0.0060197    0.1431782
6 months    MAL-ED           INDIA                          Wealth Q4            NA                 0.0516408   -0.0278191    0.1311008
6 months    MAL-ED           PERU                           Wealth Q4            NA                 0.0211929   -0.0631860    0.1055718
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0128903   -0.1002026    0.0744221
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0330211   -0.1274713    0.0614291
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0277755   -0.0851672    0.0296162
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0316188   -0.0560255   -0.0072121
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0075603   -0.0868601    0.0717395
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0383709    0.0079275    0.0688143
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0778621    0.0486400    0.1070843
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0058323   -0.0678967    0.0795614
24 months   IRC              INDIA                          Wealth Q4            NA                 0.1149746    0.0345449    0.1954044
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0558591    0.0264127    0.0853056
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0304444   -0.0021875    0.0630763
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0434953   -0.0216657    0.1086562
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0216090   -0.0823602    0.1255783
24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0424673   -0.0660841    0.1510187
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.0159084   -0.0735859    0.1054027
24 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0306714   -0.0662040    0.1275468
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.2100840    0.1250543    0.2951138
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0135935   -0.1068614    0.0796744
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.1473014   -0.2304340   -0.0641688


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1097341   -0.3348690    0.4062538
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2856435    0.0549603    0.4600172
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0504483   -0.0813287    0.1661663
Birth       IRC              INDIA                          Wealth Q4            NA                -0.0422466   -0.6888711    0.3568023
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0000361   -0.0129807    0.0128857
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                -0.0090924   -0.0414396    0.0222502
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.4860039   -0.1146422    0.7629804
Birth       MAL-ED           PERU                           Wealth Q4            NA                 0.2343305   -0.6198530    0.6380846
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.3659912   -0.6848779   -0.1074582
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1000728    0.0016427    0.1887986
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0067453   -0.1233949    0.0977917
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0486684   -0.3790640    0.2025711
6 months    IRC              INDIA                          Wealth Q4            NA                 0.1633459   -0.1708607    0.4021577
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0590070   -0.0022756    0.1165425
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0940872   -0.0429609    0.2131268
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                 0.0391379   -0.1229245    0.1778112
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.3740686   -0.1820668    0.6685550
6 months    MAL-ED           INDIA                          Wealth Q4            NA                 0.2758089   -0.2935764    0.5945715
6 months    MAL-ED           PERU                           Wealth Q4            NA                 0.0953680   -0.3783715    0.4062856
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0655036   -0.6156269    0.2973019
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1382409   -0.6103408    0.1954545
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.1747542   -0.5961818    0.1354071
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.3275380   -0.6021142   -0.1000197
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0105446   -0.1274332    0.0942254
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0472785    0.0088136    0.0842506
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1249986    0.0765888    0.1708705
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0129962   -0.1657577    0.1643405
24 months   IRC              INDIA                          Wealth Q4            NA                 0.2733990    0.0541636    0.4418179
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.1137363    0.0515678    0.1718297
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0759431   -0.0092547    0.1539488
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0982924   -0.0618355    0.2342726
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0453576   -0.1999677    0.2405278
24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0993823   -0.1944469    0.3209306
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.0725424   -0.4398007    0.4025717
24 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0833101   -0.2216918    0.3121667
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.5952381    0.2883722    0.7697783
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0187678   -0.1560420    0.1022058
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.4481064   -0.7265580   -0.2145622
