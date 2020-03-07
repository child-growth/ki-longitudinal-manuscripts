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

agecat      studyid          country                        enstunt    sstunted   n_cell       n
----------  ---------------  -----------------------------  --------  ---------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0                 0       75      92
Birth       CMC-V-BCS-2002   INDIA                          0                 1        0      92
Birth       CMC-V-BCS-2002   INDIA                          1                 0       13      92
Birth       CMC-V-BCS-2002   INDIA                          1                 1        4      92
Birth       CMIN             BANGLADESH                     0                 0       17      26
Birth       CMIN             BANGLADESH                     0                 1        0      26
Birth       CMIN             BANGLADESH                     1                 0        3      26
Birth       CMIN             BANGLADESH                     1                 1        6      26
Birth       COHORTS          GUATEMALA                      0                 0      802     852
Birth       COHORTS          GUATEMALA                      0                 1        0     852
Birth       COHORTS          GUATEMALA                      1                 0       39     852
Birth       COHORTS          GUATEMALA                      1                 1       11     852
Birth       COHORTS          INDIA                          0                 0     5848    6640
Birth       COHORTS          INDIA                          0                 1        0    6640
Birth       COHORTS          INDIA                          1                 0      586    6640
Birth       COHORTS          INDIA                          1                 1      206    6640
Birth       COHORTS          PHILIPPINES                    0                 0     2863    3050
Birth       COHORTS          PHILIPPINES                    0                 1        0    3050
Birth       COHORTS          PHILIPPINES                    1                 0      141    3050
Birth       COHORTS          PHILIPPINES                    1                 1       46    3050
Birth       CONTENT          PERU                           0                 0        2       2
Birth       CONTENT          PERU                           0                 1        0       2
Birth       CONTENT          PERU                           1                 0        0       2
Birth       CONTENT          PERU                           1                 1        0       2
Birth       EE               PAKISTAN                       0                 0      140     240
Birth       EE               PAKISTAN                       0                 1        0     240
Birth       EE               PAKISTAN                       1                 0       52     240
Birth       EE               PAKISTAN                       1                 1       48     240
Birth       GMS-Nepal        NEPAL                          0                 0      574     696
Birth       GMS-Nepal        NEPAL                          0                 1        0     696
Birth       GMS-Nepal        NEPAL                          1                 0       91     696
Birth       GMS-Nepal        NEPAL                          1                 1       31     696
Birth       IRC              INDIA                          0                 0      343     388
Birth       IRC              INDIA                          0                 1        0     388
Birth       IRC              INDIA                          1                 0       29     388
Birth       IRC              INDIA                          1                 1       16     388
Birth       JiVitA-3         BANGLADESH                     0                 0    15068   22455
Birth       JiVitA-3         BANGLADESH                     0                 1        0   22455
Birth       JiVitA-3         BANGLADESH                     1                 0     4939   22455
Birth       JiVitA-3         BANGLADESH                     1                 1     2448   22455
Birth       JiVitA-4         BANGLADESH                     0                 0     1966    2823
Birth       JiVitA-4         BANGLADESH                     0                 1        0    2823
Birth       JiVitA-4         BANGLADESH                     1                 0      624    2823
Birth       JiVitA-4         BANGLADESH                     1                 1      233    2823
Birth       Keneba           GAMBIA                         0                 0     1460    1543
Birth       Keneba           GAMBIA                         0                 1        0    1543
Birth       Keneba           GAMBIA                         1                 0       54    1543
Birth       Keneba           GAMBIA                         1                 1       29    1543
Birth       MAL-ED           BANGLADESH                     0                 0      187     231
Birth       MAL-ED           BANGLADESH                     0                 1        0     231
Birth       MAL-ED           BANGLADESH                     1                 0       35     231
Birth       MAL-ED           BANGLADESH                     1                 1        9     231
Birth       MAL-ED           BRAZIL                         0                 0       56      65
Birth       MAL-ED           BRAZIL                         0                 1        0      65
Birth       MAL-ED           BRAZIL                         1                 0        6      65
Birth       MAL-ED           BRAZIL                         1                 1        3      65
Birth       MAL-ED           INDIA                          0                 0       37      47
Birth       MAL-ED           INDIA                          0                 1        0      47
Birth       MAL-ED           INDIA                          1                 0        8      47
Birth       MAL-ED           INDIA                          1                 1        2      47
Birth       MAL-ED           NEPAL                          0                 0       25      27
Birth       MAL-ED           NEPAL                          0                 1        0      27
Birth       MAL-ED           NEPAL                          1                 0        1      27
Birth       MAL-ED           NEPAL                          1                 1        1      27
Birth       MAL-ED           PERU                           0                 0      207     233
Birth       MAL-ED           PERU                           0                 1        0     233
Birth       MAL-ED           PERU                           1                 0       22     233
Birth       MAL-ED           PERU                           1                 1        4     233
Birth       MAL-ED           SOUTH AFRICA                   0                 0      113     123
Birth       MAL-ED           SOUTH AFRICA                   0                 1        0     123
Birth       MAL-ED           SOUTH AFRICA                   1                 0        8     123
Birth       MAL-ED           SOUTH AFRICA                   1                 1        2     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      102     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        0     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       13     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1       10     125
Birth       NIH-Birth        BANGLADESH                     0                 0      511     608
Birth       NIH-Birth        BANGLADESH                     0                 1        0     608
Birth       NIH-Birth        BANGLADESH                     1                 0       78     608
Birth       NIH-Birth        BANGLADESH                     1                 1       19     608
Birth       NIH-Crypto       BANGLADESH                     0                 0      631     732
Birth       NIH-Crypto       BANGLADESH                     0                 1        0     732
Birth       NIH-Crypto       BANGLADESH                     1                 0       91     732
Birth       NIH-Crypto       BANGLADESH                     1                 1       10     732
Birth       PROBIT           BELARUS                        0                 0    13859   13893
Birth       PROBIT           BELARUS                        0                 1        0   13893
Birth       PROBIT           BELARUS                        1                 0       29   13893
Birth       PROBIT           BELARUS                        1                 1        5   13893
Birth       PROVIDE          BANGLADESH                     0                 0      491     539
Birth       PROVIDE          BANGLADESH                     0                 1        0     539
Birth       PROVIDE          BANGLADESH                     1                 0       44     539
Birth       PROVIDE          BANGLADESH                     1                 1        4     539
Birth       ResPak           PAKISTAN                       0                 0       28      42
Birth       ResPak           PAKISTAN                       0                 1        0      42
Birth       ResPak           PAKISTAN                       1                 0       12      42
Birth       ResPak           PAKISTAN                       1                 1        2      42
Birth       SAS-CompFeed     INDIA                          0                 0      903    1252
Birth       SAS-CompFeed     INDIA                          0                 1        0    1252
Birth       SAS-CompFeed     INDIA                          1                 0      258    1252
Birth       SAS-CompFeed     INDIA                          1                 1       91    1252
Birth       ZVITAMBO         ZIMBABWE                       0                 0    12441   13875
Birth       ZVITAMBO         ZIMBABWE                       0                 1        0   13875
Birth       ZVITAMBO         ZIMBABWE                       1                 0      992   13875
Birth       ZVITAMBO         ZIMBABWE                       1                 1      442   13875
6 months    CMC-V-BCS-2002   INDIA                          0                 0      270     369
6 months    CMC-V-BCS-2002   INDIA                          0                 1       24     369
6 months    CMC-V-BCS-2002   INDIA                          1                 0       57     369
6 months    CMC-V-BCS-2002   INDIA                          1                 1       18     369
6 months    CMIN             BANGLADESH                     0                 0      147     243
6 months    CMIN             BANGLADESH                     0                 1        4     243
6 months    CMIN             BANGLADESH                     1                 0       68     243
6 months    CMIN             BANGLADESH                     1                 1       24     243
6 months    COHORTS          GUATEMALA                      0                 0      754     961
6 months    COHORTS          GUATEMALA                      0                 1       55     961
6 months    COHORTS          GUATEMALA                      1                 0       83     961
6 months    COHORTS          GUATEMALA                      1                 1       69     961
6 months    COHORTS          INDIA                          0                 0     5919    6860
6 months    COHORTS          INDIA                          0                 1      129    6860
6 months    COHORTS          INDIA                          1                 0      630    6860
6 months    COHORTS          INDIA                          1                 1      182    6860
6 months    COHORTS          PHILIPPINES                    0                 0     2452    2708
6 months    COHORTS          PHILIPPINES                    0                 1      100    2708
6 months    COHORTS          PHILIPPINES                    1                 0      124    2708
6 months    COHORTS          PHILIPPINES                    1                 1       32    2708
6 months    CONTENT          PERU                           0                 0      195     215
6 months    CONTENT          PERU                           0                 1        0     215
6 months    CONTENT          PERU                           1                 0       19     215
6 months    CONTENT          PERU                           1                 1        1     215
6 months    EE               PAKISTAN                       0                 0      200     373
6 months    EE               PAKISTAN                       0                 1        9     373
6 months    EE               PAKISTAN                       1                 0       92     373
6 months    EE               PAKISTAN                       1                 1       72     373
6 months    GMS-Nepal        NEPAL                          0                 0      467     564
6 months    GMS-Nepal        NEPAL                          0                 1        6     564
6 months    GMS-Nepal        NEPAL                          1                 0       76     564
6 months    GMS-Nepal        NEPAL                          1                 1       15     564
6 months    Guatemala BSC    GUATEMALA                      0                 0      228     299
6 months    Guatemala BSC    GUATEMALA                      0                 1        0     299
6 months    Guatemala BSC    GUATEMALA                      1                 0       44     299
6 months    Guatemala BSC    GUATEMALA                      1                 1       27     299
6 months    IRC              INDIA                          0                 0      340     407
6 months    IRC              INDIA                          0                 1       18     407
6 months    IRC              INDIA                          1                 0       38     407
6 months    IRC              INDIA                          1                 1       11     407
6 months    JiVitA-3         BANGLADESH                     0                 0    11548   16811
6 months    JiVitA-3         BANGLADESH                     0                 1      159   16811
6 months    JiVitA-3         BANGLADESH                     1                 0     4243   16811
6 months    JiVitA-3         BANGLADESH                     1                 1      861   16811
6 months    JiVitA-4         BANGLADESH                     0                 0     3443    4831
6 months    JiVitA-4         BANGLADESH                     0                 1       32    4831
6 months    JiVitA-4         BANGLADESH                     1                 0     1117    4831
6 months    JiVitA-4         BANGLADESH                     1                 1      239    4831
6 months    Keneba           GAMBIA                         0                 0     1852    2089
6 months    Keneba           GAMBIA                         0                 1       40    2089
6 months    Keneba           GAMBIA                         1                 0      167    2089
6 months    Keneba           GAMBIA                         1                 1       30    2089
6 months    LCNI-5           MALAWI                         0                 0      530     839
6 months    LCNI-5           MALAWI                         0                 1        0     839
6 months    LCNI-5           MALAWI                         1                 0      238     839
6 months    LCNI-5           MALAWI                         1                 1       71     839
6 months    MAL-ED           BANGLADESH                     0                 0      202     241
6 months    MAL-ED           BANGLADESH                     0                 1        0     241
6 months    MAL-ED           BANGLADESH                     1                 0       31     241
6 months    MAL-ED           BANGLADESH                     1                 1        8     241
6 months    MAL-ED           BRAZIL                         0                 0      184     209
6 months    MAL-ED           BRAZIL                         0                 1        0     209
6 months    MAL-ED           BRAZIL                         1                 0       25     209
6 months    MAL-ED           BRAZIL                         1                 1        0     209
6 months    MAL-ED           INDIA                          0                 0      196     236
6 months    MAL-ED           INDIA                          0                 1        2     236
6 months    MAL-ED           INDIA                          1                 0       31     236
6 months    MAL-ED           INDIA                          1                 1        7     236
6 months    MAL-ED           NEPAL                          0                 0      208     236
6 months    MAL-ED           NEPAL                          0                 1        0     236
6 months    MAL-ED           NEPAL                          1                 0       27     236
6 months    MAL-ED           NEPAL                          1                 1        1     236
6 months    MAL-ED           PERU                           0                 0      237     273
6 months    MAL-ED           PERU                           0                 1        2     273
6 months    MAL-ED           PERU                           1                 0       26     273
6 months    MAL-ED           PERU                           1                 1        8     273
6 months    MAL-ED           SOUTH AFRICA                   0                 0      224     254
6 months    MAL-ED           SOUTH AFRICA                   0                 1        3     254
6 months    MAL-ED           SOUTH AFRICA                   1                 0       24     254
6 months    MAL-ED           SOUTH AFRICA                   1                 1        3     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      203     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1        5     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       30     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1        9     247
6 months    NIH-Birth        BANGLADESH                     0                 0      437     537
6 months    NIH-Birth        BANGLADESH                     0                 1       15     537
6 months    NIH-Birth        BANGLADESH                     1                 0       65     537
6 months    NIH-Birth        BANGLADESH                     1                 1       20     537
6 months    NIH-Crypto       BANGLADESH                     0                 0      602     715
6 months    NIH-Crypto       BANGLADESH                     0                 1       11     715
6 months    NIH-Crypto       BANGLADESH                     1                 0       90     715
6 months    NIH-Crypto       BANGLADESH                     1                 1       12     715
6 months    PROBIT           BELARUS                        0                 0    15481   15760
6 months    PROBIT           BELARUS                        0                 1      163   15760
6 months    PROBIT           BELARUS                        1                 0      102   15760
6 months    PROBIT           BELARUS                        1                 1       14   15760
6 months    PROVIDE          BANGLADESH                     0                 0      536     604
6 months    PROVIDE          BANGLADESH                     0                 1        7     604
6 months    PROVIDE          BANGLADESH                     1                 0       54     604
6 months    PROVIDE          BANGLADESH                     1                 1        7     604
6 months    ResPak           PAKISTAN                       0                 0      146     239
6 months    ResPak           PAKISTAN                       0                 1       27     239
6 months    ResPak           PAKISTAN                       1                 0       46     239
6 months    ResPak           PAKISTAN                       1                 1       20     239
6 months    SAS-CompFeed     INDIA                          0                 0      936    1336
6 months    SAS-CompFeed     INDIA                          0                 1       36    1336
6 months    SAS-CompFeed     INDIA                          1                 0      272    1336
6 months    SAS-CompFeed     INDIA                          1                 1       92    1336
6 months    SAS-FoodSuppl    INDIA                          0                 0      232     380
6 months    SAS-FoodSuppl    INDIA                          0                 1        0     380
6 months    SAS-FoodSuppl    INDIA                          1                 0       94     380
6 months    SAS-FoodSuppl    INDIA                          1                 1       54     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1879    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       11    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      131    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        8    2029
6 months    ZVITAMBO         ZIMBABWE                       0                 0     7551    8669
6 months    ZVITAMBO         ZIMBABWE                       0                 1      244    8669
6 months    ZVITAMBO         ZIMBABWE                       1                 0      767    8669
6 months    ZVITAMBO         ZIMBABWE                       1                 1      107    8669
24 months   CMC-V-BCS-2002   INDIA                          0                 0      209     371
24 months   CMC-V-BCS-2002   INDIA                          0                 1       85     371
24 months   CMC-V-BCS-2002   INDIA                          1                 0       37     371
24 months   CMC-V-BCS-2002   INDIA                          1                 1       40     371
24 months   CMIN             BANGLADESH                     0                 0      121     242
24 months   CMIN             BANGLADESH                     0                 1       32     242
24 months   CMIN             BANGLADESH                     1                 0       53     242
24 months   CMIN             BANGLADESH                     1                 1       36     242
24 months   COHORTS          GUATEMALA                      0                 0      447    1070
24 months   COHORTS          GUATEMALA                      0                 1      293    1070
24 months   COHORTS          GUATEMALA                      1                 0       99    1070
24 months   COHORTS          GUATEMALA                      1                 1      231    1070
24 months   COHORTS          INDIA                          0                 0     3799    5337
24 months   COHORTS          INDIA                          0                 1      897    5337
24 months   COHORTS          INDIA                          1                 0      319    5337
24 months   COHORTS          INDIA                          1                 1      322    5337
24 months   COHORTS          PHILIPPINES                    0                 0     1681    2445
24 months   COHORTS          PHILIPPINES                    0                 1      629    2445
24 months   COHORTS          PHILIPPINES                    1                 0       57    2445
24 months   COHORTS          PHILIPPINES                    1                 1       78    2445
24 months   CONTENT          PERU                           0                 0      147     164
24 months   CONTENT          PERU                           0                 1        0     164
24 months   CONTENT          PERU                           1                 0       16     164
24 months   CONTENT          PERU                           1                 1        1     164
24 months   EE               PAKISTAN                       0                 0       77     167
24 months   EE               PAKISTAN                       0                 1       23     167
24 months   EE               PAKISTAN                       1                 0       31     167
24 months   EE               PAKISTAN                       1                 1       36     167
24 months   GMS-Nepal        NEPAL                          0                 0      376     488
24 months   GMS-Nepal        NEPAL                          0                 1       30     488
24 months   GMS-Nepal        NEPAL                          1                 0       59     488
24 months   GMS-Nepal        NEPAL                          1                 1       23     488
24 months   IRC              INDIA                          0                 0      328     409
24 months   IRC              INDIA                          0                 1       30     409
24 months   IRC              INDIA                          1                 0       40     409
24 months   IRC              INDIA                          1                 1       11     409
24 months   JiVitA-3         BANGLADESH                     0                 0     5435    8632
24 months   JiVitA-3         BANGLADESH                     0                 1      507    8632
24 months   JiVitA-3         BANGLADESH                     1                 0     1850    8632
24 months   JiVitA-3         BANGLADESH                     1                 1      840    8632
24 months   JiVitA-4         BANGLADESH                     0                 0     3237    4752
24 months   JiVitA-4         BANGLADESH                     0                 1      159    4752
24 months   JiVitA-4         BANGLADESH                     1                 0     1062    4752
24 months   JiVitA-4         BANGLADESH                     1                 1      294    4752
24 months   Keneba           GAMBIA                         0                 0     1452    1725
24 months   Keneba           GAMBIA                         0                 1       97    1725
24 months   Keneba           GAMBIA                         1                 0      133    1725
24 months   Keneba           GAMBIA                         1                 1       43    1725
24 months   LCNI-5           MALAWI                         0                 0      365     579
24 months   LCNI-5           MALAWI                         0                 1       12     579
24 months   LCNI-5           MALAWI                         1                 0      144     579
24 months   LCNI-5           MALAWI                         1                 1       58     579
24 months   MAL-ED           BANGLADESH                     0                 0      161     212
24 months   MAL-ED           BANGLADESH                     0                 1       18     212
24 months   MAL-ED           BANGLADESH                     1                 0       23     212
24 months   MAL-ED           BANGLADESH                     1                 1       10     212
24 months   MAL-ED           BRAZIL                         0                 0      149     169
24 months   MAL-ED           BRAZIL                         0                 1        1     169
24 months   MAL-ED           BRAZIL                         1                 0       19     169
24 months   MAL-ED           BRAZIL                         1                 1        0     169
24 months   MAL-ED           INDIA                          0                 0      172     227
24 months   MAL-ED           INDIA                          0                 1       19     227
24 months   MAL-ED           INDIA                          1                 0       25     227
24 months   MAL-ED           INDIA                          1                 1       11     227
24 months   MAL-ED           NEPAL                          0                 0      199     228
24 months   MAL-ED           NEPAL                          0                 1        2     228
24 months   MAL-ED           NEPAL                          1                 0       22     228
24 months   MAL-ED           NEPAL                          1                 1        5     228
24 months   MAL-ED           PERU                           0                 0      167     201
24 months   MAL-ED           PERU                           0                 1        7     201
24 months   MAL-ED           PERU                           1                 0       19     201
24 months   MAL-ED           PERU                           1                 1        8     201
24 months   MAL-ED           SOUTH AFRICA                   0                 0      191     238
24 months   MAL-ED           SOUTH AFRICA                   0                 1       23     238
24 months   MAL-ED           SOUTH AFRICA                   1                 0       20     238
24 months   MAL-ED           SOUTH AFRICA                   1                 1        4     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 0      131     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                 1       50     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 0       13     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                 1       20     214
24 months   NIH-Birth        BANGLADESH                     0                 0      296     429
24 months   NIH-Birth        BANGLADESH                     0                 1       59     429
24 months   NIH-Birth        BANGLADESH                     1                 0       38     429
24 months   NIH-Birth        BANGLADESH                     1                 1       36     429
24 months   NIH-Crypto       BANGLADESH                     0                 0      424     514
24 months   NIH-Crypto       BANGLADESH                     0                 1       20     514
24 months   NIH-Crypto       BANGLADESH                     1                 0       54     514
24 months   NIH-Crypto       BANGLADESH                     1                 1       16     514
24 months   PROBIT           BELARUS                        0                 0     3958    4035
24 months   PROBIT           BELARUS                        0                 1       64    4035
24 months   PROBIT           BELARUS                        1                 0       12    4035
24 months   PROBIT           BELARUS                        1                 1        1    4035
24 months   PROVIDE          BANGLADESH                     0                 0      481     578
24 months   PROVIDE          BANGLADESH                     0                 1       37     578
24 months   PROVIDE          BANGLADESH                     1                 0       45     578
24 months   PROVIDE          BANGLADESH                     1                 1       15     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0        5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0       6
24 months   ZVITAMBO         ZIMBABWE                       0                 0     1283    1640
24 months   ZVITAMBO         ZIMBABWE                       0                 1      123    1640
24 months   ZVITAMBO         ZIMBABWE                       1                 0      179    1640
24 months   ZVITAMBO         ZIMBABWE                       1                 1       55    1640


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/82f94b31-ffb8-4b36-b86c-8c118a5cb9f2/6d7f3ce8-88f5-48fa-afd7-b09e67e807b5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/82f94b31-ffb8-4b36-b86c-8c118a5cb9f2/6d7f3ce8-88f5-48fa-afd7-b09e67e807b5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/82f94b31-ffb8-4b36-b86c-8c118a5cb9f2/6d7f3ce8-88f5-48fa-afd7-b09e67e807b5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/82f94b31-ffb8-4b36-b86c-8c118a5cb9f2/6d7f3ce8-88f5-48fa-afd7-b09e67e807b5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.0812118   0.0500197   0.1124038
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.2385775   0.1412106   0.3359444
6 months    COHORTS          GUATEMALA                      0                    NA                0.0682963   0.0509602   0.0856324
6 months    COHORTS          GUATEMALA                      1                    NA                0.4317208   0.3536301   0.5098115
6 months    COHORTS          INDIA                          0                    NA                0.0216029   0.0179510   0.0252549
6 months    COHORTS          INDIA                          1                    NA                0.2100407   0.1819335   0.2381479
6 months    COHORTS          PHILIPPINES                    0                    NA                0.0394226   0.0318691   0.0469760
6 months    COHORTS          PHILIPPINES                    1                    NA                0.2011735   0.1360994   0.2662476
6 months    EE               PAKISTAN                       0                    NA                0.0430622   0.0155042   0.0706202
6 months    EE               PAKISTAN                       1                    NA                0.4390244   0.3629698   0.5150790
6 months    GMS-Nepal        NEPAL                          0                    NA                0.0126850   0.0025907   0.0227793
6 months    GMS-Nepal        NEPAL                          1                    NA                0.1648352   0.0885353   0.2411350
6 months    IRC              INDIA                          0                    NA                0.0489251   0.0263255   0.0715247
6 months    IRC              INDIA                          1                    NA                0.2150931   0.0942159   0.3359702
6 months    JiVitA-3         BANGLADESH                     0                    NA                0.0141339   0.0116860   0.0165819
6 months    JiVitA-3         BANGLADESH                     1                    NA                0.1614310   0.1510154   0.1718466
6 months    JiVitA-4         BANGLADESH                     0                    NA                0.0092887   0.0055286   0.0130488
6 months    JiVitA-4         BANGLADESH                     1                    NA                0.1693530   0.1482186   0.1904874
6 months    Keneba           GAMBIA                         0                    NA                0.0208975   0.0144373   0.0273578
6 months    Keneba           GAMBIA                         1                    NA                0.1621442   0.1090556   0.2152328
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0240385   0.0031807   0.0448962
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2307692   0.0982698   0.3632687
6 months    NIH-Birth        BANGLADESH                     0                    NA                0.0330484   0.0164862   0.0496107
6 months    NIH-Birth        BANGLADESH                     1                    NA                0.2192939   0.1295525   0.3090353
6 months    NIH-Crypto       BANGLADESH                     0                    NA                0.0181266   0.0075952   0.0286580
6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.1403193   0.0781020   0.2025366
6 months    PROBIT           BELARUS                        0                    NA                0.0104368   0.0046734   0.0162001
6 months    PROBIT           BELARUS                        1                    NA                0.1015007   0.0747656   0.1282358
6 months    PROVIDE          BANGLADESH                     0                    NA                0.0128913   0.0033954   0.0223873
6 months    PROVIDE          BANGLADESH                     1                    NA                0.1147541   0.0347045   0.1948037
6 months    ResPak           PAKISTAN                       0                    NA                0.1508395   0.0969698   0.2047093
6 months    ResPak           PAKISTAN                       1                    NA                0.3452673   0.2367315   0.4538031
6 months    SAS-CompFeed     INDIA                          0                    NA                0.0375491   0.0226667   0.0524315
6 months    SAS-CompFeed     INDIA                          1                    NA                0.2475794   0.2111224   0.2840364
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0058201   0.0023899   0.0092503
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0575540   0.0188270   0.0962809
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.0315055   0.0276286   0.0353823
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.1191621   0.0972615   0.1410627
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.2870342   0.2351457   0.3389227
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.5239864   0.4107436   0.6372292
24 months   CMIN             BANGLADESH                     0                    NA                0.2055031   0.1413391   0.2696671
24 months   CMIN             BANGLADESH                     1                    NA                0.4040555   0.2995781   0.5085329
24 months   COHORTS          GUATEMALA                      0                    NA                0.3973400   0.3621725   0.4325075
24 months   COHORTS          GUATEMALA                      1                    NA                0.6980545   0.6486025   0.7475064
24 months   COHORTS          INDIA                          0                    NA                0.1938223   0.1826044   0.2050403
24 months   COHORTS          INDIA                          1                    NA                0.4717806   0.4345413   0.5090198
24 months   COHORTS          PHILIPPINES                    0                    NA                0.2737219   0.2555920   0.2918518
24 months   COHORTS          PHILIPPINES                    1                    NA                0.5434646   0.4601963   0.6267328
24 months   EE               PAKISTAN                       0                    NA                0.2333781   0.1506084   0.3161477
24 months   EE               PAKISTAN                       1                    NA                0.5572941   0.4365310   0.6780572
24 months   GMS-Nepal        NEPAL                          0                    NA                0.0738427   0.0484133   0.0992721
24 months   GMS-Nepal        NEPAL                          1                    NA                0.2838720   0.1820299   0.3857141
24 months   IRC              INDIA                          0                    NA                0.0830614   0.0543559   0.1117669
24 months   IRC              INDIA                          1                    NA                0.2245447   0.1072342   0.3418552
24 months   JiVitA-3         BANGLADESH                     0                    NA                0.0871746   0.0791499   0.0951993
24 months   JiVitA-3         BANGLADESH                     1                    NA                0.3013466   0.2826667   0.3200266
24 months   JiVitA-4         BANGLADESH                     0                    NA                0.0479651   0.0394023   0.0565278
24 months   JiVitA-4         BANGLADESH                     1                    NA                0.2066477   0.1821401   0.2311554
24 months   Keneba           GAMBIA                         0                    NA                0.0626968   0.0506017   0.0747919
24 months   Keneba           GAMBIA                         1                    NA                0.2465024   0.1814970   0.3115079
24 months   LCNI-5           MALAWI                         0                    NA                0.0326620   0.0147910   0.0505330
24 months   LCNI-5           MALAWI                         1                    NA                0.2789191   0.2163985   0.3414397
24 months   MAL-ED           BANGLADESH                     0                    NA                0.1020189   0.0577871   0.1462508
24 months   MAL-ED           BANGLADESH                     1                    NA                0.2879302   0.1264460   0.4494145
24 months   MAL-ED           INDIA                          0                    NA                0.0998500   0.0572647   0.1424353
24 months   MAL-ED           INDIA                          1                    NA                0.2929739   0.1500627   0.4358851
24 months   MAL-ED           PERU                           0                    NA                0.0402299   0.0109604   0.0694993
24 months   MAL-ED           PERU                           1                    NA                0.2962963   0.1236301   0.4689625
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2755082   0.2098366   0.3411798
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6112073   0.4557785   0.7666361
24 months   NIH-Birth        BANGLADESH                     0                    NA                0.1636108   0.1249243   0.2022973
24 months   NIH-Birth        BANGLADESH                     1                    NA                0.5146233   0.4006426   0.6286039
24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.0452774   0.0259839   0.0645710
24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.2224482   0.1212794   0.3236170
24 months   PROVIDE          BANGLADESH                     0                    NA                0.0715453   0.0492782   0.0938125
24 months   PROVIDE          BANGLADESH                     1                    NA                0.2374634   0.1235312   0.3513956
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0879719   0.0731422   0.1028016
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.2235436   0.1694394   0.2776478


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.1138211   0.0813725   0.1462698
6 months    COHORTS          GUATEMALA                      NA                   NA                0.1290323   0.1078261   0.1502384
6 months    COHORTS          INDIA                          NA                   NA                0.0453353   0.0404119   0.0502586
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0487445   0.0406327   0.0568562
6 months    EE               PAKISTAN                       NA                   NA                0.2171582   0.1752594   0.2590570
6 months    GMS-Nepal        NEPAL                          NA                   NA                0.0372340   0.0215945   0.0528736
6 months    IRC              INDIA                          NA                   NA                0.0712531   0.0462303   0.0962759
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0606746   0.0568229   0.0645262
6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.0560960   0.0493335   0.0628586
6 months    Keneba           GAMBIA                         NA                   NA                0.0335089   0.0257898   0.0412279
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0566802   0.0277850   0.0855754
6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.0651769   0.0442802   0.0860736
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0321678   0.0192256   0.0451101
6 months    PROBIT           BELARUS                        NA                   NA                0.0112310   0.0054733   0.0169886
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0231788   0.0111688   0.0351888
6 months    ResPak           PAKISTAN                       NA                   NA                0.1966527   0.1461562   0.2471492
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0958084   0.0774939   0.1141229
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0093642   0.0051724   0.0135561
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0404891   0.0363397   0.0446385
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.3369272   0.2887662   0.3850883
24 months   CMIN             BANGLADESH                     NA                   NA                0.2809917   0.2242434   0.3377401
24 months   COHORTS          GUATEMALA                      NA                   NA                0.4897196   0.4597530   0.5196862
24 months   COHORTS          INDIA                          NA                   NA                0.2284055   0.2171416   0.2396694
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.2891616   0.2711872   0.3071359
24 months   EE               PAKISTAN                       NA                   NA                0.3532934   0.2805798   0.4260070
24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1086066   0.0809724   0.1362407
24 months   IRC              INDIA                          NA                   NA                0.1002445   0.0711031   0.1293859
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1560473   0.1472898   0.1648047
24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.0953283   0.0857752   0.1048814
24 months   Keneba           GAMBIA                         NA                   NA                0.0811594   0.0682689   0.0940499
24 months   LCNI-5           MALAWI                         NA                   NA                0.1208981   0.0943206   0.1474756
24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1320755   0.0863920   0.1777589
24 months   MAL-ED           INDIA                          NA                   NA                0.1321586   0.0880054   0.1763117
24 months   MAL-ED           PERU                           NA                   NA                0.0746269   0.0382069   0.1110468
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3271028   0.2640978   0.3901078
24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2214452   0.1821080   0.2607825
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0700389   0.0479542   0.0921236
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1085366   0.0934775   0.1235957


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                  2.937721    1.681801    5.131525
6 months    COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
6 months    COHORTS          GUATEMALA                      1                    0                  6.321288    4.627439    8.635163
6 months    COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    COHORTS          INDIA                          1                    0                  9.722796    7.840485   12.057003
6 months    COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
6 months    COHORTS          PHILIPPINES                    1                    0                  5.103004    3.505054    7.429458
6 months    EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
6 months    EE               PAKISTAN                       1                    0                 10.195122    5.253625   19.784531
6 months    GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
6 months    GMS-Nepal        NEPAL                          1                    0                 12.994506    5.175442   32.626618
6 months    IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    IRC              INDIA                          1                    0                  4.396373    2.142296    9.022141
6 months    JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 11.421529    9.529858   13.688695
6 months    JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 18.232173   11.912820   27.903733
6 months    Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
6 months    Keneba           GAMBIA                         1                    0                  7.759016    4.946917   12.169666
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  9.600000    3.391639   27.172703
6 months    NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    NIH-Birth        BANGLADESH                     1                    0                  6.635529    3.483364   12.640147
6 months    NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                  7.741075    3.727118   16.077904
6 months    PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
6 months    PROBIT           BELARUS                        1                    0                  9.725300    5.488974   17.231173
6 months    PROVIDE          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
6 months    PROVIDE          BANGLADESH                     1                    0                  8.901639    3.227583   24.550630
6 months    ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
6 months    ResPak           PAKISTAN                       1                    0                  2.288971    1.432646    3.657139
6 months    SAS-CompFeed     INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    SAS-CompFeed     INDIA                          1                    0                  6.593479    4.554587    9.545096
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  9.888816    4.042664   24.189171
6 months    ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                  3.782266    3.031986    4.718206
24 months   CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                  1.825519    1.376385    2.421212
24 months   CMIN             BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   CMIN             BANGLADESH                     1                    0                  1.966177    1.312203    2.946079
24 months   COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
24 months   COHORTS          GUATEMALA                      1                    0                  1.756819    1.569364    1.966664
24 months   COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   COHORTS          INDIA                          1                    0                  2.434088    2.210568    2.680208
24 months   COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
24 months   COHORTS          PHILIPPINES                    1                    0                  1.985462    1.681655    2.344156
24 months   EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
24 months   EE               PAKISTAN                       1                    0                  2.387946    1.569552    3.633064
24 months   GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
24 months   GMS-Nepal        NEPAL                          1                    0                  3.844279    2.336716    6.324468
24 months   IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   IRC              INDIA                          1                    0                  2.703356    1.446328    5.052889
24 months   JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   JiVitA-3         BANGLADESH                     1                    0                  3.456818    3.105894    3.847391
24 months   JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   JiVitA-4         BANGLADESH                     1                    0                  4.308297    3.470865    5.347780
24 months   Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
24 months   Keneba           GAMBIA                         1                    0                  3.931658    2.835792    5.451013
24 months   LCNI-5           MALAWI                         0                    0                  1.000000    1.000000    1.000000
24 months   LCNI-5           MALAWI                         1                    0                  8.539559    4.732862   15.408029
24 months   MAL-ED           BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   MAL-ED           BANGLADESH                     1                    0                  2.822322    1.405029    5.669280
24 months   MAL-ED           INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   MAL-ED           INDIA                          1                    0                  2.934139    1.539600    5.591824
24 months   MAL-ED           PERU                           0                    0                  1.000000    1.000000    1.000000
24 months   MAL-ED           PERU                           1                    0                  7.365079    2.899635   18.707319
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  2.218472    1.565683    3.143431
24 months   NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   NIH-Birth        BANGLADESH                     1                    0                  3.145412    2.279880    4.339533
24 months   NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                  4.913005    2.635782    9.157666
24 months   PROVIDE          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   PROVIDE          BANGLADESH                     1                    0                  3.319061    1.873218    5.880878
24 months   ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                  2.541080    1.892710    3.411557


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.0326094   0.0111313   0.0540874
6 months    COHORTS          GUATEMALA                      0                    NA                0.0607359   0.0451732   0.0762987
6 months    COHORTS          INDIA                          0                    NA                0.0237324   0.0199941   0.0274707
6 months    COHORTS          PHILIPPINES                    0                    NA                0.0093219   0.0053859   0.0132579
6 months    EE               PAKISTAN                       0                    NA                0.1740960   0.1333052   0.2148868
6 months    GMS-Nepal        NEPAL                          0                    NA                0.0245491   0.0112983   0.0377998
6 months    IRC              INDIA                          0                    NA                0.0223280   0.0071353   0.0375206
6 months    JiVitA-3         BANGLADESH                     0                    NA                0.0465406   0.0430880   0.0499933
6 months    JiVitA-4         BANGLADESH                     0                    NA                0.0468074   0.0405249   0.0530898
6 months    Keneba           GAMBIA                         0                    NA                0.0126113   0.0075615   0.0176612
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0326417   0.0094626   0.0558208
6 months    NIH-Birth        BANGLADESH                     0                    NA                0.0321285   0.0164215   0.0478354
6 months    NIH-Crypto       BANGLADESH                     0                    NA                0.0140412   0.0046182   0.0234643
6 months    PROBIT           BELARUS                        0                    NA                0.0007942   0.0000382   0.0015502
6 months    PROVIDE          BANGLADESH                     0                    NA                0.0102875   0.0017857   0.0187892
6 months    ResPak           PAKISTAN                       0                    NA                0.0458132   0.0110094   0.0806170
6 months    SAS-CompFeed     INDIA                          0                    NA                0.0582593   0.0451218   0.0713967
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0035441   0.0008206   0.0062676
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.0089836   0.0066896   0.0112776
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.0498930   0.0224216   0.0773645
24 months   CMIN             BANGLADESH                     0                    NA                0.0754886   0.0294124   0.1215649
24 months   COHORTS          GUATEMALA                      0                    NA                0.0923796   0.0720066   0.1127527
24 months   COHORTS          INDIA                          0                    NA                0.0345831   0.0293052   0.0398611
24 months   COHORTS          PHILIPPINES                    0                    NA                0.0154396   0.0101640   0.0207152
24 months   EE               PAKISTAN                       0                    NA                0.1199154   0.0551747   0.1846560
24 months   GMS-Nepal        NEPAL                          0                    NA                0.0347638   0.0164423   0.0530853
24 months   IRC              INDIA                          0                    NA                0.0171831   0.0019882   0.0323779
24 months   JiVitA-3         BANGLADESH                     0                    NA                0.0688727   0.0621682   0.0755772
24 months   JiVitA-4         BANGLADESH                     0                    NA                0.0473632   0.0395200   0.0552064
24 months   Keneba           GAMBIA                         0                    NA                0.0184626   0.0113665   0.0255587
24 months   LCNI-5           MALAWI                         0                    NA                0.0882361   0.0635712   0.1129010
24 months   MAL-ED           BANGLADESH                     0                    NA                0.0300566   0.0039782   0.0561349
24 months   MAL-ED           INDIA                          0                    NA                0.0323086   0.0058368   0.0587803
24 months   MAL-ED           PERU                           0                    NA                0.0343970   0.0079419   0.0608520
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0515946   0.0192738   0.0839154
24 months   NIH-Birth        BANGLADESH                     0                    NA                0.0578344   0.0341567   0.0815122
24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.0247615   0.0100838   0.0394392
24 months   PROVIDE          BANGLADESH                     0                    NA                0.0184201   0.0059525   0.0308876
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0205647   0.0121383   0.0289911


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.2864968    0.0893254   0.4409783
6 months    COHORTS          GUATEMALA                      0                    NA                0.4707035    0.3638873   0.5595830
6 months    COHORTS          INDIA                          0                    NA                0.5234855    0.4586517   0.5805546
6 months    COHORTS          PHILIPPINES                    0                    NA                0.1912401    0.1129654   0.2626077
6 months    EE               PAKISTAN                       0                    NA                0.8017012    0.6399535   0.8907852
6 months    GMS-Nepal        NEPAL                          0                    NA                0.6593174    0.3347627   0.8255290
6 months    IRC              INDIA                          0                    NA                0.3133613    0.0941084   0.4795484
6 months    JiVitA-3         BANGLADESH                     0                    NA                0.7670535    0.7283362   0.8002529
6 months    JiVitA-4         BANGLADESH                     0                    NA                0.8344146    0.7595181   0.8859850
6 months    Keneba           GAMBIA                         0                    NA                0.3763581    0.2375964   0.4898644
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5758929    0.1551277   0.7871076
6 months    NIH-Birth        BANGLADESH                     0                    NA                0.4929424    0.2644242   0.6504678
6 months    NIH-Crypto       BANGLADESH                     0                    NA                0.4364995    0.1445926   0.6287935
6 months    PROBIT           BELARUS                        0                    NA                0.0707149   -0.0069342   0.1423761
6 months    PROVIDE          BANGLADESH                     0                    NA                0.4438306    0.0662412   0.6687320
6 months    ResPak           PAKISTAN                       0                    NA                0.2329649    0.0396431   0.3873706
6 months    SAS-CompFeed     INDIA                          0                    NA                0.6080809    0.4738016   0.7080938
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3784740    0.0897894   0.5755986
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.2218775    0.1679489   0.2723109
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.1480825    0.0628554   0.2255588
24 months   CMIN             BANGLADESH                     0                    NA                0.2686507    0.0895685   0.4125074
24 months   COHORTS          GUATEMALA                      0                    NA                0.1886378    0.1450341   0.2300176
24 months   COHORTS          INDIA                          0                    NA                0.1514111    0.1286186   0.1736074
24 months   COHORTS          PHILIPPINES                    0                    NA                0.0533945    0.0350618   0.0713788
24 months   EE               PAKISTAN                       0                    NA                0.3394214    0.1364942   0.4946600
24 months   GMS-Nepal        NEPAL                          0                    NA                0.3200897    0.1509818   0.4555145
24 months   IRC              INDIA                          0                    NA                0.1714116    0.0126821   0.3046223
24 months   JiVitA-3         BANGLADESH                     0                    NA                0.4413578    0.4023488   0.4778207
24 months   JiVitA-4         BANGLADESH                     0                    NA                0.4968433    0.4217060   0.5622181
24 months   Keneba           GAMBIA                         0                    NA                0.2274857    0.1423354   0.3041822
24 months   LCNI-5           MALAWI                         0                    NA                0.7298386    0.5581565   0.8348121
24 months   MAL-ED           BANGLADESH                     0                    NA                0.2275710    0.0172262   0.3928954
24 months   MAL-ED           INDIA                          0                    NA                0.2444680    0.0319121   0.4103546
24 months   MAL-ED           PERU                           0                    NA                0.4609195    0.0905879   0.6804444
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1577320    0.0535272   0.2504641
24 months   NIH-Birth        BANGLADESH                     0                    NA                0.2611681    0.1522159   0.3561185
24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.3535390    0.1456356   0.5108505
24 months   PROVIDE          BANGLADESH                     0                    NA                0.2047460    0.0637427   0.3245137
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.1894727    0.1120621   0.2601346
