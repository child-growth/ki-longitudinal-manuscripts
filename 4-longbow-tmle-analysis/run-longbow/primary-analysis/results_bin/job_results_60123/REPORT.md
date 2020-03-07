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

agecat      studyid          country                        enstunt    stunted   n_cell       n
----------  ---------------  -----------------------------  --------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0                0       75      92
Birth       CMC-V-BCS-2002   INDIA                          0                1        0      92
Birth       CMC-V-BCS-2002   INDIA                          1                0        0      92
Birth       CMC-V-BCS-2002   INDIA                          1                1       17      92
Birth       CMIN             BANGLADESH                     0                0       17      26
Birth       CMIN             BANGLADESH                     0                1        0      26
Birth       CMIN             BANGLADESH                     1                0        0      26
Birth       CMIN             BANGLADESH                     1                1        9      26
Birth       COHORTS          GUATEMALA                      0                0      802     852
Birth       COHORTS          GUATEMALA                      0                1        0     852
Birth       COHORTS          GUATEMALA                      1                0        0     852
Birth       COHORTS          GUATEMALA                      1                1       50     852
Birth       COHORTS          INDIA                          0                0     5848    6640
Birth       COHORTS          INDIA                          0                1        0    6640
Birth       COHORTS          INDIA                          1                0        0    6640
Birth       COHORTS          INDIA                          1                1      792    6640
Birth       COHORTS          PHILIPPINES                    0                0     2863    3050
Birth       COHORTS          PHILIPPINES                    0                1        0    3050
Birth       COHORTS          PHILIPPINES                    1                0        0    3050
Birth       COHORTS          PHILIPPINES                    1                1      187    3050
Birth       CONTENT          PERU                           0                0        2       2
Birth       CONTENT          PERU                           0                1        0       2
Birth       CONTENT          PERU                           1                0        0       2
Birth       CONTENT          PERU                           1                1        0       2
Birth       EE               PAKISTAN                       0                0      140     240
Birth       EE               PAKISTAN                       0                1        0     240
Birth       EE               PAKISTAN                       1                0        0     240
Birth       EE               PAKISTAN                       1                1      100     240
Birth       GMS-Nepal        NEPAL                          0                0      574     696
Birth       GMS-Nepal        NEPAL                          0                1        0     696
Birth       GMS-Nepal        NEPAL                          1                0        0     696
Birth       GMS-Nepal        NEPAL                          1                1      122     696
Birth       IRC              INDIA                          0                0      343     388
Birth       IRC              INDIA                          0                1        0     388
Birth       IRC              INDIA                          1                0        0     388
Birth       IRC              INDIA                          1                1       45     388
Birth       JiVitA-3         BANGLADESH                     0                0    15068   22455
Birth       JiVitA-3         BANGLADESH                     0                1        0   22455
Birth       JiVitA-3         BANGLADESH                     1                0        0   22455
Birth       JiVitA-3         BANGLADESH                     1                1     7387   22455
Birth       JiVitA-4         BANGLADESH                     0                0     1966    2823
Birth       JiVitA-4         BANGLADESH                     0                1        0    2823
Birth       JiVitA-4         BANGLADESH                     1                0        0    2823
Birth       JiVitA-4         BANGLADESH                     1                1      857    2823
Birth       Keneba           GAMBIA                         0                0     1460    1543
Birth       Keneba           GAMBIA                         0                1        0    1543
Birth       Keneba           GAMBIA                         1                0        0    1543
Birth       Keneba           GAMBIA                         1                1       83    1543
Birth       MAL-ED           BANGLADESH                     0                0      187     231
Birth       MAL-ED           BANGLADESH                     0                1        0     231
Birth       MAL-ED           BANGLADESH                     1                0        0     231
Birth       MAL-ED           BANGLADESH                     1                1       44     231
Birth       MAL-ED           BRAZIL                         0                0       56      65
Birth       MAL-ED           BRAZIL                         0                1        0      65
Birth       MAL-ED           BRAZIL                         1                0        0      65
Birth       MAL-ED           BRAZIL                         1                1        9      65
Birth       MAL-ED           INDIA                          0                0       37      47
Birth       MAL-ED           INDIA                          0                1        0      47
Birth       MAL-ED           INDIA                          1                0        0      47
Birth       MAL-ED           INDIA                          1                1       10      47
Birth       MAL-ED           NEPAL                          0                0       25      27
Birth       MAL-ED           NEPAL                          0                1        0      27
Birth       MAL-ED           NEPAL                          1                0        0      27
Birth       MAL-ED           NEPAL                          1                1        2      27
Birth       MAL-ED           PERU                           0                0      207     233
Birth       MAL-ED           PERU                           0                1        0     233
Birth       MAL-ED           PERU                           1                0        0     233
Birth       MAL-ED           PERU                           1                1       26     233
Birth       MAL-ED           SOUTH AFRICA                   0                0      113     123
Birth       MAL-ED           SOUTH AFRICA                   0                1        0     123
Birth       MAL-ED           SOUTH AFRICA                   1                0        0     123
Birth       MAL-ED           SOUTH AFRICA                   1                1       10     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      102     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1        0     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        0     125
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1       23     125
Birth       NIH-Birth        BANGLADESH                     0                0      511     608
Birth       NIH-Birth        BANGLADESH                     0                1        0     608
Birth       NIH-Birth        BANGLADESH                     1                0        0     608
Birth       NIH-Birth        BANGLADESH                     1                1       97     608
Birth       NIH-Crypto       BANGLADESH                     0                0      631     732
Birth       NIH-Crypto       BANGLADESH                     0                1        0     732
Birth       NIH-Crypto       BANGLADESH                     1                0        0     732
Birth       NIH-Crypto       BANGLADESH                     1                1      101     732
Birth       PROBIT           BELARUS                        0                0    13859   13893
Birth       PROBIT           BELARUS                        0                1        0   13893
Birth       PROBIT           BELARUS                        1                0        0   13893
Birth       PROBIT           BELARUS                        1                1       34   13893
Birth       PROVIDE          BANGLADESH                     0                0      491     539
Birth       PROVIDE          BANGLADESH                     0                1        0     539
Birth       PROVIDE          BANGLADESH                     1                0        0     539
Birth       PROVIDE          BANGLADESH                     1                1       48     539
Birth       ResPak           PAKISTAN                       0                0       28      42
Birth       ResPak           PAKISTAN                       0                1        0      42
Birth       ResPak           PAKISTAN                       1                0        0      42
Birth       ResPak           PAKISTAN                       1                1       14      42
Birth       SAS-CompFeed     INDIA                          0                0      903    1252
Birth       SAS-CompFeed     INDIA                          0                1        0    1252
Birth       SAS-CompFeed     INDIA                          1                0        0    1252
Birth       SAS-CompFeed     INDIA                          1                1      349    1252
Birth       ZVITAMBO         ZIMBABWE                       0                0    12441   13875
Birth       ZVITAMBO         ZIMBABWE                       0                1        0   13875
Birth       ZVITAMBO         ZIMBABWE                       1                0        0   13875
Birth       ZVITAMBO         ZIMBABWE                       1                1     1434   13875
6 months    CMC-V-BCS-2002   INDIA                          0                0      226     369
6 months    CMC-V-BCS-2002   INDIA                          0                1       68     369
6 months    CMC-V-BCS-2002   INDIA                          1                0       32     369
6 months    CMC-V-BCS-2002   INDIA                          1                1       43     369
6 months    CMIN             BANGLADESH                     0                0      123     243
6 months    CMIN             BANGLADESH                     0                1       28     243
6 months    CMIN             BANGLADESH                     1                0       27     243
6 months    CMIN             BANGLADESH                     1                1       65     243
6 months    COHORTS          GUATEMALA                      0                0      551     961
6 months    COHORTS          GUATEMALA                      0                1      258     961
6 months    COHORTS          GUATEMALA                      1                0       16     961
6 months    COHORTS          GUATEMALA                      1                1      136     961
6 months    COHORTS          INDIA                          0                0     5269    6860
6 months    COHORTS          INDIA                          0                1      779    6860
6 months    COHORTS          INDIA                          1                0      319    6860
6 months    COHORTS          INDIA                          1                1      493    6860
6 months    COHORTS          PHILIPPINES                    0                0     2082    2708
6 months    COHORTS          PHILIPPINES                    0                1      470    2708
6 months    COHORTS          PHILIPPINES                    1                0       54    2708
6 months    COHORTS          PHILIPPINES                    1                1      102    2708
6 months    CONTENT          PERU                           0                0      193     215
6 months    CONTENT          PERU                           0                1        2     215
6 months    CONTENT          PERU                           1                0       13     215
6 months    CONTENT          PERU                           1                1        7     215
6 months    EE               PAKISTAN                       0                0      152     373
6 months    EE               PAKISTAN                       0                1       57     373
6 months    EE               PAKISTAN                       1                0       38     373
6 months    EE               PAKISTAN                       1                1      126     373
6 months    GMS-Nepal        NEPAL                          0                0      402     564
6 months    GMS-Nepal        NEPAL                          0                1       71     564
6 months    GMS-Nepal        NEPAL                          1                0       40     564
6 months    GMS-Nepal        NEPAL                          1                1       51     564
6 months    Guatemala BSC    GUATEMALA                      0                0      202     299
6 months    Guatemala BSC    GUATEMALA                      0                1       26     299
6 months    Guatemala BSC    GUATEMALA                      1                0        7     299
6 months    Guatemala BSC    GUATEMALA                      1                1       64     299
6 months    IRC              INDIA                          0                0      285     407
6 months    IRC              INDIA                          0                1       73     407
6 months    IRC              INDIA                          1                0       22     407
6 months    IRC              INDIA                          1                1       27     407
6 months    JiVitA-3         BANGLADESH                     0                0    10285   16811
6 months    JiVitA-3         BANGLADESH                     0                1     1422   16811
6 months    JiVitA-3         BANGLADESH                     1                0     2300   16811
6 months    JiVitA-3         BANGLADESH                     1                1     2804   16811
6 months    JiVitA-4         BANGLADESH                     0                0     3064    4831
6 months    JiVitA-4         BANGLADESH                     0                1      411    4831
6 months    JiVitA-4         BANGLADESH                     1                0      546    4831
6 months    JiVitA-4         BANGLADESH                     1                1      810    4831
6 months    Keneba           GAMBIA                         0                0     1685    2089
6 months    Keneba           GAMBIA                         0                1      207    2089
6 months    Keneba           GAMBIA                         1                0      109    2089
6 months    Keneba           GAMBIA                         1                1       88    2089
6 months    LCNI-5           MALAWI                         0                0      530     839
6 months    LCNI-5           MALAWI                         0                1        0     839
6 months    LCNI-5           MALAWI                         1                0        0     839
6 months    LCNI-5           MALAWI                         1                1      309     839
6 months    MAL-ED           BANGLADESH                     0                0      180     241
6 months    MAL-ED           BANGLADESH                     0                1       22     241
6 months    MAL-ED           BANGLADESH                     1                0       17     241
6 months    MAL-ED           BANGLADESH                     1                1       22     241
6 months    MAL-ED           BRAZIL                         0                0      180     209
6 months    MAL-ED           BRAZIL                         0                1        4     209
6 months    MAL-ED           BRAZIL                         1                0       23     209
6 months    MAL-ED           BRAZIL                         1                1        2     209
6 months    MAL-ED           INDIA                          0                0      169     236
6 months    MAL-ED           INDIA                          0                1       29     236
6 months    MAL-ED           INDIA                          1                0       22     236
6 months    MAL-ED           INDIA                          1                1       16     236
6 months    MAL-ED           NEPAL                          0                0      206     236
6 months    MAL-ED           NEPAL                          0                1        2     236
6 months    MAL-ED           NEPAL                          1                0       18     236
6 months    MAL-ED           NEPAL                          1                1       10     236
6 months    MAL-ED           PERU                           0                0      200     273
6 months    MAL-ED           PERU                           0                1       39     273
6 months    MAL-ED           PERU                           1                0       13     273
6 months    MAL-ED           PERU                           1                1       21     273
6 months    MAL-ED           SOUTH AFRICA                   0                0      187     254
6 months    MAL-ED           SOUTH AFRICA                   0                1       40     254
6 months    MAL-ED           SOUTH AFRICA                   1                0       17     254
6 months    MAL-ED           SOUTH AFRICA                   1                1       10     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      174     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1       34     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       14     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1       25     247
6 months    NIH-Birth        BANGLADESH                     0                0      365     537
6 months    NIH-Birth        BANGLADESH                     0                1       87     537
6 months    NIH-Birth        BANGLADESH                     1                0       28     537
6 months    NIH-Birth        BANGLADESH                     1                1       57     537
6 months    NIH-Crypto       BANGLADESH                     0                0      517     715
6 months    NIH-Crypto       BANGLADESH                     0                1       96     715
6 months    NIH-Crypto       BANGLADESH                     1                0       48     715
6 months    NIH-Crypto       BANGLADESH                     1                1       54     715
6 months    PROBIT           BELARUS                        0                0    15057   15760
6 months    PROBIT           BELARUS                        0                1      587   15760
6 months    PROBIT           BELARUS                        1                0       83   15760
6 months    PROBIT           BELARUS                        1                1       33   15760
6 months    PROVIDE          BANGLADESH                     0                0      478     604
6 months    PROVIDE          BANGLADESH                     0                1       65     604
6 months    PROVIDE          BANGLADESH                     1                0       30     604
6 months    PROVIDE          BANGLADESH                     1                1       31     604
6 months    ResPak           PAKISTAN                       0                0      118     239
6 months    ResPak           PAKISTAN                       0                1       55     239
6 months    ResPak           PAKISTAN                       1                0       35     239
6 months    ResPak           PAKISTAN                       1                1       31     239
6 months    SAS-CompFeed     INDIA                          0                0      819    1336
6 months    SAS-CompFeed     INDIA                          0                1      153    1336
6 months    SAS-CompFeed     INDIA                          1                0      137    1336
6 months    SAS-CompFeed     INDIA                          1                1      227    1336
6 months    SAS-FoodSuppl    INDIA                          0                0      201     380
6 months    SAS-FoodSuppl    INDIA                          0                1       31     380
6 months    SAS-FoodSuppl    INDIA                          1                0       16     380
6 months    SAS-FoodSuppl    INDIA                          1                1      132     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1754    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1      136    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0       78    2029
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       61    2029
6 months    ZVITAMBO         ZIMBABWE                       0                0     6733    8669
6 months    ZVITAMBO         ZIMBABWE                       0                1     1062    8669
6 months    ZVITAMBO         ZIMBABWE                       1                0      524    8669
6 months    ZVITAMBO         ZIMBABWE                       1                1      350    8669
24 months   CMC-V-BCS-2002   INDIA                          0                0       89     371
24 months   CMC-V-BCS-2002   INDIA                          0                1      205     371
24 months   CMC-V-BCS-2002   INDIA                          1                0       16     371
24 months   CMC-V-BCS-2002   INDIA                          1                1       61     371
24 months   CMIN             BANGLADESH                     0                0       61     242
24 months   CMIN             BANGLADESH                     0                1       92     242
24 months   CMIN             BANGLADESH                     1                0       16     242
24 months   CMIN             BANGLADESH                     1                1       73     242
24 months   COHORTS          GUATEMALA                      0                0      193    1070
24 months   COHORTS          GUATEMALA                      0                1      547    1070
24 months   COHORTS          GUATEMALA                      1                0        9    1070
24 months   COHORTS          GUATEMALA                      1                1      321    1070
24 months   COHORTS          INDIA                          0                0     2348    5337
24 months   COHORTS          INDIA                          0                1     2348    5337
24 months   COHORTS          INDIA                          1                0      133    5337
24 months   COHORTS          INDIA                          1                1      508    5337
24 months   COHORTS          PHILIPPINES                    0                0      908    2445
24 months   COHORTS          PHILIPPINES                    0                1     1402    2445
24 months   COHORTS          PHILIPPINES                    1                0       14    2445
24 months   COHORTS          PHILIPPINES                    1                1      121    2445
24 months   CONTENT          PERU                           0                0      140     164
24 months   CONTENT          PERU                           0                1        7     164
24 months   CONTENT          PERU                           1                0       11     164
24 months   CONTENT          PERU                           1                1        6     164
24 months   EE               PAKISTAN                       0                0       38     167
24 months   EE               PAKISTAN                       0                1       62     167
24 months   EE               PAKISTAN                       1                0       11     167
24 months   EE               PAKISTAN                       1                1       56     167
24 months   GMS-Nepal        NEPAL                          0                0      240     488
24 months   GMS-Nepal        NEPAL                          0                1      166     488
24 months   GMS-Nepal        NEPAL                          1                0       29     488
24 months   GMS-Nepal        NEPAL                          1                1       53     488
24 months   IRC              INDIA                          0                0      217     409
24 months   IRC              INDIA                          0                1      141     409
24 months   IRC              INDIA                          1                0       20     409
24 months   IRC              INDIA                          1                1       31     409
24 months   JiVitA-3         BANGLADESH                     0                0     3627    8632
24 months   JiVitA-3         BANGLADESH                     0                1     2315    8632
24 months   JiVitA-3         BANGLADESH                     1                0      766    8632
24 months   JiVitA-3         BANGLADESH                     1                1     1924    8632
24 months   JiVitA-4         BANGLADESH                     0                0     2378    4752
24 months   JiVitA-4         BANGLADESH                     0                1     1018    4752
24 months   JiVitA-4         BANGLADESH                     1                0      469    4752
24 months   JiVitA-4         BANGLADESH                     1                1      887    4752
24 months   Keneba           GAMBIA                         0                0     1080    1725
24 months   Keneba           GAMBIA                         0                1      469    1725
24 months   Keneba           GAMBIA                         1                0       64    1725
24 months   Keneba           GAMBIA                         1                1      112    1725
24 months   LCNI-5           MALAWI                         0                0      273     579
24 months   LCNI-5           MALAWI                         0                1      104     579
24 months   LCNI-5           MALAWI                         1                0       48     579
24 months   LCNI-5           MALAWI                         1                1      154     579
24 months   MAL-ED           BANGLADESH                     0                0      103     212
24 months   MAL-ED           BANGLADESH                     0                1       76     212
24 months   MAL-ED           BANGLADESH                     1                0        8     212
24 months   MAL-ED           BANGLADESH                     1                1       25     212
24 months   MAL-ED           BRAZIL                         0                0      144     169
24 months   MAL-ED           BRAZIL                         0                1        6     169
24 months   MAL-ED           BRAZIL                         1                0       18     169
24 months   MAL-ED           BRAZIL                         1                1        1     169
24 months   MAL-ED           INDIA                          0                0      118     227
24 months   MAL-ED           INDIA                          0                1       73     227
24 months   MAL-ED           INDIA                          1                0       12     227
24 months   MAL-ED           INDIA                          1                1       24     227
24 months   MAL-ED           NEPAL                          0                0      165     228
24 months   MAL-ED           NEPAL                          0                1       36     228
24 months   MAL-ED           NEPAL                          1                0       13     228
24 months   MAL-ED           NEPAL                          1                1       14     228
24 months   MAL-ED           PERU                           0                0      117     201
24 months   MAL-ED           PERU                           0                1       57     201
24 months   MAL-ED           PERU                           1                0       10     201
24 months   MAL-ED           PERU                           1                1       17     201
24 months   MAL-ED           SOUTH AFRICA                   0                0      139     238
24 months   MAL-ED           SOUTH AFRICA                   0                1       75     238
24 months   MAL-ED           SOUTH AFRICA                   1                0       15     238
24 months   MAL-ED           SOUTH AFRICA                   1                1        9     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0       57     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1      124     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        2     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1       31     214
24 months   NIH-Birth        BANGLADESH                     0                0      172     429
24 months   NIH-Birth        BANGLADESH                     0                1      183     429
24 months   NIH-Birth        BANGLADESH                     1                0       13     429
24 months   NIH-Birth        BANGLADESH                     1                1       61     429
24 months   NIH-Crypto       BANGLADESH                     0                0      346     514
24 months   NIH-Crypto       BANGLADESH                     0                1       98     514
24 months   NIH-Crypto       BANGLADESH                     1                0       36     514
24 months   NIH-Crypto       BANGLADESH                     1                1       34     514
24 months   PROBIT           BELARUS                        0                0     3750    4035
24 months   PROBIT           BELARUS                        0                1      272    4035
24 months   PROBIT           BELARUS                        1                0       10    4035
24 months   PROBIT           BELARUS                        1                1        3    4035
24 months   PROVIDE          BANGLADESH                     0                0      361     578
24 months   PROVIDE          BANGLADESH                     0                1      157     578
24 months   PROVIDE          BANGLADESH                     1                0       27     578
24 months   PROVIDE          BANGLADESH                     1                1       33     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        5       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ZVITAMBO         ZIMBABWE                       0                0      968    1640
24 months   ZVITAMBO         ZIMBABWE                       0                1      438    1640
24 months   ZVITAMBO         ZIMBABWE                       1                0      103    1640
24 months   ZVITAMBO         ZIMBABWE                       1                1      131    1640


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/422762e3-6f92-4e22-b940-906c0dd62abf/613b7eb3-30ee-47d4-96c7-a40848c1b73b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/422762e3-6f92-4e22-b940-906c0dd62abf/613b7eb3-30ee-47d4-96c7-a40848c1b73b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/422762e3-6f92-4e22-b940-906c0dd62abf/613b7eb3-30ee-47d4-96c7-a40848c1b73b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/422762e3-6f92-4e22-b940-906c0dd62abf/613b7eb3-30ee-47d4-96c7-a40848c1b73b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.2305236   0.1822375   0.2788098
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.5778780   0.4643470   0.6914090
6 months    CMIN             BANGLADESH                     0                    NA                0.1856694   0.1235702   0.2477686
6 months    CMIN             BANGLADESH                     1                    NA                0.7117479   0.6195921   0.8039038
6 months    COHORTS          GUATEMALA                      0                    NA                0.3185005   0.2863432   0.3506578
6 months    COHORTS          GUATEMALA                      1                    NA                0.9017714   0.8560507   0.9474921
6 months    COHORTS          INDIA                          0                    NA                0.1299371   0.1214945   0.1383796
6 months    COHORTS          INDIA                          1                    NA                0.5917881   0.5588125   0.6247638
6 months    COHORTS          PHILIPPINES                    0                    NA                0.1849315   0.1698809   0.1999822
6 months    COHORTS          PHILIPPINES                    1                    NA                0.6114979   0.5351913   0.6878045
6 months    EE               PAKISTAN                       0                    NA                0.2701133   0.2088214   0.3314051
6 months    EE               PAKISTAN                       1                    NA                0.7699868   0.7047173   0.8352564
6 months    GMS-Nepal        NEPAL                          0                    NA                0.1506490   0.1184102   0.1828878
6 months    GMS-Nepal        NEPAL                          1                    NA                0.5340031   0.4300166   0.6379896
6 months    Guatemala BSC    GUATEMALA                      0                    NA                0.1140351   0.0727079   0.1553623
6 months    Guatemala BSC    GUATEMALA                      1                    NA                0.9014085   0.8319497   0.9708672
6 months    IRC              INDIA                          0                    NA                0.2025367   0.1607396   0.2443337
6 months    IRC              INDIA                          1                    NA                0.5297495   0.3876710   0.6718281
6 months    JiVitA-3         BANGLADESH                     0                    NA                0.1240370   0.1170287   0.1310453
6 months    JiVitA-3         BANGLADESH                     1                    NA                0.5378637   0.5223367   0.5533908
6 months    JiVitA-4         BANGLADESH                     0                    NA                0.1193465   0.1062215   0.1324715
6 months    JiVitA-4         BANGLADESH                     1                    NA                0.5859418   0.5549250   0.6169587
6 months    Keneba           GAMBIA                         0                    NA                0.1089534   0.0948953   0.1230114
6 months    Keneba           GAMBIA                         1                    NA                0.4622937   0.3907133   0.5338741
6 months    MAL-ED           BANGLADESH                     0                    NA                0.1115914   0.0683683   0.1548144
6 months    MAL-ED           BANGLADESH                     1                    NA                0.5490900   0.3816389   0.7165411
6 months    MAL-ED           INDIA                          0                    NA                0.1482745   0.0985391   0.1980100
6 months    MAL-ED           INDIA                          1                    NA                0.4295465   0.2539505   0.6051425
6 months    MAL-ED           PERU                           0                    NA                0.1632659   0.1162971   0.2102347
6 months    MAL-ED           PERU                           1                    NA                0.6145755   0.4476072   0.7815438
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                0.1772214   0.1274189   0.2270240
6 months    MAL-ED           SOUTH AFRICA                   1                    NA                0.3658904   0.1742823   0.5574985
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1635279   0.1129858   0.2140700
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6901325   0.5426949   0.8375701
6 months    NIH-Birth        BANGLADESH                     0                    NA                0.1923124   0.1559454   0.2286794
6 months    NIH-Birth        BANGLADESH                     1                    NA                0.6739953   0.5730752   0.7749155
6 months    NIH-Crypto       BANGLADESH                     0                    NA                0.1577746   0.1289228   0.1866265
6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.5195476   0.4184896   0.6206057
6 months    PROBIT           BELARUS                        0                    NA                0.0375241   0.0275504   0.0474977
6 months    PROBIT           BELARUS                        1                    NA                0.2891764   0.2581828   0.3201700
6 months    PROVIDE          BANGLADESH                     0                    NA                0.1199126   0.0925681   0.1472571
6 months    PROVIDE          BANGLADESH                     1                    NA                0.4729055   0.3432113   0.6025998
6 months    ResPak           PAKISTAN                       0                    NA                0.3067288   0.2378353   0.3756224
6 months    ResPak           PAKISTAN                       1                    NA                0.4983919   0.3755824   0.6212013
6 months    SAS-CompFeed     INDIA                          0                    NA                0.1608305   0.1408225   0.1808385
6 months    SAS-CompFeed     INDIA                          1                    NA                0.6068051   0.5745607   0.6390494
6 months    SAS-FoodSuppl    INDIA                          0                    NA                0.1337126   0.0895874   0.1778378
6 months    SAS-FoodSuppl    INDIA                          1                    NA                0.8918603   0.8405887   0.9431320
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0722086   0.0605451   0.0838720
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4327661   0.3478275   0.5177046
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.1369924   0.1293524   0.1446324
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.3869053   0.3535272   0.4202834
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.6986688   0.6456389   0.7516988
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.7687248   0.6723095   0.8651400
24 months   CMIN             BANGLADESH                     0                    NA                0.6072378   0.5284387   0.6860370
24 months   CMIN             BANGLADESH                     1                    NA                0.8204296   0.7389833   0.9018760
24 months   COHORTS          GUATEMALA                      0                    NA                0.7391892   0.7075390   0.7708393
24 months   COHORTS          GUATEMALA                      1                    NA                0.9727273   0.9551459   0.9903087
24 months   COHORTS          INDIA                          0                    NA                0.5038861   0.4896906   0.5180816
24 months   COHORTS          INDIA                          1                    NA                0.7672943   0.7369580   0.7976306
24 months   COHORTS          PHILIPPINES                    0                    NA                0.6068404   0.5868995   0.6267812
24 months   COHORTS          PHILIPPINES                    1                    NA                0.9121081   0.8639698   0.9602464
24 months   CONTENT          PERU                           0                    NA                0.0476190   0.0130877   0.0821504
24 months   CONTENT          PERU                           1                    NA                0.3529412   0.1250777   0.5808047
24 months   EE               PAKISTAN                       0                    NA                0.6116896   0.5169514   0.7064277
24 months   EE               PAKISTAN                       1                    NA                0.8488458   0.7602527   0.9374388
24 months   GMS-Nepal        NEPAL                          0                    NA                0.4111496   0.3633021   0.4589972
24 months   GMS-Nepal        NEPAL                          1                    NA                0.6479684   0.5419347   0.7540020
24 months   IRC              INDIA                          0                    NA                0.3913361   0.3407664   0.4419058
24 months   IRC              INDIA                          1                    NA                0.5978389   0.4609943   0.7346835
24 months   JiVitA-3         BANGLADESH                     0                    NA                0.3961750   0.3806816   0.4116684
24 months   JiVitA-3         BANGLADESH                     1                    NA                0.7034181   0.6832821   0.7235542
24 months   JiVitA-4         BANGLADESH                     0                    NA                0.3031388   0.2847477   0.3215299
24 months   JiVitA-4         BANGLADESH                     1                    NA                0.6458631   0.6157170   0.6760092
24 months   Keneba           GAMBIA                         0                    NA                0.3019802   0.2791008   0.3248596
24 months   Keneba           GAMBIA                         1                    NA                0.6434583   0.5699332   0.7169835
24 months   LCNI-5           MALAWI                         0                    NA                0.2741538   0.2289990   0.3193086
24 months   LCNI-5           MALAWI                         1                    NA                0.7649887   0.7048774   0.8251001
24 months   MAL-ED           BANGLADESH                     0                    NA                0.4245810   0.3520004   0.4971616
24 months   MAL-ED           BANGLADESH                     1                    NA                0.7575758   0.6110146   0.9041369
24 months   MAL-ED           INDIA                          0                    NA                0.3850962   0.3159424   0.4542499
24 months   MAL-ED           INDIA                          1                    NA                0.6617634   0.5112986   0.8122282
24 months   MAL-ED           NEPAL                          0                    NA                0.1789819   0.1258472   0.2321166
24 months   MAL-ED           NEPAL                          1                    NA                0.5387352   0.3345611   0.7429092
24 months   MAL-ED           PERU                           0                    NA                0.3285684   0.2582518   0.3988849
24 months   MAL-ED           PERU                           1                    NA                0.6237697   0.4300842   0.8174552
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.3504673   0.2864083   0.4145262
24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.3750000   0.1809059   0.5690941
24 months   NIH-Birth        BANGLADESH                     0                    NA                0.5149587   0.4628085   0.5671089
24 months   NIH-Birth        BANGLADESH                     1                    NA                0.8260733   0.7374528   0.9146938
24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.2239508   0.1848688   0.2630327
24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.4647432   0.3383514   0.5911349
24 months   PROVIDE          BANGLADESH                     0                    NA                0.3028536   0.2633250   0.3423821
24 months   PROVIDE          BANGLADESH                     1                    NA                0.5631603   0.4483488   0.6779718
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.3139462   0.2897194   0.3381730
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.5501982   0.4848204   0.6155759


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    CMIN             BANGLADESH                     NA                   NA                0.3827160   0.3214780   0.4439541
6 months    COHORTS          GUATEMALA                      NA                   NA                0.4099896   0.3788775   0.4411017
6 months    COHORTS          INDIA                          NA                   NA                0.1854227   0.1762253   0.1946201
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    EE               PAKISTAN                       NA                   NA                0.4906166   0.4398159   0.5414174
6 months    GMS-Nepal        NEPAL                          NA                   NA                0.2163121   0.1823021   0.2503220
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                0.3010033   0.2489243   0.3530824
6 months    IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.2513830   0.2432594   0.2595066
6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.2527427   0.2386864   0.2667990
6 months    Keneba           GAMBIA                         NA                   NA                0.1412159   0.1262788   0.1561530
6 months    MAL-ED           BANGLADESH                     NA                   NA                0.1825726   0.1336978   0.2314474
6 months    MAL-ED           INDIA                          NA                   NA                0.1906780   0.1404524   0.2409036
6 months    MAL-ED           PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2388664   0.1855834   0.2921494
6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    PROBIT           BELARUS                        NA                   NA                0.0393401   0.0293640   0.0493162
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ResPak           PAKISTAN                       NA                   NA                0.3598326   0.2988570   0.4208083
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0970922   0.0842059   0.1099785
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1628792   0.1551057   0.1706527
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7169811   0.6710815   0.7628807
24 months   CMIN             BANGLADESH                     NA                   NA                0.6818182   0.6230135   0.7406228
24 months   COHORTS          GUATEMALA                      NA                   NA                0.8112150   0.7877559   0.8346740
24 months   COHORTS          INDIA                          NA                   NA                0.5351321   0.5217497   0.5485145
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6229039   0.6036892   0.6421186
24 months   CONTENT          PERU                           NA                   NA                0.0792683   0.0377948   0.1207418
24 months   EE               PAKISTAN                       NA                   NA                0.7065868   0.6373214   0.7758523
24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4487705   0.4045970   0.4929440
24 months   IRC              INDIA                          NA                   NA                0.4205379   0.3726382   0.4684376
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4910797   0.4779658   0.5041936
24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.4008838   0.3839145   0.4178532
24 months   Keneba           GAMBIA                         NA                   NA                0.3368116   0.3145020   0.3591212
24 months   LCNI-5           MALAWI                         NA                   NA                0.4455959   0.4050760   0.4861157
24 months   MAL-ED           BANGLADESH                     NA                   NA                0.4764151   0.4090254   0.5438047
24 months   MAL-ED           INDIA                          NA                   NA                0.4273128   0.3628178   0.4918077
24 months   MAL-ED           NEPAL                          NA                   NA                0.2192982   0.1654718   0.2731246
24 months   MAL-ED           PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5687646   0.5218455   0.6156837
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.3469512   0.3239068   0.3699956


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ---------  ----------  ----------
6 months    CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.0000000    1.000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 2.506806   1.8802669    3.342119
6 months    CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
6 months    CMIN             BANGLADESH                     1                    0                 3.833416   2.6884746    5.465954
6 months    COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
6 months    COHORTS          GUATEMALA                      1                    0                 2.831303   2.5288523    3.169926
6 months    COHORTS          INDIA                          0                    0                 1.000000   1.0000000    1.000000
6 months    COHORTS          INDIA                          1                    0                 4.554422   4.1828630    4.958986
6 months    COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
6 months    COHORTS          PHILIPPINES                    1                    0                 3.306618   2.8502353    3.836078
6 months    EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
6 months    EE               PAKISTAN                       1                    0                 2.850607   2.2347931    3.636113
6 months    GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
6 months    GMS-Nepal        NEPAL                          1                    0                 3.544684   2.6527328    4.736545
6 months    Guatemala BSC    GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
6 months    Guatemala BSC    GUATEMALA                      1                    0                 7.904659   5.4572418   11.449672
6 months    IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
6 months    IRC              INDIA                          1                    0                 2.615573   1.8639587    3.670266
6 months    JiVitA-3         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 4.336317   4.0881094    4.599595
6 months    JiVitA-4         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 4.909586   4.3313842    5.564973
6 months    Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
6 months    Keneba           GAMBIA                         1                    0                 4.243042   3.4690619    5.189705
6 months    MAL-ED           BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
6 months    MAL-ED           BANGLADESH                     1                    0                 4.920542   3.0068592    8.052168
6 months    MAL-ED           INDIA                          0                    0                 1.000000   1.0000000    1.000000
6 months    MAL-ED           INDIA                          1                    0                 2.896968   1.7068007    4.917048
6 months    MAL-ED           PERU                           0                    0                 1.000000   1.0000000    1.000000
6 months    MAL-ED           PERU                           1                    0                 3.764261   2.5438686    5.570124
6 months    MAL-ED           SOUTH AFRICA                   0                    0                 1.000000   1.0000000    1.000000
6 months    MAL-ED           SOUTH AFRICA                   1                    0                 2.064595   1.1399462    3.739256
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 4.220274   2.8991068    6.143517
6 months    NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
6 months    NIH-Birth        BANGLADESH                     1                    0                 3.504690   2.7555012    4.457574
6 months    NIH-Crypto       BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 3.292974   2.5208924    4.301523
6 months    PROBIT           BELARUS                        0                    0                 1.000000   1.0000000    1.000000
6 months    PROBIT           BELARUS                        1                    0                 7.706421   5.9324998   10.010776
6 months    PROVIDE          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
6 months    PROVIDE          BANGLADESH                     1                    0                 3.943752   2.7672958    5.620354
6 months    ResPak           PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
6 months    ResPak           PAKISTAN                       1                    0                 1.624861   1.1684835    2.259488
6 months    SAS-CompFeed     INDIA                          0                    0                 1.000000   1.0000000    1.000000
6 months    SAS-CompFeed     INDIA                          1                    0                 3.772948   3.3563739    4.241225
6 months    SAS-FoodSuppl    INDIA                          0                    0                 1.000000   1.0000000    1.000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 6.669980   4.7717131    9.323409
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 5.993277   4.6490515    7.726172
6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 2.824282   2.5488703    3.129454
24 months   CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.0000000    1.000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 1.100271   0.9501970    1.274047
24 months   CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   CMIN             BANGLADESH                     1                    0                 1.351085   1.1465190    1.592149
24 months   COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
24 months   COHORTS          GUATEMALA                      1                    0                 1.315938   1.2561782    1.378541
24 months   COHORTS          INDIA                          0                    0                 1.000000   1.0000000    1.000000
24 months   COHORTS          INDIA                          1                    0                 1.522753   1.4520231    1.596929
24 months   COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
24 months   COHORTS          PHILIPPINES                    1                    0                 1.503045   1.4124576    1.599441
24 months   CONTENT          PERU                           0                    0                 1.000000   1.0000000    1.000000
24 months   CONTENT          PERU                           1                    0                 7.411765   2.8071126   19.569666
24 months   EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
24 months   EE               PAKISTAN                       1                    0                 1.387707   1.1527916    1.670493
24 months   GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
24 months   GMS-Nepal        NEPAL                          1                    0                 1.575992   1.2902165    1.925064
24 months   IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
24 months   IRC              INDIA                          1                    0                 1.527686   1.1755540    1.985299
24 months   JiVitA-3         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 1.775524   1.6956368    1.859175
24 months   JiVitA-4         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 2.130585   1.9769180    2.296197
24 months   Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
24 months   Keneba           GAMBIA                         1                    0                 2.130797   1.8576301    2.444132
24 months   LCNI-5           MALAWI                         0                    0                 1.000000   1.0000000    1.000000
24 months   LCNI-5           MALAWI                         1                    0                 2.790363   2.3250697    3.348771
24 months   MAL-ED           BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   MAL-ED           BANGLADESH                     1                    0                 1.784290   1.3783052    2.309860
24 months   MAL-ED           INDIA                          0                    0                 1.000000   1.0000000    1.000000
24 months   MAL-ED           INDIA                          1                    0                 1.718437   1.2872192    2.294112
24 months   MAL-ED           NEPAL                          0                    0                 1.000000   1.0000000    1.000000
24 months   MAL-ED           NEPAL                          1                    0                 3.009997   1.8693142    4.846742
24 months   MAL-ED           PERU                           0                    0                 1.000000   1.0000000    1.000000
24 months   MAL-ED           PERU                           1                    0                 1.898447   1.3021996    2.767703
24 months   MAL-ED           SOUTH AFRICA                   0                    0                 1.000000   1.0000000    1.000000
24 months   MAL-ED           SOUTH AFRICA                   1                    0                 1.070000   0.6180093    1.852561
24 months   NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   NIH-Birth        BANGLADESH                     1                    0                 1.604155   1.3840832    1.859218
24 months   NIH-Crypto       BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 2.075202   1.5040409    2.863263
24 months   PROVIDE          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
24 months   PROVIDE          BANGLADESH                     1                    0                 1.859514   1.4664573    2.357921
24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.752524   1.5215059    2.018618


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.0702894    0.0416285   0.0989503
6 months    CMIN             BANGLADESH                     0                    NA                0.1970467    0.1449748   0.2491185
6 months    COHORTS          GUATEMALA                      0                    NA                0.0914891    0.0752796   0.1076985
6 months    COHORTS          INDIA                          0                    NA                0.0554857    0.0500873   0.0608841
6 months    COHORTS          PHILIPPINES                    0                    NA                0.0262945    0.0203566   0.0322323
6 months    EE               PAKISTAN                       0                    NA                0.2205033    0.1733229   0.2676838
6 months    GMS-Nepal        NEPAL                          0                    NA                0.0656631    0.0443366   0.0869895
6 months    Guatemala BSC    GUATEMALA                      0                    NA                0.1869683    0.1443605   0.2295760
6 months    IRC              INDIA                          0                    NA                0.0431636    0.0223193   0.0640078
6 months    JiVitA-3         BANGLADESH                     0                    NA                0.1273460    0.1216487   0.1330433
6 months    JiVitA-4         BANGLADESH                     0                    NA                0.1333962    0.1219249   0.1448676
6 months    Keneba           GAMBIA                         0                    NA                0.0322625    0.0243372   0.0401879
6 months    MAL-ED           BANGLADESH                     0                    NA                0.0709813    0.0378283   0.1041342
6 months    MAL-ED           INDIA                          0                    NA                0.0424034    0.0128515   0.0719554
6 months    MAL-ED           PERU                           0                    NA                0.0565143    0.0294344   0.0835942
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                0.0196289   -0.0016536   0.0409115
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0753385    0.0422218   0.1084552
6 months    NIH-Birth        BANGLADESH                     0                    NA                0.0758440    0.0535849   0.0981031
6 months    NIH-Crypto       BANGLADESH                     0                    NA                0.0520156    0.0348093   0.0692219
6 months    PROBIT           BELARUS                        0                    NA                0.0018160    0.0007000   0.0029321
6 months    PROVIDE          BANGLADESH                     0                    NA                0.0390278    0.0232292   0.0548264
6 months    ResPak           PAKISTAN                       0                    NA                0.0531038    0.0137432   0.0924644
6 months    SAS-CompFeed     INDIA                          0                    NA                0.1236007    0.1074898   0.1397115
6 months    SAS-FoodSuppl    INDIA                          0                    NA                0.2952348    0.2495783   0.3408913
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0248836    0.0179442   0.0318230
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.0258868    0.0221495   0.0296241
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.0183123   -0.0045315   0.0411561
24 months   CMIN             BANGLADESH                     0                    NA                0.0745803    0.0299055   0.1192552
24 months   COHORTS          GUATEMALA                      0                    NA                0.0720258    0.0591228   0.0849288
24 months   COHORTS          INDIA                          0                    NA                0.0312460    0.0266784   0.0358136
24 months   COHORTS          PHILIPPINES                    0                    NA                0.0160635    0.0120156   0.0201114
24 months   CONTENT          PERU                           0                    NA                0.0316492    0.0038132   0.0594853
24 months   EE               PAKISTAN                       0                    NA                0.0948973    0.0404893   0.1493053
24 months   GMS-Nepal        NEPAL                          0                    NA                0.0376209    0.0171170   0.0581247
24 months   IRC              INDIA                          0                    NA                0.0292018    0.0099387   0.0484649
24 months   JiVitA-3         BANGLADESH                     0                    NA                0.0949047    0.0867226   0.1030869
24 months   JiVitA-4         BANGLADESH                     0                    NA                0.0977450    0.0871214   0.1083686
24 months   Keneba           GAMBIA                         0                    NA                0.0348314    0.0257362   0.0439266
24 months   LCNI-5           MALAWI                         0                    NA                0.1714420    0.1391527   0.2037314
24 months   MAL-ED           BANGLADESH                     0                    NA                0.0518341    0.0216109   0.0820572
24 months   MAL-ED           INDIA                          0                    NA                0.0422166    0.0129021   0.0715311
24 months   MAL-ED           NEPAL                          0                    NA                0.0403163    0.0137251   0.0669075
24 months   MAL-ED           PERU                           0                    NA                0.0395908    0.0094662   0.0697154
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.0024739   -0.0181585   0.0231063
24 months   NIH-Birth        BANGLADESH                     0                    NA                0.0538059    0.0330099   0.0746019
24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.0328585    0.0140486   0.0516685
24 months   PROVIDE          BANGLADESH                     0                    NA                0.0258662    0.0120173   0.0397150
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0330050    0.0225218   0.0434882


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.2336647    0.1348851   0.3211656
6 months    CMIN             BANGLADESH                     0                    NA                0.5148639    0.3696281   0.6266378
6 months    COHORTS          GUATEMALA                      0                    NA                0.2231498    0.1822490   0.2620048
6 months    COHORTS          INDIA                          0                    NA                0.2992389    0.2723069   0.3251741
6 months    COHORTS          PHILIPPINES                    0                    NA                0.1244851    0.0967350   0.1513826
6 months    EE               PAKISTAN                       0                    NA                0.4494412    0.3431016   0.5385665
6 months    GMS-Nepal        NEPAL                          0                    NA                0.3035572    0.2063117   0.3888878
6 months    Guatemala BSC    GUATEMALA                      0                    NA                0.6211501    0.4925719   0.7171476
6 months    IRC              INDIA                          0                    NA                0.1756758    0.0888800   0.2542032
6 months    JiVitA-3         BANGLADESH                     0                    NA                0.5065816    0.4865344   0.5258461
6 months    JiVitA-4         BANGLADESH                     0                    NA                0.5277945    0.4857096   0.5664356
6 months    Keneba           GAMBIA                         0                    NA                0.2284625    0.1744844   0.2789111
6 months    MAL-ED           BANGLADESH                     0                    NA                0.3887837    0.2086821   0.5278947
6 months    MAL-ED           INDIA                          0                    NA                0.2223825    0.0597457   0.3568878
6 months    MAL-ED           PERU                           0                    NA                0.2571402    0.1316503   0.3644949
6 months    MAL-ED           SOUTH AFRICA                   0                    NA                0.0997151   -0.0133523   0.2001667
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3154002    0.1739389   0.4326365
6 months    NIH-Birth        BANGLADESH                     0                    NA                0.2828350    0.1997797   0.3572699
6 months    NIH-Crypto       BANGLADESH                     0                    NA                0.2479411    0.1665696   0.3213679
6 months    PROBIT           BELARUS                        0                    NA                0.0461619    0.0156295   0.0757474
6 months    PROVIDE          BANGLADESH                     0                    NA                0.2455499    0.1476259   0.3322241
6 months    ResPak           PAKISTAN                       0                    NA                0.1475792    0.0307007   0.2503645
6 months    SAS-CompFeed     INDIA                          0                    NA                0.4345539    0.3770003   0.4867906
6 months    SAS-FoodSuppl    INDIA                          0                    NA                0.6882774    0.5852806   0.7656946
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2562883    0.1890806   0.3179258
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.1589325    0.1365488   0.1807359
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.0255408   -0.0070375   0.0570652
24 months   CMIN             BANGLADESH                     0                    NA                0.1093845    0.0392304   0.1744160
24 months   COHORTS          GUATEMALA                      0                    NA                0.0887875    0.0713595   0.1058885
24 months   COHORTS          INDIA                          0                    NA                0.0583893    0.0496714   0.0670272
24 months   COHORTS          PHILIPPINES                    0                    NA                0.0257881    0.0191579   0.0323736
24 months   CONTENT          PERU                           0                    NA                0.3992674    0.0262514   0.6293914
24 months   EE               PAKISTAN                       0                    NA                0.1343038    0.0502854   0.2108893
24 months   GMS-Nepal        NEPAL                          0                    NA                0.0838309    0.0365960   0.1287500
24 months   IRC              INDIA                          0                    NA                0.0694391    0.0222573   0.1143441
24 months   JiVitA-3         BANGLADESH                     0                    NA                0.1932573    0.1755985   0.2105378
24 months   JiVitA-4         BANGLADESH                     0                    NA                0.2438238    0.2166284   0.2700750
24 months   Keneba           GAMBIA                         0                    NA                0.1034151    0.0760964   0.1299261
24 months   LCNI-5           MALAWI                         0                    NA                0.3847478    0.3080525   0.4529423
24 months   MAL-ED           BANGLADESH                     0                    NA                0.1088003    0.0418131   0.1711044
24 months   MAL-ED           INDIA                          0                    NA                0.0987955    0.0267768   0.1654848
24 months   MAL-ED           NEPAL                          0                    NA                0.1838423    0.0577239   0.2930805
24 months   MAL-ED           PERU                           0                    NA                0.1075373    0.0215817   0.1859415
24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.0070093   -0.0532053   0.0637813
24 months   NIH-Birth        BANGLADESH                     0                    NA                0.0946013    0.0560836   0.1315473
24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.1279492    0.0525946   0.1973103
24 months   PROVIDE          BANGLADESH                     0                    NA                0.0786876    0.0354242   0.1200105
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0951286    0.0644504   0.1248009
