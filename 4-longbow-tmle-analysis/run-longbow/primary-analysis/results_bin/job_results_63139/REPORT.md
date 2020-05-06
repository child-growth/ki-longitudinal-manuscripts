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

**Intervention Variable:** enstunt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        enstunt    sstunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  --------  ---------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0                 0       75      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          0                 1        0      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1                 0       13      92  sstunted         
Birth       CMC-V-BCS-2002   INDIA                          1                 1        4      92  sstunted         
Birth       CMIN             BANGLADESH                     0                 0       17      26  sstunted         
Birth       CMIN             BANGLADESH                     0                 1        0      26  sstunted         
Birth       CMIN             BANGLADESH                     1                 0        3      26  sstunted         
Birth       CMIN             BANGLADESH                     1                 1        6      26  sstunted         
Birth       COHORTS          GUATEMALA                      0                 0      802     852  sstunted         
Birth       COHORTS          GUATEMALA                      0                 1        0     852  sstunted         
Birth       COHORTS          GUATEMALA                      1                 0       39     852  sstunted         
Birth       COHORTS          GUATEMALA                      1                 1       11     852  sstunted         
Birth       COHORTS          INDIA                          0                 0     5848    6640  sstunted         
Birth       COHORTS          INDIA                          0                 1        0    6640  sstunted         
Birth       COHORTS          INDIA                          1                 0      586    6640  sstunted         
Birth       COHORTS          INDIA                          1                 1      206    6640  sstunted         
Birth       COHORTS          PHILIPPINES                    0                 0     2863    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    0                 1        0    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    1                 0      141    3050  sstunted         
Birth       COHORTS          PHILIPPINES                    1                 1       46    3050  sstunted         
Birth       CONTENT          PERU                           0                 0        2       2  sstunted         
Birth       CONTENT          PERU                           0                 1        0       2  sstunted         
Birth       CONTENT          PERU                           1                 0        0       2  sstunted         
Birth       CONTENT          PERU                           1                 1        0       2  sstunted         
Birth       EE               PAKISTAN                       0                 0      140     240  sstunted         
Birth       EE               PAKISTAN                       0                 1        0     240  sstunted         
Birth       EE               PAKISTAN                       1                 0       52     240  sstunted         
Birth       EE               PAKISTAN                       1                 1       48     240  sstunted         
Birth       GMS-Nepal        NEPAL                          0                 0      574     696  sstunted         
Birth       GMS-Nepal        NEPAL                          0                 1        0     696  sstunted         
Birth       GMS-Nepal        NEPAL                          1                 0       91     696  sstunted         
Birth       GMS-Nepal        NEPAL                          1                 1       31     696  sstunted         
Birth       IRC              INDIA                          0                 0      343     388  sstunted         
Birth       IRC              INDIA                          0                 1        0     388  sstunted         
Birth       IRC              INDIA                          1                 0       29     388  sstunted         
Birth       IRC              INDIA                          1                 1       16     388  sstunted         
Birth       JiVitA-3         BANGLADESH                     0                 0    15068   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     0                 1        0   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                 0     4939   22455  sstunted         
Birth       JiVitA-3         BANGLADESH                     1                 1     2448   22455  sstunted         
Birth       JiVitA-4         BANGLADESH                     0                 0     1966    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     0                 1        0    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                 0      624    2823  sstunted         
Birth       JiVitA-4         BANGLADESH                     1                 1      233    2823  sstunted         
Birth       Keneba           GAMBIA                         0                 0     1460    1543  sstunted         
Birth       Keneba           GAMBIA                         0                 1        0    1543  sstunted         
Birth       Keneba           GAMBIA                         1                 0       54    1543  sstunted         
Birth       Keneba           GAMBIA                         1                 1       29    1543  sstunted         
Birth       MAL-ED           BANGLADESH                     0                 0      187     231  sstunted         
Birth       MAL-ED           BANGLADESH                     0                 1        0     231  sstunted         
Birth       MAL-ED           BANGLADESH                     1                 0       35     231  sstunted         
Birth       MAL-ED           BANGLADESH                     1                 1        9     231  sstunted         
Birth       MAL-ED           BRAZIL                         0                 0       56      65  sstunted         
Birth       MAL-ED           BRAZIL                         0                 1        0      65  sstunted         
Birth       MAL-ED           BRAZIL                         1                 0        6      65  sstunted         
Birth       MAL-ED           BRAZIL                         1                 1        3      65  sstunted         
Birth       MAL-ED           INDIA                          0                 0       37      47  sstunted         
Birth       MAL-ED           INDIA                          0                 1        0      47  sstunted         
Birth       MAL-ED           INDIA                          1                 0        8      47  sstunted         
Birth       MAL-ED           INDIA                          1                 1        2      47  sstunted         
Birth       MAL-ED           NEPAL                          0                 0       25      27  sstunted         
Birth       MAL-ED           NEPAL                          0                 1        0      27  sstunted         
Birth       MAL-ED           NEPAL                          1                 0        1      27  sstunted         
Birth       MAL-ED           NEPAL                          1                 1        1      27  sstunted         
Birth       MAL-ED           PERU                           0                 0      207     233  sstunted         
Birth       MAL-ED           PERU                           0                 1        0     233  sstunted         
Birth       MAL-ED           PERU                           1                 0       22     233  sstunted         
Birth       MAL-ED           PERU                           1                 1        4     233  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   0                 0      113     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   0                 1        0     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                 0        8     123  sstunted         
Birth       MAL-ED           SOUTH AFRICA                   1                 1        2     123  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      102     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        0     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       13     125  sstunted         
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1       10     125  sstunted         
Birth       NIH-Birth        BANGLADESH                     0                 0      511     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     0                 1        0     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     1                 0       78     608  sstunted         
Birth       NIH-Birth        BANGLADESH                     1                 1       19     608  sstunted         
Birth       NIH-Crypto       BANGLADESH                     0                 0      631     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     0                 1        0     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     1                 0       91     732  sstunted         
Birth       NIH-Crypto       BANGLADESH                     1                 1       10     732  sstunted         
Birth       PROBIT           BELARUS                        0                 0    13859   13893  sstunted         
Birth       PROBIT           BELARUS                        0                 1        0   13893  sstunted         
Birth       PROBIT           BELARUS                        1                 0       29   13893  sstunted         
Birth       PROBIT           BELARUS                        1                 1        5   13893  sstunted         
Birth       PROVIDE          BANGLADESH                     0                 0      491     539  sstunted         
Birth       PROVIDE          BANGLADESH                     0                 1        0     539  sstunted         
Birth       PROVIDE          BANGLADESH                     1                 0       44     539  sstunted         
Birth       PROVIDE          BANGLADESH                     1                 1        4     539  sstunted         
Birth       ResPak           PAKISTAN                       0                 0       28      42  sstunted         
Birth       ResPak           PAKISTAN                       0                 1        0      42  sstunted         
Birth       ResPak           PAKISTAN                       1                 0       12      42  sstunted         
Birth       ResPak           PAKISTAN                       1                 1        2      42  sstunted         
Birth       SAS-CompFeed     INDIA                          0                 0      903    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          0                 1        0    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          1                 0      258    1252  sstunted         
Birth       SAS-CompFeed     INDIA                          1                 1       91    1252  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       0                 0    12441   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       0                 1        0   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       1                 0      992   13875  sstunted         
Birth       ZVITAMBO         ZIMBABWE                       1                 1      442   13875  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                 0      270     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          0                 1       24     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                 0       57     369  sstunted         
6 months    CMC-V-BCS-2002   INDIA                          1                 1       18     369  sstunted         
6 months    CMIN             BANGLADESH                     0                 0      147     243  sstunted         
6 months    CMIN             BANGLADESH                     0                 1        4     243  sstunted         
6 months    CMIN             BANGLADESH                     1                 0       68     243  sstunted         
6 months    CMIN             BANGLADESH                     1                 1       24     243  sstunted         
6 months    COHORTS          GUATEMALA                      0                 0      754     961  sstunted         
6 months    COHORTS          GUATEMALA                      0                 1       55     961  sstunted         
6 months    COHORTS          GUATEMALA                      1                 0       83     961  sstunted         
6 months    COHORTS          GUATEMALA                      1                 1       69     961  sstunted         
6 months    COHORTS          INDIA                          0                 0     5919    6860  sstunted         
6 months    COHORTS          INDIA                          0                 1      129    6860  sstunted         
6 months    COHORTS          INDIA                          1                 0      630    6860  sstunted         
6 months    COHORTS          INDIA                          1                 1      182    6860  sstunted         
6 months    COHORTS          PHILIPPINES                    0                 0     2452    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    0                 1      100    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    1                 0      124    2708  sstunted         
6 months    COHORTS          PHILIPPINES                    1                 1       32    2708  sstunted         
6 months    CONTENT          PERU                           0                 0      195     215  sstunted         
6 months    CONTENT          PERU                           0                 1        0     215  sstunted         
6 months    CONTENT          PERU                           1                 0       19     215  sstunted         
6 months    CONTENT          PERU                           1                 1        1     215  sstunted         
6 months    EE               PAKISTAN                       0                 0      200     373  sstunted         
6 months    EE               PAKISTAN                       0                 1        9     373  sstunted         
6 months    EE               PAKISTAN                       1                 0       92     373  sstunted         
6 months    EE               PAKISTAN                       1                 1       72     373  sstunted         
6 months    GMS-Nepal        NEPAL                          0                 0      467     564  sstunted         
6 months    GMS-Nepal        NEPAL                          0                 1        6     564  sstunted         
6 months    GMS-Nepal        NEPAL                          1                 0       76     564  sstunted         
6 months    GMS-Nepal        NEPAL                          1                 1       15     564  sstunted         
6 months    Guatemala BSC    GUATEMALA                      0                 0      228     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      0                 1        0     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      1                 0       44     299  sstunted         
6 months    Guatemala BSC    GUATEMALA                      1                 1       27     299  sstunted         
6 months    IRC              INDIA                          0                 0      340     407  sstunted         
6 months    IRC              INDIA                          0                 1       18     407  sstunted         
6 months    IRC              INDIA                          1                 0       38     407  sstunted         
6 months    IRC              INDIA                          1                 1       11     407  sstunted         
6 months    JiVitA-3         BANGLADESH                     0                 0    11548   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     0                 1      159   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                 0     4243   16811  sstunted         
6 months    JiVitA-3         BANGLADESH                     1                 1      861   16811  sstunted         
6 months    JiVitA-4         BANGLADESH                     0                 0     3443    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     0                 1       32    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                 0     1117    4831  sstunted         
6 months    JiVitA-4         BANGLADESH                     1                 1      239    4831  sstunted         
6 months    Keneba           GAMBIA                         0                 0     1852    2089  sstunted         
6 months    Keneba           GAMBIA                         0                 1       40    2089  sstunted         
6 months    Keneba           GAMBIA                         1                 0      167    2089  sstunted         
6 months    Keneba           GAMBIA                         1                 1       30    2089  sstunted         
6 months    LCNI-5           MALAWI                         0                 0      530     839  sstunted         
6 months    LCNI-5           MALAWI                         0                 1        0     839  sstunted         
6 months    LCNI-5           MALAWI                         1                 0      238     839  sstunted         
6 months    LCNI-5           MALAWI                         1                 1       71     839  sstunted         
6 months    MAL-ED           BANGLADESH                     0                 0      202     241  sstunted         
6 months    MAL-ED           BANGLADESH                     0                 1        0     241  sstunted         
6 months    MAL-ED           BANGLADESH                     1                 0       31     241  sstunted         
6 months    MAL-ED           BANGLADESH                     1                 1        8     241  sstunted         
6 months    MAL-ED           BRAZIL                         0                 0      184     209  sstunted         
6 months    MAL-ED           BRAZIL                         0                 1        0     209  sstunted         
6 months    MAL-ED           BRAZIL                         1                 0       25     209  sstunted         
6 months    MAL-ED           BRAZIL                         1                 1        0     209  sstunted         
6 months    MAL-ED           INDIA                          0                 0      196     236  sstunted         
6 months    MAL-ED           INDIA                          0                 1        2     236  sstunted         
6 months    MAL-ED           INDIA                          1                 0       31     236  sstunted         
6 months    MAL-ED           INDIA                          1                 1        7     236  sstunted         
6 months    MAL-ED           NEPAL                          0                 0      208     236  sstunted         
6 months    MAL-ED           NEPAL                          0                 1        0     236  sstunted         
6 months    MAL-ED           NEPAL                          1                 0       27     236  sstunted         
6 months    MAL-ED           NEPAL                          1                 1        1     236  sstunted         
6 months    MAL-ED           PERU                           0                 0      237     273  sstunted         
6 months    MAL-ED           PERU                           0                 1        2     273  sstunted         
6 months    MAL-ED           PERU                           1                 0       26     273  sstunted         
6 months    MAL-ED           PERU                           1                 1        8     273  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   0                 0      224     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   0                 1        3     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                 0       24     254  sstunted         
6 months    MAL-ED           SOUTH AFRICA                   1                 1        3     254  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      203     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        5     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       30     247  sstunted         
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        9     247  sstunted         
6 months    NIH-Birth        BANGLADESH                     0                 0      437     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     0                 1       15     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     1                 0       65     537  sstunted         
6 months    NIH-Birth        BANGLADESH                     1                 1       20     537  sstunted         
6 months    NIH-Crypto       BANGLADESH                     0                 0      602     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     0                 1       11     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     1                 0       90     715  sstunted         
6 months    NIH-Crypto       BANGLADESH                     1                 1       12     715  sstunted         
6 months    PROBIT           BELARUS                        0                 0    15481   15760  sstunted         
6 months    PROBIT           BELARUS                        0                 1      163   15760  sstunted         
6 months    PROBIT           BELARUS                        1                 0      102   15760  sstunted         
6 months    PROBIT           BELARUS                        1                 1       14   15760  sstunted         
6 months    PROVIDE          BANGLADESH                     0                 0      536     604  sstunted         
6 months    PROVIDE          BANGLADESH                     0                 1        7     604  sstunted         
6 months    PROVIDE          BANGLADESH                     1                 0       54     604  sstunted         
6 months    PROVIDE          BANGLADESH                     1                 1        7     604  sstunted         
6 months    ResPak           PAKISTAN                       0                 0      146     239  sstunted         
6 months    ResPak           PAKISTAN                       0                 1       27     239  sstunted         
6 months    ResPak           PAKISTAN                       1                 0       46     239  sstunted         
6 months    ResPak           PAKISTAN                       1                 1       20     239  sstunted         
6 months    SAS-CompFeed     INDIA                          0                 0      936    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          0                 1       36    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          1                 0      272    1336  sstunted         
6 months    SAS-CompFeed     INDIA                          1                 1       92    1336  sstunted         
6 months    SAS-FoodSuppl    INDIA                          0                 0      232     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          0                 1        0     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          1                 0       94     380  sstunted         
6 months    SAS-FoodSuppl    INDIA                          1                 1       54     380  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1879    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       11    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      131    2029  sstunted         
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        8    2029  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       0                 0     7551    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       0                 1      244    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       1                 0      767    8669  sstunted         
6 months    ZVITAMBO         ZIMBABWE                       1                 1      107    8669  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                 0      209     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          0                 1       85     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                 0       37     371  sstunted         
24 months   CMC-V-BCS-2002   INDIA                          1                 1       40     371  sstunted         
24 months   CMIN             BANGLADESH                     0                 0      121     242  sstunted         
24 months   CMIN             BANGLADESH                     0                 1       32     242  sstunted         
24 months   CMIN             BANGLADESH                     1                 0       53     242  sstunted         
24 months   CMIN             BANGLADESH                     1                 1       36     242  sstunted         
24 months   COHORTS          GUATEMALA                      0                 0      447    1070  sstunted         
24 months   COHORTS          GUATEMALA                      0                 1      293    1070  sstunted         
24 months   COHORTS          GUATEMALA                      1                 0       99    1070  sstunted         
24 months   COHORTS          GUATEMALA                      1                 1      231    1070  sstunted         
24 months   COHORTS          INDIA                          0                 0     3799    5337  sstunted         
24 months   COHORTS          INDIA                          0                 1      897    5337  sstunted         
24 months   COHORTS          INDIA                          1                 0      319    5337  sstunted         
24 months   COHORTS          INDIA                          1                 1      322    5337  sstunted         
24 months   COHORTS          PHILIPPINES                    0                 0     1681    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    0                 1      629    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    1                 0       57    2445  sstunted         
24 months   COHORTS          PHILIPPINES                    1                 1       78    2445  sstunted         
24 months   CONTENT          PERU                           0                 0      147     164  sstunted         
24 months   CONTENT          PERU                           0                 1        0     164  sstunted         
24 months   CONTENT          PERU                           1                 0       16     164  sstunted         
24 months   CONTENT          PERU                           1                 1        1     164  sstunted         
24 months   EE               PAKISTAN                       0                 0       77     167  sstunted         
24 months   EE               PAKISTAN                       0                 1       23     167  sstunted         
24 months   EE               PAKISTAN                       1                 0       31     167  sstunted         
24 months   EE               PAKISTAN                       1                 1       36     167  sstunted         
24 months   GMS-Nepal        NEPAL                          0                 0      376     488  sstunted         
24 months   GMS-Nepal        NEPAL                          0                 1       30     488  sstunted         
24 months   GMS-Nepal        NEPAL                          1                 0       59     488  sstunted         
24 months   GMS-Nepal        NEPAL                          1                 1       23     488  sstunted         
24 months   IRC              INDIA                          0                 0      328     409  sstunted         
24 months   IRC              INDIA                          0                 1       30     409  sstunted         
24 months   IRC              INDIA                          1                 0       40     409  sstunted         
24 months   IRC              INDIA                          1                 1       11     409  sstunted         
24 months   JiVitA-3         BANGLADESH                     0                 0     5435    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     0                 1      507    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                 0     1850    8632  sstunted         
24 months   JiVitA-3         BANGLADESH                     1                 1      840    8632  sstunted         
24 months   JiVitA-4         BANGLADESH                     0                 0     3237    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     0                 1      159    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                 0     1062    4752  sstunted         
24 months   JiVitA-4         BANGLADESH                     1                 1      294    4752  sstunted         
24 months   Keneba           GAMBIA                         0                 0     1452    1725  sstunted         
24 months   Keneba           GAMBIA                         0                 1       97    1725  sstunted         
24 months   Keneba           GAMBIA                         1                 0      133    1725  sstunted         
24 months   Keneba           GAMBIA                         1                 1       43    1725  sstunted         
24 months   LCNI-5           MALAWI                         0                 0      365     579  sstunted         
24 months   LCNI-5           MALAWI                         0                 1       12     579  sstunted         
24 months   LCNI-5           MALAWI                         1                 0      144     579  sstunted         
24 months   LCNI-5           MALAWI                         1                 1       58     579  sstunted         
24 months   MAL-ED           BANGLADESH                     0                 0      161     212  sstunted         
24 months   MAL-ED           BANGLADESH                     0                 1       18     212  sstunted         
24 months   MAL-ED           BANGLADESH                     1                 0       23     212  sstunted         
24 months   MAL-ED           BANGLADESH                     1                 1       10     212  sstunted         
24 months   MAL-ED           BRAZIL                         0                 0      149     169  sstunted         
24 months   MAL-ED           BRAZIL                         0                 1        1     169  sstunted         
24 months   MAL-ED           BRAZIL                         1                 0       19     169  sstunted         
24 months   MAL-ED           BRAZIL                         1                 1        0     169  sstunted         
24 months   MAL-ED           INDIA                          0                 0      172     227  sstunted         
24 months   MAL-ED           INDIA                          0                 1       19     227  sstunted         
24 months   MAL-ED           INDIA                          1                 0       25     227  sstunted         
24 months   MAL-ED           INDIA                          1                 1       11     227  sstunted         
24 months   MAL-ED           NEPAL                          0                 0      199     228  sstunted         
24 months   MAL-ED           NEPAL                          0                 1        2     228  sstunted         
24 months   MAL-ED           NEPAL                          1                 0       22     228  sstunted         
24 months   MAL-ED           NEPAL                          1                 1        5     228  sstunted         
24 months   MAL-ED           PERU                           0                 0      167     201  sstunted         
24 months   MAL-ED           PERU                           0                 1        7     201  sstunted         
24 months   MAL-ED           PERU                           1                 0       19     201  sstunted         
24 months   MAL-ED           PERU                           1                 1        8     201  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   0                 0      191     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   0                 1       23     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                 0       20     238  sstunted         
24 months   MAL-ED           SOUTH AFRICA                   1                 1        4     238  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      131     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1       50     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       13     214  sstunted         
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1       20     214  sstunted         
24 months   NIH-Birth        BANGLADESH                     0                 0      296     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     0                 1       59     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     1                 0       38     429  sstunted         
24 months   NIH-Birth        BANGLADESH                     1                 1       36     429  sstunted         
24 months   NIH-Crypto       BANGLADESH                     0                 0      424     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     0                 1       20     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     1                 0       54     514  sstunted         
24 months   NIH-Crypto       BANGLADESH                     1                 1       16     514  sstunted         
24 months   PROBIT           BELARUS                        0                 0     3958    4035  sstunted         
24 months   PROBIT           BELARUS                        0                 1       64    4035  sstunted         
24 months   PROBIT           BELARUS                        1                 0       12    4035  sstunted         
24 months   PROBIT           BELARUS                        1                 1        1    4035  sstunted         
24 months   PROVIDE          BANGLADESH                     0                 0      481     578  sstunted         
24 months   PROVIDE          BANGLADESH                     0                 1       37     578  sstunted         
24 months   PROVIDE          BANGLADESH                     1                 0       45     578  sstunted         
24 months   PROVIDE          BANGLADESH                     1                 1       15     578  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0        5       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        1       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        0       6  sstunted         
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0       6  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       0                 0     1283    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       0                 1      123    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       1                 0      179    1640  sstunted         
24 months   ZVITAMBO         ZIMBABWE                       1                 1       55    1640  sstunted         


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: CMIN, country: BANGLADESH
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: Keneba, country: GAMBIA
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: Keneba, country: GAMBIA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: Keneba, country: GAMBIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMIN, country: BANGLADESH
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: PROBIT, country: BELARUS
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
