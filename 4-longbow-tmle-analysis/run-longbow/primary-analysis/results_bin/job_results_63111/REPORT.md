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

agecat      studyid          country                        hhwealth_quart    stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4               0       24      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4               1        8      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1               0       13      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1               1        2      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2               0       18      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2               1        2      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3               0       20      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3               1        5      92  stunted          
Birth       COHORTS          GUATEMALA                      Wealth Q4               0      278     816  stunted          
Birth       COHORTS          GUATEMALA                      Wealth Q4               1       15     816  stunted          
Birth       COHORTS          GUATEMALA                      Wealth Q1               0      147     816  stunted          
Birth       COHORTS          GUATEMALA                      Wealth Q1               1       10     816  stunted          
Birth       COHORTS          GUATEMALA                      Wealth Q2               0      149     816  stunted          
Birth       COHORTS          GUATEMALA                      Wealth Q2               1       12     816  stunted          
Birth       COHORTS          GUATEMALA                      Wealth Q3               0      195     816  stunted          
Birth       COHORTS          GUATEMALA                      Wealth Q3               1       10     816  stunted          
Birth       COHORTS          PHILIPPINES                    Wealth Q4               0      810    3049  stunted          
Birth       COHORTS          PHILIPPINES                    Wealth Q4               1       32    3049  stunted          
Birth       COHORTS          PHILIPPINES                    Wealth Q1               0      635    3049  stunted          
Birth       COHORTS          PHILIPPINES                    Wealth Q1               1       52    3049  stunted          
Birth       COHORTS          PHILIPPINES                    Wealth Q2               0      500    3049  stunted          
Birth       COHORTS          PHILIPPINES                    Wealth Q2               1       38    3049  stunted          
Birth       COHORTS          PHILIPPINES                    Wealth Q3               0      917    3049  stunted          
Birth       COHORTS          PHILIPPINES                    Wealth Q3               1       65    3049  stunted          
Birth       CONTENT          PERU                           Wealth Q4               0        0       2  stunted          
Birth       CONTENT          PERU                           Wealth Q4               1        0       2  stunted          
Birth       CONTENT          PERU                           Wealth Q1               0        0       2  stunted          
Birth       CONTENT          PERU                           Wealth Q1               1        0       2  stunted          
Birth       CONTENT          PERU                           Wealth Q2               0        1       2  stunted          
Birth       CONTENT          PERU                           Wealth Q2               1        0       2  stunted          
Birth       CONTENT          PERU                           Wealth Q3               0        1       2  stunted          
Birth       CONTENT          PERU                           Wealth Q3               1        0       2  stunted          
Birth       GMS-Nepal        NEPAL                          Wealth Q4               0      147     696  stunted          
Birth       GMS-Nepal        NEPAL                          Wealth Q4               1       26     696  stunted          
Birth       GMS-Nepal        NEPAL                          Wealth Q1               0      142     696  stunted          
Birth       GMS-Nepal        NEPAL                          Wealth Q1               1       33     696  stunted          
Birth       GMS-Nepal        NEPAL                          Wealth Q2               0      144     696  stunted          
Birth       GMS-Nepal        NEPAL                          Wealth Q2               1       30     696  stunted          
Birth       GMS-Nepal        NEPAL                          Wealth Q3               0      141     696  stunted          
Birth       GMS-Nepal        NEPAL                          Wealth Q3               1       33     696  stunted          
Birth       IRC              INDIA                          Wealth Q4               0       80     388  stunted          
Birth       IRC              INDIA                          Wealth Q4               1       11     388  stunted          
Birth       IRC              INDIA                          Wealth Q1               0       90     388  stunted          
Birth       IRC              INDIA                          Wealth Q1               1        8     388  stunted          
Birth       IRC              INDIA                          Wealth Q2               0       83     388  stunted          
Birth       IRC              INDIA                          Wealth Q2               1       16     388  stunted          
Birth       IRC              INDIA                          Wealth Q3               0       90     388  stunted          
Birth       IRC              INDIA                          Wealth Q3               1       10     388  stunted          
Birth       JiVitA-3         BANGLADESH                     Wealth Q4               0     3893   22434  stunted          
Birth       JiVitA-3         BANGLADESH                     Wealth Q4               1     1385   22434  stunted          
Birth       JiVitA-3         BANGLADESH                     Wealth Q1               0     3614   22434  stunted          
Birth       JiVitA-3         BANGLADESH                     Wealth Q1               1     2158   22434  stunted          
Birth       JiVitA-3         BANGLADESH                     Wealth Q2               0     3714   22434  stunted          
Birth       JiVitA-3         BANGLADESH                     Wealth Q2               1     1987   22434  stunted          
Birth       JiVitA-3         BANGLADESH                     Wealth Q3               0     3830   22434  stunted          
Birth       JiVitA-3         BANGLADESH                     Wealth Q3               1     1853   22434  stunted          
Birth       JiVitA-4         BANGLADESH                     Wealth Q4               0      478    2820  stunted          
Birth       JiVitA-4         BANGLADESH                     Wealth Q4               1      176    2820  stunted          
Birth       JiVitA-4         BANGLADESH                     Wealth Q1               0      456    2820  stunted          
Birth       JiVitA-4         BANGLADESH                     Wealth Q1               1      229    2820  stunted          
Birth       JiVitA-4         BANGLADESH                     Wealth Q2               0      489    2820  stunted          
Birth       JiVitA-4         BANGLADESH                     Wealth Q2               1      233    2820  stunted          
Birth       JiVitA-4         BANGLADESH                     Wealth Q3               0      541    2820  stunted          
Birth       JiVitA-4         BANGLADESH                     Wealth Q3               1      218    2820  stunted          
Birth       MAL-ED           BANGLADESH                     Wealth Q4               0       51     213  stunted          
Birth       MAL-ED           BANGLADESH                     Wealth Q4               1        5     213  stunted          
Birth       MAL-ED           BANGLADESH                     Wealth Q1               0       41     213  stunted          
Birth       MAL-ED           BANGLADESH                     Wealth Q1               1       11     213  stunted          
Birth       MAL-ED           BANGLADESH                     Wealth Q2               0       39     213  stunted          
Birth       MAL-ED           BANGLADESH                     Wealth Q2               1       12     213  stunted          
Birth       MAL-ED           BANGLADESH                     Wealth Q3               0       45     213  stunted          
Birth       MAL-ED           BANGLADESH                     Wealth Q3               1        9     213  stunted          
Birth       MAL-ED           BRAZIL                         Wealth Q4               0        9      60  stunted          
Birth       MAL-ED           BRAZIL                         Wealth Q4               1        2      60  stunted          
Birth       MAL-ED           BRAZIL                         Wealth Q1               0       17      60  stunted          
Birth       MAL-ED           BRAZIL                         Wealth Q1               1        4      60  stunted          
Birth       MAL-ED           BRAZIL                         Wealth Q2               0       16      60  stunted          
Birth       MAL-ED           BRAZIL                         Wealth Q2               1        1      60  stunted          
Birth       MAL-ED           BRAZIL                         Wealth Q3               0        9      60  stunted          
Birth       MAL-ED           BRAZIL                         Wealth Q3               1        2      60  stunted          
Birth       MAL-ED           INDIA                          Wealth Q4               0        8      41  stunted          
Birth       MAL-ED           INDIA                          Wealth Q4               1        0      41  stunted          
Birth       MAL-ED           INDIA                          Wealth Q1               0       10      41  stunted          
Birth       MAL-ED           INDIA                          Wealth Q1               1        4      41  stunted          
Birth       MAL-ED           INDIA                          Wealth Q2               0        6      41  stunted          
Birth       MAL-ED           INDIA                          Wealth Q2               1        3      41  stunted          
Birth       MAL-ED           INDIA                          Wealth Q3               0        9      41  stunted          
Birth       MAL-ED           INDIA                          Wealth Q3               1        1      41  stunted          
Birth       MAL-ED           NEPAL                          Wealth Q4               0        6      26  stunted          
Birth       MAL-ED           NEPAL                          Wealth Q4               1        0      26  stunted          
Birth       MAL-ED           NEPAL                          Wealth Q1               0        8      26  stunted          
Birth       MAL-ED           NEPAL                          Wealth Q1               1        1      26  stunted          
Birth       MAL-ED           NEPAL                          Wealth Q2               0        2      26  stunted          
Birth       MAL-ED           NEPAL                          Wealth Q2               1        1      26  stunted          
Birth       MAL-ED           NEPAL                          Wealth Q3               0        8      26  stunted          
Birth       MAL-ED           NEPAL                          Wealth Q3               1        0      26  stunted          
Birth       MAL-ED           PERU                           Wealth Q4               0       49     215  stunted          
Birth       MAL-ED           PERU                           Wealth Q4               1        5     215  stunted          
Birth       MAL-ED           PERU                           Wealth Q1               0       49     215  stunted          
Birth       MAL-ED           PERU                           Wealth Q1               1        6     215  stunted          
Birth       MAL-ED           PERU                           Wealth Q2               0       47     215  stunted          
Birth       MAL-ED           PERU                           Wealth Q2               1        7     215  stunted          
Birth       MAL-ED           PERU                           Wealth Q3               0       44     215  stunted          
Birth       MAL-ED           PERU                           Wealth Q3               1        8     215  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4               0       16      96  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4               1        1      96  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1               0       24      96  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1               1        3      96  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2               0       23      96  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2               1        1      96  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3               0       25      96  stunted          
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3               1        3      96  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       21     120  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        5     120  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       22     120  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        6     120  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       26     120  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        6     120  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       30     120  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        4     120  stunted          
Birth       PROVIDE          BANGLADESH                     Wealth Q4               0      121     539  stunted          
Birth       PROVIDE          BANGLADESH                     Wealth Q4               1       11     539  stunted          
Birth       PROVIDE          BANGLADESH                     Wealth Q1               0      112     539  stunted          
Birth       PROVIDE          BANGLADESH                     Wealth Q1               1       22     539  stunted          
Birth       PROVIDE          BANGLADESH                     Wealth Q2               0      133     539  stunted          
Birth       PROVIDE          BANGLADESH                     Wealth Q2               1        3     539  stunted          
Birth       PROVIDE          BANGLADESH                     Wealth Q3               0      125     539  stunted          
Birth       PROVIDE          BANGLADESH                     Wealth Q3               1       12     539  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4               0       54     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4               1       40     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1               0       77     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1               1       14     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2               0       64     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2               1       30     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3               0       63     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3               1       27     369  stunted          
6 months    COHORTS          GUATEMALA                      Wealth Q4               0      220     925  stunted          
6 months    COHORTS          GUATEMALA                      Wealth Q4               1      119     925  stunted          
6 months    COHORTS          GUATEMALA                      Wealth Q1               0       98     925  stunted          
6 months    COHORTS          GUATEMALA                      Wealth Q1               1       77     925  stunted          
6 months    COHORTS          GUATEMALA                      Wealth Q2               0      104     925  stunted          
6 months    COHORTS          GUATEMALA                      Wealth Q2               1       91     925  stunted          
6 months    COHORTS          GUATEMALA                      Wealth Q3               0      125     925  stunted          
6 months    COHORTS          GUATEMALA                      Wealth Q3               1       91     925  stunted          
6 months    COHORTS          PHILIPPINES                    Wealth Q4               0      623    2708  stunted          
6 months    COHORTS          PHILIPPINES                    Wealth Q4               1      120    2708  stunted          
6 months    COHORTS          PHILIPPINES                    Wealth Q1               0      431    2708  stunted          
6 months    COHORTS          PHILIPPINES                    Wealth Q1               1      139    2708  stunted          
6 months    COHORTS          PHILIPPINES                    Wealth Q2               0      382    2708  stunted          
6 months    COHORTS          PHILIPPINES                    Wealth Q2               1      103    2708  stunted          
6 months    COHORTS          PHILIPPINES                    Wealth Q3               0      700    2708  stunted          
6 months    COHORTS          PHILIPPINES                    Wealth Q3               1      210    2708  stunted          
6 months    CONTENT          PERU                           Wealth Q4               0       50     215  stunted          
6 months    CONTENT          PERU                           Wealth Q4               1        2     215  stunted          
6 months    CONTENT          PERU                           Wealth Q1               0       57     215  stunted          
6 months    CONTENT          PERU                           Wealth Q1               1        2     215  stunted          
6 months    CONTENT          PERU                           Wealth Q2               0       49     215  stunted          
6 months    CONTENT          PERU                           Wealth Q2               1        3     215  stunted          
6 months    CONTENT          PERU                           Wealth Q3               0       50     215  stunted          
6 months    CONTENT          PERU                           Wealth Q3               1        2     215  stunted          
6 months    GMS-Nepal        NEPAL                          Wealth Q4               0      111     564  stunted          
6 months    GMS-Nepal        NEPAL                          Wealth Q4               1       29     564  stunted          
6 months    GMS-Nepal        NEPAL                          Wealth Q1               0      109     564  stunted          
6 months    GMS-Nepal        NEPAL                          Wealth Q1               1       32     564  stunted          
6 months    GMS-Nepal        NEPAL                          Wealth Q2               0      115     564  stunted          
6 months    GMS-Nepal        NEPAL                          Wealth Q2               1       33     564  stunted          
6 months    GMS-Nepal        NEPAL                          Wealth Q3               0      107     564  stunted          
6 months    GMS-Nepal        NEPAL                          Wealth Q3               1       28     564  stunted          
6 months    IRC              INDIA                          Wealth Q4               0       78     407  stunted          
6 months    IRC              INDIA                          Wealth Q4               1       21     407  stunted          
6 months    IRC              INDIA                          Wealth Q1               0       79     407  stunted          
6 months    IRC              INDIA                          Wealth Q1               1       26     407  stunted          
6 months    IRC              INDIA                          Wealth Q2               0       67     407  stunted          
6 months    IRC              INDIA                          Wealth Q2               1       33     407  stunted          
6 months    IRC              INDIA                          Wealth Q3               0       83     407  stunted          
6 months    IRC              INDIA                          Wealth Q3               1       20     407  stunted          
6 months    JiVitA-3         BANGLADESH                     Wealth Q4               0     4061   16803  stunted          
6 months    JiVitA-3         BANGLADESH                     Wealth Q4               1      923   16803  stunted          
6 months    JiVitA-3         BANGLADESH                     Wealth Q1               0     2538   16803  stunted          
6 months    JiVitA-3         BANGLADESH                     Wealth Q1               1     1048   16803  stunted          
6 months    JiVitA-3         BANGLADESH                     Wealth Q2               0     2790   16803  stunted          
6 months    JiVitA-3         BANGLADESH                     Wealth Q2               1     1117   16803  stunted          
6 months    JiVitA-3         BANGLADESH                     Wealth Q3               0     3190   16803  stunted          
6 months    JiVitA-3         BANGLADESH                     Wealth Q3               1     1136   16803  stunted          
6 months    JiVitA-4         BANGLADESH                     Wealth Q4               0      969    4825  stunted          
6 months    JiVitA-4         BANGLADESH                     Wealth Q4               1      230    4825  stunted          
6 months    JiVitA-4         BANGLADESH                     Wealth Q1               0      828    4825  stunted          
6 months    JiVitA-4         BANGLADESH                     Wealth Q1               1      368    4825  stunted          
6 months    JiVitA-4         BANGLADESH                     Wealth Q2               0      880    4825  stunted          
6 months    JiVitA-4         BANGLADESH                     Wealth Q2               1      321    4825  stunted          
6 months    JiVitA-4         BANGLADESH                     Wealth Q3               0      930    4825  stunted          
6 months    JiVitA-4         BANGLADESH                     Wealth Q3               1      299    4825  stunted          
6 months    LCNI-5           MALAWI                         Wealth Q4               0      142     816  stunted          
6 months    LCNI-5           MALAWI                         Wealth Q4               1       75     816  stunted          
6 months    LCNI-5           MALAWI                         Wealth Q1               0      127     816  stunted          
6 months    LCNI-5           MALAWI                         Wealth Q1               1       76     816  stunted          
6 months    LCNI-5           MALAWI                         Wealth Q2               0      122     816  stunted          
6 months    LCNI-5           MALAWI                         Wealth Q2               1       77     816  stunted          
6 months    LCNI-5           MALAWI                         Wealth Q3               0      129     816  stunted          
6 months    LCNI-5           MALAWI                         Wealth Q3               1       68     816  stunted          
6 months    MAL-ED           BANGLADESH                     Wealth Q4               0       54     240  stunted          
6 months    MAL-ED           BANGLADESH                     Wealth Q4               1        7     240  stunted          
6 months    MAL-ED           BANGLADESH                     Wealth Q1               0       51     240  stunted          
6 months    MAL-ED           BANGLADESH                     Wealth Q1               1        8     240  stunted          
6 months    MAL-ED           BANGLADESH                     Wealth Q2               0       45     240  stunted          
6 months    MAL-ED           BANGLADESH                     Wealth Q2               1       16     240  stunted          
6 months    MAL-ED           BANGLADESH                     Wealth Q3               0       46     240  stunted          
6 months    MAL-ED           BANGLADESH                     Wealth Q3               1       13     240  stunted          
6 months    MAL-ED           BRAZIL                         Wealth Q4               0       52     209  stunted          
6 months    MAL-ED           BRAZIL                         Wealth Q4               1        1     209  stunted          
6 months    MAL-ED           BRAZIL                         Wealth Q1               0       51     209  stunted          
6 months    MAL-ED           BRAZIL                         Wealth Q1               1        2     209  stunted          
6 months    MAL-ED           BRAZIL                         Wealth Q2               0       50     209  stunted          
6 months    MAL-ED           BRAZIL                         Wealth Q2               1        2     209  stunted          
6 months    MAL-ED           BRAZIL                         Wealth Q3               0       50     209  stunted          
6 months    MAL-ED           BRAZIL                         Wealth Q3               1        1     209  stunted          
6 months    MAL-ED           INDIA                          Wealth Q4               0       51     235  stunted          
6 months    MAL-ED           INDIA                          Wealth Q4               1        8     235  stunted          
6 months    MAL-ED           INDIA                          Wealth Q1               0       43     235  stunted          
6 months    MAL-ED           INDIA                          Wealth Q1               1       17     235  stunted          
6 months    MAL-ED           INDIA                          Wealth Q2               0       47     235  stunted          
6 months    MAL-ED           INDIA                          Wealth Q2               1       11     235  stunted          
6 months    MAL-ED           INDIA                          Wealth Q3               0       50     235  stunted          
6 months    MAL-ED           INDIA                          Wealth Q3               1        8     235  stunted          
6 months    MAL-ED           NEPAL                          Wealth Q4               0       56     236  stunted          
6 months    MAL-ED           NEPAL                          Wealth Q4               1        3     236  stunted          
6 months    MAL-ED           NEPAL                          Wealth Q1               0       56     236  stunted          
6 months    MAL-ED           NEPAL                          Wealth Q1               1        3     236  stunted          
6 months    MAL-ED           NEPAL                          Wealth Q2               0       57     236  stunted          
6 months    MAL-ED           NEPAL                          Wealth Q2               1        2     236  stunted          
6 months    MAL-ED           NEPAL                          Wealth Q3               0       55     236  stunted          
6 months    MAL-ED           NEPAL                          Wealth Q3               1        4     236  stunted          
6 months    MAL-ED           PERU                           Wealth Q4               0       53     270  stunted          
6 months    MAL-ED           PERU                           Wealth Q4               1       14     270  stunted          
6 months    MAL-ED           PERU                           Wealth Q1               0       56     270  stunted          
6 months    MAL-ED           PERU                           Wealth Q1               1       12     270  stunted          
6 months    MAL-ED           PERU                           Wealth Q2               0       57     270  stunted          
6 months    MAL-ED           PERU                           Wealth Q2               1       14     270  stunted          
6 months    MAL-ED           PERU                           Wealth Q3               0       44     270  stunted          
6 months    MAL-ED           PERU                           Wealth Q3               1       20     270  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4               0       49     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4               1       13     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1               0       48     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1               1       12     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2               0       48     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2               1       16     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3               0       55     249  stunted          
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3               1        8     249  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       46     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       17     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       48     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       15     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       46     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       15     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       48     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       12     247  stunted          
6 months    PROVIDE          BANGLADESH                     Wealth Q4               0      106     604  stunted          
6 months    PROVIDE          BANGLADESH                     Wealth Q4               1       29     604  stunted          
6 months    PROVIDE          BANGLADESH                     Wealth Q1               0      130     604  stunted          
6 months    PROVIDE          BANGLADESH                     Wealth Q1               1       26     604  stunted          
6 months    PROVIDE          BANGLADESH                     Wealth Q2               0      145     604  stunted          
6 months    PROVIDE          BANGLADESH                     Wealth Q2               1       19     604  stunted          
6 months    PROVIDE          BANGLADESH                     Wealth Q3               0      127     604  stunted          
6 months    PROVIDE          BANGLADESH                     Wealth Q3               1       22     604  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      435    2020  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       67    2020  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      556    2020  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       49    2020  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      366    2020  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       43    2020  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      468    2020  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       36    2020  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4               0       26     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4               1       68     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1               0       21     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1               1       70     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2               0       26     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2               1       69     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3               0       32     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3               1       59     371  stunted          
24 months   COHORTS          GUATEMALA                      Wealth Q4               0       93    1035  stunted          
24 months   COHORTS          GUATEMALA                      Wealth Q4               1      309    1035  stunted          
24 months   COHORTS          GUATEMALA                      Wealth Q1               0       33    1035  stunted          
24 months   COHORTS          GUATEMALA                      Wealth Q1               1      169    1035  stunted          
24 months   COHORTS          GUATEMALA                      Wealth Q2               0       39    1035  stunted          
24 months   COHORTS          GUATEMALA                      Wealth Q2               1      173    1035  stunted          
24 months   COHORTS          GUATEMALA                      Wealth Q3               0       30    1035  stunted          
24 months   COHORTS          GUATEMALA                      Wealth Q3               1      189    1035  stunted          
24 months   COHORTS          PHILIPPINES                    Wealth Q4               0      371    2445  stunted          
24 months   COHORTS          PHILIPPINES                    Wealth Q4               1      317    2445  stunted          
24 months   COHORTS          PHILIPPINES                    Wealth Q1               0      139    2445  stunted          
24 months   COHORTS          PHILIPPINES                    Wealth Q1               1      350    2445  stunted          
24 months   COHORTS          PHILIPPINES                    Wealth Q2               0      136    2445  stunted          
24 months   COHORTS          PHILIPPINES                    Wealth Q2               1      287    2445  stunted          
24 months   COHORTS          PHILIPPINES                    Wealth Q3               0      276    2445  stunted          
24 months   COHORTS          PHILIPPINES                    Wealth Q3               1      569    2445  stunted          
24 months   CONTENT          PERU                           Wealth Q4               0       39     164  stunted          
24 months   CONTENT          PERU                           Wealth Q4               1        2     164  stunted          
24 months   CONTENT          PERU                           Wealth Q1               0       37     164  stunted          
24 months   CONTENT          PERU                           Wealth Q1               1        3     164  stunted          
24 months   CONTENT          PERU                           Wealth Q2               0       36     164  stunted          
24 months   CONTENT          PERU                           Wealth Q2               1        6     164  stunted          
24 months   CONTENT          PERU                           Wealth Q3               0       39     164  stunted          
24 months   CONTENT          PERU                           Wealth Q3               1        2     164  stunted          
24 months   GMS-Nepal        NEPAL                          Wealth Q4               0       73     488  stunted          
24 months   GMS-Nepal        NEPAL                          Wealth Q4               1       51     488  stunted          
24 months   GMS-Nepal        NEPAL                          Wealth Q1               0       61     488  stunted          
24 months   GMS-Nepal        NEPAL                          Wealth Q1               1       61     488  stunted          
24 months   GMS-Nepal        NEPAL                          Wealth Q2               0       71     488  stunted          
24 months   GMS-Nepal        NEPAL                          Wealth Q2               1       57     488  stunted          
24 months   GMS-Nepal        NEPAL                          Wealth Q3               0       64     488  stunted          
24 months   GMS-Nepal        NEPAL                          Wealth Q3               1       50     488  stunted          
24 months   IRC              INDIA                          Wealth Q4               0       69     409  stunted          
24 months   IRC              INDIA                          Wealth Q4               1       31     409  stunted          
24 months   IRC              INDIA                          Wealth Q1               0       50     409  stunted          
24 months   IRC              INDIA                          Wealth Q1               1       55     409  stunted          
24 months   IRC              INDIA                          Wealth Q2               0       55     409  stunted          
24 months   IRC              INDIA                          Wealth Q2               1       46     409  stunted          
24 months   IRC              INDIA                          Wealth Q3               0       63     409  stunted          
24 months   IRC              INDIA                          Wealth Q3               1       40     409  stunted          
24 months   JiVitA-3         BANGLADESH                     Wealth Q4               0     1511    8623  stunted          
24 months   JiVitA-3         BANGLADESH                     Wealth Q4               1      855    8623  stunted          
24 months   JiVitA-3         BANGLADESH                     Wealth Q1               0      808    8623  stunted          
24 months   JiVitA-3         BANGLADESH                     Wealth Q1               1     1193    8623  stunted          
24 months   JiVitA-3         BANGLADESH                     Wealth Q2               0      963    8623  stunted          
24 months   JiVitA-3         BANGLADESH                     Wealth Q2               1     1143    8623  stunted          
24 months   JiVitA-3         BANGLADESH                     Wealth Q3               0     1106    8623  stunted          
24 months   JiVitA-3         BANGLADESH                     Wealth Q3               1     1044    8623  stunted          
24 months   JiVitA-4         BANGLADESH                     Wealth Q4               0      824    4747  stunted          
24 months   JiVitA-4         BANGLADESH                     Wealth Q4               1      369    4747  stunted          
24 months   JiVitA-4         BANGLADESH                     Wealth Q1               0      610    4747  stunted          
24 months   JiVitA-4         BANGLADESH                     Wealth Q1               1      546    4747  stunted          
24 months   JiVitA-4         BANGLADESH                     Wealth Q2               0      669    4747  stunted          
24 months   JiVitA-4         BANGLADESH                     Wealth Q2               1      504    4747  stunted          
24 months   JiVitA-4         BANGLADESH                     Wealth Q3               0      741    4747  stunted          
24 months   JiVitA-4         BANGLADESH                     Wealth Q3               1      484    4747  stunted          
24 months   LCNI-5           MALAWI                         Wealth Q4               0       96     574  stunted          
24 months   LCNI-5           MALAWI                         Wealth Q4               1       64     574  stunted          
24 months   LCNI-5           MALAWI                         Wealth Q1               0       72     574  stunted          
24 months   LCNI-5           MALAWI                         Wealth Q1               1       57     574  stunted          
24 months   LCNI-5           MALAWI                         Wealth Q2               0       74     574  stunted          
24 months   LCNI-5           MALAWI                         Wealth Q2               1       72     574  stunted          
24 months   LCNI-5           MALAWI                         Wealth Q3               0       78     574  stunted          
24 months   LCNI-5           MALAWI                         Wealth Q3               1       61     574  stunted          
24 months   MAL-ED           BANGLADESH                     Wealth Q4               0       37     212  stunted          
24 months   MAL-ED           BANGLADESH                     Wealth Q4               1       24     212  stunted          
24 months   MAL-ED           BANGLADESH                     Wealth Q1               0       15     212  stunted          
24 months   MAL-ED           BANGLADESH                     Wealth Q1               1       15     212  stunted          
24 months   MAL-ED           BANGLADESH                     Wealth Q2               0       25     212  stunted          
24 months   MAL-ED           BANGLADESH                     Wealth Q2               1       36     212  stunted          
24 months   MAL-ED           BANGLADESH                     Wealth Q3               0       34     212  stunted          
24 months   MAL-ED           BANGLADESH                     Wealth Q3               1       26     212  stunted          
24 months   MAL-ED           BRAZIL                         Wealth Q4               0       51     169  stunted          
24 months   MAL-ED           BRAZIL                         Wealth Q4               1        2     169  stunted          
24 months   MAL-ED           BRAZIL                         Wealth Q1               0       26     169  stunted          
24 months   MAL-ED           BRAZIL                         Wealth Q1               1        0     169  stunted          
24 months   MAL-ED           BRAZIL                         Wealth Q2               0       35     169  stunted          
24 months   MAL-ED           BRAZIL                         Wealth Q2               1        4     169  stunted          
24 months   MAL-ED           BRAZIL                         Wealth Q3               0       50     169  stunted          
24 months   MAL-ED           BRAZIL                         Wealth Q3               1        1     169  stunted          
24 months   MAL-ED           INDIA                          Wealth Q4               0       36     227  stunted          
24 months   MAL-ED           INDIA                          Wealth Q4               1       23     227  stunted          
24 months   MAL-ED           INDIA                          Wealth Q1               0       26     227  stunted          
24 months   MAL-ED           INDIA                          Wealth Q1               1       26     227  stunted          
24 months   MAL-ED           INDIA                          Wealth Q2               0       36     227  stunted          
24 months   MAL-ED           INDIA                          Wealth Q2               1       22     227  stunted          
24 months   MAL-ED           INDIA                          Wealth Q3               0       32     227  stunted          
24 months   MAL-ED           INDIA                          Wealth Q3               1       26     227  stunted          
24 months   MAL-ED           NEPAL                          Wealth Q4               0       47     228  stunted          
24 months   MAL-ED           NEPAL                          Wealth Q4               1       12     228  stunted          
24 months   MAL-ED           NEPAL                          Wealth Q1               0       47     228  stunted          
24 months   MAL-ED           NEPAL                          Wealth Q1               1        8     228  stunted          
24 months   MAL-ED           NEPAL                          Wealth Q2               0       42     228  stunted          
24 months   MAL-ED           NEPAL                          Wealth Q2               1       13     228  stunted          
24 months   MAL-ED           NEPAL                          Wealth Q3               0       42     228  stunted          
24 months   MAL-ED           NEPAL                          Wealth Q3               1       17     228  stunted          
24 months   MAL-ED           PERU                           Wealth Q4               0       43     201  stunted          
24 months   MAL-ED           PERU                           Wealth Q4               1       22     201  stunted          
24 months   MAL-ED           PERU                           Wealth Q1               0       31     201  stunted          
24 months   MAL-ED           PERU                           Wealth Q1               1       11     201  stunted          
24 months   MAL-ED           PERU                           Wealth Q2               0       20     201  stunted          
24 months   MAL-ED           PERU                           Wealth Q2               1       18     201  stunted          
24 months   MAL-ED           PERU                           Wealth Q3               0       33     201  stunted          
24 months   MAL-ED           PERU                           Wealth Q3               1       23     201  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4               0       54     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4               1        9     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1               0       31     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1               1       18     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2               0       34     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2               1       29     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3               0       35     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3               1       28     238  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       17     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       46     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       14     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       14     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       15     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       47     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       13     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       48     214  stunted          
24 months   PROVIDE          BANGLADESH                     Wealth Q4               0       59     578  stunted          
24 months   PROVIDE          BANGLADESH                     Wealth Q4               1       62     578  stunted          
24 months   PROVIDE          BANGLADESH                     Wealth Q1               0      117     578  stunted          
24 months   PROVIDE          BANGLADESH                     Wealth Q1               1       38     578  stunted          
24 months   PROVIDE          BANGLADESH                     Wealth Q2               0      116     578  stunted          
24 months   PROVIDE          BANGLADESH                     Wealth Q2               1       41     578  stunted          
24 months   PROVIDE          BANGLADESH                     Wealth Q3               0       96     578  stunted          
24 months   PROVIDE          BANGLADESH                     Wealth Q3               1       49     578  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0        4       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        0       6  stunted          


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
