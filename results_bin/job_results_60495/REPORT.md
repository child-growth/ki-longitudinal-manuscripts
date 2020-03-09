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

**Outcome Variable:** pers_wast

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
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        enstunt    pers_wast   n_cell       n
------------  ---------------  -----------------------------  --------  ----------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          0                  0      281     373
0-24 months   CMC-V-BCS-2002   INDIA                          0                  1       15     373
0-24 months   CMC-V-BCS-2002   INDIA                          1                  0       69     373
0-24 months   CMC-V-BCS-2002   INDIA                          1                  1        8     373
0-24 months   CMIN             BANGLADESH                     0                  0      152     257
0-24 months   CMIN             BANGLADESH                     0                  1        9     257
0-24 months   CMIN             BANGLADESH                     1                  0       85     257
0-24 months   CMIN             BANGLADESH                     1                  1       11     257
0-24 months   COHORTS          GUATEMALA                      0                  0      826    1056
0-24 months   COHORTS          GUATEMALA                      0                  1       22    1056
0-24 months   COHORTS          GUATEMALA                      1                  0      194    1056
0-24 months   COHORTS          GUATEMALA                      1                  1       14    1056
0-24 months   COHORTS          INDIA                          0                  0     4663    5705
0-24 months   COHORTS          INDIA                          0                  1      447    5705
0-24 months   COHORTS          INDIA                          1                  0      492    5705
0-24 months   COHORTS          INDIA                          1                  1      103    5705
0-24 months   COHORTS          PHILIPPINES                    0                  0     2524    2811
0-24 months   COHORTS          PHILIPPINES                    0                  1      127    2811
0-24 months   COHORTS          PHILIPPINES                    1                  0      143    2811
0-24 months   COHORTS          PHILIPPINES                    1                  1       17    2811
0-24 months   CONTENT          PERU                           0                  0      195     215
0-24 months   CONTENT          PERU                           0                  1        0     215
0-24 months   CONTENT          PERU                           1                  0       20     215
0-24 months   CONTENT          PERU                           1                  1        0     215
0-24 months   EE               PAKISTAN                       0                  0      195     377
0-24 months   EE               PAKISTAN                       0                  1       16     377
0-24 months   EE               PAKISTAN                       1                  0      149     377
0-24 months   EE               PAKISTAN                       1                  1       17     377
0-24 months   GMS-Nepal        NEPAL                          0                  0      434     597
0-24 months   GMS-Nepal        NEPAL                          0                  1       66     597
0-24 months   GMS-Nepal        NEPAL                          1                  0       83     597
0-24 months   GMS-Nepal        NEPAL                          1                  1       14     597
0-24 months   Guatemala BSC    GUATEMALA                      0                  0      196     256
0-24 months   Guatemala BSC    GUATEMALA                      0                  1        1     256
0-24 months   Guatemala BSC    GUATEMALA                      1                  0       56     256
0-24 months   Guatemala BSC    GUATEMALA                      1                  1        3     256
0-24 months   iLiNS-Zinc       BURKINA FASO                   0                  0     1185    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   0                  1      107    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                  0      284    1669
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                  1       93    1669
0-24 months   IRC              INDIA                          0                  0      317     410
0-24 months   IRC              INDIA                          0                  1       41     410
0-24 months   IRC              INDIA                          1                  0       45     410
0-24 months   IRC              INDIA                          1                  1        7     410
0-24 months   JiVitA-3         BANGLADESH                     0                  0    10928   15803
0-24 months   JiVitA-3         BANGLADESH                     0                  1      551   15803
0-24 months   JiVitA-3         BANGLADESH                     1                  0     3977   15803
0-24 months   JiVitA-3         BANGLADESH                     1                  1      347   15803
0-24 months   JiVitA-4         BANGLADESH                     0                  0     3553    5281
0-24 months   JiVitA-4         BANGLADESH                     0                  1      223    5281
0-24 months   JiVitA-4         BANGLADESH                     1                  0     1302    5281
0-24 months   JiVitA-4         BANGLADESH                     1                  1      203    5281
0-24 months   Keneba           GAMBIA                         0                  0     2080    2444
0-24 months   Keneba           GAMBIA                         0                  1      118    2444
0-24 months   Keneba           GAMBIA                         1                  0      219    2444
0-24 months   Keneba           GAMBIA                         1                  1       27    2444
0-24 months   LCNI-5           MALAWI                         0                  0      454     719
0-24 months   LCNI-5           MALAWI                         0                  1        2     719
0-24 months   LCNI-5           MALAWI                         1                  0      259     719
0-24 months   LCNI-5           MALAWI                         1                  1        4     719
0-24 months   MAL-ED           BANGLADESH                     0                  0      198     248
0-24 months   MAL-ED           BANGLADESH                     0                  1        9     248
0-24 months   MAL-ED           BANGLADESH                     1                  0       37     248
0-24 months   MAL-ED           BANGLADESH                     1                  1        4     248
0-24 months   MAL-ED           BRAZIL                         0                  0      190     218
0-24 months   MAL-ED           BRAZIL                         0                  1        2     218
0-24 months   MAL-ED           BRAZIL                         1                  0       26     218
0-24 months   MAL-ED           BRAZIL                         1                  1        0     218
0-24 months   MAL-ED           INDIA                          0                  0      184     241
0-24 months   MAL-ED           INDIA                          0                  1       17     241
0-24 months   MAL-ED           INDIA                          1                  0       36     241
0-24 months   MAL-ED           INDIA                          1                  1        4     241
0-24 months   MAL-ED           NEPAL                          0                  0      207     238
0-24 months   MAL-ED           NEPAL                          0                  1        3     238
0-24 months   MAL-ED           NEPAL                          1                  0       27     238
0-24 months   MAL-ED           NEPAL                          1                  1        1     238
0-24 months   MAL-ED           PERU                           0                  0      247     284
0-24 months   MAL-ED           PERU                           0                  1        1     284
0-24 months   MAL-ED           PERU                           1                  0       36     284
0-24 months   MAL-ED           PERU                           1                  1        0     284
0-24 months   MAL-ED           SOUTH AFRICA                   0                  0      242     275
0-24 months   MAL-ED           SOUTH AFRICA                   0                  1        2     275
0-24 months   MAL-ED           SOUTH AFRICA                   1                  0       31     275
0-24 months   MAL-ED           SOUTH AFRICA                   1                  1        0     275
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      214     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        0     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       39     253
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
0-24 months   NIH-Birth        BANGLADESH                     0                  0      416     534
0-24 months   NIH-Birth        BANGLADESH                     0                  1       36     534
0-24 months   NIH-Birth        BANGLADESH                     1                  0       71     534
0-24 months   NIH-Birth        BANGLADESH                     1                  1       11     534
0-24 months   NIH-Crypto       BANGLADESH                     0                  0      609     730
0-24 months   NIH-Crypto       BANGLADESH                     0                  1       18     730
0-24 months   NIH-Crypto       BANGLADESH                     1                  0       95     730
0-24 months   NIH-Crypto       BANGLADESH                     1                  1        8     730
0-24 months   PROBIT           BELARUS                        0                  0    16329   16583
0-24 months   PROBIT           BELARUS                        0                  1      134   16583
0-24 months   PROBIT           BELARUS                        1                  0      120   16583
0-24 months   PROBIT           BELARUS                        1                  1        0   16583
0-24 months   PROVIDE          BANGLADESH                     0                  0      566     641
0-24 months   PROVIDE          BANGLADESH                     0                  1       12     641
0-24 months   PROVIDE          BANGLADESH                     1                  0       60     641
0-24 months   PROVIDE          BANGLADESH                     1                  1        3     641
0-24 months   ResPak           PAKISTAN                       0                  0      165     256
0-24 months   ResPak           PAKISTAN                       0                  1       22     256
0-24 months   ResPak           PAKISTAN                       1                  0       57     256
0-24 months   ResPak           PAKISTAN                       1                  1       12     256
0-24 months   SAS-CompFeed     INDIA                          0                  0      938    1366
0-24 months   SAS-CompFeed     INDIA                          0                  1       57    1366
0-24 months   SAS-CompFeed     INDIA                          1                  0      314    1366
0-24 months   SAS-CompFeed     INDIA                          1                  1       57    1366
0-24 months   SAS-FoodSuppl    INDIA                          0                  0      192     375
0-24 months   SAS-FoodSuppl    INDIA                          0                  1       34     375
0-24 months   SAS-FoodSuppl    INDIA                          1                  0      118     375
0-24 months   SAS-FoodSuppl    INDIA                          1                  1       31     375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1964    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1       55    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      144    2166
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        3    2166
0-24 months   ZVITAMBO         ZIMBABWE                       0                  0     8451    9527
0-24 months   ZVITAMBO         ZIMBABWE                       0                  1      148    9527
0-24 months   ZVITAMBO         ZIMBABWE                       1                  0      908    9527
0-24 months   ZVITAMBO         ZIMBABWE                       1                  1       20    9527
0-6 months    CMC-V-BCS-2002   INDIA                          0                  0      247     358
0-6 months    CMC-V-BCS-2002   INDIA                          0                  1       37     358
0-6 months    CMC-V-BCS-2002   INDIA                          1                  0       61     358
0-6 months    CMC-V-BCS-2002   INDIA                          1                  1       13     358
0-6 months    CMIN             BANGLADESH                     0                  0      143     234
0-6 months    CMIN             BANGLADESH                     0                  1        4     234
0-6 months    CMIN             BANGLADESH                     1                  0       82     234
0-6 months    CMIN             BANGLADESH                     1                  1        5     234
0-6 months    COHORTS          PHILIPPINES                    0                  0      777     853
0-6 months    COHORTS          PHILIPPINES                    0                  1       50     853
0-6 months    COHORTS          PHILIPPINES                    1                  0       24     853
0-6 months    COHORTS          PHILIPPINES                    1                  1        2     853
0-6 months    CONTENT          PERU                           0                  0      195     215
0-6 months    CONTENT          PERU                           0                  1        0     215
0-6 months    CONTENT          PERU                           1                  0       20     215
0-6 months    CONTENT          PERU                           1                  1        0     215
0-6 months    EE               PAKISTAN                       0                  0      196     371
0-6 months    EE               PAKISTAN                       0                  1       13     371
0-6 months    EE               PAKISTAN                       1                  0      150     371
0-6 months    EE               PAKISTAN                       1                  1       12     371
0-6 months    GMS-Nepal        NEPAL                          0                  0      421     567
0-6 months    GMS-Nepal        NEPAL                          0                  1       54     567
0-6 months    GMS-Nepal        NEPAL                          1                  0       84     567
0-6 months    GMS-Nepal        NEPAL                          1                  1        8     567
0-6 months    IRC              INDIA                          0                  0      294     402
0-6 months    IRC              INDIA                          0                  1       57     402
0-6 months    IRC              INDIA                          1                  0       44     402
0-6 months    IRC              INDIA                          1                  1        7     402
0-6 months    JiVitA-3         BANGLADESH                     0                  0       39      50
0-6 months    JiVitA-3         BANGLADESH                     0                  1        2      50
0-6 months    JiVitA-3         BANGLADESH                     1                  0        9      50
0-6 months    JiVitA-3         BANGLADESH                     1                  1        0      50
0-6 months    Keneba           GAMBIA                         0                  0     1806    2045
0-6 months    Keneba           GAMBIA                         0                  1       55    2045
0-6 months    Keneba           GAMBIA                         1                  0      176    2045
0-6 months    Keneba           GAMBIA                         1                  1        8    2045
0-6 months    MAL-ED           BANGLADESH                     0                  0      201     248
0-6 months    MAL-ED           BANGLADESH                     0                  1        6     248
0-6 months    MAL-ED           BANGLADESH                     1                  0       40     248
0-6 months    MAL-ED           BANGLADESH                     1                  1        1     248
0-6 months    MAL-ED           BRAZIL                         0                  0      191     218
0-6 months    MAL-ED           BRAZIL                         0                  1        1     218
0-6 months    MAL-ED           BRAZIL                         1                  0       26     218
0-6 months    MAL-ED           BRAZIL                         1                  1        0     218
0-6 months    MAL-ED           INDIA                          0                  0      184     240
0-6 months    MAL-ED           INDIA                          0                  1       17     240
0-6 months    MAL-ED           INDIA                          1                  0       37     240
0-6 months    MAL-ED           INDIA                          1                  1        2     240
0-6 months    MAL-ED           NEPAL                          0                  0      205     238
0-6 months    MAL-ED           NEPAL                          0                  1        5     238
0-6 months    MAL-ED           NEPAL                          1                  0       26     238
0-6 months    MAL-ED           NEPAL                          1                  1        2     238
0-6 months    MAL-ED           PERU                           0                  0      248     284
0-6 months    MAL-ED           PERU                           0                  1        0     284
0-6 months    MAL-ED           PERU                           1                  0       36     284
0-6 months    MAL-ED           PERU                           1                  1        0     284
0-6 months    MAL-ED           SOUTH AFRICA                   0                  0      242     274
0-6 months    MAL-ED           SOUTH AFRICA                   0                  1        2     274
0-6 months    MAL-ED           SOUTH AFRICA                   1                  0       30     274
0-6 months    MAL-ED           SOUTH AFRICA                   1                  1        0     274
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      214     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        0     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       39     253
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
0-6 months    NIH-Birth        BANGLADESH                     0                  0      140     169
0-6 months    NIH-Birth        BANGLADESH                     0                  1        9     169
0-6 months    NIH-Birth        BANGLADESH                     1                  0       18     169
0-6 months    NIH-Birth        BANGLADESH                     1                  1        2     169
0-6 months    NIH-Crypto       BANGLADESH                     0                  0      218     250
0-6 months    NIH-Crypto       BANGLADESH                     0                  1        4     250
0-6 months    NIH-Crypto       BANGLADESH                     1                  0       27     250
0-6 months    NIH-Crypto       BANGLADESH                     1                  1        1     250
0-6 months    PROBIT           BELARUS                        0                  0    12404   13534
0-6 months    PROBIT           BELARUS                        0                  1     1097   13534
0-6 months    PROBIT           BELARUS                        1                  0       33   13534
0-6 months    PROBIT           BELARUS                        1                  1        0   13534
0-6 months    PROVIDE          BANGLADESH                     0                  0      563     638
0-6 months    PROVIDE          BANGLADESH                     0                  1       12     638
0-6 months    PROVIDE          BANGLADESH                     1                  0       61     638
0-6 months    PROVIDE          BANGLADESH                     1                  1        2     638
0-6 months    ResPak           PAKISTAN                       0                  0      165     243
0-6 months    ResPak           PAKISTAN                       0                  1       17     243
0-6 months    ResPak           PAKISTAN                       1                  0       53     243
0-6 months    ResPak           PAKISTAN                       1                  1        8     243
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1868    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1       50    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      141    2061
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        2    2061
0-6 months    ZVITAMBO         ZIMBABWE                       0                  0      590     632
0-6 months    ZVITAMBO         ZIMBABWE                       0                  1       12     632
0-6 months    ZVITAMBO         ZIMBABWE                       1                  0       28     632
0-6 months    ZVITAMBO         ZIMBABWE                       1                  1        2     632
6-24 months   CMC-V-BCS-2002   INDIA                          0                  0      281     373
6-24 months   CMC-V-BCS-2002   INDIA                          0                  1       15     373
6-24 months   CMC-V-BCS-2002   INDIA                          1                  0       69     373
6-24 months   CMC-V-BCS-2002   INDIA                          1                  1        8     373
6-24 months   CMIN             BANGLADESH                     0                  0      152     257
6-24 months   CMIN             BANGLADESH                     0                  1        9     257
6-24 months   CMIN             BANGLADESH                     1                  0       85     257
6-24 months   CMIN             BANGLADESH                     1                  1       11     257
6-24 months   COHORTS          GUATEMALA                      0                  0      826    1056
6-24 months   COHORTS          GUATEMALA                      0                  1       22    1056
6-24 months   COHORTS          GUATEMALA                      1                  0      194    1056
6-24 months   COHORTS          GUATEMALA                      1                  1       14    1056
6-24 months   COHORTS          INDIA                          0                  0     4663    5705
6-24 months   COHORTS          INDIA                          0                  1      447    5705
6-24 months   COHORTS          INDIA                          1                  0      492    5705
6-24 months   COHORTS          INDIA                          1                  1      103    5705
6-24 months   COHORTS          PHILIPPINES                    0                  0     2524    2811
6-24 months   COHORTS          PHILIPPINES                    0                  1      127    2811
6-24 months   COHORTS          PHILIPPINES                    1                  0      143    2811
6-24 months   COHORTS          PHILIPPINES                    1                  1       17    2811
6-24 months   CONTENT          PERU                           0                  0      195     215
6-24 months   CONTENT          PERU                           0                  1        0     215
6-24 months   CONTENT          PERU                           1                  0       20     215
6-24 months   CONTENT          PERU                           1                  1        0     215
6-24 months   EE               PAKISTAN                       0                  0      195     377
6-24 months   EE               PAKISTAN                       0                  1       16     377
6-24 months   EE               PAKISTAN                       1                  0      149     377
6-24 months   EE               PAKISTAN                       1                  1       17     377
6-24 months   GMS-Nepal        NEPAL                          0                  0      434     597
6-24 months   GMS-Nepal        NEPAL                          0                  1       66     597
6-24 months   GMS-Nepal        NEPAL                          1                  0       83     597
6-24 months   GMS-Nepal        NEPAL                          1                  1       14     597
6-24 months   Guatemala BSC    GUATEMALA                      0                  0      196     256
6-24 months   Guatemala BSC    GUATEMALA                      0                  1        1     256
6-24 months   Guatemala BSC    GUATEMALA                      1                  0       56     256
6-24 months   Guatemala BSC    GUATEMALA                      1                  1        3     256
6-24 months   iLiNS-Zinc       BURKINA FASO                   0                  0     1185    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   0                  1      107    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                  0      284    1669
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                  1       93    1669
6-24 months   IRC              INDIA                          0                  0      317     410
6-24 months   IRC              INDIA                          0                  1       41     410
6-24 months   IRC              INDIA                          1                  0       45     410
6-24 months   IRC              INDIA                          1                  1        7     410
6-24 months   JiVitA-3         BANGLADESH                     0                  0    10928   15803
6-24 months   JiVitA-3         BANGLADESH                     0                  1      551   15803
6-24 months   JiVitA-3         BANGLADESH                     1                  0     3977   15803
6-24 months   JiVitA-3         BANGLADESH                     1                  1      347   15803
6-24 months   JiVitA-4         BANGLADESH                     0                  0     3553    5281
6-24 months   JiVitA-4         BANGLADESH                     0                  1      223    5281
6-24 months   JiVitA-4         BANGLADESH                     1                  0     1302    5281
6-24 months   JiVitA-4         BANGLADESH                     1                  1      203    5281
6-24 months   Keneba           GAMBIA                         0                  0     2080    2444
6-24 months   Keneba           GAMBIA                         0                  1      118    2444
6-24 months   Keneba           GAMBIA                         1                  0      219    2444
6-24 months   Keneba           GAMBIA                         1                  1       27    2444
6-24 months   LCNI-5           MALAWI                         0                  0      454     719
6-24 months   LCNI-5           MALAWI                         0                  1        2     719
6-24 months   LCNI-5           MALAWI                         1                  0      259     719
6-24 months   LCNI-5           MALAWI                         1                  1        4     719
6-24 months   MAL-ED           BANGLADESH                     0                  0      198     248
6-24 months   MAL-ED           BANGLADESH                     0                  1        9     248
6-24 months   MAL-ED           BANGLADESH                     1                  0       37     248
6-24 months   MAL-ED           BANGLADESH                     1                  1        4     248
6-24 months   MAL-ED           BRAZIL                         0                  0      190     218
6-24 months   MAL-ED           BRAZIL                         0                  1        2     218
6-24 months   MAL-ED           BRAZIL                         1                  0       26     218
6-24 months   MAL-ED           BRAZIL                         1                  1        0     218
6-24 months   MAL-ED           INDIA                          0                  0      184     241
6-24 months   MAL-ED           INDIA                          0                  1       17     241
6-24 months   MAL-ED           INDIA                          1                  0       36     241
6-24 months   MAL-ED           INDIA                          1                  1        4     241
6-24 months   MAL-ED           NEPAL                          0                  0      207     238
6-24 months   MAL-ED           NEPAL                          0                  1        3     238
6-24 months   MAL-ED           NEPAL                          1                  0       27     238
6-24 months   MAL-ED           NEPAL                          1                  1        1     238
6-24 months   MAL-ED           PERU                           0                  0      247     284
6-24 months   MAL-ED           PERU                           0                  1        1     284
6-24 months   MAL-ED           PERU                           1                  0       36     284
6-24 months   MAL-ED           PERU                           1                  1        0     284
6-24 months   MAL-ED           SOUTH AFRICA                   0                  0      242     275
6-24 months   MAL-ED           SOUTH AFRICA                   0                  1        2     275
6-24 months   MAL-ED           SOUTH AFRICA                   1                  0       31     275
6-24 months   MAL-ED           SOUTH AFRICA                   1                  1        0     275
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  0      214     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                  1        0     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  0       39     253
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                  1        0     253
6-24 months   NIH-Birth        BANGLADESH                     0                  0      416     534
6-24 months   NIH-Birth        BANGLADESH                     0                  1       36     534
6-24 months   NIH-Birth        BANGLADESH                     1                  0       71     534
6-24 months   NIH-Birth        BANGLADESH                     1                  1       11     534
6-24 months   NIH-Crypto       BANGLADESH                     0                  0      609     730
6-24 months   NIH-Crypto       BANGLADESH                     0                  1       18     730
6-24 months   NIH-Crypto       BANGLADESH                     1                  0       95     730
6-24 months   NIH-Crypto       BANGLADESH                     1                  1        8     730
6-24 months   PROBIT           BELARUS                        0                  0    16329   16583
6-24 months   PROBIT           BELARUS                        0                  1      134   16583
6-24 months   PROBIT           BELARUS                        1                  0      120   16583
6-24 months   PROBIT           BELARUS                        1                  1        0   16583
6-24 months   PROVIDE          BANGLADESH                     0                  0      566     641
6-24 months   PROVIDE          BANGLADESH                     0                  1       12     641
6-24 months   PROVIDE          BANGLADESH                     1                  0       60     641
6-24 months   PROVIDE          BANGLADESH                     1                  1        3     641
6-24 months   ResPak           PAKISTAN                       0                  0      165     256
6-24 months   ResPak           PAKISTAN                       0                  1       22     256
6-24 months   ResPak           PAKISTAN                       1                  0       57     256
6-24 months   ResPak           PAKISTAN                       1                  1       12     256
6-24 months   SAS-CompFeed     INDIA                          0                  0      938    1366
6-24 months   SAS-CompFeed     INDIA                          0                  1       57    1366
6-24 months   SAS-CompFeed     INDIA                          1                  0      314    1366
6-24 months   SAS-CompFeed     INDIA                          1                  1       57    1366
6-24 months   SAS-FoodSuppl    INDIA                          0                  0      192     375
6-24 months   SAS-FoodSuppl    INDIA                          0                  1       34     375
6-24 months   SAS-FoodSuppl    INDIA                          1                  0      118     375
6-24 months   SAS-FoodSuppl    INDIA                          1                  1       31     375
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1964    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1       55    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      144    2166
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        3    2166
6-24 months   ZVITAMBO         ZIMBABWE                       0                  0     8451    9527
6-24 months   ZVITAMBO         ZIMBABWE                       0                  1      148    9527
6-24 months   ZVITAMBO         ZIMBABWE                       1                  0      908    9527
6-24 months   ZVITAMBO         ZIMBABWE                       1                  1       20    9527


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: CONTENT, country: PERU
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/955c453b-c80f-4a75-b077-4cbd4917b254/de6012d9-d365-4476-a40a-63d856307f22/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/955c453b-c80f-4a75-b077-4cbd4917b254/de6012d9-d365-4476-a40a-63d856307f22/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/955c453b-c80f-4a75-b077-4cbd4917b254/de6012d9-d365-4476-a40a-63d856307f22/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/955c453b-c80f-4a75-b077-4cbd4917b254/de6012d9-d365-4476-a40a-63d856307f22/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA          0                    NA                0.0506757   0.0256554   0.0756960
0-24 months   CMC-V-BCS-2002   INDIA          1                    NA                0.1038961   0.0356521   0.1721401
0-24 months   CMIN             BANGLADESH     0                    NA                0.0559006   0.0203458   0.0914555
0-24 months   CMIN             BANGLADESH     1                    NA                0.1145833   0.0507432   0.1784234
0-24 months   COHORTS          GUATEMALA      0                    NA                0.0258040   0.0151408   0.0364672
0-24 months   COHORTS          GUATEMALA      1                    NA                0.0666779   0.0327656   0.1005902
0-24 months   COHORTS          INDIA          0                    NA                0.0879567   0.0801977   0.0957157
0-24 months   COHORTS          INDIA          1                    NA                0.1676609   0.1373199   0.1980019
0-24 months   COHORTS          PHILIPPINES    0                    NA                0.0478971   0.0397648   0.0560293
0-24 months   COHORTS          PHILIPPINES    1                    NA                0.1073927   0.0583463   0.1564390
0-24 months   EE               PAKISTAN       0                    NA                0.0757981   0.0398415   0.1117548
0-24 months   EE               PAKISTAN       1                    NA                0.1016571   0.0550921   0.1482221
0-24 months   GMS-Nepal        NEPAL          0                    NA                0.1317933   0.1020992   0.1614873
0-24 months   GMS-Nepal        NEPAL          1                    NA                0.1448809   0.0737648   0.2159970
0-24 months   iLiNS-Zinc       BURKINA FASO   0                    NA                0.0840916   0.0600289   0.1081544
0-24 months   iLiNS-Zinc       BURKINA FASO   1                    NA                0.2393754   0.1515570   0.3271937
0-24 months   IRC              INDIA          0                    NA                0.1145251   0.0814977   0.1475526
0-24 months   IRC              INDIA          1                    NA                0.1346154   0.0417340   0.2274968
0-24 months   JiVitA-3         BANGLADESH     0                    NA                0.0485306   0.0439597   0.0531014
0-24 months   JiVitA-3         BANGLADESH     1                    NA                0.0805037   0.0714128   0.0895945
0-24 months   JiVitA-4         BANGLADESH     0                    NA                0.0597657   0.0511457   0.0683856
0-24 months   JiVitA-4         BANGLADESH     1                    NA                0.1319529   0.1123131   0.1515926
0-24 months   Keneba           GAMBIA         0                    NA                0.0536159   0.0441929   0.0630389
0-24 months   Keneba           GAMBIA         1                    NA                0.1127229   0.0731366   0.1523091
0-24 months   NIH-Birth        BANGLADESH     0                    NA                0.0796857   0.0547202   0.1046512
0-24 months   NIH-Birth        BANGLADESH     1                    NA                0.1450153   0.0703857   0.2196449
0-24 months   NIH-Crypto       BANGLADESH     0                    NA                0.0287081   0.0156287   0.0417876
0-24 months   NIH-Crypto       BANGLADESH     1                    NA                0.0776699   0.0259454   0.1293945
0-24 months   ResPak           PAKISTAN       0                    NA                0.1150172   0.0694721   0.1605622
0-24 months   ResPak           PAKISTAN       1                    NA                0.1779508   0.0843543   0.2715473
0-24 months   SAS-CompFeed     INDIA          0                    NA                0.0583306   0.0365440   0.0801172
0-24 months   SAS-CompFeed     INDIA          1                    NA                0.1471322   0.0956230   0.1986413
0-24 months   SAS-FoodSuppl    INDIA          0                    NA                0.1475258   0.1009554   0.1940962
0-24 months   SAS-FoodSuppl    INDIA          1                    NA                0.2046393   0.1386273   0.2706514
0-24 months   ZVITAMBO         ZIMBABWE       0                    NA                0.0172549   0.0145009   0.0200088
0-24 months   ZVITAMBO         ZIMBABWE       1                    NA                0.0211260   0.0118724   0.0303797
0-6 months    CMC-V-BCS-2002   INDIA          0                    NA                0.1297692   0.0905198   0.1690186
0-6 months    CMC-V-BCS-2002   INDIA          1                    NA                0.1735218   0.0850344   0.2620093
0-6 months    EE               PAKISTAN       0                    NA                0.0630647   0.0301481   0.0959813
0-6 months    EE               PAKISTAN       1                    NA                0.0736198   0.0331914   0.1140482
0-6 months    GMS-Nepal        NEPAL          0                    NA                0.1136842   0.0851130   0.1422554
0-6 months    GMS-Nepal        NEPAL          1                    NA                0.0869565   0.0293284   0.1445846
0-6 months    IRC              INDIA          0                    NA                0.1623932   0.1237619   0.2010245
0-6 months    IRC              INDIA          1                    NA                0.1372549   0.0426946   0.2318152
0-6 months    Keneba           GAMBIA         0                    NA                0.0295540   0.0218578   0.0372502
0-6 months    Keneba           GAMBIA         1                    NA                0.0434783   0.0140050   0.0729516
0-6 months    ResPak           PAKISTAN       0                    NA                0.0934066   0.0510420   0.1357712
0-6 months    ResPak           PAKISTAN       1                    NA                0.1311475   0.0462624   0.2160327
6-24 months   CMC-V-BCS-2002   INDIA          0                    NA                0.0506757   0.0256554   0.0756960
6-24 months   CMC-V-BCS-2002   INDIA          1                    NA                0.1038961   0.0356521   0.1721401
6-24 months   CMIN             BANGLADESH     0                    NA                0.0559006   0.0203458   0.0914555
6-24 months   CMIN             BANGLADESH     1                    NA                0.1145833   0.0507432   0.1784234
6-24 months   COHORTS          GUATEMALA      0                    NA                0.0259033   0.0152168   0.0365897
6-24 months   COHORTS          GUATEMALA      1                    NA                0.0654033   0.0318167   0.0989899
6-24 months   COHORTS          INDIA          0                    NA                0.0878782   0.0801287   0.0956278
6-24 months   COHORTS          INDIA          1                    NA                0.1670648   0.1367696   0.1973600
6-24 months   COHORTS          PHILIPPINES    0                    NA                0.0478970   0.0397644   0.0560297
6-24 months   COHORTS          PHILIPPINES    1                    NA                0.1067496   0.0577013   0.1557980
6-24 months   EE               PAKISTAN       0                    NA                0.0768683   0.0406275   0.1131092
6-24 months   EE               PAKISTAN       1                    NA                0.1001000   0.0538230   0.1463769
6-24 months   GMS-Nepal        NEPAL          0                    NA                0.1321428   0.1024493   0.1618363
6-24 months   GMS-Nepal        NEPAL          1                    NA                0.1506727   0.0815007   0.2198447
6-24 months   iLiNS-Zinc       BURKINA FASO   0                    NA                0.0839950   0.0601273   0.1078628
6-24 months   iLiNS-Zinc       BURKINA FASO   1                    NA                0.2395414   0.1475912   0.3314916
6-24 months   IRC              INDIA          0                    NA                0.1145251   0.0814977   0.1475526
6-24 months   IRC              INDIA          1                    NA                0.1346154   0.0417340   0.2274968
6-24 months   JiVitA-3         BANGLADESH     0                    NA                0.0482520   0.0437045   0.0527994
6-24 months   JiVitA-3         BANGLADESH     1                    NA                0.0800516   0.0711243   0.0889788
6-24 months   JiVitA-4         BANGLADESH     0                    NA                0.0598035   0.0511940   0.0684129
6-24 months   JiVitA-4         BANGLADESH     1                    NA                0.1310443   0.1115292   0.1505594
6-24 months   Keneba           GAMBIA         0                    NA                0.0535170   0.0441018   0.0629322
6-24 months   Keneba           GAMBIA         1                    NA                0.1127819   0.0726653   0.1528985
6-24 months   NIH-Birth        BANGLADESH     0                    NA                0.0792040   0.0541883   0.1042197
6-24 months   NIH-Birth        BANGLADESH     1                    NA                0.1169824   0.0421855   0.1917794
6-24 months   NIH-Crypto       BANGLADESH     0                    NA                0.0287081   0.0156287   0.0417876
6-24 months   NIH-Crypto       BANGLADESH     1                    NA                0.0776699   0.0259454   0.1293945
6-24 months   ResPak           PAKISTAN       0                    NA                0.1141509   0.0684364   0.1598653
6-24 months   ResPak           PAKISTAN       1                    NA                0.1840766   0.0884668   0.2796864
6-24 months   SAS-CompFeed     INDIA          0                    NA                0.0583306   0.0365440   0.0801172
6-24 months   SAS-CompFeed     INDIA          1                    NA                0.1471322   0.0956230   0.1986413
6-24 months   SAS-FoodSuppl    INDIA          0                    NA                0.1477290   0.1014228   0.1940351
6-24 months   SAS-FoodSuppl    INDIA          1                    NA                0.2133358   0.1464881   0.2801835
6-24 months   ZVITAMBO         ZIMBABWE       0                    NA                0.0172594   0.0145051   0.0200137
6-24 months   ZVITAMBO         ZIMBABWE       1                    NA                0.0214107   0.0121035   0.0307179


### Parameter: E(Y)


agecat        studyid          country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA          NA                   NA                0.0616622   0.0372186   0.0861058
0-24 months   CMIN             BANGLADESH     NA                   NA                0.0778210   0.0450051   0.1106369
0-24 months   COHORTS          GUATEMALA      NA                   NA                0.0340909   0.0231410   0.0450408
0-24 months   COHORTS          INDIA          NA                   NA                0.0964067   0.0887472   0.1040661
0-24 months   COHORTS          PHILIPPINES    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   EE               PAKISTAN       NA                   NA                0.0875332   0.0589672   0.1160991
0-24 months   GMS-Nepal        NEPAL          NA                   NA                0.1340034   0.1066544   0.1613523
0-24 months   iLiNS-Zinc       BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
0-24 months   IRC              INDIA          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   JiVitA-3         BANGLADESH     NA                   NA                0.0568247   0.0527145   0.0609348
0-24 months   JiVitA-4         BANGLADESH     NA                   NA                0.0806665   0.0720540   0.0892791
0-24 months   Keneba           GAMBIA         NA                   NA                0.0593290   0.0499611   0.0686968
0-24 months   NIH-Birth        BANGLADESH     NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   NIH-Crypto       BANGLADESH     NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ResPak           PAKISTAN       NA                   NA                0.1328125   0.0911588   0.1744662
0-24 months   SAS-CompFeed     INDIA          NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   SAS-FoodSuppl    INDIA          NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ZVITAMBO         ZIMBABWE       NA                   NA                0.0176341   0.0149910   0.0202771
0-6 months    CMC-V-BCS-2002   INDIA          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    EE               PAKISTAN       NA                   NA                0.0673854   0.0418419   0.0929290
0-6 months    GMS-Nepal        NEPAL          NA                   NA                0.1093474   0.0836377   0.1350572
0-6 months    IRC              INDIA          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    Keneba           GAMBIA         NA                   NA                0.0308068   0.0233159   0.0382978
0-6 months    ResPak           PAKISTAN       NA                   NA                0.1028807   0.0646041   0.1411572
6-24 months   CMC-V-BCS-2002   INDIA          NA                   NA                0.0616622   0.0372186   0.0861058
6-24 months   CMIN             BANGLADESH     NA                   NA                0.0778210   0.0450051   0.1106369
6-24 months   COHORTS          GUATEMALA      NA                   NA                0.0340909   0.0231410   0.0450408
6-24 months   COHORTS          INDIA          NA                   NA                0.0964067   0.0887472   0.1040661
6-24 months   COHORTS          PHILIPPINES    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   EE               PAKISTAN       NA                   NA                0.0875332   0.0589672   0.1160991
6-24 months   GMS-Nepal        NEPAL          NA                   NA                0.1340034   0.1066544   0.1613523
6-24 months   iLiNS-Zinc       BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
6-24 months   IRC              INDIA          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   JiVitA-3         BANGLADESH     NA                   NA                0.0568247   0.0527145   0.0609348
6-24 months   JiVitA-4         BANGLADESH     NA                   NA                0.0806665   0.0720540   0.0892791
6-24 months   Keneba           GAMBIA         NA                   NA                0.0593290   0.0499611   0.0686968
6-24 months   NIH-Birth        BANGLADESH     NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   NIH-Crypto       BANGLADESH     NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ResPak           PAKISTAN       NA                   NA                0.1328125   0.0911588   0.1744662
6-24 months   SAS-CompFeed     INDIA          NA                   NA                0.0834553   0.0601989   0.1067118
6-24 months   SAS-FoodSuppl    INDIA          NA                   NA                0.1733333   0.1349698   0.2116969
6-24 months   ZVITAMBO         ZIMBABWE       NA                   NA                0.0176341   0.0149910   0.0202771


### Parameter: RR


agecat        studyid          country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   CMC-V-BCS-2002   INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   CMC-V-BCS-2002   INDIA          1                    0                 2.0502165   0.9014289   4.663027
0-24 months   CMIN             BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   CMIN             BANGLADESH     1                    0                 2.0497685   0.8800068   4.774453
0-24 months   COHORTS          GUATEMALA      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA      1                    0                 2.5840163   1.3416320   4.976879
0-24 months   COHORTS          INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA          1                    0                 1.9061744   1.5589507   2.330735
0-24 months   COHORTS          PHILIPPINES    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES    1                    0                 2.2421541   1.3773408   3.649972
0-24 months   EE               PAKISTAN       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   EE               PAKISTAN       1                    0                 1.3411551   0.6937874   2.592576
0-24 months   GMS-Nepal        NEPAL          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal        NEPAL          1                    0                 1.0993040   0.6401382   1.887826
0-24 months   iLiNS-Zinc       BURKINA FASO   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO   1                    0                 2.8466015   1.7509312   4.627903
0-24 months   IRC              INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA          1                    0                 1.1754221   0.5564423   2.482948
0-24 months   JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH     1                    0                 1.6588237   1.4373354   1.914443
0-24 months   JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4         BANGLADESH     1                    0                 2.2078376   1.8062855   2.698658
0-24 months   Keneba           GAMBIA         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   Keneba           GAMBIA         1                    0                 2.1024147   1.4198479   3.113114
0-24 months   NIH-Birth        BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH     1                    0                 1.8198410   0.9953166   3.327405
0-24 months   NIH-Crypto       BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH     1                    0                 2.7055016   1.2073171   6.062814
0-24 months   ResPak           PAKISTAN       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ResPak           PAKISTAN       1                    0                 1.5471675   0.8005161   2.990230
0-24 months   SAS-CompFeed     INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA          1                    0                 2.5223830   1.6889474   3.767089
0-24 months   SAS-FoodSuppl    INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA          1                    0                 1.3871427   0.8829091   2.179346
0-24 months   ZVITAMBO         ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE       1                    0                 1.2243537   0.7681664   1.951455
0-6 months    CMC-V-BCS-2002   INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    CMC-V-BCS-2002   INDIA          1                    0                 1.3371572   0.7386013   2.420777
0-6 months    EE               PAKISTAN       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    EE               PAKISTAN       1                    0                 1.1673692   0.5474616   2.489217
0-6 months    GMS-Nepal        NEPAL          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal        NEPAL          1                    0                 0.7648953   0.3765167   1.553888
0-6 months    IRC              INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    IRC              INDIA          1                    0                 0.8452012   0.4077771   1.751852
0-6 months    Keneba           GAMBIA         0                    0                 1.0000000   1.0000000   1.000000
0-6 months    Keneba           GAMBIA         1                    0                 1.4711462   0.7116691   3.041120
0-6 months    ResPak           PAKISTAN       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ResPak           PAKISTAN       1                    0                 1.4040501   0.6370034   3.094735
6-24 months   CMC-V-BCS-2002   INDIA          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   CMC-V-BCS-2002   INDIA          1                    0                 2.0502165   0.9014289   4.663027
6-24 months   CMIN             BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   CMIN             BANGLADESH     1                    0                 2.0497685   0.8800068   4.774453
6-24 months   COHORTS          GUATEMALA      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   COHORTS          GUATEMALA      1                    0                 2.5249081   1.3059281   4.881709
6-24 months   COHORTS          INDIA          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   COHORTS          INDIA          1                    0                 1.9010939   1.5543042   2.325258
6-24 months   COHORTS          PHILIPPINES    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES    1                    0                 2.2287323   1.3655344   3.637585
6-24 months   EE               PAKISTAN       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   EE               PAKISTAN       1                    0                 1.3022264   0.6726446   2.521084
6-24 months   GMS-Nepal        NEPAL          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal        NEPAL          1                    0                 1.1402262   0.6833712   1.902503
6-24 months   iLiNS-Zinc       BURKINA FASO   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO   1                    0                 2.8518520   1.7318766   4.696097
6-24 months   IRC              INDIA          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   IRC              INDIA          1                    0                 1.1754221   0.5564423   2.482948
6-24 months   JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH     1                    0                 1.6590322   1.4381772   1.913803
6-24 months   JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4         BANGLADESH     1                    0                 2.1912491   1.7921711   2.679193
6-24 months   Keneba           GAMBIA         0                    0                 1.0000000   1.0000000   1.000000
6-24 months   Keneba           GAMBIA         1                    0                 2.1074037   1.4173417   3.133437
6-24 months   NIH-Birth        BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth        BANGLADESH     1                    0                 1.4769758   0.7231694   3.016524
6-24 months   NIH-Crypto       BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH     1                    0                 2.7055016   1.2073171   6.062814
6-24 months   ResPak           PAKISTAN       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ResPak           PAKISTAN       1                    0                 1.6125730   0.8354241   3.112661
6-24 months   SAS-CompFeed     INDIA          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA          1                    0                 2.5223830   1.6889474   3.767089
6-24 months   SAS-FoodSuppl    INDIA          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl    INDIA          1                    0                 1.4441026   0.9276333   2.248121
6-24 months   ZVITAMBO         ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE       1                    0                 1.2405264   0.7807325   1.971105


### Parameter: PAR


agecat        studyid          country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA          0                    NA                 0.0109865   -0.0041772   0.0261502
0-24 months   CMIN             BANGLADESH     0                    NA                 0.0219204   -0.0055961   0.0494369
0-24 months   COHORTS          GUATEMALA      0                    NA                 0.0082869    0.0011880   0.0153858
0-24 months   COHORTS          INDIA          0                    NA                 0.0084499    0.0051240   0.0117759
0-24 months   COHORTS          PHILIPPINES    0                    NA                 0.0033302    0.0005236   0.0061369
0-24 months   EE               PAKISTAN       0                    NA                 0.0117350   -0.0141362   0.0376063
0-24 months   GMS-Nepal        NEPAL          0                    NA                 0.0022101   -0.0102142   0.0146343
0-24 months   iLiNS-Zinc       BURKINA FASO   0                    NA                 0.0357406    0.0141977   0.0572835
0-24 months   IRC              INDIA          0                    NA                 0.0025480   -0.0099714   0.0150675
0-24 months   JiVitA-3         BANGLADESH     0                    NA                 0.0082941    0.0055365   0.0110516
0-24 months   JiVitA-4         BANGLADESH     0                    NA                 0.0209009    0.0148269   0.0269748
0-24 months   Keneba           GAMBIA         0                    NA                 0.0057131    0.0016174   0.0098087
0-24 months   NIH-Birth        BANGLADESH     0                    NA                 0.0083293   -0.0037732   0.0204317
0-24 months   NIH-Crypto       BANGLADESH     0                    NA                 0.0069083   -0.0007205   0.0145371
0-24 months   ResPak           PAKISTAN       0                    NA                 0.0177953   -0.0093443   0.0449350
0-24 months   SAS-CompFeed     INDIA          0                    NA                 0.0251247    0.0141754   0.0360740
0-24 months   SAS-FoodSuppl    INDIA          0                    NA                 0.0258075   -0.0062801   0.0578952
0-24 months   ZVITAMBO         ZIMBABWE       0                    NA                 0.0003792   -0.0005709   0.0013294
0-6 months    CMC-V-BCS-2002   INDIA          0                    NA                 0.0098956   -0.0100208   0.0298120
0-6 months    EE               PAKISTAN       0                    NA                 0.0043208   -0.0184704   0.0271119
0-6 months    GMS-Nepal        NEPAL          0                    NA                -0.0043368   -0.0148050   0.0061315
0-6 months    IRC              INDIA          0                    NA                -0.0031892   -0.0161740   0.0097956
0-6 months    Keneba           GAMBIA         0                    NA                 0.0012528   -0.0014934   0.0039991
0-6 months    ResPak           PAKISTAN       0                    NA                 0.0094741   -0.0144300   0.0333782
6-24 months   CMC-V-BCS-2002   INDIA          0                    NA                 0.0109865   -0.0041772   0.0261502
6-24 months   CMIN             BANGLADESH     0                    NA                 0.0219204   -0.0055961   0.0494369
6-24 months   COHORTS          GUATEMALA      0                    NA                 0.0081877    0.0010755   0.0152998
6-24 months   COHORTS          INDIA          0                    NA                 0.0085284    0.0052060   0.0118508
6-24 months   COHORTS          PHILIPPINES    0                    NA                 0.0033303    0.0005240   0.0061367
6-24 months   EE               PAKISTAN       0                    NA                 0.0106648   -0.0153720   0.0367016
6-24 months   GMS-Nepal        NEPAL          0                    NA                 0.0018605   -0.0105492   0.0142703
6-24 months   iLiNS-Zinc       BURKINA FASO   0                    NA                 0.0358372    0.0140781   0.0575963
6-24 months   IRC              INDIA          0                    NA                 0.0025480   -0.0099714   0.0150675
6-24 months   JiVitA-3         BANGLADESH     0                    NA                 0.0085727    0.0058317   0.0113137
6-24 months   JiVitA-4         BANGLADESH     0                    NA                 0.0208631    0.0147863   0.0269399
6-24 months   Keneba           GAMBIA         0                    NA                 0.0058120    0.0017164   0.0099076
6-24 months   NIH-Birth        BANGLADESH     0                    NA                 0.0088110   -0.0033620   0.0209839
6-24 months   NIH-Crypto       BANGLADESH     0                    NA                 0.0069083   -0.0007205   0.0145371
6-24 months   ResPak           PAKISTAN       0                    NA                 0.0186616   -0.0087132   0.0460365
6-24 months   SAS-CompFeed     INDIA          0                    NA                 0.0251247    0.0141754   0.0360740
6-24 months   SAS-FoodSuppl    INDIA          0                    NA                 0.0256044   -0.0063312   0.0575399
6-24 months   ZVITAMBO         ZIMBABWE       0                    NA                 0.0003747   -0.0005757   0.0013252


### Parameter: PAF


agecat        studyid          country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA          0                    NA                 0.1781727   -0.0961308   0.3838326
0-24 months   CMIN             BANGLADESH     0                    NA                 0.2816770   -0.1460941   0.5497857
0-24 months   COHORTS          GUATEMALA      0                    NA                 0.2430831    0.0220034   0.4141870
0-24 months   COHORTS          INDIA          0                    NA                 0.0876487    0.0531166   0.1209214
0-24 months   COHORTS          PHILIPPINES    0                    NA                 0.0650089    0.0095185   0.1173905
0-24 months   EE               PAKISTAN       0                    NA                 0.1340636   -0.2147312   0.3827064
0-24 months   GMS-Nepal        NEPAL          0                    NA                 0.0164927   -0.0806893   0.1049355
0-24 months   iLiNS-Zinc       BURKINA FASO   0                    NA                 0.2982553    0.1198837   0.4404767
0-24 months   IRC              INDIA          0                    NA                 0.0217644   -0.0911067   0.1229595
0-24 months   JiVitA-3         BANGLADESH     0                    NA                 0.1459589    0.0965908   0.1926292
0-24 months   JiVitA-4         BANGLADESH     0                    NA                 0.2591022    0.1851331   0.3263568
0-24 months   Keneba           GAMBIA         0                    NA                 0.0962948    0.0261305   0.1614039
0-24 months   NIH-Birth        BANGLADESH     0                    NA                 0.0946348   -0.0514169   0.2203984
0-24 months   NIH-Crypto       BANGLADESH     0                    NA                 0.1939639   -0.0356867   0.3726924
0-24 months   ResPak           PAKISTAN       0                    NA                 0.1339885   -0.0925795   0.3135731
0-24 months   SAS-CompFeed     INDIA          0                    NA                 0.3010559    0.1614149   0.4174439
0-24 months   SAS-FoodSuppl    INDIA          0                    NA                 0.1488897   -0.0560126   0.3140340
0-24 months   ZVITAMBO         ZIMBABWE       0                    NA                 0.0215062   -0.0337812   0.0738367
0-6 months    CMC-V-BCS-2002   INDIA          0                    NA                 0.0708524   -0.0824181   0.2024198
0-6 months    EE               PAKISTAN       0                    NA                 0.0641201   -0.3418975   0.3472891
0-6 months    GMS-Nepal        NEPAL          0                    NA                -0.0396604   -0.1395689   0.0514888
0-6 months    IRC              INDIA          0                    NA                -0.0200321   -0.1048596   0.0582827
0-6 months    Keneba           GAMBIA         0                    NA                 0.0406677   -0.0521823   0.1253241
0-6 months    ResPak           PAKISTAN       0                    NA                 0.0920879   -0.1701059   0.2955301
6-24 months   CMC-V-BCS-2002   INDIA          0                    NA                 0.1781727   -0.0961308   0.3838326
6-24 months   CMIN             BANGLADESH     0                    NA                 0.2816770   -0.1460941   0.5497857
6-24 months   COHORTS          GUATEMALA      0                    NA                 0.2401713    0.0184665   0.4117983
6-24 months   COHORTS          INDIA          0                    NA                 0.0884629    0.0539863   0.1216831
6-24 months   COHORTS          PHILIPPINES    0                    NA                 0.0650103    0.0095236   0.1173886
6-24 months   EE               PAKISTAN       0                    NA                 0.1218376   -0.2291439   0.3725965
6-24 months   GMS-Nepal        NEPAL          0                    NA                 0.0138843   -0.0831658   0.1022388
6-24 months   iLiNS-Zinc       BURKINA FASO   0                    NA                 0.2990614    0.1196642   0.4419005
6-24 months   IRC              INDIA          0                    NA                 0.0217644   -0.0911067   0.1229595
6-24 months   JiVitA-3         BANGLADESH     0                    NA                 0.1508622    0.1018371   0.1972113
6-24 months   JiVitA-4         BANGLADESH     0                    NA                 0.2586336    0.1846930   0.3258685
6-24 months   Keneba           GAMBIA         0                    NA                 0.0979619    0.0278220   0.1630414
6-24 months   NIH-Birth        BANGLADESH     0                    NA                 0.1001075   -0.0470354   0.2265719
6-24 months   NIH-Crypto       BANGLADESH     0                    NA                 0.1939639   -0.0356867   0.3726924
6-24 months   ResPak           PAKISTAN       0                    NA                 0.1405110   -0.0886960   0.3214622
6-24 months   SAS-CompFeed     INDIA          0                    NA                 0.3010559    0.1614149   0.4174439
6-24 months   SAS-FoodSuppl    INDIA          0                    NA                 0.1477176   -0.0557959   0.3120021
6-24 months   ZVITAMBO         ZIMBABWE       0                    NA                 0.0212501   -0.0340564   0.0735986
