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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        sex       wasted   n_cell       n
----------  ---------------  -----------------------------  -------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          Female         0       38      86
Birth       CMC-V-BCS-2002   INDIA                          Female         1        5      86
Birth       CMC-V-BCS-2002   INDIA                          Male           0       37      86
Birth       CMC-V-BCS-2002   INDIA                          Male           1        6      86
Birth       CMIN             BANGLADESH                     Female         0        8      19
Birth       CMIN             BANGLADESH                     Female         1        1      19
Birth       CMIN             BANGLADESH                     Male           0        7      19
Birth       CMIN             BANGLADESH                     Male           1        3      19
Birth       COHORTS          GUATEMALA                      Female         0      285     756
Birth       COHORTS          GUATEMALA                      Female         1       75     756
Birth       COHORTS          GUATEMALA                      Male           0      279     756
Birth       COHORTS          GUATEMALA                      Male           1      117     756
Birth       COHORTS          INDIA                          Female         0     2417    6193
Birth       COHORTS          INDIA                          Female         1      535    6193
Birth       COHORTS          INDIA                          Male           0     2680    6193
Birth       COHORTS          INDIA                          Male           1      561    6193
Birth       COHORTS          PHILIPPINES                    Female         0     1159    2899
Birth       COHORTS          PHILIPPINES                    Female         1      201    2899
Birth       COHORTS          PHILIPPINES                    Male           0     1289    2899
Birth       COHORTS          PHILIPPINES                    Male           1      250    2899
Birth       CONTENT          PERU                           Female         0        0       2
Birth       CONTENT          PERU                           Female         1        0       2
Birth       CONTENT          PERU                           Male           0        2       2
Birth       CONTENT          PERU                           Male           1        0       2
Birth       EE               PAKISTAN                       Female         0       78     177
Birth       EE               PAKISTAN                       Female         1       10     177
Birth       EE               PAKISTAN                       Male           0       77     177
Birth       EE               PAKISTAN                       Male           1       12     177
Birth       GMS-Nepal        NEPAL                          Female         0      237     641
Birth       GMS-Nepal        NEPAL                          Female         1       60     641
Birth       GMS-Nepal        NEPAL                          Male           0      272     641
Birth       GMS-Nepal        NEPAL                          Male           1       72     641
Birth       IRC              INDIA                          Female         0      106     343
Birth       IRC              INDIA                          Female         1       42     343
Birth       IRC              INDIA                          Male           0      145     343
Birth       IRC              INDIA                          Male           1       50     343
Birth       JiVitA-3         BANGLADESH                     Female         0     7536   18014
Birth       JiVitA-3         BANGLADESH                     Female         1      988   18014
Birth       JiVitA-3         BANGLADESH                     Male           0     8505   18014
Birth       JiVitA-3         BANGLADESH                     Male           1      985   18014
Birth       JiVitA-4         BANGLADESH                     Female         0     1039    2396
Birth       JiVitA-4         BANGLADESH                     Female         1      103    2396
Birth       JiVitA-4         BANGLADESH                     Male           0     1118    2396
Birth       JiVitA-4         BANGLADESH                     Male           1      136    2396
Birth       Keneba           GAMBIA                         Female         0      522    1466
Birth       Keneba           GAMBIA                         Female         1      181    1466
Birth       Keneba           GAMBIA                         Male           0      580    1466
Birth       Keneba           GAMBIA                         Male           1      183    1466
Birth       MAL-ED           BANGLADESH                     Female         0       87     215
Birth       MAL-ED           BANGLADESH                     Female         1       19     215
Birth       MAL-ED           BANGLADESH                     Male           0       92     215
Birth       MAL-ED           BANGLADESH                     Male           1       17     215
Birth       MAL-ED           BRAZIL                         Female         0       30      62
Birth       MAL-ED           BRAZIL                         Female         1        1      62
Birth       MAL-ED           BRAZIL                         Male           0       30      62
Birth       MAL-ED           BRAZIL                         Male           1        1      62
Birth       MAL-ED           INDIA                          Female         0       19      45
Birth       MAL-ED           INDIA                          Female         1        3      45
Birth       MAL-ED           INDIA                          Male           0       21      45
Birth       MAL-ED           INDIA                          Male           1        2      45
Birth       MAL-ED           NEPAL                          Female         0       14      26
Birth       MAL-ED           NEPAL                          Female         1        2      26
Birth       MAL-ED           NEPAL                          Male           0       10      26
Birth       MAL-ED           NEPAL                          Male           1        0      26
Birth       MAL-ED           PERU                           Female         0      111     228
Birth       MAL-ED           PERU                           Female         1        1     228
Birth       MAL-ED           PERU                           Male           0      112     228
Birth       MAL-ED           PERU                           Male           1        4     228
Birth       MAL-ED           SOUTH AFRICA                   Female         0       50     120
Birth       MAL-ED           SOUTH AFRICA                   Female         1        6     120
Birth       MAL-ED           SOUTH AFRICA                   Male           0       58     120
Birth       MAL-ED           SOUTH AFRICA                   Male           1        6     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female         0       62     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female         1        1     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male           0       52     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male           1        0     115
Birth       NIH-Birth        BANGLADESH                     Female         0      188     575
Birth       NIH-Birth        BANGLADESH                     Female         1       81     575
Birth       NIH-Birth        BANGLADESH                     Male           0      219     575
Birth       NIH-Birth        BANGLADESH                     Male           1       87     575
Birth       NIH-Crypto       BANGLADESH                     Female         0      265     707
Birth       NIH-Crypto       BANGLADESH                     Female         1       85     707
Birth       NIH-Crypto       BANGLADESH                     Male           0      270     707
Birth       NIH-Crypto       BANGLADESH                     Male           1       87     707
Birth       PROBIT           BELARUS                        Female         0     5285   13817
Birth       PROBIT           BELARUS                        Female         1     1405   13817
Birth       PROBIT           BELARUS                        Male           0     5626   13817
Birth       PROBIT           BELARUS                        Male           1     1501   13817
Birth       PROVIDE          BANGLADESH                     Female         0      189     532
Birth       PROVIDE          BANGLADESH                     Female         1       62     532
Birth       PROVIDE          BANGLADESH                     Male           0      226     532
Birth       PROVIDE          BANGLADESH                     Male           1       55     532
Birth       ResPak           PAKISTAN                       Female         0       14      38
Birth       ResPak           PAKISTAN                       Female         1        2      38
Birth       ResPak           PAKISTAN                       Male           0       20      38
Birth       ResPak           PAKISTAN                       Male           1        2      38
Birth       SAS-CompFeed     INDIA                          Female         0      434    1103
Birth       SAS-CompFeed     INDIA                          Female         1       63    1103
Birth       SAS-CompFeed     INDIA                          Male           0      551    1103
Birth       SAS-CompFeed     INDIA                          Male           1       55    1103
Birth       ZVITAMBO         ZIMBABWE                       Female         0     5127   12917
Birth       ZVITAMBO         ZIMBABWE                       Female         1     1095   12917
Birth       ZVITAMBO         ZIMBABWE                       Male           0     5729   12917
Birth       ZVITAMBO         ZIMBABWE                       Male           1      966   12917
6 months    CMC-V-BCS-2002   INDIA                          Female         0      165     368
6 months    CMC-V-BCS-2002   INDIA                          Female         1       21     368
6 months    CMC-V-BCS-2002   INDIA                          Male           0      157     368
6 months    CMC-V-BCS-2002   INDIA                          Male           1       25     368
6 months    CMIN             BANGLADESH                     Female         0       96     243
6 months    CMIN             BANGLADESH                     Female         1        9     243
6 months    CMIN             BANGLADESH                     Male           0      126     243
6 months    CMIN             BANGLADESH                     Male           1       12     243
6 months    COHORTS          GUATEMALA                      Female         0      449     963
6 months    COHORTS          GUATEMALA                      Female         1        7     963
6 months    COHORTS          GUATEMALA                      Male           0      482     963
6 months    COHORTS          GUATEMALA                      Male           1       25     963
6 months    COHORTS          INDIA                          Female         0     2868    6850
6 months    COHORTS          INDIA                          Female         1      416    6850
6 months    COHORTS          INDIA                          Male           0     3117    6850
6 months    COHORTS          INDIA                          Male           1      449    6850
6 months    COHORTS          PHILIPPINES                    Female         0     1215    2706
6 months    COHORTS          PHILIPPINES                    Female         1       60    2706
6 months    COHORTS          PHILIPPINES                    Male           0     1330    2706
6 months    COHORTS          PHILIPPINES                    Male           1      101    2706
6 months    CONTENT          PERU                           Female         0      109     215
6 months    CONTENT          PERU                           Female         1        0     215
6 months    CONTENT          PERU                           Male           0      106     215
6 months    CONTENT          PERU                           Male           1        0     215
6 months    EE               PAKISTAN                       Female         0      163     375
6 months    EE               PAKISTAN                       Female         1       19     375
6 months    EE               PAKISTAN                       Male           0      165     375
6 months    EE               PAKISTAN                       Male           1       28     375
6 months    GMS-Nepal        NEPAL                          Female         0      253     564
6 months    GMS-Nepal        NEPAL                          Female         1       20     564
6 months    GMS-Nepal        NEPAL                          Male           0      260     564
6 months    GMS-Nepal        NEPAL                          Male           1       31     564
6 months    Guatemala BSC    GUATEMALA                      Female         0      153     299
6 months    Guatemala BSC    GUATEMALA                      Female         1        0     299
6 months    Guatemala BSC    GUATEMALA                      Male           0      142     299
6 months    Guatemala BSC    GUATEMALA                      Male           1        4     299
6 months    IRC              INDIA                          Female         0      161     408
6 months    IRC              INDIA                          Female         1       23     408
6 months    IRC              INDIA                          Male           0      193     408
6 months    IRC              INDIA                          Male           1       31     408
6 months    JiVitA-3         BANGLADESH                     Female         0     7591   16784
6 months    JiVitA-3         BANGLADESH                     Female         1      643   16784
6 months    JiVitA-3         BANGLADESH                     Male           0     7772   16784
6 months    JiVitA-3         BANGLADESH                     Male           1      778   16784
6 months    JiVitA-4         BANGLADESH                     Female         0     2287    4833
6 months    JiVitA-4         BANGLADESH                     Female         1      121    4833
6 months    JiVitA-4         BANGLADESH                     Male           0     2271    4833
6 months    JiVitA-4         BANGLADESH                     Male           1      154    4833
6 months    Keneba           GAMBIA                         Female         0      954    2089
6 months    Keneba           GAMBIA                         Female         1       57    2089
6 months    Keneba           GAMBIA                         Male           0     1014    2089
6 months    Keneba           GAMBIA                         Male           1       64    2089
6 months    LCNI-5           MALAWI                         Female         0      413     839
6 months    LCNI-5           MALAWI                         Female         1        7     839
6 months    LCNI-5           MALAWI                         Male           0      412     839
6 months    LCNI-5           MALAWI                         Male           1        7     839
6 months    MAL-ED           BANGLADESH                     Female         0      117     241
6 months    MAL-ED           BANGLADESH                     Female         1        6     241
6 months    MAL-ED           BANGLADESH                     Male           0      116     241
6 months    MAL-ED           BANGLADESH                     Male           1        2     241
6 months    MAL-ED           BRAZIL                         Female         0      102     209
6 months    MAL-ED           BRAZIL                         Female         1        1     209
6 months    MAL-ED           BRAZIL                         Male           0      106     209
6 months    MAL-ED           BRAZIL                         Male           1        0     209
6 months    MAL-ED           INDIA                          Female         0      118     236
6 months    MAL-ED           INDIA                          Female         1       12     236
6 months    MAL-ED           INDIA                          Male           0       99     236
6 months    MAL-ED           INDIA                          Male           1        7     236
6 months    MAL-ED           NEPAL                          Female         0      109     236
6 months    MAL-ED           NEPAL                          Female         1        1     236
6 months    MAL-ED           NEPAL                          Male           0      123     236
6 months    MAL-ED           NEPAL                          Male           1        3     236
6 months    MAL-ED           PERU                           Female         0      126     273
6 months    MAL-ED           PERU                           Female         1        0     273
6 months    MAL-ED           PERU                           Male           0      147     273
6 months    MAL-ED           PERU                           Male           1        0     273
6 months    MAL-ED           SOUTH AFRICA                   Female         0      124     254
6 months    MAL-ED           SOUTH AFRICA                   Female         1        2     254
6 months    MAL-ED           SOUTH AFRICA                   Male           0      123     254
6 months    MAL-ED           SOUTH AFRICA                   Male           1        5     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female         0      125     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female         1        1     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male           0      121     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male           1        0     247
6 months    NIH-Birth        BANGLADESH                     Female         0      232     537
6 months    NIH-Birth        BANGLADESH                     Female         1       13     537
6 months    NIH-Birth        BANGLADESH                     Male           0      270     537
6 months    NIH-Birth        BANGLADESH                     Male           1       22     537
6 months    NIH-Crypto       BANGLADESH                     Female         0      351     715
6 months    NIH-Crypto       BANGLADESH                     Female         1       11     715
6 months    NIH-Crypto       BANGLADESH                     Male           0      343     715
6 months    NIH-Crypto       BANGLADESH                     Male           1       10     715
6 months    PROBIT           BELARUS                        Female         0     7575   15757
6 months    PROBIT           BELARUS                        Female         1       45   15757
6 months    PROBIT           BELARUS                        Male           0     8074   15757
6 months    PROBIT           BELARUS                        Male           1       63   15757
6 months    PROVIDE          BANGLADESH                     Female         0      277     603
6 months    PROVIDE          BANGLADESH                     Female         1       11     603
6 months    PROVIDE          BANGLADESH                     Male           0      301     603
6 months    PROVIDE          BANGLADESH                     Male           1       14     603
6 months    ResPak           PAKISTAN                       Female         0      105     239
6 months    ResPak           PAKISTAN                       Female         1       10     239
6 months    ResPak           PAKISTAN                       Male           0      108     239
6 months    ResPak           PAKISTAN                       Male           1       16     239
6 months    SAS-CompFeed     INDIA                          Female         0      531    1334
6 months    SAS-CompFeed     INDIA                          Female         1       79    1334
6 months    SAS-CompFeed     INDIA                          Male           0      637    1334
6 months    SAS-CompFeed     INDIA                          Male           1       87    1334
6 months    SAS-FoodSuppl    INDIA                          Female         0      173     380
6 months    SAS-FoodSuppl    INDIA                          Female         1       29     380
6 months    SAS-FoodSuppl    INDIA                          Male           0      138     380
6 months    SAS-FoodSuppl    INDIA                          Male           1       40     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         0      971    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         1       32    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           0      970    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           1       55    2028
6 months    ZVITAMBO         ZIMBABWE                       Female         0     4034    8505
6 months    ZVITAMBO         ZIMBABWE                       Female         1      110    8505
6 months    ZVITAMBO         ZIMBABWE                       Male           0     4206    8505
6 months    ZVITAMBO         ZIMBABWE                       Male           1      155    8505
24 months   CMC-V-BCS-2002   INDIA                          Female         0      177     372
24 months   CMC-V-BCS-2002   INDIA                          Female         1        9     372
24 months   CMC-V-BCS-2002   INDIA                          Male           0      172     372
24 months   CMC-V-BCS-2002   INDIA                          Male           1       14     372
24 months   CMIN             BANGLADESH                     Female         0       96     243
24 months   CMIN             BANGLADESH                     Female         1        8     243
24 months   CMIN             BANGLADESH                     Male           0      122     243
24 months   CMIN             BANGLADESH                     Male           1       17     243
24 months   COHORTS          GUATEMALA                      Female         0      494    1082
24 months   COHORTS          GUATEMALA                      Female         1       22    1082
24 months   COHORTS          GUATEMALA                      Male           0      538    1082
24 months   COHORTS          GUATEMALA                      Male           1       28    1082
24 months   COHORTS          INDIA                          Female         0     2326    5291
24 months   COHORTS          INDIA                          Female         1      195    5291
24 months   COHORTS          INDIA                          Male           0     2480    5291
24 months   COHORTS          INDIA                          Male           1      290    5291
24 months   COHORTS          PHILIPPINES                    Female         0     1090    2449
24 months   COHORTS          PHILIPPINES                    Female         1       68    2449
24 months   COHORTS          PHILIPPINES                    Male           0     1192    2449
24 months   COHORTS          PHILIPPINES                    Male           1       99    2449
24 months   CONTENT          PERU                           Female         0       81     164
24 months   CONTENT          PERU                           Female         1        0     164
24 months   CONTENT          PERU                           Male           0       82     164
24 months   CONTENT          PERU                           Male           1        1     164
24 months   EE               PAKISTAN                       Female         0       71     168
24 months   EE               PAKISTAN                       Female         1        9     168
24 months   EE               PAKISTAN                       Male           0       67     168
24 months   EE               PAKISTAN                       Male           1       21     168
24 months   GMS-Nepal        NEPAL                          Female         0      190     487
24 months   GMS-Nepal        NEPAL                          Female         1       37     487
24 months   GMS-Nepal        NEPAL                          Male           0      206     487
24 months   GMS-Nepal        NEPAL                          Male           1       54     487
24 months   IRC              INDIA                          Female         0      171     409
24 months   IRC              INDIA                          Female         1       14     409
24 months   IRC              INDIA                          Male           0      207     409
24 months   IRC              INDIA                          Male           1       17     409
24 months   JiVitA-3         BANGLADESH                     Female         0     3299    8603
24 months   JiVitA-3         BANGLADESH                     Female         1      853    8603
24 months   JiVitA-3         BANGLADESH                     Male           0     3426    8603
24 months   JiVitA-3         BANGLADESH                     Male           1     1025    8603
24 months   JiVitA-4         BANGLADESH                     Female         0     1958    4735
24 months   JiVitA-4         BANGLADESH                     Female         1      409    4735
24 months   JiVitA-4         BANGLADESH                     Male           0     1857    4735
24 months   JiVitA-4         BANGLADESH                     Male           1      511    4735
24 months   Keneba           GAMBIA                         Female         0      743    1726
24 months   Keneba           GAMBIA                         Female         1       80    1726
24 months   Keneba           GAMBIA                         Male           0      792    1726
24 months   Keneba           GAMBIA                         Male           1      111    1726
24 months   LCNI-5           MALAWI                         Female         0      280     563
24 months   LCNI-5           MALAWI                         Female         1        6     563
24 months   LCNI-5           MALAWI                         Male           0      273     563
24 months   LCNI-5           MALAWI                         Male           1        4     563
24 months   MAL-ED           BANGLADESH                     Female         0       91     212
24 months   MAL-ED           BANGLADESH                     Female         1       13     212
24 months   MAL-ED           BANGLADESH                     Male           0      100     212
24 months   MAL-ED           BANGLADESH                     Male           1        8     212
24 months   MAL-ED           BRAZIL                         Female         0       77     169
24 months   MAL-ED           BRAZIL                         Female         1        2     169
24 months   MAL-ED           BRAZIL                         Male           0       89     169
24 months   MAL-ED           BRAZIL                         Male           1        1     169
24 months   MAL-ED           INDIA                          Female         0      110     227
24 months   MAL-ED           INDIA                          Female         1       12     227
24 months   MAL-ED           INDIA                          Male           0       90     227
24 months   MAL-ED           INDIA                          Male           1       15     227
24 months   MAL-ED           NEPAL                          Female         0      105     228
24 months   MAL-ED           NEPAL                          Female         1        1     228
24 months   MAL-ED           NEPAL                          Male           0      118     228
24 months   MAL-ED           NEPAL                          Male           1        4     228
24 months   MAL-ED           PERU                           Female         0       91     201
24 months   MAL-ED           PERU                           Female         1        0     201
24 months   MAL-ED           PERU                           Male           0      106     201
24 months   MAL-ED           PERU                           Male           1        4     201
24 months   MAL-ED           SOUTH AFRICA                   Female         0      117     238
24 months   MAL-ED           SOUTH AFRICA                   Female         1        1     238
24 months   MAL-ED           SOUTH AFRICA                   Male           0      120     238
24 months   MAL-ED           SOUTH AFRICA                   Male           1        0     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female         0      105     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Female         1        1     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male           0      105     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Male           1        3     214
24 months   NIH-Birth        BANGLADESH                     Female         0      177     428
24 months   NIH-Birth        BANGLADESH                     Female         1       18     428
24 months   NIH-Birth        BANGLADESH                     Male           0      198     428
24 months   NIH-Birth        BANGLADESH                     Male           1       35     428
24 months   NIH-Crypto       BANGLADESH                     Female         0      245     514
24 months   NIH-Crypto       BANGLADESH                     Female         1       15     514
24 months   NIH-Crypto       BANGLADESH                     Male           0      224     514
24 months   NIH-Crypto       BANGLADESH                     Male           1       30     514
24 months   PROBIT           BELARUS                        Female         0     1920    3970
24 months   PROBIT           BELARUS                        Female         1        5    3970
24 months   PROBIT           BELARUS                        Male           0     2018    3970
24 months   PROBIT           BELARUS                        Male           1       27    3970
24 months   PROVIDE          BANGLADESH                     Female         0      249     579
24 months   PROVIDE          BANGLADESH                     Female         1       30     579
24 months   PROVIDE          BANGLADESH                     Male           0      268     579
24 months   PROVIDE          BANGLADESH                     Male           1       32     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female         1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male           1        0       6
24 months   ZVITAMBO         ZIMBABWE                       Female         0      223     433
24 months   ZVITAMBO         ZIMBABWE                       Female         1       40     433
24 months   ZVITAMBO         ZIMBABWE                       Male           0      131     433
24 months   ZVITAMBO         ZIMBABWE                       Male           1       39     433


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

* agecat: Birth, studyid: CMIN, country: BANGLADESH
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/9d670671-dc1f-4dd6-a837-aaff3f43a695/2423edce-b01a-4c4d-b016-3d407babb211/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9d670671-dc1f-4dd6-a837-aaff3f43a695/2423edce-b01a-4c4d-b016-3d407babb211/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9d670671-dc1f-4dd6-a837-aaff3f43a695/2423edce-b01a-4c4d-b016-3d407babb211/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9d670671-dc1f-4dd6-a837-aaff3f43a695/2423edce-b01a-4c4d-b016-3d407babb211/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       CMC-V-BCS-2002   INDIA                          Female               NA                0.1162791   0.0199046   0.2126535
Birth       CMC-V-BCS-2002   INDIA                          Male                 NA                0.1395349   0.0353603   0.2437094
Birth       COHORTS          GUATEMALA                      Female               NA                0.2083333   0.1663541   0.2503126
Birth       COHORTS          GUATEMALA                      Male                 NA                0.2954545   0.2504882   0.3404209
Birth       COHORTS          INDIA                          Female               NA                0.1812331   0.1673360   0.1951302
Birth       COHORTS          INDIA                          Male                 NA                0.1730947   0.1600687   0.1861208
Birth       COHORTS          PHILIPPINES                    Female               NA                0.1477941   0.1289292   0.1666590
Birth       COHORTS          PHILIPPINES                    Male                 NA                0.1624431   0.1440116   0.1808747
Birth       EE               PAKISTAN                       Female               NA                0.1136364   0.0471394   0.1801333
Birth       EE               PAKISTAN                       Male                 NA                0.1348315   0.0636725   0.2059904
Birth       GMS-Nepal        NEPAL                          Female               NA                0.2020202   0.1563217   0.2477187
Birth       GMS-Nepal        NEPAL                          Male                 NA                0.2093023   0.1662794   0.2523253
Birth       IRC              INDIA                          Female               NA                0.2837838   0.2110448   0.3565227
Birth       IRC              INDIA                          Male                 NA                0.2564103   0.1950342   0.3177863
Birth       JiVitA-3         BANGLADESH                     Female               NA                0.1159080   0.1088521   0.1229639
Birth       JiVitA-3         BANGLADESH                     Male                 NA                0.1037935   0.0969235   0.1106634
Birth       JiVitA-4         BANGLADESH                     Female               NA                0.0901926   0.0686983   0.1116869
Birth       JiVitA-4         BANGLADESH                     Male                 NA                0.1084530   0.0873766   0.1295293
Birth       Keneba           GAMBIA                         Female               NA                0.2574680   0.2251356   0.2898004
Birth       Keneba           GAMBIA                         Male                 NA                0.2398427   0.2095353   0.2701501
Birth       MAL-ED           BANGLADESH                     Female               NA                0.1792453   0.1060576   0.2524330
Birth       MAL-ED           BANGLADESH                     Male                 NA                0.1559633   0.0876919   0.2242347
Birth       MAL-ED           SOUTH AFRICA                   Female               NA                0.1071429   0.0257954   0.1884903
Birth       MAL-ED           SOUTH AFRICA                   Male                 NA                0.0937500   0.0220391   0.1654609
Birth       NIH-Birth        BANGLADESH                     Female               NA                0.3011152   0.2462472   0.3559832
Birth       NIH-Birth        BANGLADESH                     Male                 NA                0.2843137   0.2337283   0.3348992
Birth       NIH-Crypto       BANGLADESH                     Female               NA                0.2428571   0.1979013   0.2878129
Birth       NIH-Crypto       BANGLADESH                     Male                 NA                0.2436975   0.1991324   0.2882626
Birth       PROBIT           BELARUS                        Female               NA                0.2100149   0.1437557   0.2762742
Birth       PROBIT           BELARUS                        Male                 NA                0.2106075   0.1453378   0.2758773
Birth       PROVIDE          BANGLADESH                     Female               NA                0.2470120   0.1936081   0.3004158
Birth       PROVIDE          BANGLADESH                     Male                 NA                0.1957295   0.1492959   0.2421632
Birth       SAS-CompFeed     INDIA                          Female               NA                0.1267606   0.0865791   0.1669421
Birth       SAS-CompFeed     INDIA                          Male                 NA                0.0907591   0.0600526   0.1214656
Birth       ZVITAMBO         ZIMBABWE                       Female               NA                0.1759884   0.1665259   0.1854510
Birth       ZVITAMBO         ZIMBABWE                       Male                 NA                0.1442868   0.1358696   0.1527040
6 months    CMC-V-BCS-2002   INDIA                          Female               NA                0.1129032   0.0673603   0.1584462
6 months    CMC-V-BCS-2002   INDIA                          Male                 NA                0.1373626   0.0872841   0.1874412
6 months    CMIN             BANGLADESH                     Female               NA                0.0857143   0.0320585   0.1393701
6 months    CMIN             BANGLADESH                     Male                 NA                0.0869565   0.0398479   0.1340652
6 months    COHORTS          GUATEMALA                      Female               NA                0.0153509   0.0040608   0.0266410
6 months    COHORTS          GUATEMALA                      Male                 NA                0.0493097   0.0304534   0.0681659
6 months    COHORTS          INDIA                          Female               NA                0.1266748   0.1152982   0.1380514
6 months    COHORTS          INDIA                          Male                 NA                0.1259114   0.1150221   0.1368007
6 months    COHORTS          PHILIPPINES                    Female               NA                0.0470588   0.0354329   0.0586847
6 months    COHORTS          PHILIPPINES                    Male                 NA                0.0705800   0.0573074   0.0838526
6 months    EE               PAKISTAN                       Female               NA                0.1043956   0.0599129   0.1488783
6 months    EE               PAKISTAN                       Male                 NA                0.1450777   0.0953254   0.1948300
6 months    GMS-Nepal        NEPAL                          Female               NA                0.0732601   0.0423240   0.1041961
6 months    GMS-Nepal        NEPAL                          Male                 NA                0.1065292   0.0710510   0.1420074
6 months    IRC              INDIA                          Female               NA                0.1250000   0.0771556   0.1728444
6 months    IRC              INDIA                          Male                 NA                0.1383929   0.0931168   0.1836689
6 months    JiVitA-3         BANGLADESH                     Female               NA                0.0780908   0.0717612   0.0844205
6 months    JiVitA-3         BANGLADESH                     Male                 NA                0.0909942   0.0843404   0.0976479
6 months    JiVitA-4         BANGLADESH                     Female               NA                0.0502492   0.0399207   0.0605777
6 months    JiVitA-4         BANGLADESH                     Male                 NA                0.0635052   0.0496998   0.0773105
6 months    Keneba           GAMBIA                         Female               NA                0.0563798   0.0421586   0.0706010
6 months    Keneba           GAMBIA                         Male                 NA                0.0593692   0.0452590   0.0734794
6 months    LCNI-5           MALAWI                         Female               NA                0.0166667   0.0044161   0.0289173
6 months    LCNI-5           MALAWI                         Male                 NA                0.0167064   0.0044269   0.0289860
6 months    MAL-ED           INDIA                          Female               NA                0.0923077   0.0424437   0.1421717
6 months    MAL-ED           INDIA                          Male                 NA                0.0660377   0.0186596   0.1134159
6 months    NIH-Birth        BANGLADESH                     Female               NA                0.0530612   0.0249668   0.0811556
6 months    NIH-Birth        BANGLADESH                     Male                 NA                0.0753425   0.0450404   0.1056445
6 months    NIH-Crypto       BANGLADESH                     Female               NA                0.0303867   0.0126922   0.0480813
6 months    NIH-Crypto       BANGLADESH                     Male                 NA                0.0283286   0.0110090   0.0456482
6 months    PROBIT           BELARUS                        Female               NA                0.0059055   0.0038379   0.0079731
6 months    PROBIT           BELARUS                        Male                 NA                0.0077424   0.0053774   0.0101075
6 months    PROVIDE          BANGLADESH                     Female               NA                0.0381944   0.0160402   0.0603486
6 months    PROVIDE          BANGLADESH                     Male                 NA                0.0444444   0.0216678   0.0672211
6 months    ResPak           PAKISTAN                       Female               NA                0.0869565   0.0353498   0.1385633
6 months    ResPak           PAKISTAN                       Male                 NA                0.1290323   0.0699036   0.1881609
6 months    SAS-CompFeed     INDIA                          Female               NA                0.1295082   0.0978682   0.1611482
6 months    SAS-CompFeed     INDIA                          Male                 NA                0.1201657   0.0919943   0.1483372
6 months    SAS-FoodSuppl    INDIA                          Female               NA                0.1435644   0.0951454   0.1919833
6 months    SAS-FoodSuppl    INDIA                          Male                 NA                0.2247191   0.1633203   0.2861179
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                0.0319043   0.0210253   0.0427833
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 NA                0.0536585   0.0398599   0.0674572
6 months    ZVITAMBO         ZIMBABWE                       Female               NA                0.0265444   0.0216499   0.0314389
6 months    ZVITAMBO         ZIMBABWE                       Male                 NA                0.0355423   0.0300470   0.0410377
24 months   CMC-V-BCS-2002   INDIA                          Female               NA                0.0483871   0.0175075   0.0792667
24 months   CMC-V-BCS-2002   INDIA                          Male                 NA                0.0752688   0.0373031   0.1132345
24 months   CMIN             BANGLADESH                     Female               NA                0.0769231   0.0256046   0.1282416
24 months   CMIN             BANGLADESH                     Male                 NA                0.1223022   0.0677231   0.1768812
24 months   COHORTS          GUATEMALA                      Female               NA                0.0426357   0.0251956   0.0600758
24 months   COHORTS          GUATEMALA                      Male                 NA                0.0494700   0.0315971   0.0673428
24 months   COHORTS          INDIA                          Female               NA                0.0773503   0.0669210   0.0877795
24 months   COHORTS          INDIA                          Male                 NA                0.1046931   0.0932908   0.1160955
24 months   COHORTS          PHILIPPINES                    Female               NA                0.0587219   0.0451781   0.0722658
24 months   COHORTS          PHILIPPINES                    Male                 NA                0.0766847   0.0621669   0.0912026
24 months   EE               PAKISTAN                       Female               NA                0.1125000   0.0430520   0.1819480
24 months   EE               PAKISTAN                       Male                 NA                0.2386364   0.1493125   0.3279602
24 months   GMS-Nepal        NEPAL                          Female               NA                0.1629956   0.1148969   0.2110943
24 months   GMS-Nepal        NEPAL                          Male                 NA                0.2076923   0.1583335   0.2570511
24 months   IRC              INDIA                          Female               NA                0.0756757   0.0375178   0.1138335
24 months   IRC              INDIA                          Male                 NA                0.0758929   0.0411699   0.1106159
24 months   JiVitA-3         BANGLADESH                     Female               NA                0.2054432   0.1916267   0.2192596
24 months   JiVitA-3         BANGLADESH                     Male                 NA                0.2302853   0.2168044   0.2437663
24 months   JiVitA-4         BANGLADESH                     Female               NA                0.1727926   0.1548868   0.1906983
24 months   JiVitA-4         BANGLADESH                     Male                 NA                0.2157939   0.1958679   0.2357200
24 months   Keneba           GAMBIA                         Female               NA                0.0972053   0.0769605   0.1174502
24 months   Keneba           GAMBIA                         Male                 NA                0.1229236   0.1015013   0.1443459
24 months   MAL-ED           BANGLADESH                     Female               NA                0.1250000   0.0612886   0.1887114
24 months   MAL-ED           BANGLADESH                     Male                 NA                0.0740741   0.0245651   0.1235831
24 months   MAL-ED           INDIA                          Female               NA                0.0983607   0.0453999   0.1513214
24 months   MAL-ED           INDIA                          Male                 NA                0.1428571   0.0757777   0.2099366
24 months   NIH-Birth        BANGLADESH                     Female               NA                0.0923077   0.0516327   0.1329826
24 months   NIH-Birth        BANGLADESH                     Male                 NA                0.1502146   0.1042854   0.1961438
24 months   NIH-Crypto       BANGLADESH                     Female               NA                0.0576923   0.0293236   0.0860610
24 months   NIH-Crypto       BANGLADESH                     Male                 NA                0.1181102   0.0783815   0.1578390
24 months   PROBIT           BELARUS                        Female               NA                0.0025974   0.0000598   0.0051350
24 months   PROBIT           BELARUS                        Male                 NA                0.0132029   0.0023504   0.0240555
24 months   PROVIDE          BANGLADESH                     Female               NA                0.1075269   0.0711456   0.1439081
24 months   PROVIDE          BANGLADESH                     Male                 NA                0.1066667   0.0717057   0.1416277
24 months   ZVITAMBO         ZIMBABWE                       Female               NA                0.1520913   0.1086403   0.1955422
24 months   ZVITAMBO         ZIMBABWE                       Male                 NA                0.2294118   0.1661349   0.2926886


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       CMC-V-BCS-2002   INDIA                          NA                   NA                0.1279070   0.0569055   0.1989084
Birth       COHORTS          GUATEMALA                      NA                   NA                0.2539683   0.2229196   0.2850169
Birth       COHORTS          INDIA                          NA                   NA                0.1769740   0.1674681   0.1864799
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.1555709   0.1423748   0.1687670
Birth       EE               PAKISTAN                       NA                   NA                0.1242938   0.0755526   0.1730349
Birth       GMS-Nepal        NEPAL                          NA                   NA                0.2059282   0.1745993   0.2372572
Birth       IRC              INDIA                          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.1095259   0.1044047   0.1146471
Birth       JiVitA-4         BANGLADESH                     NA                   NA                0.0997496   0.0843744   0.1151247
Birth       Keneba           GAMBIA                         NA                   NA                0.2482947   0.2261720   0.2704173
Birth       MAL-ED           BANGLADESH                     NA                   NA                0.1674419   0.1174176   0.2174661
Birth       MAL-ED           SOUTH AFRICA                   NA                   NA                0.1000000   0.0460991   0.1539009
Birth       NIH-Birth        BANGLADESH                     NA                   NA                0.2921739   0.2549711   0.3293768
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.2432815   0.2116319   0.2749310
Birth       PROBIT           BELARUS                        NA                   NA                0.2103206   0.1450833   0.2755580
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.2199248   0.1846953   0.2551543
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.1069810   0.0760961   0.1378659
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1595572   0.1532418   0.1658725
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.1250000   0.0911644   0.1588356
6 months    CMIN             BANGLADESH                     NA                   NA                0.0864198   0.0510184   0.1218211
6 months    COHORTS          GUATEMALA                      NA                   NA                0.0332295   0.0219033   0.0445557
6 months    COHORTS          INDIA                          NA                   NA                0.1262774   0.1184108   0.1341439
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0594974   0.0505830   0.0684118
6 months    EE               PAKISTAN                       NA                   NA                0.1253333   0.0917776   0.1588891
6 months    GMS-Nepal        NEPAL                          NA                   NA                0.0904255   0.0667359   0.1141152
6 months    IRC              INDIA                          NA                   NA                0.1323529   0.0994307   0.1652752
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0846640   0.0798626   0.0894653
6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.0569005   0.0480577   0.0657432
6 months    Keneba           GAMBIA                         NA                   NA                0.0579225   0.0479029   0.0679420
6 months    LCNI-5           MALAWI                         NA                   NA                0.0166865   0.0080138   0.0253592
6 months    MAL-ED           INDIA                          NA                   NA                0.0805085   0.0457221   0.1152948
6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.0651769   0.0442802   0.0860736
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0293706   0.0169860   0.0417552
6 months    PROBIT           BELARUS                        NA                   NA                0.0068541   0.0051915   0.0085167
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0414594   0.0255348   0.0573839
6 months    ResPak           PAKISTAN                       NA                   NA                0.1087866   0.0692283   0.1483450
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.1244378   0.0992652   0.1496104
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.1815789   0.1427684   0.2203895
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0428994   0.0340782   0.0517206
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0311581   0.0274654   0.0348509
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.0618280   0.0373207   0.0863352
24 months   CMIN             BANGLADESH                     NA                   NA                0.1028807   0.0646041   0.1411572
24 months   COHORTS          GUATEMALA                      NA                   NA                0.0462107   0.0336957   0.0587258
24 months   COHORTS          INDIA                          NA                   NA                0.0916651   0.0838893   0.0994409
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0681911   0.0582056   0.0781766
24 months   EE               PAKISTAN                       NA                   NA                0.1785714   0.1204842   0.2366587
24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1868583   0.1522030   0.2215136
24 months   IRC              INDIA                          NA                   NA                0.0757946   0.0501131   0.1014762
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2182959   0.2084450   0.2281469
24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1942978   0.1810880   0.2075076
24 months   Keneba           GAMBIA                         NA                   NA                0.1106605   0.0958563   0.1254646
24 months   MAL-ED           BANGLADESH                     NA                   NA                0.0990566   0.0587480   0.1393652
24 months   MAL-ED           INDIA                          NA                   NA                0.1189427   0.0767376   0.1611478
24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1238318   0.0925894   0.1550741
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   PROBIT           BELARUS                        NA                   NA                0.0080605   0.0022677   0.0138532
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1824480   0.1460286   0.2188675


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
Birth       CMC-V-BCS-2002   INDIA                          Male                 Female            1.2000000   0.3933032    3.6612974
Birth       COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.0000000
Birth       COHORTS          GUATEMALA                      Male                 Female            1.4181818   1.1017034    1.8255727
Birth       COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
Birth       COHORTS          INDIA                          Male                 Female            0.9550946   0.8578005    1.0634241
Birth       COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.0000000
Birth       COHORTS          PHILIPPINES                    Male                 Female            1.0991178   0.9265609    1.3038106
Birth       EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.0000000
Birth       EE               PAKISTAN                       Male                 Female            1.1865169   0.5395670    2.6091705
Birth       GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.0000000
Birth       GMS-Nepal        NEPAL                          Male                 Female            1.0360465   0.7631972    1.4064416
Birth       IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
Birth       IRC              INDIA                          Male                 Female            0.9035409   0.6362644    1.2830925
Birth       JiVitA-3         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
Birth       JiVitA-3         BANGLADESH                     Male                 Female            0.8954813   0.8216304    0.9759702
Birth       JiVitA-4         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
Birth       JiVitA-4         BANGLADESH                     Male                 Female            1.2024589   0.8900171    1.6245839
Birth       Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.0000000
Birth       Keneba           GAMBIA                         Male                 Female            0.9315438   0.7795310    1.1132000
Birth       MAL-ED           BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
Birth       MAL-ED           BANGLADESH                     Male                 Female            0.8701111   0.4781913    1.5832435
Birth       MAL-ED           SOUTH AFRICA                   Female               Female            1.0000000   1.0000000    1.0000000
Birth       MAL-ED           SOUTH AFRICA                   Male                 Female            0.8750000   0.2978153    2.5708044
Birth       NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
Birth       NIH-Birth        BANGLADESH                     Male                 Female            0.9442024   0.7319169    1.2180592
Birth       NIH-Crypto       BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
Birth       NIH-Crypto       BANGLADESH                     Male                 Female            1.0034602   0.7735588    1.3016882
Birth       PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000    1.0000000
Birth       PROBIT           BELARUS                        Male                 Female            1.0028217   0.9276337    1.0841039
Birth       PROVIDE          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
Birth       PROVIDE          BANGLADESH                     Male                 Female            0.7923889   0.5748343    1.0922804
Birth       SAS-CompFeed     INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
Birth       SAS-CompFeed     INDIA                          Male                 Female            0.7159883   0.5242306    0.9778887
Birth       ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.0000000
Birth       ZVITAMBO         ZIMBABWE                       Male                 Female            0.8198652   0.7573339    0.8875595
6 months    CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
6 months    CMC-V-BCS-2002   INDIA                          Male                 Female            1.2166405   0.7063646    2.0955385
6 months    CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
6 months    CMIN             BANGLADESH                     Male                 Female            1.0144928   0.4433175    2.3215769
6 months    COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.0000000
6 months    COHORTS          GUATEMALA                      Male                 Female            3.2121724   1.4021433    7.3587713
6 months    COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
6 months    COHORTS          INDIA                          Male                 Female            0.9939735   0.8774592    1.1259594
6 months    COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.0000000
6 months    COHORTS          PHILIPPINES                    Male                 Female            1.4998253   1.0995162    2.0458779
6 months    EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.0000000
6 months    EE               PAKISTAN                       Male                 Female            1.3896918   0.8042245    2.4013734
6 months    GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.0000000
6 months    GMS-Nepal        NEPAL                          Male                 Female            1.4541237   0.8492522    2.4898091
6 months    IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
6 months    IRC              INDIA                          Male                 Female            1.1071429   0.6691564    1.8318068
6 months    JiVitA-3         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
6 months    JiVitA-3         BANGLADESH                     Male                 Female            1.1652346   1.0500593    1.2930428
6 months    JiVitA-4         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
6 months    JiVitA-4         BANGLADESH                     Male                 Female            1.2638051   0.9436829    1.6925211
6 months    Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.0000000
6 months    Keneba           GAMBIA                         Male                 Female            1.0530222   0.7446014    1.4891937
6 months    LCNI-5           MALAWI                         Female               Female            1.0000000   1.0000000    1.0000000
6 months    LCNI-5           MALAWI                         Male                 Female            1.0023866   0.3544801    2.8345146
6 months    MAL-ED           INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
6 months    MAL-ED           INDIA                          Male                 Female            0.7154088   0.2914255    1.7562283
6 months    NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
6 months    NIH-Birth        BANGLADESH                     Male                 Female            1.4199157   0.7302955    2.7607464
6 months    NIH-Crypto       BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
6 months    NIH-Crypto       BANGLADESH                     Male                 Female            0.9322689   0.4007363    2.1688209
6 months    PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000    1.0000000
6 months    PROBIT           BELARUS                        Male                 Female            1.3110483   0.8463676    2.0308523
6 months    PROVIDE          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
6 months    PROVIDE          BANGLADESH                     Male                 Female            1.1636364   0.5366289    2.5232512
6 months    ResPak           PAKISTAN                       Female               Female            1.0000000   1.0000000    1.0000000
6 months    ResPak           PAKISTAN                       Male                 Female            1.4838710   0.7010685    3.1407389
6 months    SAS-CompFeed     INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
6 months    SAS-CompFeed     INDIA                          Male                 Female            0.9278621   0.7165881    1.2014267
6 months    SAS-FoodSuppl    INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
6 months    SAS-FoodSuppl    INDIA                          Male                 Female            1.5652848   1.0141181    2.4160069
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               Female            1.0000000   1.0000000    1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male                 Female            1.6818598   1.0972578    2.5779287
6 months    ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.0000000
6 months    ZVITAMBO         ZIMBABWE                       Male                 Female            1.3389756   1.0526076    1.7032518
24 months   CMC-V-BCS-2002   INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
24 months   CMC-V-BCS-2002   INDIA                          Male                 Female            1.5555556   0.6896222    3.5088099
24 months   CMIN             BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   CMIN             BANGLADESH                     Male                 Female            1.5899281   0.7125184    3.5477976
24 months   COHORTS          GUATEMALA                      Female               Female            1.0000000   1.0000000    1.0000000
24 months   COHORTS          GUATEMALA                      Male                 Female            1.1602955   0.6722790    2.0025700
24 months   COHORTS          INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
24 months   COHORTS          INDIA                          Male                 Female            1.3534944   1.1381060    1.6096454
24 months   COHORTS          PHILIPPINES                    Female               Female            1.0000000   1.0000000    1.0000000
24 months   COHORTS          PHILIPPINES                    Male                 Female            1.3058960   0.9689879    1.7599440
24 months   EE               PAKISTAN                       Female               Female            1.0000000   1.0000000    1.0000000
24 months   EE               PAKISTAN                       Male                 Female            2.1212121   1.0305114    4.3663183
24 months   GMS-Nepal        NEPAL                          Female               Female            1.0000000   1.0000000    1.0000000
24 months   GMS-Nepal        NEPAL                          Male                 Female            1.2742204   0.8723569    1.8612080
24 months   IRC              INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
24 months   IRC              INDIA                          Male                 Female            1.0028699   0.5076315    1.9812561
24 months   JiVitA-3         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   JiVitA-3         BANGLADESH                     Male                 Female            1.1209199   1.0272790    1.2230966
24 months   JiVitA-4         BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   JiVitA-4         BANGLADESH                     Male                 Female            1.2488611   1.0849037    1.4375969
24 months   Keneba           GAMBIA                         Female               Female            1.0000000   1.0000000    1.0000000
24 months   Keneba           GAMBIA                         Male                 Female            1.2645764   0.9638431    1.6591429
24 months   MAL-ED           BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   MAL-ED           BANGLADESH                     Male                 Female            0.5925926   0.2556906    1.3734018
24 months   MAL-ED           INDIA                          Female               Female            1.0000000   1.0000000    1.0000000
24 months   MAL-ED           INDIA                          Male                 Female            1.4523810   0.7109062    2.9672135
24 months   NIH-Birth        BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   NIH-Birth        BANGLADESH                     Male                 Female            1.6273247   0.9518022    2.7822859
24 months   NIH-Crypto       BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   NIH-Crypto       BANGLADESH                     Male                 Female            2.0472441   1.1283180    3.7145630
24 months   PROBIT           BELARUS                        Female               Female            1.0000000   1.0000000    1.0000000
24 months   PROBIT           BELARUS                        Male                 Female            5.0831296   1.5387426   16.7917665
24 months   PROVIDE          BANGLADESH                     Female               Female            1.0000000   1.0000000    1.0000000
24 months   PROVIDE          BANGLADESH                     Male                 Female            0.9920000   0.6193412    1.5888884
24 months   ZVITAMBO         ZIMBABWE                       Female               Female            1.0000000   1.0000000    1.0000000
24 months   ZVITAMBO         ZIMBABWE                       Male                 Female            1.5083824   1.0140251    2.2437486


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Female               NA                 0.0116279   -0.0593735    0.0826293
Birth       COHORTS          GUATEMALA                      Female               NA                 0.0456349    0.0132631    0.0780068
Birth       COHORTS          INDIA                          Female               NA                -0.0042591   -0.0142278    0.0057096
Birth       COHORTS          PHILIPPINES                    Female               NA                 0.0077768   -0.0062272    0.0217807
Birth       EE               PAKISTAN                       Female               NA                 0.0106574   -0.0383393    0.0596542
Birth       GMS-Nepal        NEPAL                          Female               NA                 0.0039080   -0.0297762    0.0375923
Birth       IRC              INDIA                          Female               NA                -0.0155622   -0.0696886    0.0385642
Birth       JiVitA-3         BANGLADESH                     Female               NA                -0.0063821   -0.0113481   -0.0014161
Birth       JiVitA-4         BANGLADESH                     Female               NA                 0.0095569   -0.0058719    0.0249858
Birth       Keneba           GAMBIA                         Female               NA                -0.0091733   -0.0322427    0.0138961
Birth       MAL-ED           BANGLADESH                     Female               NA                -0.0118034   -0.0625692    0.0389624
Birth       MAL-ED           SOUTH AFRICA                   Female               NA                -0.0071429   -0.0649915    0.0507058
Birth       NIH-Birth        BANGLADESH                     Female               NA                -0.0089413   -0.0486625    0.0307798
Birth       NIH-Crypto       BANGLADESH                     Female               NA                 0.0004243   -0.0315398    0.0323884
Birth       PROBIT           BELARUS                        Female               NA                 0.0003057   -0.0081432    0.0087546
Birth       PROVIDE          BANGLADESH                     Female               NA                -0.0270871   -0.0645297    0.0103554
Birth       SAS-CompFeed     INDIA                          Female               NA                -0.0197796   -0.0387696   -0.0007896
Birth       ZVITAMBO         ZIMBABWE                       Female               NA                -0.0164313   -0.0230011   -0.0098615
6 months    CMC-V-BCS-2002   INDIA                          Female               NA                 0.0120968   -0.0214040    0.0455976
6 months    CMIN             BANGLADESH                     Female               NA                 0.0007055   -0.0398436    0.0412545
6 months    COHORTS          GUATEMALA                      Female               NA                 0.0178786    0.0062582    0.0294990
6 months    COHORTS          INDIA                          Female               NA                -0.0003974   -0.0085956    0.0078008
6 months    COHORTS          PHILIPPINES                    Female               NA                 0.0124386    0.0030973    0.0217798
6 months    EE               PAKISTAN                       Female               NA                 0.0209377   -0.0134720    0.0553475
6 months    GMS-Nepal        NEPAL                          Female               NA                 0.0171655   -0.0071603    0.0414912
6 months    IRC              INDIA                          Female               NA                 0.0073529   -0.0288174    0.0435233
6 months    JiVitA-3         BANGLADESH                     Female               NA                 0.0065731    0.0021120    0.0110342
6 months    JiVitA-4         BANGLADESH                     Female               NA                 0.0066513   -0.0018105    0.0151132
6 months    Keneba           GAMBIA                         Female               NA                 0.0015426   -0.0087956    0.0118808
6 months    LCNI-5           MALAWI                         Female               NA                 0.0000199   -0.0086425    0.0086823
6 months    MAL-ED           INDIA                          Female               NA                -0.0117992   -0.0427384    0.0191400
6 months    NIH-Birth        BANGLADESH                     Female               NA                 0.0121157   -0.0103733    0.0346046
6 months    NIH-Crypto       BANGLADESH                     Female               NA                -0.0010161   -0.0132406    0.0112084
6 months    PROBIT           BELARUS                        Female               NA                 0.0009486   -0.0005758    0.0024730
6 months    PROVIDE          BANGLADESH                     Female               NA                 0.0032649   -0.0133353    0.0198651
6 months    ResPak           PAKISTAN                       Female               NA                 0.0218301   -0.0189762    0.0626364
6 months    SAS-CompFeed     INDIA                          Female               NA                -0.0050704   -0.0226541    0.0125133
6 months    SAS-FoodSuppl    INDIA                          Female               NA                 0.0380146    0.0011610    0.0748682
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.0109951    0.0021015    0.0198888
6 months    ZVITAMBO         ZIMBABWE                       Female               NA                 0.0046137    0.0008391    0.0083883
24 months   CMC-V-BCS-2002   INDIA                          Female               NA                 0.0134409   -0.0110664    0.0379481
24 months   CMIN             BANGLADESH                     Female               NA                 0.0259576   -0.0169891    0.0689042
24 months   COHORTS          GUATEMALA                      Female               NA                 0.0035751   -0.0094895    0.0166396
24 months   COHORTS          INDIA                          Female               NA                 0.0143148    0.0062166    0.0224131
24 months   COHORTS          PHILIPPINES                    Female               NA                 0.0094692   -0.0010033    0.0199416
24 months   EE               PAKISTAN                       Female               NA                 0.0660714    0.0060398    0.1261030
24 months   GMS-Nepal        NEPAL                          Female               NA                 0.0238627   -0.0129850    0.0607104
24 months   IRC              INDIA                          Female               NA                 0.0001189   -0.0281367    0.0283746
24 months   JiVitA-3         BANGLADESH                     Female               NA                 0.0128528    0.0030751    0.0226305
24 months   JiVitA-4         BANGLADESH                     Female               NA                 0.0215052    0.0079027    0.0351077
24 months   Keneba           GAMBIA                         Female               NA                 0.0134551   -0.0019773    0.0288876
24 months   MAL-ED           BANGLADESH                     Female               NA                -0.0259434   -0.0671910    0.0153042
24 months   MAL-ED           INDIA                          Female               NA                 0.0205821   -0.0190565    0.0602206
24 months   NIH-Birth        BANGLADESH                     Female               NA                 0.0315241   -0.0019868    0.0650349
24 months   NIH-Crypto       BANGLADESH                     Female               NA                 0.0298563    0.0055913    0.0541214
24 months   PROBIT           BELARUS                        Female               NA                 0.0054631   -0.0000251    0.0109512
24 months   PROVIDE          BANGLADESH                     Female               NA                -0.0004457   -0.0265890    0.0256976
24 months   ZVITAMBO         ZIMBABWE                       Female               NA                 0.0303568    0.0000109    0.0607027


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       CMC-V-BCS-2002   INDIA                          Female               NA                 0.0909091   -0.6710448    0.5054314
Birth       COHORTS          GUATEMALA                      Female               NA                 0.1796875    0.0427658    0.2970241
Birth       COHORTS          INDIA                          Female               NA                -0.0240660   -0.0819638    0.0307336
Birth       COHORTS          PHILIPPINES                    Female               NA                 0.0499886   -0.0443592    0.1358129
Birth       EE               PAKISTAN                       Female               NA                 0.0857438   -0.4054590    0.4052730
Birth       GMS-Nepal        NEPAL                          Female               NA                 0.0189777   -0.1590077    0.1696303
Birth       IRC              INDIA                          Female               NA                -0.0580200   -0.2802766    0.1256528
Birth       JiVitA-3         BANGLADESH                     Female               NA                -0.0582702   -0.1047433   -0.0137521
Birth       JiVitA-4         BANGLADESH                     Female               NA                 0.0958093   -0.0732610    0.2382460
Birth       Keneba           GAMBIA                         Female               NA                -0.0369453   -0.1341261    0.0519083
Birth       MAL-ED           BANGLADESH                     Female               NA                -0.0704927   -0.4204153    0.1932257
Birth       MAL-ED           SOUTH AFRICA                   Female               NA                -0.0714286   -0.8367573    0.3750077
Birth       NIH-Birth        BANGLADESH                     Female               NA                -0.0306028   -0.1759181    0.0967551
Birth       NIH-Crypto       BANGLADESH                     Female               NA                 0.0017442   -0.1386816    0.1248522
Birth       PROBIT           BELARUS                        Female               NA                 0.0014534   -0.0395666    0.0408547
Birth       PROVIDE          BANGLADESH                     Female               NA                -0.1231655   -0.3065095    0.0344497
Birth       SAS-CompFeed     INDIA                          Female               NA                -0.1848890   -0.3697538   -0.0249739
Birth       ZVITAMBO         ZIMBABWE                       Female               NA                -0.1029804   -0.1448119   -0.0626774
6 months    CMC-V-BCS-2002   INDIA                          Female               NA                 0.0967742   -0.2139570    0.3279689
6 months    CMIN             BANGLADESH                     Female               NA                 0.0081633   -0.5918005    0.3819953
6 months    COHORTS          GUATEMALA                      Female               NA                 0.5380345    0.1164870    0.7584505
6 months    COHORTS          INDIA                          Female               NA                -0.0031472   -0.0702161    0.0597187
6 months    COHORTS          PHILIPPINES                    Female               NA                 0.2090610    0.0388458    0.3491321
6 months    EE               PAKISTAN                       Female               NA                 0.1670563   -0.1542757    0.3989346
6 months    GMS-Nepal        NEPAL                          Female               NA                 0.1898298   -0.1238287    0.4159468
6 months    IRC              INDIA                          Female               NA                 0.0555556   -0.2610451    0.2926698
6 months    JiVitA-3         BANGLADESH                     Female               NA                 0.0776378    0.0235318    0.1287458
6 months    JiVitA-4         BANGLADESH                     Female               NA                 0.1168937   -0.0401353    0.2502161
6 months    Keneba           GAMBIA                         Female               NA                 0.0266327   -0.1691999    0.1896647
6 months    LCNI-5           MALAWI                         Female               NA                 0.0011905   -0.6795943    0.4060349
6 months    MAL-ED           INDIA                          Female               NA                -0.1465587   -0.5972492    0.1769619
6 months    NIH-Birth        BANGLADESH                     Female               NA                 0.1858892   -0.2368021    0.4641209
6 months    NIH-Crypto       BANGLADESH                     Female               NA                -0.0345962   -0.5466254    0.3079196
6 months    PROBIT           BELARUS                        Female               NA                 0.1383968   -0.1116479    0.3321985
6 months    PROVIDE          BANGLADESH                     Female               NA                 0.0787500   -0.4211366    0.4028009
6 months    ResPak           PAKISTAN                       Female               NA                 0.2006689   -0.2688240    0.4964391
6 months    SAS-CompFeed     INDIA                          Female               NA                -0.0407466   -0.1917474    0.0911216
6 months    SAS-FoodSuppl    INDIA                          Female               NA                 0.2093557   -0.0178728    0.3858580
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female               NA                 0.2563001    0.0255628    0.4324010
6 months    ZVITAMBO         ZIMBABWE                       Female               NA                 0.1480750    0.0192865    0.2599508
24 months   CMC-V-BCS-2002   INDIA                          Female               NA                 0.2173913   -0.2846822    0.5232468
24 months   CMIN             BANGLADESH                     Female               NA                 0.2523077   -0.2913943    0.5671006
24 months   COHORTS          GUATEMALA                      Female               NA                 0.0773643   -0.2524912    0.3203493
24 months   COHORTS          INDIA                          Female               NA                 0.1561645    0.0639467    0.2392973
24 months   COHORTS          PHILIPPINES                    Female               NA                 0.1388622   -0.0278481    0.2785331
24 months   EE               PAKISTAN                       Female               NA                 0.3700000   -0.0472229    0.6209976
24 months   GMS-Nepal        NEPAL                          Female               NA                 0.1277049   -0.0924897    0.3035186
24 months   IRC              INDIA                          Female               NA                 0.0015693   -0.4503533    0.3126752
24 months   JiVitA-3         BANGLADESH                     Female               NA                 0.0588778    0.0129465    0.1026717
24 months   JiVitA-4         BANGLADESH                     Female               NA                 0.1106817    0.0382890    0.1776251
24 months   Keneba           GAMBIA                         Female               NA                 0.1215894   -0.0286773    0.2499055
24 months   MAL-ED           BANGLADESH                     Female               NA                -0.2619048   -0.7414183    0.0855709
24 months   MAL-ED           INDIA                          Female               NA                 0.1730419   -0.2307731    0.4443657
24 months   NIH-Birth        BANGLADESH                     Female               NA                 0.2545718   -0.0629791    0.4772586
24 months   NIH-Crypto       BANGLADESH                     Female               NA                 0.3410256    0.0185972    0.5575240
24 months   PROBIT           BELARUS                        Female               NA                 0.6777597    0.1243848    0.8814105
24 months   PROVIDE          BANGLADESH                     Female               NA                -0.0041623   -0.2805442    0.2125676
24 months   ZVITAMBO         ZIMBABWE                       Female               NA                 0.1663859   -0.0151394    0.3154512
