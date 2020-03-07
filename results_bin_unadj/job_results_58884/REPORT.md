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

unadjusted

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/8444a875-de63-4d44-ba26-463ab51585d1/53d52e36-7d95-4bcb-a4bd-5cd529911c34/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8444a875-de63-4d44-ba26-463ab51585d1/53d52e36-7d95-4bcb-a4bd-5cd529911c34/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8444a875-de63-4d44-ba26-463ab51585d1/53d52e36-7d95-4bcb-a4bd-5cd529911c34/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8444a875-de63-4d44-ba26-463ab51585d1/53d52e36-7d95-4bcb-a4bd-5cd529911c34/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                0.0511945   0.0259434   0.0764457
Birth       COHORTS          GUATEMALA                      Wealth Q1            NA                0.0636943   0.0254714   0.1019172
Birth       COHORTS          GUATEMALA                      Wealth Q2            NA                0.0745342   0.0339404   0.1151279
Birth       COHORTS          GUATEMALA                      Wealth Q3            NA                0.0487805   0.0192751   0.0782858
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0380048   0.0250875   0.0509220
Birth       COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0756914   0.0559093   0.0954735
Birth       COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0706320   0.0489787   0.0922852
Birth       COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0661914   0.0506392   0.0817437
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1502890   0.0970001   0.2035779
Birth       GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1885714   0.1305746   0.2465683
Birth       GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1724138   0.1162472   0.2285804
Birth       GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1896552   0.1313640   0.2479464
Birth       IRC              INDIA                          Wealth Q4            NA                0.1208791   0.0538154   0.1879429
Birth       IRC              INDIA                          Wealth Q1            NA                0.0816327   0.0273532   0.1359121
Birth       IRC              INDIA                          Wealth Q2            NA                0.1616162   0.0890131   0.2342192
Birth       IRC              INDIA                          Wealth Q3            NA                0.1000000   0.0411252   0.1588748
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.2624100   0.2496393   0.2751807
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.3738739   0.3605802   0.3871676
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.3485353   0.3349256   0.3621451
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.3260602   0.3135029   0.3386175
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.2691131   0.2261807   0.3120456
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.3343066   0.2957915   0.3728216
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.3227147   0.2817078   0.3637216
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.2872200   0.2480583   0.3263818
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                0.0892857   0.0144243   0.1641471
Birth       MAL-ED           BANGLADESH                     Wealth Q1            NA                0.2115385   0.1002748   0.3228021
Birth       MAL-ED           BANGLADESH                     Wealth Q2            NA                0.2352941   0.1186030   0.3519852
Birth       MAL-ED           BANGLADESH                     Wealth Q3            NA                0.1666667   0.0670328   0.2663005
Birth       MAL-ED           PERU                           Wealth Q4            NA                0.0925926   0.0151013   0.1700839
Birth       MAL-ED           PERU                           Wealth Q1            NA                0.1090909   0.0265080   0.1916738
Birth       MAL-ED           PERU                           Wealth Q2            NA                0.1296296   0.0398314   0.2194279
Birth       MAL-ED           PERU                           Wealth Q3            NA                0.1538462   0.0555522   0.2521401
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.4255319   0.3254461   0.5256177
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1538462   0.0796153   0.2280770
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3191489   0.2247871   0.4135107
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.3000000   0.2051962   0.3948038
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                0.3510324   0.3001968   0.4018681
6 months    COHORTS          GUATEMALA                      Wealth Q1            NA                0.4400000   0.3664158   0.5135842
6 months    COHORTS          GUATEMALA                      Wealth Q2            NA                0.4666667   0.3966069   0.5367264
6 months    COHORTS          GUATEMALA                      Wealth Q3            NA                0.4212963   0.3554126   0.4871800
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1615074   0.1350419   0.1879729
6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2438596   0.2086013   0.2791180
6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2123711   0.1759657   0.2487765
6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2307692   0.2033898   0.2581487
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2071429   0.1399533   0.2743324
6 months    GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2269504   0.1577524   0.2961483
6 months    GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2229730   0.1558538   0.2900922
6 months    GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2074074   0.1389526   0.2758622
6 months    IRC              INDIA                          Wealth Q4            NA                0.2121212   0.1314931   0.2927493
6 months    IRC              INDIA                          Wealth Q1            NA                0.2476190   0.1649584   0.3302796
6 months    IRC              INDIA                          Wealth Q2            NA                0.3300000   0.2377266   0.4222734
6 months    IRC              INDIA                          Wealth Q3            NA                0.1941748   0.1176890   0.2706605
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.1851926   0.1726442   0.1977411
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.2922476   0.2753751   0.3091202
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.2858971   0.2700993   0.3016949
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.2625982   0.2485391   0.2766574
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.1918265   0.1647318   0.2189212
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.3076923   0.2782846   0.3371000
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.2672773   0.2392677   0.2952868
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.2432872   0.2165853   0.2699891
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                0.3456221   0.2823081   0.4089361
6 months    LCNI-5           MALAWI                         Wealth Q1            NA                0.3743842   0.3077682   0.4410003
6 months    LCNI-5           MALAWI                         Wealth Q2            NA                0.3869347   0.3192235   0.4546458
6 months    LCNI-5           MALAWI                         Wealth Q3            NA                0.3451777   0.2787477   0.4116077
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                0.1147541   0.0346037   0.1949045
6 months    MAL-ED           BANGLADESH                     Wealth Q1            NA                0.1355932   0.0480532   0.2231333
6 months    MAL-ED           BANGLADESH                     Wealth Q2            NA                0.2622951   0.1516770   0.3729132
6 months    MAL-ED           BANGLADESH                     Wealth Q3            NA                0.2203390   0.1143581   0.3263198
6 months    MAL-ED           INDIA                          Wealth Q4            NA                0.1355932   0.0480493   0.2231372
6 months    MAL-ED           INDIA                          Wealth Q1            NA                0.2833333   0.1690703   0.3975964
6 months    MAL-ED           INDIA                          Wealth Q2            NA                0.1896552   0.0885491   0.2907613
6 months    MAL-ED           INDIA                          Wealth Q3            NA                0.1379310   0.0489982   0.2268639
6 months    MAL-ED           PERU                           Wealth Q4            NA                0.2089552   0.1114240   0.3064864
6 months    MAL-ED           PERU                           Wealth Q1            NA                0.1764706   0.0856937   0.2672474
6 months    MAL-ED           PERU                           Wealth Q2            NA                0.1971831   0.1044643   0.2899019
6 months    MAL-ED           PERU                           Wealth Q3            NA                0.3125000   0.1987307   0.4262693
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.2096774   0.1081451   0.3112097
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.2000000   0.0985840   0.3014160
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.2500000   0.1437002   0.3562998
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.1269841   0.0446012   0.2093671
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2698413   0.1600111   0.3796714
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2380952   0.1327089   0.3434816
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2459016   0.1376190   0.3541843
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2000000   0.0985824   0.3014176
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                0.2148148   0.1454788   0.2841509
6 months    PROVIDE          BANGLADESH                     Wealth Q1            NA                0.1666667   0.1081366   0.2251968
6 months    PROVIDE          BANGLADESH                     Wealth Q2            NA                0.1158537   0.0668303   0.1648770
6 months    PROVIDE          BANGLADESH                     Wealth Q3            NA                0.1476510   0.0906422   0.2046598
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1334661   0.1037096   0.1632227
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0809917   0.0592468   0.1027367
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1051345   0.0754010   0.1348679
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0714286   0.0489389   0.0939183
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7234043   0.6328553   0.8139532
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.7692308   0.6825484   0.8559131
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7263158   0.6365398   0.8160917
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6483516   0.5501151   0.7465882
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.7686567   0.7274147   0.8098987
24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.8366337   0.7856265   0.8876408
24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.8160377   0.7638571   0.8682184
24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.8630137   0.8174537   0.9085737
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.4607558   0.4235020   0.4980096
24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7157464   0.6757598   0.7557331
24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6784870   0.6339689   0.7230051
24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6733728   0.6417455   0.7050001
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4112903   0.3245926   0.4979880
24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5000000   0.4111856   0.5888144
24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.4453125   0.3591248   0.5315002
24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.4385965   0.3474140   0.5297789
24 months   IRC              INDIA                          Wealth Q4            NA                0.3100000   0.2192420   0.4007580
24 months   IRC              INDIA                          Wealth Q1            NA                0.5238095   0.4281646   0.6194545
24 months   IRC              INDIA                          Wealth Q2            NA                0.4554455   0.3582027   0.5526884
24 months   IRC              INDIA                          Wealth Q3            NA                0.3883495   0.2941119   0.4825871
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.3613694   0.3389658   0.3837730
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.5962019   0.5724354   0.6199684
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.5427350   0.5192603   0.5662098
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.4855814   0.4614379   0.5097249
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.3093043   0.2792607   0.3393479
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.4723183   0.4394680   0.5051686
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.4296675   0.3973312   0.4620038
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.3951020   0.3629291   0.4272750
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                0.4000000   0.3240247   0.4759753
24 months   LCNI-5           MALAWI                         Wealth Q1            NA                0.4418605   0.3560884   0.5276325
24 months   LCNI-5           MALAWI                         Wealth Q2            NA                0.4931507   0.4119837   0.5743177
24 months   LCNI-5           MALAWI                         Wealth Q3            NA                0.4388489   0.3562800   0.5214179
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                0.3934426   0.2705611   0.5163241
24 months   MAL-ED           BANGLADESH                     Wealth Q1            NA                0.5000000   0.3206571   0.6793429
24 months   MAL-ED           BANGLADESH                     Wealth Q2            NA                0.5901639   0.4664549   0.7138729
24 months   MAL-ED           BANGLADESH                     Wealth Q3            NA                0.4333333   0.3076511   0.5590156
24 months   MAL-ED           INDIA                          Wealth Q4            NA                0.3898305   0.2651083   0.5145528
24 months   MAL-ED           INDIA                          Wealth Q1            NA                0.5000000   0.3638006   0.6361994
24 months   MAL-ED           INDIA                          Wealth Q2            NA                0.3793103   0.2541613   0.5044593
24 months   MAL-ED           INDIA                          Wealth Q3            NA                0.4482759   0.3200055   0.5765463
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                0.2033898   0.1004546   0.3063251
24 months   MAL-ED           NEPAL                          Wealth Q1            NA                0.1454545   0.0520748   0.2388342
24 months   MAL-ED           NEPAL                          Wealth Q2            NA                0.2363636   0.1238371   0.3488902
24 months   MAL-ED           NEPAL                          Wealth Q3            NA                0.2881356   0.1723182   0.4039530
24 months   MAL-ED           PERU                           Wealth Q4            NA                0.3384615   0.2231410   0.4537821
24 months   MAL-ED           PERU                           Wealth Q1            NA                0.2619048   0.1286035   0.3952061
24 months   MAL-ED           PERU                           Wealth Q2            NA                0.4736842   0.3145341   0.6328343
24 months   MAL-ED           PERU                           Wealth Q3            NA                0.4107143   0.2815418   0.5398868
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                0.1428571   0.0562668   0.2294475
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            NA                0.3673469   0.2320820   0.5026119
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            NA                0.4603175   0.3369814   0.5836535
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            NA                0.4444444   0.3214842   0.5674047
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.7301587   0.6202941   0.8400233
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.5000000   0.3143666   0.6856334
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7580645   0.6512151   0.8649139
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.7868852   0.6838792   0.8898913
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.5123967   0.4232577   0.6015357
24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.2451613   0.1773798   0.3129428
24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.2611465   0.1923770   0.3299159
24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.3379310   0.2608752   0.4149869


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
Birth       COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2441614   0.5721643   2.7054073
Birth       COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.4559006   0.6982621   3.0356033
Birth       COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.9528455   0.4365830   2.0795921
Birth       COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.9916303   1.2971947   3.0578225
Birth       COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.8585037   1.1759273   2.9372872
Birth       COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.7416624   1.1521723   2.6327556
Birth       GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.2547253   0.7846933   2.0063069
Birth       GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1472149   0.7088094   1.8567784
Birth       GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.2619363   0.7893092   2.0175658
Birth       IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       IRC              INDIA                          Wealth Q1            Wealth Q4         0.6753247   0.2840672   1.6054774
Birth       IRC              INDIA                          Wealth Q2            Wealth Q4         1.3370064   0.6547919   2.7300066
Birth       IRC              INDIA                          Wealth Q3            Wealth Q4         0.8272727   0.3683993   1.8577130
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.4247699   1.3441694   1.5102034
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.3282091   1.2522455   1.4087808
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.2425600   1.1707367   1.3187897
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.2422528   1.0209748   1.5114889
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.1991784   0.9776327   1.4709295
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.0672835   0.8607600   1.3233585
Birth       MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         2.3692308   0.8805542   6.3746834
Birth       MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         2.6352941   0.9948682   6.9805978
Birth       MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         1.8666667   0.6665867   5.2272936
Birth       MAL-ED           PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       MAL-ED           PERU                           Wealth Q1            Wealth Q4         1.1781818   0.3811695   3.6417197
Birth       MAL-ED           PERU                           Wealth Q2            Wealth Q4         1.4000000   0.4723963   4.1490587
Birth       MAL-ED           PERU                           Wealth Q3            Wealth Q4         1.6615385   0.5797459   4.7619313
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.3615385   0.2113666   0.6184046
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.7500000   0.5140216   1.0943119
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.7050000   0.4754511   1.0453757
6 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2534454   1.0046826   1.5638026
6 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.3294118   1.0791188   1.6377581
6 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.2001634   0.9697855   1.4852688
6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.5098977   1.2135004   1.8786899
6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.3149313   1.0373186   1.6668402
6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4288462   1.1671439   1.7492284
6 months    GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0956224   0.7019810   1.7100013
6 months    GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0764212   0.6915094   1.6755850
6 months    GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0012771   0.6303493   1.5904768
6 months    IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA                          Wealth Q1            Wealth Q4         1.1673469   0.7038798   1.9359824
6 months    IRC              INDIA                          Wealth Q2            Wealth Q4         1.5557143   0.9705053   2.4938009
6 months    IRC              INDIA                          Wealth Q3            Wealth Q4         0.9153953   0.5295166   1.5824783
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.5780739   1.4446945   1.7237673
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.5437824   1.4203782   1.6779081
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.4179736   1.3044920   1.5413273
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.6040134   1.3500532   1.9057463
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.3933280   1.1698394   1.6595124
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.2682669   1.0606784   1.5164831
6 months    LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0832184   0.8390850   1.3983828
6 months    LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.1195310   0.8689850   1.4423145
6 months    LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.9987140   0.7656844   1.3026643
6 months    MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         1.1815981   0.4564566   3.0587224
6 months    MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         2.2857143   1.0108353   5.1684874
6 months    MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         1.9200969   0.8222798   4.4835977
6 months    MAL-ED           INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    MAL-ED           INDIA                          Wealth Q1            Wealth Q4         2.0895833   0.9760193   4.4736393
6 months    MAL-ED           INDIA                          Wealth Q2            Wealth Q4         1.3987069   0.6054776   3.2311367
6 months    MAL-ED           INDIA                          Wealth Q3            Wealth Q4         1.0172414   0.4084621   2.5333562
6 months    MAL-ED           PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    MAL-ED           PERU                           Wealth Q1            Wealth Q4         0.8445378   0.4216553   1.6915338
6 months    MAL-ED           PERU                           Wealth Q2            Wealth Q4         0.9436620   0.4864934   1.8304418
6 months    MAL-ED           PERU                           Wealth Q3            Wealth Q4         1.4955357   0.8274028   2.7031903
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         0.9538462   0.4731222   1.9230179
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.1923077   0.6259237   2.2711997
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         0.6056166   0.2695338   1.3607625
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.8823529   0.4836098   1.6098655
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9112825   0.5003014   1.6598712
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.7411765   0.3868383   1.4200832
6 months    PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         0.7758621   0.4815430   1.2500690
6 months    PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.5393188   0.3167482   0.9182836
6 months    PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         0.6873409   0.4155416   1.1369200
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6068336   0.4280625   0.8602646
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7877240   0.5495069   1.1292107
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.5351812   0.3638731   0.7871397
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0633484   0.8985261   1.2584051
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0040248   0.8420655   1.1971345
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.8962508   0.7363366   1.0908945
24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0884360   1.0035334   1.1805217
24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.0616413   0.9766213   1.1540628
24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1227557   1.0413466   1.2105290
24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.5534181   1.4080141   1.7138378
24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.4725522   1.3269324   1.6341526
24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4614526   1.3309925   1.6047000
24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.2156863   0.9227957   1.6015387
24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0827206   0.8132687   1.4414472
24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0663915   0.7931163   1.4338260
24 months   IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         1.6897081   1.1966356   2.3859508
24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         1.4691792   1.0226018   2.1107800
24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         1.2527404   0.8564780   1.8323394
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.6498406   1.5374007   1.7705039
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.5018843   1.3969771   1.6146696
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.3437258   1.2433766   1.4521739
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.5270346   1.3559898   1.7196551
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.3891419   1.2356906   1.5616492
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.2773895   1.1307908   1.4429937
24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.1046512   0.8419340   1.4493466
24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.2328767   0.9588907   1.5851493
24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.0971223   0.8397422   1.4333891
24 months   MAL-ED           BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   MAL-ED           BANGLADESH                     Wealth Q1            Wealth Q4         1.2708333   0.7898330   2.0447581
24 months   MAL-ED           BANGLADESH                     Wealth Q2            Wealth Q4         1.5000000   1.0297530   2.1849899
24 months   MAL-ED           BANGLADESH                     Wealth Q3            Wealth Q4         1.1013889   0.7191738   1.6867375
24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         1.2826087   0.8425710   1.9524587
24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         0.9730135   0.6145009   1.5406897
24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         1.1499250   0.7486128   1.7663704
24 months   MAL-ED           NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   MAL-ED           NEPAL                          Wealth Q1            Wealth Q4         0.7151515   0.3157687   1.6196719
24 months   MAL-ED           NEPAL                          Wealth Q2            Wealth Q4         1.1621212   0.5800865   2.3281452
24 months   MAL-ED           NEPAL                          Wealth Q3            Wealth Q4         1.4166667   0.7423068   2.7036589
24 months   MAL-ED           PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   MAL-ED           PERU                           Wealth Q1            Wealth Q4         0.7738095   0.4194062   1.4276880
24 months   MAL-ED           PERU                           Wealth Q2            Wealth Q4         1.3995215   0.8672892   2.2583708
24 months   MAL-ED           PERU                           Wealth Q3            Wealth Q4         1.2134740   0.7632280   1.9293307
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1            Wealth Q4         2.5714286   1.2652226   5.2261515
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2            Wealth Q4         3.2222222   1.6608995   6.2512609
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3            Wealth Q4         3.1111111   1.5979048   6.0573148
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6847826   0.4587488   1.0221874
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0382188   0.8447908   1.2759351
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.0776907   0.8828335   1.3155563
24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         0.4784599   0.3451288   0.6633000
24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.5096569   0.3717149   0.6987885
24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         0.6595106   0.4950661   0.8785779


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0064035   -0.0144668    0.0272738
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0233268    0.0111920    0.0354617
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0249983   -0.0221932    0.0721899
Birth       IRC              INDIA                          Wealth Q4            NA                -0.0048997   -0.0632572    0.0534577
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0666887    0.0558997    0.0774777
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0344329   -0.0033640    0.0722299
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0844232    0.0119094    0.1569370
Birth       MAL-ED           PERU                           Wealth Q4            NA                 0.0283376   -0.0416392    0.0983145
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1247189   -0.2090344   -0.0404035
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0576162    0.0164491    0.0987833
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0497186    0.0262132    0.0732240
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0091692   -0.0493962    0.0677346
6 months    IRC              INDIA                          Wealth Q4            NA                 0.0335790   -0.0377782    0.1049362
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0661911    0.0557623    0.0766198
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0606087    0.0366901    0.0845273
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                 0.0171230   -0.0373396    0.0715855
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0685792   -0.0060197    0.1431782
6 months    MAL-ED           INDIA                          Wealth Q4            NA                 0.0516408   -0.0278191    0.1311008
6 months    MAL-ED           PERU                           Wealth Q4            NA                 0.0132670   -0.0719365    0.0984705
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0128903   -0.1002026    0.0744221
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0309749   -0.1245073    0.0625576
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0558744   -0.1151201    0.0033713
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0369315   -0.0616559   -0.0122071
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0064231   -0.0848519    0.0720057
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0429375    0.0121527    0.0737222
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1621481    0.1309071    0.1933890
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0374802   -0.0376726    0.1126329
24 months   IRC              INDIA                          Wealth Q4            NA                 0.1105379    0.0298935    0.1911823
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.1297590    0.1116534    0.1478645
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0915805    0.0663238    0.1168372
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0425087   -0.0223615    0.1073789
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.0829725   -0.0216778    0.1876228
24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0374823   -0.0703558    0.1453203
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.0159084   -0.0735859    0.1054027
24 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0296977   -0.0660393    0.1254346
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.2100840    0.1250543    0.2951138
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0058597   -0.0984062    0.0866869
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.1836770   -0.2617032   -0.1056508


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1111757   -0.3344106    0.4079718
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3803397    0.1562675    0.5449044
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1426135   -0.1728188    0.3732095
Birth       IRC              INDIA                          Wealth Q4            NA                -0.0422466   -0.6888711    0.3568023
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.2026404    0.1690756    0.2348493
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.1134357   -0.0205996    0.2298681
Birth       MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.4860039   -0.1146422    0.7629804
Birth       MAL-ED           PERU                           Wealth Q4            NA                 0.2343305   -0.6198530    0.6380846
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.4146061   -0.7265610   -0.1590152
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1409920    0.0339826    0.2361476
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2353810    0.1164988    0.3382667
6 months    GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0423888   -0.2704557    0.2781966
6 months    IRC              INDIA                          Wealth Q4            NA                 0.1366667   -0.2080049    0.3829955
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.2633069    0.2206302    0.3036468
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.2400961    0.1389192    0.3293847
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                 0.0472039   -0.1154182    0.1861165
6 months    MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.3740686   -0.1820668    0.6685550
6 months    MAL-ED           INDIA                          Wealth Q4            NA                 0.2758089   -0.2935764    0.5945715
6 months    MAL-ED           PERU                           Wealth Q4            NA                 0.0597015   -0.4135261    0.3744995
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                -0.0655036   -0.6156269    0.2973019
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1296745   -0.5972356    0.2010168
6 months    PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.3515432   -0.7771589   -0.0278591
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.3825723   -0.6596108   -0.1517797
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0089586   -0.1245030    0.0947135
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0529051    0.0139676    0.0903050
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2603099    0.2074321    0.3096599
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0835175   -0.1003413    0.2366548
24 months   IRC              INDIA                          Wealth Q4            NA                 0.2628488    0.0436175    0.4318258
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.2642058    0.2256640    0.3008292
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.2284459    0.1622812    0.2893848
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0960630   -0.0632260    0.2314878
24 months   MAL-ED           BANGLADESH                     Wealth Q4            NA                 0.1741600   -0.0783928    0.3675666
24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0877162   -0.2031720    0.3082770
24 months   MAL-ED           NEPAL                          Wealth Q4            NA                 0.0725424   -0.4398007    0.4025717
24 months   MAL-ED           PERU                           Wealth Q4            NA                 0.0806653   -0.2199210    0.3071876
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4            NA                 0.5952381    0.2883722    0.7697783
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0080901   -0.1443235    0.1119245
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.5587647   -0.8205926   -0.3345914
