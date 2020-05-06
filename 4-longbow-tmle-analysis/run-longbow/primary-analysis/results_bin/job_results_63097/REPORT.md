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

agecat      studyid          country                        enstunt    stunted   n_cell       n  outcome_variable 
----------  ---------------  -----------------------------  --------  --------  -------  ------  -----------------
Birth       CMC-V-BCS-2002   INDIA                          0                0       75      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          0                1        0      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1                0        0      92  stunted          
Birth       CMC-V-BCS-2002   INDIA                          1                1       17      92  stunted          
Birth       CMIN             BANGLADESH                     0                0       17      26  stunted          
Birth       CMIN             BANGLADESH                     0                1        0      26  stunted          
Birth       CMIN             BANGLADESH                     1                0        0      26  stunted          
Birth       CMIN             BANGLADESH                     1                1        9      26  stunted          
Birth       COHORTS          GUATEMALA                      0                0      802     852  stunted          
Birth       COHORTS          GUATEMALA                      0                1        0     852  stunted          
Birth       COHORTS          GUATEMALA                      1                0        0     852  stunted          
Birth       COHORTS          GUATEMALA                      1                1       50     852  stunted          
Birth       COHORTS          INDIA                          0                0     5848    6640  stunted          
Birth       COHORTS          INDIA                          0                1        0    6640  stunted          
Birth       COHORTS          INDIA                          1                0        0    6640  stunted          
Birth       COHORTS          INDIA                          1                1      792    6640  stunted          
Birth       COHORTS          PHILIPPINES                    0                0     2863    3050  stunted          
Birth       COHORTS          PHILIPPINES                    0                1        0    3050  stunted          
Birth       COHORTS          PHILIPPINES                    1                0        0    3050  stunted          
Birth       COHORTS          PHILIPPINES                    1                1      187    3050  stunted          
Birth       CONTENT          PERU                           0                0        2       2  stunted          
Birth       CONTENT          PERU                           0                1        0       2  stunted          
Birth       CONTENT          PERU                           1                0        0       2  stunted          
Birth       CONTENT          PERU                           1                1        0       2  stunted          
Birth       EE               PAKISTAN                       0                0      140     240  stunted          
Birth       EE               PAKISTAN                       0                1        0     240  stunted          
Birth       EE               PAKISTAN                       1                0        0     240  stunted          
Birth       EE               PAKISTAN                       1                1      100     240  stunted          
Birth       GMS-Nepal        NEPAL                          0                0      574     696  stunted          
Birth       GMS-Nepal        NEPAL                          0                1        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          1                0        0     696  stunted          
Birth       GMS-Nepal        NEPAL                          1                1      122     696  stunted          
Birth       IRC              INDIA                          0                0      343     388  stunted          
Birth       IRC              INDIA                          0                1        0     388  stunted          
Birth       IRC              INDIA                          1                0        0     388  stunted          
Birth       IRC              INDIA                          1                1       45     388  stunted          
Birth       JiVitA-3         BANGLADESH                     0                0    15068   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     0                1        0   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     1                0        0   22455  stunted          
Birth       JiVitA-3         BANGLADESH                     1                1     7387   22455  stunted          
Birth       JiVitA-4         BANGLADESH                     0                0     1966    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     0                1        0    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     1                0        0    2823  stunted          
Birth       JiVitA-4         BANGLADESH                     1                1      857    2823  stunted          
Birth       Keneba           GAMBIA                         0                0     1460    1543  stunted          
Birth       Keneba           GAMBIA                         0                1        0    1543  stunted          
Birth       Keneba           GAMBIA                         1                0        0    1543  stunted          
Birth       Keneba           GAMBIA                         1                1       83    1543  stunted          
Birth       MAL-ED           BANGLADESH                     0                0      187     231  stunted          
Birth       MAL-ED           BANGLADESH                     0                1        0     231  stunted          
Birth       MAL-ED           BANGLADESH                     1                0        0     231  stunted          
Birth       MAL-ED           BANGLADESH                     1                1       44     231  stunted          
Birth       MAL-ED           BRAZIL                         0                0       56      65  stunted          
Birth       MAL-ED           BRAZIL                         0                1        0      65  stunted          
Birth       MAL-ED           BRAZIL                         1                0        0      65  stunted          
Birth       MAL-ED           BRAZIL                         1                1        9      65  stunted          
Birth       MAL-ED           INDIA                          0                0       37      47  stunted          
Birth       MAL-ED           INDIA                          0                1        0      47  stunted          
Birth       MAL-ED           INDIA                          1                0        0      47  stunted          
Birth       MAL-ED           INDIA                          1                1       10      47  stunted          
Birth       MAL-ED           NEPAL                          0                0       25      27  stunted          
Birth       MAL-ED           NEPAL                          0                1        0      27  stunted          
Birth       MAL-ED           NEPAL                          1                0        0      27  stunted          
Birth       MAL-ED           NEPAL                          1                1        2      27  stunted          
Birth       MAL-ED           PERU                           0                0      207     233  stunted          
Birth       MAL-ED           PERU                           0                1        0     233  stunted          
Birth       MAL-ED           PERU                           1                0        0     233  stunted          
Birth       MAL-ED           PERU                           1                1       26     233  stunted          
Birth       MAL-ED           SOUTH AFRICA                   0                0      113     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   0                1        0     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1                0        0     123  stunted          
Birth       MAL-ED           SOUTH AFRICA                   1                1       10     123  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      102     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1        0     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        0     125  stunted          
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1       23     125  stunted          
Birth       NIH-Birth        BANGLADESH                     0                0      511     608  stunted          
Birth       NIH-Birth        BANGLADESH                     0                1        0     608  stunted          
Birth       NIH-Birth        BANGLADESH                     1                0        0     608  stunted          
Birth       NIH-Birth        BANGLADESH                     1                1       97     608  stunted          
Birth       NIH-Crypto       BANGLADESH                     0                0      631     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     0                1        0     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     1                0        0     732  stunted          
Birth       NIH-Crypto       BANGLADESH                     1                1      101     732  stunted          
Birth       PROBIT           BELARUS                        0                0    13859   13893  stunted          
Birth       PROBIT           BELARUS                        0                1        0   13893  stunted          
Birth       PROBIT           BELARUS                        1                0        0   13893  stunted          
Birth       PROBIT           BELARUS                        1                1       34   13893  stunted          
Birth       PROVIDE          BANGLADESH                     0                0      491     539  stunted          
Birth       PROVIDE          BANGLADESH                     0                1        0     539  stunted          
Birth       PROVIDE          BANGLADESH                     1                0        0     539  stunted          
Birth       PROVIDE          BANGLADESH                     1                1       48     539  stunted          
Birth       ResPak           PAKISTAN                       0                0       28      42  stunted          
Birth       ResPak           PAKISTAN                       0                1        0      42  stunted          
Birth       ResPak           PAKISTAN                       1                0        0      42  stunted          
Birth       ResPak           PAKISTAN                       1                1       14      42  stunted          
Birth       SAS-CompFeed     INDIA                          0                0      903    1252  stunted          
Birth       SAS-CompFeed     INDIA                          0                1        0    1252  stunted          
Birth       SAS-CompFeed     INDIA                          1                0        0    1252  stunted          
Birth       SAS-CompFeed     INDIA                          1                1      349    1252  stunted          
Birth       ZVITAMBO         ZIMBABWE                       0                0    12441   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       0                1        0   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       1                0        0   13875  stunted          
Birth       ZVITAMBO         ZIMBABWE                       1                1     1434   13875  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0                0      226     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          0                1       68     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1                0       32     369  stunted          
6 months    CMC-V-BCS-2002   INDIA                          1                1       43     369  stunted          
6 months    CMIN             BANGLADESH                     0                0      123     243  stunted          
6 months    CMIN             BANGLADESH                     0                1       28     243  stunted          
6 months    CMIN             BANGLADESH                     1                0       27     243  stunted          
6 months    CMIN             BANGLADESH                     1                1       65     243  stunted          
6 months    COHORTS          GUATEMALA                      0                0      551     961  stunted          
6 months    COHORTS          GUATEMALA                      0                1      258     961  stunted          
6 months    COHORTS          GUATEMALA                      1                0       16     961  stunted          
6 months    COHORTS          GUATEMALA                      1                1      136     961  stunted          
6 months    COHORTS          INDIA                          0                0     5269    6860  stunted          
6 months    COHORTS          INDIA                          0                1      779    6860  stunted          
6 months    COHORTS          INDIA                          1                0      319    6860  stunted          
6 months    COHORTS          INDIA                          1                1      493    6860  stunted          
6 months    COHORTS          PHILIPPINES                    0                0     2082    2708  stunted          
6 months    COHORTS          PHILIPPINES                    0                1      470    2708  stunted          
6 months    COHORTS          PHILIPPINES                    1                0       54    2708  stunted          
6 months    COHORTS          PHILIPPINES                    1                1      102    2708  stunted          
6 months    CONTENT          PERU                           0                0      193     215  stunted          
6 months    CONTENT          PERU                           0                1        2     215  stunted          
6 months    CONTENT          PERU                           1                0       13     215  stunted          
6 months    CONTENT          PERU                           1                1        7     215  stunted          
6 months    EE               PAKISTAN                       0                0      152     373  stunted          
6 months    EE               PAKISTAN                       0                1       57     373  stunted          
6 months    EE               PAKISTAN                       1                0       38     373  stunted          
6 months    EE               PAKISTAN                       1                1      126     373  stunted          
6 months    GMS-Nepal        NEPAL                          0                0      402     564  stunted          
6 months    GMS-Nepal        NEPAL                          0                1       71     564  stunted          
6 months    GMS-Nepal        NEPAL                          1                0       40     564  stunted          
6 months    GMS-Nepal        NEPAL                          1                1       51     564  stunted          
6 months    Guatemala BSC    GUATEMALA                      0                0      202     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      0                1       26     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      1                0        7     299  stunted          
6 months    Guatemala BSC    GUATEMALA                      1                1       64     299  stunted          
6 months    IRC              INDIA                          0                0      285     407  stunted          
6 months    IRC              INDIA                          0                1       73     407  stunted          
6 months    IRC              INDIA                          1                0       22     407  stunted          
6 months    IRC              INDIA                          1                1       27     407  stunted          
6 months    JiVitA-3         BANGLADESH                     0                0    10285   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     0                1     1422   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     1                0     2300   16811  stunted          
6 months    JiVitA-3         BANGLADESH                     1                1     2804   16811  stunted          
6 months    JiVitA-4         BANGLADESH                     0                0     3064    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     0                1      411    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     1                0      546    4831  stunted          
6 months    JiVitA-4         BANGLADESH                     1                1      810    4831  stunted          
6 months    Keneba           GAMBIA                         0                0     1685    2089  stunted          
6 months    Keneba           GAMBIA                         0                1      207    2089  stunted          
6 months    Keneba           GAMBIA                         1                0      109    2089  stunted          
6 months    Keneba           GAMBIA                         1                1       88    2089  stunted          
6 months    LCNI-5           MALAWI                         0                0      530     839  stunted          
6 months    LCNI-5           MALAWI                         0                1        0     839  stunted          
6 months    LCNI-5           MALAWI                         1                0        0     839  stunted          
6 months    LCNI-5           MALAWI                         1                1      309     839  stunted          
6 months    MAL-ED           BANGLADESH                     0                0      180     241  stunted          
6 months    MAL-ED           BANGLADESH                     0                1       22     241  stunted          
6 months    MAL-ED           BANGLADESH                     1                0       17     241  stunted          
6 months    MAL-ED           BANGLADESH                     1                1       22     241  stunted          
6 months    MAL-ED           BRAZIL                         0                0      180     209  stunted          
6 months    MAL-ED           BRAZIL                         0                1        4     209  stunted          
6 months    MAL-ED           BRAZIL                         1                0       23     209  stunted          
6 months    MAL-ED           BRAZIL                         1                1        2     209  stunted          
6 months    MAL-ED           INDIA                          0                0      169     236  stunted          
6 months    MAL-ED           INDIA                          0                1       29     236  stunted          
6 months    MAL-ED           INDIA                          1                0       22     236  stunted          
6 months    MAL-ED           INDIA                          1                1       16     236  stunted          
6 months    MAL-ED           NEPAL                          0                0      206     236  stunted          
6 months    MAL-ED           NEPAL                          0                1        2     236  stunted          
6 months    MAL-ED           NEPAL                          1                0       18     236  stunted          
6 months    MAL-ED           NEPAL                          1                1       10     236  stunted          
6 months    MAL-ED           PERU                           0                0      200     273  stunted          
6 months    MAL-ED           PERU                           0                1       39     273  stunted          
6 months    MAL-ED           PERU                           1                0       13     273  stunted          
6 months    MAL-ED           PERU                           1                1       21     273  stunted          
6 months    MAL-ED           SOUTH AFRICA                   0                0      187     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   0                1       40     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1                0       17     254  stunted          
6 months    MAL-ED           SOUTH AFRICA                   1                1       10     254  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      174     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1       34     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       14     247  stunted          
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1       25     247  stunted          
6 months    NIH-Birth        BANGLADESH                     0                0      365     537  stunted          
6 months    NIH-Birth        BANGLADESH                     0                1       87     537  stunted          
6 months    NIH-Birth        BANGLADESH                     1                0       28     537  stunted          
6 months    NIH-Birth        BANGLADESH                     1                1       57     537  stunted          
6 months    NIH-Crypto       BANGLADESH                     0                0      517     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     0                1       96     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     1                0       48     715  stunted          
6 months    NIH-Crypto       BANGLADESH                     1                1       54     715  stunted          
6 months    PROBIT           BELARUS                        0                0    15057   15760  stunted          
6 months    PROBIT           BELARUS                        0                1      587   15760  stunted          
6 months    PROBIT           BELARUS                        1                0       83   15760  stunted          
6 months    PROBIT           BELARUS                        1                1       33   15760  stunted          
6 months    PROVIDE          BANGLADESH                     0                0      478     604  stunted          
6 months    PROVIDE          BANGLADESH                     0                1       65     604  stunted          
6 months    PROVIDE          BANGLADESH                     1                0       30     604  stunted          
6 months    PROVIDE          BANGLADESH                     1                1       31     604  stunted          
6 months    ResPak           PAKISTAN                       0                0      118     239  stunted          
6 months    ResPak           PAKISTAN                       0                1       55     239  stunted          
6 months    ResPak           PAKISTAN                       1                0       35     239  stunted          
6 months    ResPak           PAKISTAN                       1                1       31     239  stunted          
6 months    SAS-CompFeed     INDIA                          0                0      819    1336  stunted          
6 months    SAS-CompFeed     INDIA                          0                1      153    1336  stunted          
6 months    SAS-CompFeed     INDIA                          1                0      137    1336  stunted          
6 months    SAS-CompFeed     INDIA                          1                1      227    1336  stunted          
6 months    SAS-FoodSuppl    INDIA                          0                0      201     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          0                1       31     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          1                0       16     380  stunted          
6 months    SAS-FoodSuppl    INDIA                          1                1      132     380  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1754    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1      136    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0       78    2029  stunted          
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       61    2029  stunted          
6 months    ZVITAMBO         ZIMBABWE                       0                0     6733    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       0                1     1062    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       1                0      524    8669  stunted          
6 months    ZVITAMBO         ZIMBABWE                       1                1      350    8669  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0                0       89     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          0                1      205     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1                0       16     371  stunted          
24 months   CMC-V-BCS-2002   INDIA                          1                1       61     371  stunted          
24 months   CMIN             BANGLADESH                     0                0       61     242  stunted          
24 months   CMIN             BANGLADESH                     0                1       92     242  stunted          
24 months   CMIN             BANGLADESH                     1                0       16     242  stunted          
24 months   CMIN             BANGLADESH                     1                1       73     242  stunted          
24 months   COHORTS          GUATEMALA                      0                0      193    1070  stunted          
24 months   COHORTS          GUATEMALA                      0                1      547    1070  stunted          
24 months   COHORTS          GUATEMALA                      1                0        9    1070  stunted          
24 months   COHORTS          GUATEMALA                      1                1      321    1070  stunted          
24 months   COHORTS          INDIA                          0                0     2348    5337  stunted          
24 months   COHORTS          INDIA                          0                1     2348    5337  stunted          
24 months   COHORTS          INDIA                          1                0      133    5337  stunted          
24 months   COHORTS          INDIA                          1                1      508    5337  stunted          
24 months   COHORTS          PHILIPPINES                    0                0      908    2445  stunted          
24 months   COHORTS          PHILIPPINES                    0                1     1402    2445  stunted          
24 months   COHORTS          PHILIPPINES                    1                0       14    2445  stunted          
24 months   COHORTS          PHILIPPINES                    1                1      121    2445  stunted          
24 months   CONTENT          PERU                           0                0      140     164  stunted          
24 months   CONTENT          PERU                           0                1        7     164  stunted          
24 months   CONTENT          PERU                           1                0       11     164  stunted          
24 months   CONTENT          PERU                           1                1        6     164  stunted          
24 months   EE               PAKISTAN                       0                0       38     167  stunted          
24 months   EE               PAKISTAN                       0                1       62     167  stunted          
24 months   EE               PAKISTAN                       1                0       11     167  stunted          
24 months   EE               PAKISTAN                       1                1       56     167  stunted          
24 months   GMS-Nepal        NEPAL                          0                0      240     488  stunted          
24 months   GMS-Nepal        NEPAL                          0                1      166     488  stunted          
24 months   GMS-Nepal        NEPAL                          1                0       29     488  stunted          
24 months   GMS-Nepal        NEPAL                          1                1       53     488  stunted          
24 months   IRC              INDIA                          0                0      217     409  stunted          
24 months   IRC              INDIA                          0                1      141     409  stunted          
24 months   IRC              INDIA                          1                0       20     409  stunted          
24 months   IRC              INDIA                          1                1       31     409  stunted          
24 months   JiVitA-3         BANGLADESH                     0                0     3627    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     0                1     2315    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     1                0      766    8632  stunted          
24 months   JiVitA-3         BANGLADESH                     1                1     1924    8632  stunted          
24 months   JiVitA-4         BANGLADESH                     0                0     2378    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     0                1     1018    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     1                0      469    4752  stunted          
24 months   JiVitA-4         BANGLADESH                     1                1      887    4752  stunted          
24 months   Keneba           GAMBIA                         0                0     1080    1725  stunted          
24 months   Keneba           GAMBIA                         0                1      469    1725  stunted          
24 months   Keneba           GAMBIA                         1                0       64    1725  stunted          
24 months   Keneba           GAMBIA                         1                1      112    1725  stunted          
24 months   LCNI-5           MALAWI                         0                0      273     579  stunted          
24 months   LCNI-5           MALAWI                         0                1      104     579  stunted          
24 months   LCNI-5           MALAWI                         1                0       48     579  stunted          
24 months   LCNI-5           MALAWI                         1                1      154     579  stunted          
24 months   MAL-ED           BANGLADESH                     0                0      103     212  stunted          
24 months   MAL-ED           BANGLADESH                     0                1       76     212  stunted          
24 months   MAL-ED           BANGLADESH                     1                0        8     212  stunted          
24 months   MAL-ED           BANGLADESH                     1                1       25     212  stunted          
24 months   MAL-ED           BRAZIL                         0                0      144     169  stunted          
24 months   MAL-ED           BRAZIL                         0                1        6     169  stunted          
24 months   MAL-ED           BRAZIL                         1                0       18     169  stunted          
24 months   MAL-ED           BRAZIL                         1                1        1     169  stunted          
24 months   MAL-ED           INDIA                          0                0      118     227  stunted          
24 months   MAL-ED           INDIA                          0                1       73     227  stunted          
24 months   MAL-ED           INDIA                          1                0       12     227  stunted          
24 months   MAL-ED           INDIA                          1                1       24     227  stunted          
24 months   MAL-ED           NEPAL                          0                0      165     228  stunted          
24 months   MAL-ED           NEPAL                          0                1       36     228  stunted          
24 months   MAL-ED           NEPAL                          1                0       13     228  stunted          
24 months   MAL-ED           NEPAL                          1                1       14     228  stunted          
24 months   MAL-ED           PERU                           0                0      117     201  stunted          
24 months   MAL-ED           PERU                           0                1       57     201  stunted          
24 months   MAL-ED           PERU                           1                0       10     201  stunted          
24 months   MAL-ED           PERU                           1                1       17     201  stunted          
24 months   MAL-ED           SOUTH AFRICA                   0                0      139     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   0                1       75     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1                0       15     238  stunted          
24 months   MAL-ED           SOUTH AFRICA                   1                1        9     238  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0       57     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1      124     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        2     214  stunted          
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1       31     214  stunted          
24 months   NIH-Birth        BANGLADESH                     0                0      172     429  stunted          
24 months   NIH-Birth        BANGLADESH                     0                1      183     429  stunted          
24 months   NIH-Birth        BANGLADESH                     1                0       13     429  stunted          
24 months   NIH-Birth        BANGLADESH                     1                1       61     429  stunted          
24 months   NIH-Crypto       BANGLADESH                     0                0      346     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     0                1       98     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     1                0       36     514  stunted          
24 months   NIH-Crypto       BANGLADESH                     1                1       34     514  stunted          
24 months   PROBIT           BELARUS                        0                0     3750    4035  stunted          
24 months   PROBIT           BELARUS                        0                1      272    4035  stunted          
24 months   PROBIT           BELARUS                        1                0       10    4035  stunted          
24 months   PROBIT           BELARUS                        1                1        3    4035  stunted          
24 months   PROVIDE          BANGLADESH                     0                0      361     578  stunted          
24 months   PROVIDE          BANGLADESH                     0                1      157     578  stunted          
24 months   PROVIDE          BANGLADESH                     1                0       27     578  stunted          
24 months   PROVIDE          BANGLADESH                     1                1       33     578  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        5       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0       6  stunted          
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6  stunted          
24 months   ZVITAMBO         ZIMBABWE                       0                0      968    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       0                1      438    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       1                0      103    1640  stunted          
24 months   ZVITAMBO         ZIMBABWE                       1                1      131    1640  stunted          


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
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
