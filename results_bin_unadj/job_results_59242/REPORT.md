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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/7490aae0-cca2-4462-ac02-6d61dd6dc741/8a03f715-87cf-400b-beca-f430f895a0c2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7490aae0-cca2-4462-ac02-6d61dd6dc741/8a03f715-87cf-400b-beca-f430f895a0c2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7490aae0-cca2-4462-ac02-6d61dd6dc741/8a03f715-87cf-400b-beca-f430f895a0c2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7490aae0-cca2-4462-ac02-6d61dd6dc741/8a03f715-87cf-400b-beca-f430f895a0c2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA          0                    NA                0.0506757   0.0256554   0.0756960
0-24 months   CMC-V-BCS-2002   INDIA          1                    NA                0.1038961   0.0356521   0.1721401
0-24 months   CMIN             BANGLADESH     0                    NA                0.0559006   0.0203458   0.0914555
0-24 months   CMIN             BANGLADESH     1                    NA                0.1145833   0.0507432   0.1784234
0-24 months   COHORTS          GUATEMALA      0                    NA                0.0259434   0.0152390   0.0366478
0-24 months   COHORTS          GUATEMALA      1                    NA                0.0673077   0.0332415   0.1013739
0-24 months   COHORTS          INDIA          0                    NA                0.0874755   0.0797284   0.0952227
0-24 months   COHORTS          INDIA          1                    NA                0.1731092   0.1427066   0.2035119
0-24 months   COHORTS          PHILIPPINES    0                    NA                0.0479065   0.0397752   0.0560377
0-24 months   COHORTS          PHILIPPINES    1                    NA                0.1062500   0.0584929   0.1540071
0-24 months   EE               PAKISTAN       0                    NA                0.0758294   0.0400627   0.1115960
0-24 months   EE               PAKISTAN       1                    NA                0.1024096   0.0562268   0.1485924
0-24 months   GMS-Nepal        NEPAL          0                    NA                0.1320000   0.1023056   0.1616944
0-24 months   GMS-Nepal        NEPAL          1                    NA                0.1443299   0.0743364   0.2143234
0-24 months   iLiNS-Zinc       BURKINA FASO   0                    NA                0.0828173   0.0596913   0.1059434
0-24 months   iLiNS-Zinc       BURKINA FASO   1                    NA                0.2466844   0.1353014   0.3580673
0-24 months   IRC              INDIA          0                    NA                0.1145251   0.0814977   0.1475526
0-24 months   IRC              INDIA          1                    NA                0.1346154   0.0417340   0.2274968
0-24 months   JiVitA-3         BANGLADESH     0                    NA                0.0480007   0.0435099   0.0524915
0-24 months   JiVitA-3         BANGLADESH     1                    NA                0.0802498   0.0713956   0.0891040
0-24 months   JiVitA-4         BANGLADESH     0                    NA                0.0590572   0.0505310   0.0675834
0-24 months   JiVitA-4         BANGLADESH     1                    NA                0.1348837   0.1154032   0.1543643
0-24 months   Keneba           GAMBIA         0                    NA                0.0536852   0.0442605   0.0631099
0-24 months   Keneba           GAMBIA         1                    NA                0.1097561   0.0706866   0.1488256
0-24 months   NIH-Birth        BANGLADESH     0                    NA                0.0796460   0.0546630   0.1046291
0-24 months   NIH-Birth        BANGLADESH     1                    NA                0.1341463   0.0603118   0.2079809
0-24 months   NIH-Crypto       BANGLADESH     0                    NA                0.0287081   0.0156287   0.0417876
0-24 months   NIH-Crypto       BANGLADESH     1                    NA                0.0776699   0.0259454   0.1293945
0-24 months   ResPak           PAKISTAN       0                    NA                0.1176471   0.0713782   0.1639159
0-24 months   ResPak           PAKISTAN       1                    NA                0.1739130   0.0843039   0.2635222
0-24 months   SAS-CompFeed     INDIA          0                    NA                0.0572864   0.0352798   0.0792930
0-24 months   SAS-CompFeed     INDIA          1                    NA                0.1536388   0.1038937   0.2033840
0-24 months   SAS-FoodSuppl    INDIA          0                    NA                0.1504425   0.1037706   0.1971144
0-24 months   SAS-FoodSuppl    INDIA          1                    NA                0.2080537   0.1427902   0.2733172
0-24 months   ZVITAMBO         ZIMBABWE       0                    NA                0.0172113   0.0144622   0.0199604
0-24 months   ZVITAMBO         ZIMBABWE       1                    NA                0.0215517   0.0122083   0.0308952
0-6 months    CMC-V-BCS-2002   INDIA          0                    NA                0.1302817   0.0910780   0.1694854
0-6 months    CMC-V-BCS-2002   INDIA          1                    NA                0.1756757   0.0888507   0.2625006
0-6 months    EE               PAKISTAN       0                    NA                0.0622010   0.0294130   0.0949889
0-6 months    EE               PAKISTAN       1                    NA                0.0740741   0.0336911   0.1144570
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
6-24 months   COHORTS          GUATEMALA      0                    NA                0.0259434   0.0152390   0.0366478
6-24 months   COHORTS          GUATEMALA      1                    NA                0.0673077   0.0332415   0.1013739
6-24 months   COHORTS          INDIA          0                    NA                0.0874755   0.0797284   0.0952227
6-24 months   COHORTS          INDIA          1                    NA                0.1731092   0.1427066   0.2035119
6-24 months   COHORTS          PHILIPPINES    0                    NA                0.0479065   0.0397752   0.0560377
6-24 months   COHORTS          PHILIPPINES    1                    NA                0.1062500   0.0584929   0.1540071
6-24 months   EE               PAKISTAN       0                    NA                0.0758294   0.0400627   0.1115960
6-24 months   EE               PAKISTAN       1                    NA                0.1024096   0.0562268   0.1485924
6-24 months   GMS-Nepal        NEPAL          0                    NA                0.1320000   0.1023056   0.1616944
6-24 months   GMS-Nepal        NEPAL          1                    NA                0.1443299   0.0743364   0.2143234
6-24 months   iLiNS-Zinc       BURKINA FASO   0                    NA                0.0828173   0.0596913   0.1059434
6-24 months   iLiNS-Zinc       BURKINA FASO   1                    NA                0.2466844   0.1353014   0.3580673
6-24 months   IRC              INDIA          0                    NA                0.1145251   0.0814977   0.1475526
6-24 months   IRC              INDIA          1                    NA                0.1346154   0.0417340   0.2274968
6-24 months   JiVitA-3         BANGLADESH     0                    NA                0.0480007   0.0435099   0.0524915
6-24 months   JiVitA-3         BANGLADESH     1                    NA                0.0802498   0.0713956   0.0891040
6-24 months   JiVitA-4         BANGLADESH     0                    NA                0.0590572   0.0505310   0.0675834
6-24 months   JiVitA-4         BANGLADESH     1                    NA                0.1348837   0.1154032   0.1543643
6-24 months   Keneba           GAMBIA         0                    NA                0.0536852   0.0442605   0.0631099
6-24 months   Keneba           GAMBIA         1                    NA                0.1097561   0.0706866   0.1488256
6-24 months   NIH-Birth        BANGLADESH     0                    NA                0.0796460   0.0546630   0.1046291
6-24 months   NIH-Birth        BANGLADESH     1                    NA                0.1341463   0.0603118   0.2079809
6-24 months   NIH-Crypto       BANGLADESH     0                    NA                0.0287081   0.0156287   0.0417876
6-24 months   NIH-Crypto       BANGLADESH     1                    NA                0.0776699   0.0259454   0.1293945
6-24 months   ResPak           PAKISTAN       0                    NA                0.1176471   0.0713782   0.1639159
6-24 months   ResPak           PAKISTAN       1                    NA                0.1739130   0.0843039   0.2635222
6-24 months   SAS-CompFeed     INDIA          0                    NA                0.0572864   0.0352798   0.0792930
6-24 months   SAS-CompFeed     INDIA          1                    NA                0.1536388   0.1038937   0.2033840
6-24 months   SAS-FoodSuppl    INDIA          0                    NA                0.1504425   0.1037706   0.1971144
6-24 months   SAS-FoodSuppl    INDIA          1                    NA                0.2080537   0.1427902   0.2733172
6-24 months   ZVITAMBO         ZIMBABWE       0                    NA                0.0172113   0.0144622   0.0199604
6-24 months   ZVITAMBO         ZIMBABWE       1                    NA                0.0215517   0.0122083   0.0308952


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
0-24 months   COHORTS          GUATEMALA      1                    0                 2.5944056   1.3503435   4.984613
0-24 months   COHORTS          INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA          1                    0                 1.9789446   1.6255887   2.409110
0-24 months   COHORTS          PHILIPPINES    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES    1                    0                 2.2178642   1.3717492   3.585875
0-24 months   EE               PAKISTAN       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   EE               PAKISTAN       1                    0                 1.3505271   0.7032306   2.593635
0-24 months   GMS-Nepal        NEPAL          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal        NEPAL          1                    0                 1.0934083   0.6406380   1.866174
0-24 months   iLiNS-Zinc       BURKINA FASO   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO   1                    0                 2.9786559   1.7044845   5.205322
0-24 months   IRC              INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA          1                    0                 1.1754221   0.5564423   2.482948
0-24 months   JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH     1                    0                 1.6718459   1.4503915   1.927113
0-24 months   JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4         BANGLADESH     1                    0                 2.2839504   1.8757196   2.781028
0-24 months   Keneba           GAMBIA         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   Keneba           GAMBIA         1                    0                 2.0444399   1.3746797   3.040515
0-24 months   NIH-Birth        BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH     1                    0                 1.6842818   0.8938906   3.173549
0-24 months   NIH-Crypto       BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH     1                    0                 2.7055016   1.2073171   6.062814
0-24 months   ResPak           PAKISTAN       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ResPak           PAKISTAN       1                    0                 1.4782609   0.7731129   2.826567
0-24 months   SAS-CompFeed     INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA          1                    0                 2.6819407   1.8351166   3.919536
0-24 months   SAS-FoodSuppl    INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA          1                    0                 1.3829451   0.8896145   2.149849
0-24 months   ZVITAMBO         ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE       1                    0                 1.2521843   0.7888862   1.987569
0-6 months    CMC-V-BCS-2002   INDIA          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    CMC-V-BCS-2002   INDIA          1                    0                 1.3484295   0.7560154   2.405060
0-6 months    EE               PAKISTAN       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    EE               PAKISTAN       1                    0                 1.1908832   0.5578628   2.542207
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
6-24 months   COHORTS          GUATEMALA      1                    0                 2.5944056   1.3503435   4.984613
6-24 months   COHORTS          INDIA          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   COHORTS          INDIA          1                    0                 1.9789446   1.6255887   2.409110
6-24 months   COHORTS          PHILIPPINES    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES    1                    0                 2.2178642   1.3717492   3.585875
6-24 months   EE               PAKISTAN       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   EE               PAKISTAN       1                    0                 1.3505271   0.7032306   2.593635
6-24 months   GMS-Nepal        NEPAL          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal        NEPAL          1                    0                 1.0934083   0.6406380   1.866174
6-24 months   iLiNS-Zinc       BURKINA FASO   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO   1                    0                 2.9786559   1.7044845   5.205322
6-24 months   IRC              INDIA          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   IRC              INDIA          1                    0                 1.1754221   0.5564423   2.482948
6-24 months   JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH     1                    0                 1.6718459   1.4503915   1.927113
6-24 months   JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4         BANGLADESH     1                    0                 2.2839504   1.8757196   2.781028
6-24 months   Keneba           GAMBIA         0                    0                 1.0000000   1.0000000   1.000000
6-24 months   Keneba           GAMBIA         1                    0                 2.0444399   1.3746797   3.040515
6-24 months   NIH-Birth        BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth        BANGLADESH     1                    0                 1.6842818   0.8938906   3.173549
6-24 months   NIH-Crypto       BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH     1                    0                 2.7055016   1.2073171   6.062814
6-24 months   ResPak           PAKISTAN       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ResPak           PAKISTAN       1                    0                 1.4782609   0.7731129   2.826567
6-24 months   SAS-CompFeed     INDIA          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA          1                    0                 2.6819407   1.8351166   3.919536
6-24 months   SAS-FoodSuppl    INDIA          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl    INDIA          1                    0                 1.3829451   0.8896145   2.149849
6-24 months   ZVITAMBO         ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE       1                    0                 1.2521843   0.7888862   1.987569


### Parameter: PAR


agecat        studyid          country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA          0                    NA                 0.0109865   -0.0041772   0.0261502
0-24 months   CMIN             BANGLADESH     0                    NA                 0.0219204   -0.0055961   0.0494369
0-24 months   COHORTS          GUATEMALA      0                    NA                 0.0081475    0.0010443   0.0152507
0-24 months   COHORTS          INDIA          0                    NA                 0.0089311    0.0055892   0.0122730
0-24 months   COHORTS          PHILIPPINES    0                    NA                 0.0033209    0.0005185   0.0061232
0-24 months   EE               PAKISTAN       0                    NA                 0.0117038   -0.0140512   0.0374587
0-24 months   GMS-Nepal        NEPAL          0                    NA                 0.0020034   -0.0103556   0.0143623
0-24 months   iLiNS-Zinc       BURKINA FASO   0                    NA                 0.0370149    0.0143815   0.0596483
0-24 months   IRC              INDIA          0                    NA                 0.0025480   -0.0099714   0.0150675
0-24 months   JiVitA-3         BANGLADESH     0                    NA                 0.0088240    0.0061368   0.0115111
0-24 months   JiVitA-4         BANGLADESH     0                    NA                 0.0216093    0.0155866   0.0276321
0-24 months   Keneba           GAMBIA         0                    NA                 0.0056438    0.0015435   0.0097441
0-24 months   NIH-Birth        BANGLADESH     0                    NA                 0.0083690   -0.0037161   0.0204540
0-24 months   NIH-Crypto       BANGLADESH     0                    NA                 0.0069083   -0.0007205   0.0145371
0-24 months   ResPak           PAKISTAN       0                    NA                 0.0151654   -0.0121888   0.0425197
0-24 months   SAS-CompFeed     INDIA          0                    NA                 0.0261689    0.0153894   0.0369484
0-24 months   SAS-FoodSuppl    INDIA          0                    NA                 0.0228909   -0.0091168   0.0548985
0-24 months   ZVITAMBO         ZIMBABWE       0                    NA                 0.0004228   -0.0005263   0.0013718
0-6 months    CMC-V-BCS-2002   INDIA          0                    NA                 0.0093831   -0.0104007   0.0291670
0-6 months    EE               PAKISTAN       0                    NA                 0.0051845   -0.0175373   0.0279063
0-6 months    GMS-Nepal        NEPAL          0                    NA                -0.0043368   -0.0148050   0.0061315
0-6 months    IRC              INDIA          0                    NA                -0.0031892   -0.0161740   0.0097956
0-6 months    Keneba           GAMBIA         0                    NA                 0.0012528   -0.0014934   0.0039991
0-6 months    ResPak           PAKISTAN       0                    NA                 0.0094741   -0.0144300   0.0333782
6-24 months   CMC-V-BCS-2002   INDIA          0                    NA                 0.0109865   -0.0041772   0.0261502
6-24 months   CMIN             BANGLADESH     0                    NA                 0.0219204   -0.0055961   0.0494369
6-24 months   COHORTS          GUATEMALA      0                    NA                 0.0081475    0.0010443   0.0152507
6-24 months   COHORTS          INDIA          0                    NA                 0.0089311    0.0055892   0.0122730
6-24 months   COHORTS          PHILIPPINES    0                    NA                 0.0033209    0.0005185   0.0061232
6-24 months   EE               PAKISTAN       0                    NA                 0.0117038   -0.0140512   0.0374587
6-24 months   GMS-Nepal        NEPAL          0                    NA                 0.0020034   -0.0103556   0.0143623
6-24 months   iLiNS-Zinc       BURKINA FASO   0                    NA                 0.0370149    0.0143815   0.0596483
6-24 months   IRC              INDIA          0                    NA                 0.0025480   -0.0099714   0.0150675
6-24 months   JiVitA-3         BANGLADESH     0                    NA                 0.0088240    0.0061368   0.0115111
6-24 months   JiVitA-4         BANGLADESH     0                    NA                 0.0216093    0.0155866   0.0276321
6-24 months   Keneba           GAMBIA         0                    NA                 0.0056438    0.0015435   0.0097441
6-24 months   NIH-Birth        BANGLADESH     0                    NA                 0.0083690   -0.0037161   0.0204540
6-24 months   NIH-Crypto       BANGLADESH     0                    NA                 0.0069083   -0.0007205   0.0145371
6-24 months   ResPak           PAKISTAN       0                    NA                 0.0151654   -0.0121888   0.0425197
6-24 months   SAS-CompFeed     INDIA          0                    NA                 0.0261689    0.0153894   0.0369484
6-24 months   SAS-FoodSuppl    INDIA          0                    NA                 0.0228909   -0.0091168   0.0548985
6-24 months   ZVITAMBO         ZIMBABWE       0                    NA                 0.0004228   -0.0005263   0.0013718


### Parameter: PAF


agecat        studyid          country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA          0                    NA                 0.1781727   -0.0961308   0.3838326
0-24 months   CMIN             BANGLADESH     0                    NA                 0.2816770   -0.1460941   0.5497857
0-24 months   COHORTS          GUATEMALA      0                    NA                 0.2389937    0.0173535   0.4106420
0-24 months   COHORTS          INDIA          0                    NA                 0.0926401    0.0579652   0.1260387
0-24 months   COHORTS          PHILIPPINES    0                    NA                 0.0648262    0.0094245   0.1171293
0-24 months   EE               PAKISTAN       0                    NA                 0.1337067   -0.2128627   0.3812457
0-24 months   GMS-Nepal        NEPAL          0                    NA                 0.0149500   -0.0816959   0.1029610
0-24 months   iLiNS-Zinc       BURKINA FASO   0                    NA                 0.3088893    0.1252364   0.4539851
0-24 months   IRC              INDIA          0                    NA                 0.0217644   -0.0911067   0.1229595
0-24 months   JiVitA-3         BANGLADESH     0                    NA                 0.1552839    0.1073638   0.2006315
0-24 months   JiVitA-4         BANGLADESH     0                    NA                 0.2678848    0.1949152   0.3342407
0-24 months   Keneba           GAMBIA         0                    NA                 0.0951272    0.0248848   0.1603098
0-24 months   NIH-Birth        BANGLADESH     0                    NA                 0.0950857   -0.0508086   0.2207240
0-24 months   NIH-Crypto       BANGLADESH     0                    NA                 0.1939639   -0.0356867   0.3726924
0-24 months   ResPak           PAKISTAN       0                    NA                 0.1141869   -0.1148128   0.2961464
0-24 months   SAS-CompFeed     INDIA          0                    NA                 0.3135678    0.1721194   0.4308490
0-24 months   SAS-FoodSuppl    INDIA          0                    NA                 0.1320626   -0.0718853   0.2972053
0-24 months   ZVITAMBO         ZIMBABWE       0                    NA                 0.0239757   -0.0312323   0.0762280
0-6 months    CMC-V-BCS-2002   INDIA          0                    NA                 0.0671831   -0.0849314   0.1979701
0-6 months    EE               PAKISTAN       0                    NA                 0.0769378   -0.3285022   0.3586433
0-6 months    GMS-Nepal        NEPAL          0                    NA                -0.0396604   -0.1395689   0.0514888
0-6 months    IRC              INDIA          0                    NA                -0.0200321   -0.1048596   0.0582827
0-6 months    Keneba           GAMBIA         0                    NA                 0.0406677   -0.0521823   0.1253241
0-6 months    ResPak           PAKISTAN       0                    NA                 0.0920879   -0.1701059   0.2955301
6-24 months   CMC-V-BCS-2002   INDIA          0                    NA                 0.1781727   -0.0961308   0.3838326
6-24 months   CMIN             BANGLADESH     0                    NA                 0.2816770   -0.1460941   0.5497857
6-24 months   COHORTS          GUATEMALA      0                    NA                 0.2389937    0.0173535   0.4106420
6-24 months   COHORTS          INDIA          0                    NA                 0.0926401    0.0579652   0.1260387
6-24 months   COHORTS          PHILIPPINES    0                    NA                 0.0648262    0.0094245   0.1171293
6-24 months   EE               PAKISTAN       0                    NA                 0.1337067   -0.2128627   0.3812457
6-24 months   GMS-Nepal        NEPAL          0                    NA                 0.0149500   -0.0816959   0.1029610
6-24 months   iLiNS-Zinc       BURKINA FASO   0                    NA                 0.3088893    0.1252364   0.4539851
6-24 months   IRC              INDIA          0                    NA                 0.0217644   -0.0911067   0.1229595
6-24 months   JiVitA-3         BANGLADESH     0                    NA                 0.1552839    0.1073638   0.2006315
6-24 months   JiVitA-4         BANGLADESH     0                    NA                 0.2678848    0.1949152   0.3342407
6-24 months   Keneba           GAMBIA         0                    NA                 0.0951272    0.0248848   0.1603098
6-24 months   NIH-Birth        BANGLADESH     0                    NA                 0.0950857   -0.0508086   0.2207240
6-24 months   NIH-Crypto       BANGLADESH     0                    NA                 0.1939639   -0.0356867   0.3726924
6-24 months   ResPak           PAKISTAN       0                    NA                 0.1141869   -0.1148128   0.2961464
6-24 months   SAS-CompFeed     INDIA          0                    NA                 0.3135678    0.1721194   0.4308490
6-24 months   SAS-FoodSuppl    INDIA          0                    NA                 0.1320626   -0.0718853   0.2972053
6-24 months   ZVITAMBO         ZIMBABWE       0                    NA                 0.0239757   -0.0312323   0.0762280
