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

agecat      studyid          country                        hhwealth_quart    sstunted   n_cell       n
----------  ---------------  -----------------------------  ---------------  ---------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4                0       31      92
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4                1        1      92
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1                0       15      92
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1                1        0      92
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2                0       19      92
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2                1        1      92
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3                0       23      92
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3                1        2      92
Birth       COHORTS          GUATEMALA                      Wealth Q4                0      291     816
Birth       COHORTS          GUATEMALA                      Wealth Q4                1        2     816
Birth       COHORTS          GUATEMALA                      Wealth Q1                0      157     816
Birth       COHORTS          GUATEMALA                      Wealth Q1                1        0     816
Birth       COHORTS          GUATEMALA                      Wealth Q2                0      158     816
Birth       COHORTS          GUATEMALA                      Wealth Q2                1        3     816
Birth       COHORTS          GUATEMALA                      Wealth Q3                0      201     816
Birth       COHORTS          GUATEMALA                      Wealth Q3                1        4     816
Birth       COHORTS          PHILIPPINES                    Wealth Q4                0      835    3049
Birth       COHORTS          PHILIPPINES                    Wealth Q4                1        7    3049
Birth       COHORTS          PHILIPPINES                    Wealth Q1                0      675    3049
Birth       COHORTS          PHILIPPINES                    Wealth Q1                1       12    3049
Birth       COHORTS          PHILIPPINES                    Wealth Q2                0      524    3049
Birth       COHORTS          PHILIPPINES                    Wealth Q2                1       14    3049
Birth       COHORTS          PHILIPPINES                    Wealth Q3                0      969    3049
Birth       COHORTS          PHILIPPINES                    Wealth Q3                1       13    3049
Birth       CONTENT          PERU                           Wealth Q4                0        0       2
Birth       CONTENT          PERU                           Wealth Q4                1        0       2
Birth       CONTENT          PERU                           Wealth Q1                0        0       2
Birth       CONTENT          PERU                           Wealth Q1                1        0       2
Birth       CONTENT          PERU                           Wealth Q2                0        1       2
Birth       CONTENT          PERU                           Wealth Q2                1        0       2
Birth       CONTENT          PERU                           Wealth Q3                0        1       2
Birth       CONTENT          PERU                           Wealth Q3                1        0       2
Birth       GMS-Nepal        NEPAL                          Wealth Q4                0      165     696
Birth       GMS-Nepal        NEPAL                          Wealth Q4                1        8     696
Birth       GMS-Nepal        NEPAL                          Wealth Q1                0      169     696
Birth       GMS-Nepal        NEPAL                          Wealth Q1                1        6     696
Birth       GMS-Nepal        NEPAL                          Wealth Q2                0      169     696
Birth       GMS-Nepal        NEPAL                          Wealth Q2                1        5     696
Birth       GMS-Nepal        NEPAL                          Wealth Q3                0      162     696
Birth       GMS-Nepal        NEPAL                          Wealth Q3                1       12     696
Birth       IRC              INDIA                          Wealth Q4                0       87     388
Birth       IRC              INDIA                          Wealth Q4                1        4     388
Birth       IRC              INDIA                          Wealth Q1                0       96     388
Birth       IRC              INDIA                          Wealth Q1                1        2     388
Birth       IRC              INDIA                          Wealth Q2                0       92     388
Birth       IRC              INDIA                          Wealth Q2                1        7     388
Birth       IRC              INDIA                          Wealth Q3                0       97     388
Birth       IRC              INDIA                          Wealth Q3                1        3     388
Birth       JiVitA-3         BANGLADESH                     Wealth Q4                0     4886   22434
Birth       JiVitA-3         BANGLADESH                     Wealth Q4                1      392   22434
Birth       JiVitA-3         BANGLADESH                     Wealth Q1                0     5028   22434
Birth       JiVitA-3         BANGLADESH                     Wealth Q1                1      744   22434
Birth       JiVitA-3         BANGLADESH                     Wealth Q2                0     5011   22434
Birth       JiVitA-3         BANGLADESH                     Wealth Q2                1      690   22434
Birth       JiVitA-3         BANGLADESH                     Wealth Q3                0     5061   22434
Birth       JiVitA-3         BANGLADESH                     Wealth Q3                1      622   22434
Birth       JiVitA-4         BANGLADESH                     Wealth Q4                0      615    2820
Birth       JiVitA-4         BANGLADESH                     Wealth Q4                1       39    2820
Birth       JiVitA-4         BANGLADESH                     Wealth Q1                0      610    2820
Birth       JiVitA-4         BANGLADESH                     Wealth Q1                1       75    2820
Birth       JiVitA-4         BANGLADESH                     Wealth Q2                0      668    2820
Birth       JiVitA-4         BANGLADESH                     Wealth Q2                1       54    2820
Birth       JiVitA-4         BANGLADESH                     Wealth Q3                0      694    2820
Birth       JiVitA-4         BANGLADESH                     Wealth Q3                1       65    2820
Birth       MAL-ED           BANGLADESH                     Wealth Q4                0       56     213
Birth       MAL-ED           BANGLADESH                     Wealth Q4                1        0     213
Birth       MAL-ED           BANGLADESH                     Wealth Q1                0       50     213
Birth       MAL-ED           BANGLADESH                     Wealth Q1                1        2     213
Birth       MAL-ED           BANGLADESH                     Wealth Q2                0       47     213
Birth       MAL-ED           BANGLADESH                     Wealth Q2                1        4     213
Birth       MAL-ED           BANGLADESH                     Wealth Q3                0       54     213
Birth       MAL-ED           BANGLADESH                     Wealth Q3                1        0     213
Birth       MAL-ED           BRAZIL                         Wealth Q4                0       10      60
Birth       MAL-ED           BRAZIL                         Wealth Q4                1        1      60
Birth       MAL-ED           BRAZIL                         Wealth Q1                0       20      60
Birth       MAL-ED           BRAZIL                         Wealth Q1                1        1      60
Birth       MAL-ED           BRAZIL                         Wealth Q2                0       16      60
Birth       MAL-ED           BRAZIL                         Wealth Q2                1        1      60
Birth       MAL-ED           BRAZIL                         Wealth Q3                0       11      60
Birth       MAL-ED           BRAZIL                         Wealth Q3                1        0      60
Birth       MAL-ED           INDIA                          Wealth Q4                0        8      41
Birth       MAL-ED           INDIA                          Wealth Q4                1        0      41
Birth       MAL-ED           INDIA                          Wealth Q1                0       13      41
Birth       MAL-ED           INDIA                          Wealth Q1                1        1      41
Birth       MAL-ED           INDIA                          Wealth Q2                0        9      41
Birth       MAL-ED           INDIA                          Wealth Q2                1        0      41
Birth       MAL-ED           INDIA                          Wealth Q3                0        9      41
Birth       MAL-ED           INDIA                          Wealth Q3                1        1      41
Birth       MAL-ED           NEPAL                          Wealth Q4                0        6      26
Birth       MAL-ED           NEPAL                          Wealth Q4                1        0      26
Birth       MAL-ED           NEPAL                          Wealth Q1                0        8      26
Birth       MAL-ED           NEPAL                          Wealth Q1                1        1      26
Birth       MAL-ED           NEPAL                          Wealth Q2                0        3      26
Birth       MAL-ED           NEPAL                          Wealth Q2                1        0      26
Birth       MAL-ED           NEPAL                          Wealth Q3                0        8      26
Birth       MAL-ED           NEPAL                          Wealth Q3                1        0      26
Birth       MAL-ED           PERU                           Wealth Q4                0       54     215
Birth       MAL-ED           PERU                           Wealth Q4                1        0     215
Birth       MAL-ED           PERU                           Wealth Q1                0       54     215
Birth       MAL-ED           PERU                           Wealth Q1                1        1     215
Birth       MAL-ED           PERU                           Wealth Q2                0       51     215
Birth       MAL-ED           PERU                           Wealth Q2                1        3     215
Birth       MAL-ED           PERU                           Wealth Q3                0       52     215
Birth       MAL-ED           PERU                           Wealth Q3                1        0     215
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4                0       17      96
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4                1        0      96
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1                0       26      96
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1                1        1      96
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2                0       24      96
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2                1        0      96
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3                0       28      96
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3                1        0      96
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0       23     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        3     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0       26     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        2     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0       30     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        2     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0       33     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        1     120
Birth       PROVIDE          BANGLADESH                     Wealth Q4                0      132     539
Birth       PROVIDE          BANGLADESH                     Wealth Q4                1        0     539
Birth       PROVIDE          BANGLADESH                     Wealth Q1                0      132     539
Birth       PROVIDE          BANGLADESH                     Wealth Q1                1        2     539
Birth       PROVIDE          BANGLADESH                     Wealth Q2                0      136     539
Birth       PROVIDE          BANGLADESH                     Wealth Q2                1        0     539
Birth       PROVIDE          BANGLADESH                     Wealth Q3                0      135     539
Birth       PROVIDE          BANGLADESH                     Wealth Q3                1        2     539
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4                0       79     369
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4                1       15     369
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1                0       89     369
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1                1        2     369
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2                0       83     369
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2                1       11     369
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3                0       76     369
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3                1       14     369
6 months    COHORTS          GUATEMALA                      Wealth Q4                0      313     925
6 months    COHORTS          GUATEMALA                      Wealth Q4                1       26     925
6 months    COHORTS          GUATEMALA                      Wealth Q1                0      147     925
6 months    COHORTS          GUATEMALA                      Wealth Q1                1       28     925
6 months    COHORTS          GUATEMALA                      Wealth Q2                0      165     925
6 months    COHORTS          GUATEMALA                      Wealth Q2                1       30     925
6 months    COHORTS          GUATEMALA                      Wealth Q3                0      181     925
6 months    COHORTS          GUATEMALA                      Wealth Q3                1       35     925
6 months    COHORTS          PHILIPPINES                    Wealth Q4                0      719    2708
6 months    COHORTS          PHILIPPINES                    Wealth Q4                1       24    2708
6 months    COHORTS          PHILIPPINES                    Wealth Q1                0      540    2708
6 months    COHORTS          PHILIPPINES                    Wealth Q1                1       30    2708
6 months    COHORTS          PHILIPPINES                    Wealth Q2                0      459    2708
6 months    COHORTS          PHILIPPINES                    Wealth Q2                1       26    2708
6 months    COHORTS          PHILIPPINES                    Wealth Q3                0      858    2708
6 months    COHORTS          PHILIPPINES                    Wealth Q3                1       52    2708
6 months    CONTENT          PERU                           Wealth Q4                0       52     215
6 months    CONTENT          PERU                           Wealth Q4                1        0     215
6 months    CONTENT          PERU                           Wealth Q1                0       58     215
6 months    CONTENT          PERU                           Wealth Q1                1        1     215
6 months    CONTENT          PERU                           Wealth Q2                0       52     215
6 months    CONTENT          PERU                           Wealth Q2                1        0     215
6 months    CONTENT          PERU                           Wealth Q3                0       52     215
6 months    CONTENT          PERU                           Wealth Q3                1        0     215
6 months    GMS-Nepal        NEPAL                          Wealth Q4                0      138     564
6 months    GMS-Nepal        NEPAL                          Wealth Q4                1        2     564
6 months    GMS-Nepal        NEPAL                          Wealth Q1                0      130     564
6 months    GMS-Nepal        NEPAL                          Wealth Q1                1       11     564
6 months    GMS-Nepal        NEPAL                          Wealth Q2                0      144     564
6 months    GMS-Nepal        NEPAL                          Wealth Q2                1        4     564
6 months    GMS-Nepal        NEPAL                          Wealth Q3                0      131     564
6 months    GMS-Nepal        NEPAL                          Wealth Q3                1        4     564
6 months    IRC              INDIA                          Wealth Q4                0       92     407
6 months    IRC              INDIA                          Wealth Q4                1        7     407
6 months    IRC              INDIA                          Wealth Q1                0       95     407
6 months    IRC              INDIA                          Wealth Q1                1       10     407
6 months    IRC              INDIA                          Wealth Q2                0       92     407
6 months    IRC              INDIA                          Wealth Q2                1        8     407
6 months    IRC              INDIA                          Wealth Q3                0       99     407
6 months    IRC              INDIA                          Wealth Q3                1        4     407
6 months    JiVitA-3         BANGLADESH                     Wealth Q4                0     4768   16803
6 months    JiVitA-3         BANGLADESH                     Wealth Q4                1      216   16803
6 months    JiVitA-3         BANGLADESH                     Wealth Q1                0     3304   16803
6 months    JiVitA-3         BANGLADESH                     Wealth Q1                1      282   16803
6 months    JiVitA-3         BANGLADESH                     Wealth Q2                0     3638   16803
6 months    JiVitA-3         BANGLADESH                     Wealth Q2                1      269   16803
6 months    JiVitA-3         BANGLADESH                     Wealth Q3                0     4074   16803
6 months    JiVitA-3         BANGLADESH                     Wealth Q3                1      252   16803
6 months    JiVitA-4         BANGLADESH                     Wealth Q4                0     1156    4825
6 months    JiVitA-4         BANGLADESH                     Wealth Q4                1       43    4825
6 months    JiVitA-4         BANGLADESH                     Wealth Q1                0     1096    4825
6 months    JiVitA-4         BANGLADESH                     Wealth Q1                1      100    4825
6 months    JiVitA-4         BANGLADESH                     Wealth Q2                0     1124    4825
6 months    JiVitA-4         BANGLADESH                     Wealth Q2                1       77    4825
6 months    JiVitA-4         BANGLADESH                     Wealth Q3                0     1178    4825
6 months    JiVitA-4         BANGLADESH                     Wealth Q3                1       51    4825
6 months    LCNI-5           MALAWI                         Wealth Q4                0      201     816
6 months    LCNI-5           MALAWI                         Wealth Q4                1       16     816
6 months    LCNI-5           MALAWI                         Wealth Q1                0      182     816
6 months    LCNI-5           MALAWI                         Wealth Q1                1       21     816
6 months    LCNI-5           MALAWI                         Wealth Q2                0      184     816
6 months    LCNI-5           MALAWI                         Wealth Q2                1       15     816
6 months    LCNI-5           MALAWI                         Wealth Q3                0      184     816
6 months    LCNI-5           MALAWI                         Wealth Q3                1       13     816
6 months    MAL-ED           BANGLADESH                     Wealth Q4                0       59     240
6 months    MAL-ED           BANGLADESH                     Wealth Q4                1        2     240
6 months    MAL-ED           BANGLADESH                     Wealth Q1                0       56     240
6 months    MAL-ED           BANGLADESH                     Wealth Q1                1        3     240
6 months    MAL-ED           BANGLADESH                     Wealth Q2                0       59     240
6 months    MAL-ED           BANGLADESH                     Wealth Q2                1        2     240
6 months    MAL-ED           BANGLADESH                     Wealth Q3                0       58     240
6 months    MAL-ED           BANGLADESH                     Wealth Q3                1        1     240
6 months    MAL-ED           BRAZIL                         Wealth Q4                0       53     209
6 months    MAL-ED           BRAZIL                         Wealth Q4                1        0     209
6 months    MAL-ED           BRAZIL                         Wealth Q1                0       53     209
6 months    MAL-ED           BRAZIL                         Wealth Q1                1        0     209
6 months    MAL-ED           BRAZIL                         Wealth Q2                0       52     209
6 months    MAL-ED           BRAZIL                         Wealth Q2                1        0     209
6 months    MAL-ED           BRAZIL                         Wealth Q3                0       51     209
6 months    MAL-ED           BRAZIL                         Wealth Q3                1        0     209
6 months    MAL-ED           INDIA                          Wealth Q4                0       59     235
6 months    MAL-ED           INDIA                          Wealth Q4                1        0     235
6 months    MAL-ED           INDIA                          Wealth Q1                0       56     235
6 months    MAL-ED           INDIA                          Wealth Q1                1        4     235
6 months    MAL-ED           INDIA                          Wealth Q2                0       54     235
6 months    MAL-ED           INDIA                          Wealth Q2                1        4     235
6 months    MAL-ED           INDIA                          Wealth Q3                0       57     235
6 months    MAL-ED           INDIA                          Wealth Q3                1        1     235
6 months    MAL-ED           NEPAL                          Wealth Q4                0       59     236
6 months    MAL-ED           NEPAL                          Wealth Q4                1        0     236
6 months    MAL-ED           NEPAL                          Wealth Q1                0       58     236
6 months    MAL-ED           NEPAL                          Wealth Q1                1        1     236
6 months    MAL-ED           NEPAL                          Wealth Q2                0       59     236
6 months    MAL-ED           NEPAL                          Wealth Q2                1        0     236
6 months    MAL-ED           NEPAL                          Wealth Q3                0       59     236
6 months    MAL-ED           NEPAL                          Wealth Q3                1        0     236
6 months    MAL-ED           PERU                           Wealth Q4                0       64     270
6 months    MAL-ED           PERU                           Wealth Q4                1        3     270
6 months    MAL-ED           PERU                           Wealth Q1                0       66     270
6 months    MAL-ED           PERU                           Wealth Q1                1        2     270
6 months    MAL-ED           PERU                           Wealth Q2                0       69     270
6 months    MAL-ED           PERU                           Wealth Q2                1        2     270
6 months    MAL-ED           PERU                           Wealth Q3                0       61     270
6 months    MAL-ED           PERU                           Wealth Q3                1        3     270
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4                0       61     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4                1        1     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1                0       56     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1                1        4     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2                0       63     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2                1        1     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3                0       63     249
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3                1        0     249
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0       59     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        4     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0       59     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        4     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0       58     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        3     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0       57     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        3     247
6 months    PROVIDE          BANGLADESH                     Wealth Q4                0      129     604
6 months    PROVIDE          BANGLADESH                     Wealth Q4                1        6     604
6 months    PROVIDE          BANGLADESH                     Wealth Q1                0      154     604
6 months    PROVIDE          BANGLADESH                     Wealth Q1                1        2     604
6 months    PROVIDE          BANGLADESH                     Wealth Q2                0      163     604
6 months    PROVIDE          BANGLADESH                     Wealth Q2                1        1     604
6 months    PROVIDE          BANGLADESH                     Wealth Q3                0      144     604
6 months    PROVIDE          BANGLADESH                     Wealth Q3                1        5     604
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0      497    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        5    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0      598    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        7    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0      403    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        6    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0      503    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        1    2020
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                0       60     371
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                1       34     371
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                0       68     371
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                1       23     371
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                0       59     371
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                1       36     371
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                0       59     371
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                1       32     371
24 months   COHORTS          GUATEMALA                      Wealth Q4                0      230    1035
24 months   COHORTS          GUATEMALA                      Wealth Q4                1      172    1035
24 months   COHORTS          GUATEMALA                      Wealth Q1                0       89    1035
24 months   COHORTS          GUATEMALA                      Wealth Q1                1      113    1035
24 months   COHORTS          GUATEMALA                      Wealth Q2                0      100    1035
24 months   COHORTS          GUATEMALA                      Wealth Q2                1      112    1035
24 months   COHORTS          GUATEMALA                      Wealth Q3                0      110    1035
24 months   COHORTS          GUATEMALA                      Wealth Q3                1      109    1035
24 months   COHORTS          PHILIPPINES                    Wealth Q4                0      568    2445
24 months   COHORTS          PHILIPPINES                    Wealth Q4                1      120    2445
24 months   COHORTS          PHILIPPINES                    Wealth Q1                0      307    2445
24 months   COHORTS          PHILIPPINES                    Wealth Q1                1      182    2445
24 months   COHORTS          PHILIPPINES                    Wealth Q2                0      281    2445
24 months   COHORTS          PHILIPPINES                    Wealth Q2                1      142    2445
24 months   COHORTS          PHILIPPINES                    Wealth Q3                0      582    2445
24 months   COHORTS          PHILIPPINES                    Wealth Q3                1      263    2445
24 months   CONTENT          PERU                           Wealth Q4                0       41     164
24 months   CONTENT          PERU                           Wealth Q4                1        0     164
24 months   CONTENT          PERU                           Wealth Q1                0       40     164
24 months   CONTENT          PERU                           Wealth Q1                1        0     164
24 months   CONTENT          PERU                           Wealth Q2                0       42     164
24 months   CONTENT          PERU                           Wealth Q2                1        0     164
24 months   CONTENT          PERU                           Wealth Q3                0       40     164
24 months   CONTENT          PERU                           Wealth Q3                1        1     164
24 months   GMS-Nepal        NEPAL                          Wealth Q4                0      114     488
24 months   GMS-Nepal        NEPAL                          Wealth Q4                1       10     488
24 months   GMS-Nepal        NEPAL                          Wealth Q1                0      101     488
24 months   GMS-Nepal        NEPAL                          Wealth Q1                1       21     488
24 months   GMS-Nepal        NEPAL                          Wealth Q2                0      112     488
24 months   GMS-Nepal        NEPAL                          Wealth Q2                1       16     488
24 months   GMS-Nepal        NEPAL                          Wealth Q3                0      108     488
24 months   GMS-Nepal        NEPAL                          Wealth Q3                1        6     488
24 months   IRC              INDIA                          Wealth Q4                0       95     409
24 months   IRC              INDIA                          Wealth Q4                1        5     409
24 months   IRC              INDIA                          Wealth Q1                0       90     409
24 months   IRC              INDIA                          Wealth Q1                1       15     409
24 months   IRC              INDIA                          Wealth Q2                0       91     409
24 months   IRC              INDIA                          Wealth Q2                1       10     409
24 months   IRC              INDIA                          Wealth Q3                0       92     409
24 months   IRC              INDIA                          Wealth Q3                1       11     409
24 months   JiVitA-3         BANGLADESH                     Wealth Q4                0     2138    8623
24 months   JiVitA-3         BANGLADESH                     Wealth Q4                1      228    8623
24 months   JiVitA-3         BANGLADESH                     Wealth Q1                0     1586    8623
24 months   JiVitA-3         BANGLADESH                     Wealth Q1                1      415    8623
24 months   JiVitA-3         BANGLADESH                     Wealth Q2                0     1727    8623
24 months   JiVitA-3         BANGLADESH                     Wealth Q2                1      379    8623
24 months   JiVitA-3         BANGLADESH                     Wealth Q3                0     1827    8623
24 months   JiVitA-3         BANGLADESH                     Wealth Q3                1      323    8623
24 months   JiVitA-4         BANGLADESH                     Wealth Q4                0     1125    4747
24 months   JiVitA-4         BANGLADESH                     Wealth Q4                1       68    4747
24 months   JiVitA-4         BANGLADESH                     Wealth Q1                0      992    4747
24 months   JiVitA-4         BANGLADESH                     Wealth Q1                1      164    4747
24 months   JiVitA-4         BANGLADESH                     Wealth Q2                0     1052    4747
24 months   JiVitA-4         BANGLADESH                     Wealth Q2                1      121    4747
24 months   JiVitA-4         BANGLADESH                     Wealth Q3                0     1126    4747
24 months   JiVitA-4         BANGLADESH                     Wealth Q3                1       99    4747
24 months   LCNI-5           MALAWI                         Wealth Q4                0      142     574
24 months   LCNI-5           MALAWI                         Wealth Q4                1       18     574
24 months   LCNI-5           MALAWI                         Wealth Q1                0      110     574
24 months   LCNI-5           MALAWI                         Wealth Q1                1       19     574
24 months   LCNI-5           MALAWI                         Wealth Q2                0      123     574
24 months   LCNI-5           MALAWI                         Wealth Q2                1       23     574
24 months   LCNI-5           MALAWI                         Wealth Q3                0      130     574
24 months   LCNI-5           MALAWI                         Wealth Q3                1        9     574
24 months   MAL-ED           BANGLADESH                     Wealth Q4                0       58     212
24 months   MAL-ED           BANGLADESH                     Wealth Q4                1        3     212
24 months   MAL-ED           BANGLADESH                     Wealth Q1                0       28     212
24 months   MAL-ED           BANGLADESH                     Wealth Q1                1        2     212
24 months   MAL-ED           BANGLADESH                     Wealth Q2                0       46     212
24 months   MAL-ED           BANGLADESH                     Wealth Q2                1       15     212
24 months   MAL-ED           BANGLADESH                     Wealth Q3                0       52     212
24 months   MAL-ED           BANGLADESH                     Wealth Q3                1        8     212
24 months   MAL-ED           BRAZIL                         Wealth Q4                0       53     169
24 months   MAL-ED           BRAZIL                         Wealth Q4                1        0     169
24 months   MAL-ED           BRAZIL                         Wealth Q1                0       26     169
24 months   MAL-ED           BRAZIL                         Wealth Q1                1        0     169
24 months   MAL-ED           BRAZIL                         Wealth Q2                0       38     169
24 months   MAL-ED           BRAZIL                         Wealth Q2                1        1     169
24 months   MAL-ED           BRAZIL                         Wealth Q3                0       51     169
24 months   MAL-ED           BRAZIL                         Wealth Q3                1        0     169
24 months   MAL-ED           INDIA                          Wealth Q4                0       54     227
24 months   MAL-ED           INDIA                          Wealth Q4                1        5     227
24 months   MAL-ED           INDIA                          Wealth Q1                0       43     227
24 months   MAL-ED           INDIA                          Wealth Q1                1        9     227
24 months   MAL-ED           INDIA                          Wealth Q2                0       48     227
24 months   MAL-ED           INDIA                          Wealth Q2                1       10     227
24 months   MAL-ED           INDIA                          Wealth Q3                0       52     227
24 months   MAL-ED           INDIA                          Wealth Q3                1        6     227
24 months   MAL-ED           NEPAL                          Wealth Q4                0       56     228
24 months   MAL-ED           NEPAL                          Wealth Q4                1        3     228
24 months   MAL-ED           NEPAL                          Wealth Q1                0       54     228
24 months   MAL-ED           NEPAL                          Wealth Q1                1        1     228
24 months   MAL-ED           NEPAL                          Wealth Q2                0       55     228
24 months   MAL-ED           NEPAL                          Wealth Q2                1        0     228
24 months   MAL-ED           NEPAL                          Wealth Q3                0       56     228
24 months   MAL-ED           NEPAL                          Wealth Q3                1        3     228
24 months   MAL-ED           PERU                           Wealth Q4                0       62     201
24 months   MAL-ED           PERU                           Wealth Q4                1        3     201
24 months   MAL-ED           PERU                           Wealth Q1                0       40     201
24 months   MAL-ED           PERU                           Wealth Q1                1        2     201
24 months   MAL-ED           PERU                           Wealth Q2                0       35     201
24 months   MAL-ED           PERU                           Wealth Q2                1        3     201
24 months   MAL-ED           PERU                           Wealth Q3                0       49     201
24 months   MAL-ED           PERU                           Wealth Q3                1        7     201
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                0       60     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                1        3     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                0       41     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                1        8     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                0       52     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                1       11     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                0       58     238
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                1        5     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0       41     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1       22     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0       22     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        6     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0       43     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1       19     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0       38     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1       23     214
24 months   PROVIDE          BANGLADESH                     Wealth Q4                0      103     578
24 months   PROVIDE          BANGLADESH                     Wealth Q4                1       18     578
24 months   PROVIDE          BANGLADESH                     Wealth Q1                0      143     578
24 months   PROVIDE          BANGLADESH                     Wealth Q1                1       12     578
24 months   PROVIDE          BANGLADESH                     Wealth Q2                0      151     578
24 months   PROVIDE          BANGLADESH                     Wealth Q2                1        6     578
24 months   PROVIDE          BANGLADESH                     Wealth Q3                0      129     578
24 months   PROVIDE          BANGLADESH                     Wealth Q3                1       16     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0        4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        0       6


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
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
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
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
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
![](/tmp/024425db-af70-496c-af67-a66a796f385c/4214d7a9-4b52-48b1-902b-6c56eba72c19/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/024425db-af70-496c-af67-a66a796f385c/4214d7a9-4b52-48b1-902b-6c56eba72c19/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/024425db-af70-496c-af67-a66a796f385c/4214d7a9-4b52-48b1-902b-6c56eba72c19/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/024425db-af70-496c-af67-a66a796f385c/4214d7a9-4b52-48b1-902b-6c56eba72c19/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0083135   0.0021795   0.0144475
Birth       COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0174672   0.0076695   0.0272650
Birth       COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0260223   0.0125676   0.0394771
Birth       COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0132383   0.0060886   0.0203880
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0462428   0.0149259   0.0775596
Birth       GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0342857   0.0073069   0.0612645
Birth       GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0287356   0.0038949   0.0535764
Birth       GMS-Nepal        NEPAL                          Wealth Q3            NA                0.0689655   0.0312878   0.1066432
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.1087228   0.1031526   0.1142930
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.1093378   0.1044949   0.1141806
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.1101195   0.1052407   0.1149983
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.1093821   0.1045425   0.1142216
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.0812958   0.0668614   0.0957302
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.0842154   0.0702584   0.0981723
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.0839366   0.0710205   0.0968527
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.0835252   0.0703343   0.0967161
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                0.0778085   0.0494659   0.1061510
6 months    COHORTS          GUATEMALA                      Wealth Q1            NA                0.1655345   0.1124962   0.2185728
6 months    COHORTS          GUATEMALA                      Wealth Q2            NA                0.1458320   0.0953551   0.1963090
6 months    COHORTS          GUATEMALA                      Wealth Q3            NA                0.1620686   0.1125964   0.2115408
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0335174   0.0204157   0.0466191
6 months    COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0551362   0.0359210   0.0743515
6 months    COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0557567   0.0346878   0.0768257
6 months    COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0545520   0.0397536   0.0693505
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.0610110   0.0502465   0.0717755
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.0650217   0.0542627   0.0757807
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.0578287   0.0504630   0.0651944
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.0576364   0.0493609   0.0659120
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.0468474   0.0289754   0.0647193
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.0694004   0.0560288   0.0827720
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.0623640   0.0457863   0.0789417
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.0444458   0.0303156   0.0585761
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                0.0770777   0.0415615   0.1125938
6 months    LCNI-5           MALAWI                         Wealth Q1            NA                0.1000632   0.0589404   0.1411860
6 months    LCNI-5           MALAWI                         Wealth Q2            NA                0.0767231   0.0395517   0.1138945
6 months    LCNI-5           MALAWI                         Wealth Q3            NA                0.0649329   0.0310190   0.0988468
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.3571490   0.2601559   0.4541421
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.2647167   0.1724192   0.3570142
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3824884   0.2838840   0.4810928
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.3500076   0.2517051   0.4483102
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                0.4429838   0.3951905   0.4907770
24 months   COHORTS          GUATEMALA                      Wealth Q1            NA                0.5324810   0.4636561   0.6013058
24 months   COHORTS          GUATEMALA                      Wealth Q2            NA                0.5103776   0.4439691   0.5767861
24 months   COHORTS          GUATEMALA                      Wealth Q3            NA                0.5045415   0.4369095   0.5721735
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2309214   0.2009842   0.2608587
24 months   COHORTS          PHILIPPINES                    Wealth Q1            NA                0.3550146   0.3105521   0.3994770
24 months   COHORTS          PHILIPPINES                    Wealth Q2            NA                0.3083115   0.2641104   0.3525127
24 months   COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2826062   0.2524644   0.3127480
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0806452   0.0326703   0.1286200
24 months   GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1721311   0.1050772   0.2391851
24 months   GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1250000   0.0676481   0.1823519
24 months   GMS-Nepal        NEPAL                          Wealth Q3            NA                0.0526316   0.0115995   0.0936637
24 months   IRC              INDIA                          Wealth Q4            NA                0.0500000   0.0072313   0.0927687
24 months   IRC              INDIA                          Wealth Q1            NA                0.1428571   0.0758436   0.2098707
24 months   IRC              INDIA                          Wealth Q2            NA                0.0990099   0.0406898   0.1573300
24 months   IRC              INDIA                          Wealth Q3            NA                0.1067961   0.0470769   0.1665153
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                0.1362934   0.1139021   0.1586846
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            NA                0.1591031   0.1411600   0.1770462
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            NA                0.1577008   0.1407277   0.1746739
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            NA                0.1529375   0.1350969   0.1707780
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                0.0869103   0.0634985   0.1103222
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            NA                0.1295351   0.1061720   0.1528981
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            NA                0.1011065   0.0790318   0.1231812
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            NA                0.0778709   0.0596967   0.0960450
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                0.1125000   0.0634965   0.1615035
24 months   LCNI-5           MALAWI                         Wealth Q1            NA                0.1472868   0.0860778   0.2084958
24 months   LCNI-5           MALAWI                         Wealth Q2            NA                0.1575342   0.0983898   0.2166787
24 months   LCNI-5           MALAWI                         Wealth Q3            NA                0.0647482   0.0238035   0.1056929
24 months   MAL-ED           INDIA                          Wealth Q4            NA                0.0847458   0.0135243   0.1559672
24 months   MAL-ED           INDIA                          Wealth Q1            NA                0.1730769   0.0700247   0.2761291
24 months   MAL-ED           INDIA                          Wealth Q2            NA                0.1724138   0.0749854   0.2698422
24 months   MAL-ED           INDIA                          Wealth Q3            NA                0.1034483   0.0248990   0.1819975
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.3492063   0.2312130   0.4671997
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2142857   0.0619453   0.3666261
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.3064516   0.1914276   0.4214757
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.3770492   0.2551429   0.4989555
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                0.1487603   0.0853002   0.2122205
24 months   PROVIDE          BANGLADESH                     Wealth Q1            NA                0.0774194   0.0353094   0.1195294
24 months   PROVIDE          BANGLADESH                     Wealth Q2            NA                0.0382166   0.0082015   0.0682316
24 months   PROVIDE          BANGLADESH                     Wealth Q3            NA                0.1103448   0.0593029   0.1613867


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.0150869   0.0107594   0.0194144
Birth       GMS-Nepal        NEPAL                          NA                   NA                0.0445402   0.0292033   0.0598771
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.1091201   0.1045627   0.1136775
Birth       JiVitA-4         BANGLADESH                     NA                   NA                0.0826241   0.0709364   0.0943118
6 months    COHORTS          GUATEMALA                      NA                   NA                0.1286486   0.1070607   0.1502366
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0487445   0.0406327   0.0568562
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0606439   0.0567894   0.0644985
6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.0561658   0.0493946   0.0629370
6 months    LCNI-5           MALAWI                         NA                   NA                0.0796569   0.0610679   0.0982459
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.3369272   0.2887662   0.3850883
24 months   COHORTS          GUATEMALA                      NA                   NA                0.4888889   0.4584204   0.5193574
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.2891616   0.2711872   0.3071359
24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1086066   0.0809724   0.1362407
24 months   IRC              INDIA                          NA                   NA                0.1002445   0.0711031   0.1293859
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1559782   0.1472336   0.1647228
24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.0952180   0.0856733   0.1047628
24 months   LCNI-5           MALAWI                         NA                   NA                0.1202091   0.0935816   0.1468365
24 months   MAL-ED           INDIA                          NA                   NA                0.1321586   0.0880054   0.1763117
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3271028   0.2640978   0.3901078
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0899654   0.0666186   0.1133122


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.1010605   0.8316064   5.308347
Birth       COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         3.1301115   1.2713841   7.706246
Birth       COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.5923771   0.6381739   3.973313
Birth       GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.7414286   0.2625388   2.093848
Birth       GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.6214080   0.2072326   1.863355
Birth       GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.4913793   0.6247405   3.560218
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.0056562   0.9701792   1.042430
Birth       JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.0128461   0.9787167   1.048166
Birth       JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.0060636   0.9711870   1.042193
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.0359129   0.8841874   1.213674
Birth       JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.0324843   0.8928583   1.193945
Birth       JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         1.0274233   0.8799344   1.199633
6 months    COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         2.1274608   1.3133709   3.446162
6 months    COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.8742432   1.1343136   3.096840
6 months    COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.0829166   1.2961718   3.347196
6 months    COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.6450039   0.9745228   2.776782
6 months    COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.6635168   0.9658672   2.865081
6 months    COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.6275746   1.0113331   2.619314
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.0657369   0.8426444   1.347894
6 months    JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         0.9478405   0.7706057   1.165838
6 months    JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         0.9446890   0.7536635   1.184132
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.4814157   0.9666712   2.270257
6 months    JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.3312175   0.8400105   2.109664
6 months    JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         0.9487369   0.5754562   1.564153
6 months    LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.2982125   0.7013301   2.403085
6 months    LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         0.9953999   0.5109198   1.939288
6 months    LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.8424344   0.4209316   1.686012
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.7411941   0.4762170   1.153610
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0709492   0.7361039   1.558112
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9800046   0.6635549   1.447369
24 months   COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2020327   1.0171497   1.420521
24 months   COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1521361   0.9744321   1.362248
24 months   COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1389616   0.9602199   1.350976
24 months   COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.5373825   1.2863857   1.837353
24 months   COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.3351360   1.1037696   1.615000
24 months   COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.2238197   1.0379935   1.442913
24 months   GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         2.1344262   1.0482404   4.346117
24 months   GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.5500000   0.7312408   3.285512
24 months   GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.6526316   0.2447796   1.740047
24 months   IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   IRC              INDIA                          Wealth Q1            Wealth Q4         2.8571429   1.0770898   7.579002
24 months   IRC              INDIA                          Wealth Q2            Wealth Q4         1.9801980   0.7009124   5.594400
24 months   IRC              INDIA                          Wealth Q3            Wealth Q4         2.1359223   0.7687111   5.934823
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   JiVitA-3         BANGLADESH                     Wealth Q1            Wealth Q4         1.1673575   0.9650733   1.412041
24 months   JiVitA-3         BANGLADESH                     Wealth Q2            Wealth Q4         1.1570686   0.9510040   1.407784
24 months   JiVitA-3         BANGLADESH                     Wealth Q3            Wealth Q4         1.1221197   0.9189178   1.370256
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   JiVitA-4         BANGLADESH                     Wealth Q1            Wealth Q4         1.4904451   1.0784616   2.059811
24 months   JiVitA-4         BANGLADESH                     Wealth Q2            Wealth Q4         1.1633425   0.8183823   1.653709
24 months   JiVitA-4         BANGLADESH                     Wealth Q3            Wealth Q4         0.8959911   0.6331610   1.267924
24 months   LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.3092162   0.7170561   2.390395
24 months   LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.4003044   0.7879136   2.488664
24 months   LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.5755396   0.2670505   1.240387
24 months   MAL-ED           INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   MAL-ED           INDIA                          Wealth Q1            Wealth Q4         2.0423077   0.7291499   5.720388
24 months   MAL-ED           INDIA                          Wealth Q2            Wealth Q4         2.0344828   0.7389799   5.601127
24 months   MAL-ED           INDIA                          Wealth Q3            Wealth Q4         1.2206897   0.3932887   3.788777
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6136364   0.2792950   1.348214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8775660   0.5296023   1.454152
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.0797317   0.6764175   1.723522
24 months   PROVIDE          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   PROVIDE          BANGLADESH                     Wealth Q1            Wealth Q4         0.5204301   0.2607083   1.038891
24 months   PROVIDE          BANGLADESH                     Wealth Q2            Wealth Q4         0.2569002   0.1051006   0.627948
24 months   PROVIDE          BANGLADESH                     Wealth Q3            Wealth Q4         0.7417625   0.3953547   1.391691


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0067734    0.0008091    0.0127376
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0017025   -0.0286917    0.0252866
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0003973   -0.0027043    0.0034989
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0013283   -0.0062994    0.0089560
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0508402    0.0248786    0.0768017
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0152271    0.0030974    0.0273567
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0003671   -0.0101773    0.0094431
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0093184   -0.0072100    0.0258469
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                 0.0025792   -0.0281565    0.0333148
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0202218   -0.1037139    0.0632704
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0459051    0.0085856    0.0832247
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0582401    0.0313236    0.0851566
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0279614   -0.0155768    0.0714996
24 months   IRC              INDIA                          Wealth Q4            NA                 0.0502445    0.0080079    0.0924811
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0196848   -0.0012400    0.0406097
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0083077   -0.0133859    0.0300014
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0077091   -0.0343817    0.0497999
24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.0474128   -0.0188079    0.1136336
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0221035   -0.1205654    0.0763583
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.0587949   -0.1125177   -0.0050722


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.4489569   -0.0865616    0.7205419
Birth       GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0382249   -0.8608391    0.4207393
Birth       JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.0036408   -0.0251960    0.0316665
Birth       JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0160766   -0.0809315    0.1043786
6 months    COHORTS          GUATEMALA                      Wealth Q4            NA                 0.3951861    0.1684370    0.5601056
6 months    COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3123857    0.0204726    0.5173046
6 months    JiVitA-3         BANGLADESH                     Wealth Q4            NA                -0.0060532   -0.1815247    0.1433585
6 months    JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.1659096   -0.1879804    0.4143786
6 months    LCNI-5           MALAWI                         Wealth Q4            NA                 0.0323788   -0.4415615    0.3505023
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0600182   -0.3392129    0.1609710
24 months   COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0938969    0.0141131    0.1672241
24 months   COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2014103    0.1039443    0.2882747
24 months   GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2574559   -0.2665087    0.5646522
24 months   IRC              INDIA                          Wealth Q4            NA                 0.5012195   -0.1084738    0.7755635
24 months   JiVitA-3         BANGLADESH                     Wealth Q4            NA                 0.1262025   -0.0187215    0.2505096
24 months   JiVitA-4         BANGLADESH                     Wealth Q4            NA                 0.0872494   -0.1713841    0.2887784
24 months   LCNI-5           MALAWI                         Wealth Q4            NA                 0.0641304   -0.3602004    0.3560862
24 months   MAL-ED           INDIA                          Wealth Q4            NA                 0.3587571   -0.3755545    0.7010715
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0675737   -0.4153226    0.1947323
24 months   PROVIDE          BANGLADESH                     Wealth Q4            NA                -0.6535283   -1.3492775   -0.1638284
