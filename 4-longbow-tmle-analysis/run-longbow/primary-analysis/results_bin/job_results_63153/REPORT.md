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

agecat      studyid          country                        hhwealth_quart    sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  ---------------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4                0       31      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q4                1        1      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1                0       15      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q1                1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2                0       19      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q2                1        1      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3                0       23      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          Wealth Q3                1        2      92  sstunted         
Birth       COHORTS          GUATEMALA                      Wealth Q4                0      291     816  sstunted         
Birth       COHORTS          GUATEMALA                      Wealth Q4                1        2     816  sstunted         
Birth       COHORTS          GUATEMALA                      Wealth Q1                0      157     816  sstunted         
Birth       COHORTS          GUATEMALA                      Wealth Q1                1        0     816  sstunted         
Birth       COHORTS          GUATEMALA                      Wealth Q2                0      158     816  sstunted         
Birth       COHORTS          GUATEMALA                      Wealth Q2                1        3     816  sstunted         
Birth       COHORTS          GUATEMALA                      Wealth Q3                0      201     816  sstunted         
Birth       COHORTS          GUATEMALA                      Wealth Q3                1        4     816  sstunted         
Birth       COHORTS          PHILIPPINES                    Wealth Q4                0      835    3049  sstunted         
Birth       COHORTS          PHILIPPINES                    Wealth Q4                1        7    3049  sstunted         
Birth       COHORTS          PHILIPPINES                    Wealth Q1                0      675    3049  sstunted         
Birth       COHORTS          PHILIPPINES                    Wealth Q1                1       12    3049  sstunted         
Birth       COHORTS          PHILIPPINES                    Wealth Q2                0      524    3049  sstunted         
Birth       COHORTS          PHILIPPINES                    Wealth Q2                1       14    3049  sstunted         
Birth       COHORTS          PHILIPPINES                    Wealth Q3                0      969    3049  sstunted         
Birth       COHORTS          PHILIPPINES                    Wealth Q3                1       13    3049  sstunted         
Birth       CONTENT          PERU                           Wealth Q4                0        0       2  sstunted         
Birth       CONTENT          PERU                           Wealth Q4                1        0       2  sstunted         
Birth       CONTENT          PERU                           Wealth Q1                0        0       2  sstunted         
Birth       CONTENT          PERU                           Wealth Q1                1        0       2  sstunted         
Birth       CONTENT          PERU                           Wealth Q2                0        1       2  sstunted         
Birth       CONTENT          PERU                           Wealth Q2                1        0       2  sstunted         
Birth       CONTENT          PERU                           Wealth Q3                0        1       2  sstunted         
Birth       CONTENT          PERU                           Wealth Q3                1        0       2  sstunted         
Birth       GMS-Nepal        NEPAL                          Wealth Q4                0      165     696  sstunted         
Birth       GMS-Nepal        NEPAL                          Wealth Q4                1        8     696  sstunted         
Birth       GMS-Nepal        NEPAL                          Wealth Q1                0      169     696  sstunted         
Birth       GMS-Nepal        NEPAL                          Wealth Q1                1        6     696  sstunted         
Birth       GMS-Nepal        NEPAL                          Wealth Q2                0      169     696  sstunted         
Birth       GMS-Nepal        NEPAL                          Wealth Q2                1        5     696  sstunted         
Birth       GMS-Nepal        NEPAL                          Wealth Q3                0      162     696  sstunted         
Birth       GMS-Nepal        NEPAL                          Wealth Q3                1       12     696  sstunted         
Birth       IRC              INDIA                          Wealth Q4                0       87     388  sstunted         
Birth       IRC              INDIA                          Wealth Q4                1        4     388  sstunted         
Birth       IRC              INDIA                          Wealth Q1                0       96     388  sstunted         
Birth       IRC              INDIA                          Wealth Q1                1        2     388  sstunted         
Birth       IRC              INDIA                          Wealth Q2                0       92     388  sstunted         
Birth       IRC              INDIA                          Wealth Q2                1        7     388  sstunted         
Birth       IRC              INDIA                          Wealth Q3                0       97     388  sstunted         
Birth       IRC              INDIA                          Wealth Q3                1        3     388  sstunted         
Birth       JiVitA-3         BANGLADESH                     Wealth Q4                0     4886   22434  sstunted         
Birth       JiVitA-3         BANGLADESH                     Wealth Q4                1      392   22434  sstunted         
Birth       JiVitA-3         BANGLADESH                     Wealth Q1                0     5028   22434  sstunted         
Birth       JiVitA-3         BANGLADESH                     Wealth Q1                1      744   22434  sstunted         
Birth       JiVitA-3         BANGLADESH                     Wealth Q2                0     5011   22434  sstunted         
Birth       JiVitA-3         BANGLADESH                     Wealth Q2                1      690   22434  sstunted         
Birth       JiVitA-3         BANGLADESH                     Wealth Q3                0     5061   22434  sstunted         
Birth       JiVitA-3         BANGLADESH                     Wealth Q3                1      622   22434  sstunted         
Birth       JiVitA-4         BANGLADESH                     Wealth Q4                0      615    2820  sstunted         
Birth       JiVitA-4         BANGLADESH                     Wealth Q4                1       39    2820  sstunted         
Birth       JiVitA-4         BANGLADESH                     Wealth Q1                0      610    2820  sstunted         
Birth       JiVitA-4         BANGLADESH                     Wealth Q1                1       75    2820  sstunted         
Birth       JiVitA-4         BANGLADESH                     Wealth Q2                0      668    2820  sstunted         
Birth       JiVitA-4         BANGLADESH                     Wealth Q2                1       54    2820  sstunted         
Birth       JiVitA-4         BANGLADESH                     Wealth Q3                0      694    2820  sstunted         
Birth       JiVitA-4         BANGLADESH                     Wealth Q3                1       65    2820  sstunted         
Birth       MAL-ED           BANGLADESH                     Wealth Q4                0       56     213  sstunted         
Birth       MAL-ED           BANGLADESH                     Wealth Q4                1        0     213  sstunted         
Birth       MAL-ED           BANGLADESH                     Wealth Q1                0       50     213  sstunted         
Birth       MAL-ED           BANGLADESH                     Wealth Q1                1        2     213  sstunted         
Birth       MAL-ED           BANGLADESH                     Wealth Q2                0       47     213  sstunted         
Birth       MAL-ED           BANGLADESH                     Wealth Q2                1        4     213  sstunted         
Birth       MAL-ED           BANGLADESH                     Wealth Q3                0       54     213  sstunted         
Birth       MAL-ED           BANGLADESH                     Wealth Q3                1        0     213  sstunted         
Birth       MAL-ED           BRAZIL                         Wealth Q4                0       10      60  sstunted         
Birth       MAL-ED           BRAZIL                         Wealth Q4                1        1      60  sstunted         
Birth       MAL-ED           BRAZIL                         Wealth Q1                0       20      60  sstunted         
Birth       MAL-ED           BRAZIL                         Wealth Q1                1        1      60  sstunted         
Birth       MAL-ED           BRAZIL                         Wealth Q2                0       16      60  sstunted         
Birth       MAL-ED           BRAZIL                         Wealth Q2                1        1      60  sstunted         
Birth       MAL-ED           BRAZIL                         Wealth Q3                0       11      60  sstunted         
Birth       MAL-ED           BRAZIL                         Wealth Q3                1        0      60  sstunted         
Birth       MAL-ED           INDIA                          Wealth Q4                0        8      41  sstunted         
Birth       MAL-ED           INDIA                          Wealth Q4                1        0      41  sstunted         
Birth       MAL-ED           INDIA                          Wealth Q1                0       13      41  sstunted         
Birth       MAL-ED           INDIA                          Wealth Q1                1        1      41  sstunted         
Birth       MAL-ED           INDIA                          Wealth Q2                0        9      41  sstunted         
Birth       MAL-ED           INDIA                          Wealth Q2                1        0      41  sstunted         
Birth       MAL-ED           INDIA                          Wealth Q3                0        9      41  sstunted         
Birth       MAL-ED           INDIA                          Wealth Q3                1        1      41  sstunted         
Birth       MAL-ED           NEPAL                          Wealth Q4                0        6      26  sstunted         
Birth       MAL-ED           NEPAL                          Wealth Q4                1        0      26  sstunted         
Birth       MAL-ED           NEPAL                          Wealth Q1                0        8      26  sstunted         
Birth       MAL-ED           NEPAL                          Wealth Q1                1        1      26  sstunted         
Birth       MAL-ED           NEPAL                          Wealth Q2                0        3      26  sstunted         
Birth       MAL-ED           NEPAL                          Wealth Q2                1        0      26  sstunted         
Birth       MAL-ED           NEPAL                          Wealth Q3                0        8      26  sstunted         
Birth       MAL-ED           NEPAL                          Wealth Q3                1        0      26  sstunted         
Birth       MAL-ED           PERU                           Wealth Q4                0       54     215  sstunted         
Birth       MAL-ED           PERU                           Wealth Q4                1        0     215  sstunted         
Birth       MAL-ED           PERU                           Wealth Q1                0       54     215  sstunted         
Birth       MAL-ED           PERU                           Wealth Q1                1        1     215  sstunted         
Birth       MAL-ED           PERU                           Wealth Q2                0       51     215  sstunted         
Birth       MAL-ED           PERU                           Wealth Q2                1        3     215  sstunted         
Birth       MAL-ED           PERU                           Wealth Q3                0       52     215  sstunted         
Birth       MAL-ED           PERU                           Wealth Q3                1        0     215  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4                0       17      96  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q4                1        0      96  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1                0       26      96  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q1                1        1      96  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2                0       24      96  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q2                1        0      96  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3                0       28      96  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   Wealth Q3                1        0      96  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0       23     120  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        3     120  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0       26     120  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        2     120  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0       30     120  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        2     120  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0       33     120  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        1     120  sstunted         
Birth       PROVIDE          BANGLADESH                     Wealth Q4                0      132     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Wealth Q4                1        0     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Wealth Q1                0      132     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Wealth Q1                1        2     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Wealth Q2                0      136     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Wealth Q2                1        0     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Wealth Q3                0      135     539  sstunted         
Birth       PROVIDE          BANGLADESH                     Wealth Q3                1        2     539  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4                0       79     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q4                1       15     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1                0       89     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q1                1        2     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2                0       83     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q2                1       11     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3                0       76     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          Wealth Q3                1       14     369  sstunted         
6 months    COHORTS          GUATEMALA                      Wealth Q4                0      313     925  sstunted         
6 months    COHORTS          GUATEMALA                      Wealth Q4                1       26     925  sstunted         
6 months    COHORTS          GUATEMALA                      Wealth Q1                0      147     925  sstunted         
6 months    COHORTS          GUATEMALA                      Wealth Q1                1       28     925  sstunted         
6 months    COHORTS          GUATEMALA                      Wealth Q2                0      165     925  sstunted         
6 months    COHORTS          GUATEMALA                      Wealth Q2                1       30     925  sstunted         
6 months    COHORTS          GUATEMALA                      Wealth Q3                0      181     925  sstunted         
6 months    COHORTS          GUATEMALA                      Wealth Q3                1       35     925  sstunted         
6 months    COHORTS          PHILIPPINES                    Wealth Q4                0      719    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    Wealth Q4                1       24    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    Wealth Q1                0      540    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    Wealth Q1                1       30    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    Wealth Q2                0      459    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    Wealth Q2                1       26    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    Wealth Q3                0      858    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    Wealth Q3                1       52    2708  sstunted         
6 months    CONTENT          PERU                           Wealth Q4                0       52     215  sstunted         
6 months    CONTENT          PERU                           Wealth Q4                1        0     215  sstunted         
6 months    CONTENT          PERU                           Wealth Q1                0       58     215  sstunted         
6 months    CONTENT          PERU                           Wealth Q1                1        1     215  sstunted         
6 months    CONTENT          PERU                           Wealth Q2                0       52     215  sstunted         
6 months    CONTENT          PERU                           Wealth Q2                1        0     215  sstunted         
6 months    CONTENT          PERU                           Wealth Q3                0       52     215  sstunted         
6 months    CONTENT          PERU                           Wealth Q3                1        0     215  sstunted         
6 months    GMS-Nepal        NEPAL                          Wealth Q4                0      138     564  sstunted         
6 months    GMS-Nepal        NEPAL                          Wealth Q4                1        2     564  sstunted         
6 months    GMS-Nepal        NEPAL                          Wealth Q1                0      130     564  sstunted         
6 months    GMS-Nepal        NEPAL                          Wealth Q1                1       11     564  sstunted         
6 months    GMS-Nepal        NEPAL                          Wealth Q2                0      144     564  sstunted         
6 months    GMS-Nepal        NEPAL                          Wealth Q2                1        4     564  sstunted         
6 months    GMS-Nepal        NEPAL                          Wealth Q3                0      131     564  sstunted         
6 months    GMS-Nepal        NEPAL                          Wealth Q3                1        4     564  sstunted         
6 months    IRC              INDIA                          Wealth Q4                0       92     407  sstunted         
6 months    IRC              INDIA                          Wealth Q4                1        7     407  sstunted         
6 months    IRC              INDIA                          Wealth Q1                0       95     407  sstunted         
6 months    IRC              INDIA                          Wealth Q1                1       10     407  sstunted         
6 months    IRC              INDIA                          Wealth Q2                0       92     407  sstunted         
6 months    IRC              INDIA                          Wealth Q2                1        8     407  sstunted         
6 months    IRC              INDIA                          Wealth Q3                0       99     407  sstunted         
6 months    IRC              INDIA                          Wealth Q3                1        4     407  sstunted         
6 months    JiVitA-3         BANGLADESH                     Wealth Q4                0     4768   16803  sstunted         
6 months    JiVitA-3         BANGLADESH                     Wealth Q4                1      216   16803  sstunted         
6 months    JiVitA-3         BANGLADESH                     Wealth Q1                0     3304   16803  sstunted         
6 months    JiVitA-3         BANGLADESH                     Wealth Q1                1      282   16803  sstunted         
6 months    JiVitA-3         BANGLADESH                     Wealth Q2                0     3638   16803  sstunted         
6 months    JiVitA-3         BANGLADESH                     Wealth Q2                1      269   16803  sstunted         
6 months    JiVitA-3         BANGLADESH                     Wealth Q3                0     4074   16803  sstunted         
6 months    JiVitA-3         BANGLADESH                     Wealth Q3                1      252   16803  sstunted         
6 months    JiVitA-4         BANGLADESH                     Wealth Q4                0     1156    4825  sstunted         
6 months    JiVitA-4         BANGLADESH                     Wealth Q4                1       43    4825  sstunted         
6 months    JiVitA-4         BANGLADESH                     Wealth Q1                0     1096    4825  sstunted         
6 months    JiVitA-4         BANGLADESH                     Wealth Q1                1      100    4825  sstunted         
6 months    JiVitA-4         BANGLADESH                     Wealth Q2                0     1124    4825  sstunted         
6 months    JiVitA-4         BANGLADESH                     Wealth Q2                1       77    4825  sstunted         
6 months    JiVitA-4         BANGLADESH                     Wealth Q3                0     1178    4825  sstunted         
6 months    JiVitA-4         BANGLADESH                     Wealth Q3                1       51    4825  sstunted         
6 months    LCNI-5           MALAWI                         Wealth Q4                0      201     816  sstunted         
6 months    LCNI-5           MALAWI                         Wealth Q4                1       16     816  sstunted         
6 months    LCNI-5           MALAWI                         Wealth Q1                0      182     816  sstunted         
6 months    LCNI-5           MALAWI                         Wealth Q1                1       21     816  sstunted         
6 months    LCNI-5           MALAWI                         Wealth Q2                0      184     816  sstunted         
6 months    LCNI-5           MALAWI                         Wealth Q2                1       15     816  sstunted         
6 months    LCNI-5           MALAWI                         Wealth Q3                0      184     816  sstunted         
6 months    LCNI-5           MALAWI                         Wealth Q3                1       13     816  sstunted         
6 months    MAL-ED           BANGLADESH                     Wealth Q4                0       59     240  sstunted         
6 months    MAL-ED           BANGLADESH                     Wealth Q4                1        2     240  sstunted         
6 months    MAL-ED           BANGLADESH                     Wealth Q1                0       56     240  sstunted         
6 months    MAL-ED           BANGLADESH                     Wealth Q1                1        3     240  sstunted         
6 months    MAL-ED           BANGLADESH                     Wealth Q2                0       59     240  sstunted         
6 months    MAL-ED           BANGLADESH                     Wealth Q2                1        2     240  sstunted         
6 months    MAL-ED           BANGLADESH                     Wealth Q3                0       58     240  sstunted         
6 months    MAL-ED           BANGLADESH                     Wealth Q3                1        1     240  sstunted         
6 months    MAL-ED           BRAZIL                         Wealth Q4                0       53     209  sstunted         
6 months    MAL-ED           BRAZIL                         Wealth Q4                1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         Wealth Q1                0       53     209  sstunted         
6 months    MAL-ED           BRAZIL                         Wealth Q1                1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         Wealth Q2                0       52     209  sstunted         
6 months    MAL-ED           BRAZIL                         Wealth Q2                1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         Wealth Q3                0       51     209  sstunted         
6 months    MAL-ED           BRAZIL                         Wealth Q3                1        0     209  sstunted         
6 months    MAL-ED           INDIA                          Wealth Q4                0       59     235  sstunted         
6 months    MAL-ED           INDIA                          Wealth Q4                1        0     235  sstunted         
6 months    MAL-ED           INDIA                          Wealth Q1                0       56     235  sstunted         
6 months    MAL-ED           INDIA                          Wealth Q1                1        4     235  sstunted         
6 months    MAL-ED           INDIA                          Wealth Q2                0       54     235  sstunted         
6 months    MAL-ED           INDIA                          Wealth Q2                1        4     235  sstunted         
6 months    MAL-ED           INDIA                          Wealth Q3                0       57     235  sstunted         
6 months    MAL-ED           INDIA                          Wealth Q3                1        1     235  sstunted         
6 months    MAL-ED           NEPAL                          Wealth Q4                0       59     236  sstunted         
6 months    MAL-ED           NEPAL                          Wealth Q4                1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          Wealth Q1                0       58     236  sstunted         
6 months    MAL-ED           NEPAL                          Wealth Q1                1        1     236  sstunted         
6 months    MAL-ED           NEPAL                          Wealth Q2                0       59     236  sstunted         
6 months    MAL-ED           NEPAL                          Wealth Q2                1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          Wealth Q3                0       59     236  sstunted         
6 months    MAL-ED           NEPAL                          Wealth Q3                1        0     236  sstunted         
6 months    MAL-ED           PERU                           Wealth Q4                0       64     270  sstunted         
6 months    MAL-ED           PERU                           Wealth Q4                1        3     270  sstunted         
6 months    MAL-ED           PERU                           Wealth Q1                0       66     270  sstunted         
6 months    MAL-ED           PERU                           Wealth Q1                1        2     270  sstunted         
6 months    MAL-ED           PERU                           Wealth Q2                0       69     270  sstunted         
6 months    MAL-ED           PERU                           Wealth Q2                1        2     270  sstunted         
6 months    MAL-ED           PERU                           Wealth Q3                0       61     270  sstunted         
6 months    MAL-ED           PERU                           Wealth Q3                1        3     270  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4                0       61     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q4                1        1     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1                0       56     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q1                1        4     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2                0       63     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q2                1        1     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3                0       63     249  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   Wealth Q3                1        0     249  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0       59     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        4     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0       59     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        4     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0       58     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        3     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0       57     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        3     247  sstunted         
6 months    PROVIDE          BANGLADESH                     Wealth Q4                0      129     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Wealth Q4                1        6     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Wealth Q1                0      154     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Wealth Q1                1        2     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Wealth Q2                0      163     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Wealth Q2                1        1     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Wealth Q3                0      144     604  sstunted         
6 months    PROVIDE          BANGLADESH                     Wealth Q3                1        5     604  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0      497    2020  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        5    2020  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0      598    2020  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        7    2020  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0      403    2020  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        6    2020  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0      503    2020  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        1    2020  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                0       60     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q4                1       34     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                0       68     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q1                1       23     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                0       59     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q2                1       36     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                0       59     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          Wealth Q3                1       32     371  sstunted         
24 months   COHORTS          GUATEMALA                      Wealth Q4                0      230    1035  sstunted         
24 months   COHORTS          GUATEMALA                      Wealth Q4                1      172    1035  sstunted         
24 months   COHORTS          GUATEMALA                      Wealth Q1                0       89    1035  sstunted         
24 months   COHORTS          GUATEMALA                      Wealth Q1                1      113    1035  sstunted         
24 months   COHORTS          GUATEMALA                      Wealth Q2                0      100    1035  sstunted         
24 months   COHORTS          GUATEMALA                      Wealth Q2                1      112    1035  sstunted         
24 months   COHORTS          GUATEMALA                      Wealth Q3                0      110    1035  sstunted         
24 months   COHORTS          GUATEMALA                      Wealth Q3                1      109    1035  sstunted         
24 months   COHORTS          PHILIPPINES                    Wealth Q4                0      568    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    Wealth Q4                1      120    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    Wealth Q1                0      307    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    Wealth Q1                1      182    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    Wealth Q2                0      281    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    Wealth Q2                1      142    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    Wealth Q3                0      582    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    Wealth Q3                1      263    2445  sstunted         
24 months   CONTENT          PERU                           Wealth Q4                0       41     164  sstunted         
24 months   CONTENT          PERU                           Wealth Q4                1        0     164  sstunted         
24 months   CONTENT          PERU                           Wealth Q1                0       40     164  sstunted         
24 months   CONTENT          PERU                           Wealth Q1                1        0     164  sstunted         
24 months   CONTENT          PERU                           Wealth Q2                0       42     164  sstunted         
24 months   CONTENT          PERU                           Wealth Q2                1        0     164  sstunted         
24 months   CONTENT          PERU                           Wealth Q3                0       40     164  sstunted         
24 months   CONTENT          PERU                           Wealth Q3                1        1     164  sstunted         
24 months   GMS-Nepal        NEPAL                          Wealth Q4                0      114     488  sstunted         
24 months   GMS-Nepal        NEPAL                          Wealth Q4                1       10     488  sstunted         
24 months   GMS-Nepal        NEPAL                          Wealth Q1                0      101     488  sstunted         
24 months   GMS-Nepal        NEPAL                          Wealth Q1                1       21     488  sstunted         
24 months   GMS-Nepal        NEPAL                          Wealth Q2                0      112     488  sstunted         
24 months   GMS-Nepal        NEPAL                          Wealth Q2                1       16     488  sstunted         
24 months   GMS-Nepal        NEPAL                          Wealth Q3                0      108     488  sstunted         
24 months   GMS-Nepal        NEPAL                          Wealth Q3                1        6     488  sstunted         
24 months   IRC              INDIA                          Wealth Q4                0       95     409  sstunted         
24 months   IRC              INDIA                          Wealth Q4                1        5     409  sstunted         
24 months   IRC              INDIA                          Wealth Q1                0       90     409  sstunted         
24 months   IRC              INDIA                          Wealth Q1                1       15     409  sstunted         
24 months   IRC              INDIA                          Wealth Q2                0       91     409  sstunted         
24 months   IRC              INDIA                          Wealth Q2                1       10     409  sstunted         
24 months   IRC              INDIA                          Wealth Q3                0       92     409  sstunted         
24 months   IRC              INDIA                          Wealth Q3                1       11     409  sstunted         
24 months   JiVitA-3         BANGLADESH                     Wealth Q4                0     2138    8623  sstunted         
24 months   JiVitA-3         BANGLADESH                     Wealth Q4                1      228    8623  sstunted         
24 months   JiVitA-3         BANGLADESH                     Wealth Q1                0     1586    8623  sstunted         
24 months   JiVitA-3         BANGLADESH                     Wealth Q1                1      415    8623  sstunted         
24 months   JiVitA-3         BANGLADESH                     Wealth Q2                0     1727    8623  sstunted         
24 months   JiVitA-3         BANGLADESH                     Wealth Q2                1      379    8623  sstunted         
24 months   JiVitA-3         BANGLADESH                     Wealth Q3                0     1827    8623  sstunted         
24 months   JiVitA-3         BANGLADESH                     Wealth Q3                1      323    8623  sstunted         
24 months   JiVitA-4         BANGLADESH                     Wealth Q4                0     1125    4747  sstunted         
24 months   JiVitA-4         BANGLADESH                     Wealth Q4                1       68    4747  sstunted         
24 months   JiVitA-4         BANGLADESH                     Wealth Q1                0      992    4747  sstunted         
24 months   JiVitA-4         BANGLADESH                     Wealth Q1                1      164    4747  sstunted         
24 months   JiVitA-4         BANGLADESH                     Wealth Q2                0     1052    4747  sstunted         
24 months   JiVitA-4         BANGLADESH                     Wealth Q2                1      121    4747  sstunted         
24 months   JiVitA-4         BANGLADESH                     Wealth Q3                0     1126    4747  sstunted         
24 months   JiVitA-4         BANGLADESH                     Wealth Q3                1       99    4747  sstunted         
24 months   LCNI-5           MALAWI                         Wealth Q4                0      142     574  sstunted         
24 months   LCNI-5           MALAWI                         Wealth Q4                1       18     574  sstunted         
24 months   LCNI-5           MALAWI                         Wealth Q1                0      110     574  sstunted         
24 months   LCNI-5           MALAWI                         Wealth Q1                1       19     574  sstunted         
24 months   LCNI-5           MALAWI                         Wealth Q2                0      123     574  sstunted         
24 months   LCNI-5           MALAWI                         Wealth Q2                1       23     574  sstunted         
24 months   LCNI-5           MALAWI                         Wealth Q3                0      130     574  sstunted         
24 months   LCNI-5           MALAWI                         Wealth Q3                1        9     574  sstunted         
24 months   MAL-ED           BANGLADESH                     Wealth Q4                0       58     212  sstunted         
24 months   MAL-ED           BANGLADESH                     Wealth Q4                1        3     212  sstunted         
24 months   MAL-ED           BANGLADESH                     Wealth Q1                0       28     212  sstunted         
24 months   MAL-ED           BANGLADESH                     Wealth Q1                1        2     212  sstunted         
24 months   MAL-ED           BANGLADESH                     Wealth Q2                0       46     212  sstunted         
24 months   MAL-ED           BANGLADESH                     Wealth Q2                1       15     212  sstunted         
24 months   MAL-ED           BANGLADESH                     Wealth Q3                0       52     212  sstunted         
24 months   MAL-ED           BANGLADESH                     Wealth Q3                1        8     212  sstunted         
24 months   MAL-ED           BRAZIL                         Wealth Q4                0       53     169  sstunted         
24 months   MAL-ED           BRAZIL                         Wealth Q4                1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         Wealth Q1                0       26     169  sstunted         
24 months   MAL-ED           BRAZIL                         Wealth Q1                1        0     169  sstunted         
24 months   MAL-ED           BRAZIL                         Wealth Q2                0       38     169  sstunted         
24 months   MAL-ED           BRAZIL                         Wealth Q2                1        1     169  sstunted         
24 months   MAL-ED           BRAZIL                         Wealth Q3                0       51     169  sstunted         
24 months   MAL-ED           BRAZIL                         Wealth Q3                1        0     169  sstunted         
24 months   MAL-ED           INDIA                          Wealth Q4                0       54     227  sstunted         
24 months   MAL-ED           INDIA                          Wealth Q4                1        5     227  sstunted         
24 months   MAL-ED           INDIA                          Wealth Q1                0       43     227  sstunted         
24 months   MAL-ED           INDIA                          Wealth Q1                1        9     227  sstunted         
24 months   MAL-ED           INDIA                          Wealth Q2                0       48     227  sstunted         
24 months   MAL-ED           INDIA                          Wealth Q2                1       10     227  sstunted         
24 months   MAL-ED           INDIA                          Wealth Q3                0       52     227  sstunted         
24 months   MAL-ED           INDIA                          Wealth Q3                1        6     227  sstunted         
24 months   MAL-ED           NEPAL                          Wealth Q4                0       56     228  sstunted         
24 months   MAL-ED           NEPAL                          Wealth Q4                1        3     228  sstunted         
24 months   MAL-ED           NEPAL                          Wealth Q1                0       54     228  sstunted         
24 months   MAL-ED           NEPAL                          Wealth Q1                1        1     228  sstunted         
24 months   MAL-ED           NEPAL                          Wealth Q2                0       55     228  sstunted         
24 months   MAL-ED           NEPAL                          Wealth Q2                1        0     228  sstunted         
24 months   MAL-ED           NEPAL                          Wealth Q3                0       56     228  sstunted         
24 months   MAL-ED           NEPAL                          Wealth Q3                1        3     228  sstunted         
24 months   MAL-ED           PERU                           Wealth Q4                0       62     201  sstunted         
24 months   MAL-ED           PERU                           Wealth Q4                1        3     201  sstunted         
24 months   MAL-ED           PERU                           Wealth Q1                0       40     201  sstunted         
24 months   MAL-ED           PERU                           Wealth Q1                1        2     201  sstunted         
24 months   MAL-ED           PERU                           Wealth Q2                0       35     201  sstunted         
24 months   MAL-ED           PERU                           Wealth Q2                1        3     201  sstunted         
24 months   MAL-ED           PERU                           Wealth Q3                0       49     201  sstunted         
24 months   MAL-ED           PERU                           Wealth Q3                1        7     201  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                0       60     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q4                1        3     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                0       41     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q1                1        8     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                0       52     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q2                1       11     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                0       58     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   Wealth Q3                1        5     238  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0       41     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1       22     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0       22     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        6     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0       43     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1       19     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0       38     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1       23     214  sstunted         
24 months   PROVIDE          BANGLADESH                     Wealth Q4                0      103     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Wealth Q4                1       18     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Wealth Q1                0      143     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Wealth Q1                1       12     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Wealth Q2                0      151     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Wealth Q2                1        6     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Wealth Q3                0      129     578  sstunted         
24 months   PROVIDE          BANGLADESH                     Wealth Q3                1       16     578  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0        4       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        0       6  sstunted         


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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
