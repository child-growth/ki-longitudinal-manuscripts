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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** enwast

**Adjustment Set:**

* arm
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

agecat                       studyid          country                        enwast    ever_stunted   n_cell       n
---------------------------  ---------------  -----------------------------  -------  -------------  -------  ------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                    0       22     296
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                    1      200     296
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                    0        6     296
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                    1       68     296
0-24 months (no birth st.)   CMIN             BANGLADESH                     0                    0       35     168
0-24 months (no birth st.)   CMIN             BANGLADESH                     0                    1      120     168
0-24 months (no birth st.)   CMIN             BANGLADESH                     1                    0        6     168
0-24 months (no birth st.)   CMIN             BANGLADESH                     1                    1        7     168
0-24 months (no birth st.)   COHORTS          GUATEMALA                      0                    0      237     971
0-24 months (no birth st.)   COHORTS          GUATEMALA                      0                    1      533     971
0-24 months (no birth st.)   COHORTS          GUATEMALA                      1                    0       57     971
0-24 months (no birth st.)   COHORTS          GUATEMALA                      1                    1      144     971
0-24 months (no birth st.)   COHORTS          INDIA                          0                    0     3848    6492
0-24 months (no birth st.)   COHORTS          INDIA                          0                    1     1481    6492
0-24 months (no birth st.)   COHORTS          INDIA                          1                    0      816    6492
0-24 months (no birth st.)   COHORTS          INDIA                          1                    1      347    6492
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    0                    0      787    2831
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    0                    1     1593    2831
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    1                    0      162    2831
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    1                    1      289    2831
0-24 months (no birth st.)   CONTENT          PERU                           0                    0      161     195
0-24 months (no birth st.)   CONTENT          PERU                           0                    1       33     195
0-24 months (no birth st.)   CONTENT          PERU                           1                    0        1     195
0-24 months (no birth st.)   CONTENT          PERU                           1                    1        0     195
0-24 months (no birth st.)   EE               PAKISTAN                       0                    0       38     213
0-24 months (no birth st.)   EE               PAKISTAN                       0                    1      144     213
0-24 months (no birth st.)   EE               PAKISTAN                       1                    0        3     213
0-24 months (no birth st.)   EE               PAKISTAN                       1                    1       28     213
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    0      197     575
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    1      254     575
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                    0       54     575
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                    1       70     575
0-24 months (no birth st.)   Guatemala BSC    GUATEMALA                      0                    0      147     239
0-24 months (no birth st.)   Guatemala BSC    GUATEMALA                      0                    1       91     239
0-24 months (no birth st.)   Guatemala BSC    GUATEMALA                      1                    0        1     239
0-24 months (no birth st.)   Guatemala BSC    GUATEMALA                      1                    1        0     239
0-24 months (no birth st.)   iLiNS-Zinc       BURKINA FASO                   0                    0     1857    2533
0-24 months (no birth st.)   iLiNS-Zinc       BURKINA FASO                   0                    1      369    2533
0-24 months (no birth st.)   iLiNS-Zinc       BURKINA FASO                   1                    0      225    2533
0-24 months (no birth st.)   iLiNS-Zinc       BURKINA FASO                   1                    1       82    2533
0-24 months (no birth st.)   IRC              INDIA                          0                    0      103     354
0-24 months (no birth st.)   IRC              INDIA                          0                    1      140     354
0-24 months (no birth st.)   IRC              INDIA                          1                    0       42     354
0-24 months (no birth st.)   IRC              INDIA                          1                    1       69     354
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                    0    12244   18370
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                    1     4053   18370
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                    0     1492   18370
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                    1      581   18370
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                    0     2092    3884
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                    1     1463    3884
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                    0      185    3884
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                    1      144    3884
0-24 months (no birth st.)   Keneba           GAMBIA                         0                    0     1185    2572
0-24 months (no birth st.)   Keneba           GAMBIA                         0                    1      919    2572
0-24 months (no birth st.)   Keneba           GAMBIA                         1                    0      221    2572
0-24 months (no birth st.)   Keneba           GAMBIA                         1                    1      247    2572
0-24 months (no birth st.)   LCNI-5           MALAWI                         0                    0      302     531
0-24 months (no birth st.)   LCNI-5           MALAWI                         0                    1      221     531
0-24 months (no birth st.)   LCNI-5           MALAWI                         1                    0        3     531
0-24 months (no birth st.)   LCNI-5           MALAWI                         1                    1        5     531
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                    0       81     217
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                    1       98     217
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                    0       22     217
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                    1       16     217
0-24 months (no birth st.)   MAL-ED           BRAZIL                         0                    0      163     200
0-24 months (no birth st.)   MAL-ED           BRAZIL                         0                    1       31     200
0-24 months (no birth st.)   MAL-ED           BRAZIL                         1                    0        5     200
0-24 months (no birth st.)   MAL-ED           BRAZIL                         1                    1        1     200
0-24 months (no birth st.)   MAL-ED           INDIA                          0                    0       76     210
0-24 months (no birth st.)   MAL-ED           INDIA                          0                    1       98     210
0-24 months (no birth st.)   MAL-ED           INDIA                          1                    0       23     210
0-24 months (no birth st.)   MAL-ED           INDIA                          1                    1       13     210
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                    0      139     211
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                    1       45     211
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                    0       17     211
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                    1       10     211
0-24 months (no birth st.)   MAL-ED           PERU                           0                    0      113     266
0-24 months (no birth st.)   MAL-ED           PERU                           0                    1      148     266
0-24 months (no birth st.)   MAL-ED           PERU                           1                    0        2     266
0-24 months (no birth st.)   MAL-ED           PERU                           1                    1        3     266
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                    0      124     275
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                    1      131     275
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                    0       14     275
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                    1        6     275
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0       40     219
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1      178     219
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        0     219
0-24 months (no birth st.)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        1     219
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     0                    0      142     530
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     0                    1      233     530
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     1                    0       69     530
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     1                    1       86     530
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                    0      295     653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                    1      190     653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     1                    0      101     653
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     1                    1       67     653
0-24 months (no birth st.)   PROBIT           BELARUS                        0                    0    11841   16765
0-24 months (no birth st.)   PROBIT           BELARUS                        0                    1     1666   16765
0-24 months (no birth st.)   PROBIT           BELARUS                        1                    0     2903   16765
0-24 months (no birth st.)   PROBIT           BELARUS                        1                    1      355   16765
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    0      317     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    1      185     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                    0       78     633
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                    1       53     633
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                    0       79     202
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                    1       84     202
0-24 months (no birth st.)   ResPak           PAKISTAN                       1                    0       18     202
0-24 months (no birth st.)   ResPak           PAKISTAN                       1                    1       21     202
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          0                    0      428    1090
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          0                    1      544    1090
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          1                    0       45    1090
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          1                    1       73    1090
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          0                    0       62     257
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          0                    1      149     257
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          1                    0       10     257
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          1                    1       36     257
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1473    2228
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      621    2228
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       90    2228
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       44    2228
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       0                    0     6971   12506
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       0                    1     3386   12506
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       1                    0     1169   12506
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       1                    1      980   12506
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    0      136     292
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    1       82     292
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                    0       44     292
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                    1       30     292
0-6 months (no birth st.)    CMIN             BANGLADESH                     0                    0      113     168
0-6 months (no birth st.)    CMIN             BANGLADESH                     0                    1       42     168
0-6 months (no birth st.)    CMIN             BANGLADESH                     1                    0        7     168
0-6 months (no birth st.)    CMIN             BANGLADESH                     1                    1        6     168
0-6 months (no birth st.)    COHORTS          GUATEMALA                      0                    0      528     879
0-6 months (no birth st.)    COHORTS          GUATEMALA                      0                    1      152     879
0-6 months (no birth st.)    COHORTS          GUATEMALA                      1                    0      158     879
0-6 months (no birth st.)    COHORTS          GUATEMALA                      1                    1       41     879
0-6 months (no birth st.)    COHORTS          INDIA                          0                    0     4807    6297
0-6 months (no birth st.)    COHORTS          INDIA                          0                    1      346    6297
0-6 months (no birth st.)    COHORTS          INDIA                          1                    0     1029    6297
0-6 months (no birth st.)    COHORTS          INDIA                          1                    1      115    6297
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    0                    0     1938    2831
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    0                    1      442    2831
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    1                    0      358    2831
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    1                    1       93    2831
0-6 months (no birth st.)    CONTENT          PERU                           0                    0      187     195
0-6 months (no birth st.)    CONTENT          PERU                           0                    1        7     195
0-6 months (no birth st.)    CONTENT          PERU                           1                    0        1     195
0-6 months (no birth st.)    CONTENT          PERU                           1                    1        0     195
0-6 months (no birth st.)    EE               PAKISTAN                       0                    0       81     213
0-6 months (no birth st.)    EE               PAKISTAN                       0                    1      101     213
0-6 months (no birth st.)    EE               PAKISTAN                       1                    0       14     213
0-6 months (no birth st.)    EE               PAKISTAN                       1                    1       17     213
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    0      378     575
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    1       73     575
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                    0       97     575
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                    1       27     575
0-6 months (no birth st.)    Guatemala BSC    GUATEMALA                      0                    0      202     223
0-6 months (no birth st.)    Guatemala BSC    GUATEMALA                      0                    1       21     223
0-6 months (no birth st.)    Guatemala BSC    GUATEMALA                      1                    0        0     223
0-6 months (no birth st.)    Guatemala BSC    GUATEMALA                      1                    1        0     223
0-6 months (no birth st.)    IRC              INDIA                          0                    0      166     354
0-6 months (no birth st.)    IRC              INDIA                          0                    1       77     354
0-6 months (no birth st.)    IRC              INDIA                          1                    0       68     354
0-6 months (no birth st.)    IRC              INDIA                          1                    1       43     354
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                    0    14250   18326
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                    1     2006   18326
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     1                    0     1688   18326
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     1                    1      382   18326
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                    0     3067    3657
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                    1      277    3657
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                    0      277    3657
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                    1       36    3657
0-6 months (no birth st.)    Keneba           GAMBIA                         0                    0     1356    2211
0-6 months (no birth st.)    Keneba           GAMBIA                         0                    1      418    2211
0-6 months (no birth st.)    Keneba           GAMBIA                         1                    0      320    2211
0-6 months (no birth st.)    Keneba           GAMBIA                         1                    1      117    2211
0-6 months (no birth st.)    LCNI-5           MALAWI                         0                    0      171     175
0-6 months (no birth st.)    LCNI-5           MALAWI                         0                    1        0     175
0-6 months (no birth st.)    LCNI-5           MALAWI                         1                    0        4     175
0-6 months (no birth st.)    LCNI-5           MALAWI                         1                    1        0     175
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                    0      139     217
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                    1       40     217
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                    0       31     217
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                    1        7     217
0-6 months (no birth st.)    MAL-ED           BRAZIL                         0                    0      173     200
0-6 months (no birth st.)    MAL-ED           BRAZIL                         0                    1       21     200
0-6 months (no birth st.)    MAL-ED           BRAZIL                         1                    0        6     200
0-6 months (no birth st.)    MAL-ED           BRAZIL                         1                    1        0     200
0-6 months (no birth st.)    MAL-ED           INDIA                          0                    0      134     210
0-6 months (no birth st.)    MAL-ED           INDIA                          0                    1       40     210
0-6 months (no birth st.)    MAL-ED           INDIA                          1                    0       30     210
0-6 months (no birth st.)    MAL-ED           INDIA                          1                    1        6     210
0-6 months (no birth st.)    MAL-ED           NEPAL                          0                    0      173     211
0-6 months (no birth st.)    MAL-ED           NEPAL                          0                    1       11     211
0-6 months (no birth st.)    MAL-ED           NEPAL                          1                    0       24     211
0-6 months (no birth st.)    MAL-ED           NEPAL                          1                    1        3     211
0-6 months (no birth st.)    MAL-ED           PERU                           0                    0      170     266
0-6 months (no birth st.)    MAL-ED           PERU                           0                    1       91     266
0-6 months (no birth st.)    MAL-ED           PERU                           1                    0        4     266
0-6 months (no birth st.)    MAL-ED           PERU                           1                    1        1     266
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                    0      182     275
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   0                    1       73     275
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   1                    0       16     275
0-6 months (no birth st.)    MAL-ED           SOUTH AFRICA                   1                    1        4     275
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      152     219
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1       66     219
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        1     219
0-6 months (no birth st.)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0     219
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     0                    0      293     530
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     0                    1       82     530
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     1                    0      116     530
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     1                    1       39     530
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                    0      398     653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                    1       87     653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     1                    0      131     653
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     1                    1       37     653
0-6 months (no birth st.)    PROBIT           BELARUS                        0                    0    12619   16763
0-6 months (no birth st.)    PROBIT           BELARUS                        0                    1      886   16763
0-6 months (no birth st.)    PROBIT           BELARUS                        1                    0     3114   16763
0-6 months (no birth st.)    PROBIT           BELARUS                        1                    1      144   16763
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    0      428     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    1       74     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                    0      104     633
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                    1       27     633
0-6 months (no birth st.)    ResPak           PAKISTAN                       0                    0       93     202
0-6 months (no birth st.)    ResPak           PAKISTAN                       0                    1       70     202
0-6 months (no birth st.)    ResPak           PAKISTAN                       1                    0       21     202
0-6 months (no birth st.)    ResPak           PAKISTAN                       1                    1       18     202
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          0                    0      792    1089
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          0                    1      180    1089
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          1                    0       87    1089
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          1                    1       30    1089
0-6 months (no birth st.)    SAS-FoodSuppl    INDIA                          0                    0      208     257
0-6 months (no birth st.)    SAS-FoodSuppl    INDIA                          0                    1        3     257
0-6 months (no birth st.)    SAS-FoodSuppl    INDIA                          1                    0       46     257
0-6 months (no birth st.)    SAS-FoodSuppl    INDIA                          1                    1        0     257
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1810    2228
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      284    2228
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      113    2228
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       21    2228
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       0                    0     8839   12496
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       0                    1     1509   12496
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       1                    0     1507   12496
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       1                    1      641   12496
6-24 months                  CMC-V-BCS-2002   INDIA                          0                    0       22     184
6-24 months                  CMC-V-BCS-2002   INDIA                          0                    1      118     184
6-24 months                  CMC-V-BCS-2002   INDIA                          1                    0        6     184
6-24 months                  CMC-V-BCS-2002   INDIA                          1                    1       38     184
6-24 months                  CMIN             BANGLADESH                     0                    0       28     111
6-24 months                  CMIN             BANGLADESH                     0                    1       78     111
6-24 months                  CMIN             BANGLADESH                     1                    0        4     111
6-24 months                  CMIN             BANGLADESH                     1                    1        1     111
6-24 months                  COHORTS          GUATEMALA                      0                    0      165     868
6-24 months                  COHORTS          GUATEMALA                      0                    1      556     868
6-24 months                  COHORTS          GUATEMALA                      1                    0       36     868
6-24 months                  COHORTS          GUATEMALA                      1                    1      111     868
6-24 months                  COHORTS          INDIA                          0                    0     3541    5701
6-24 months                  COHORTS          INDIA                          0                    1     1171    5701
6-24 months                  COHORTS          INDIA                          1                    0      750    5701
6-24 months                  COHORTS          INDIA                          1                    1      239    5701
6-24 months                  COHORTS          PHILIPPINES                    0                    0      620    2093
6-24 months                  COHORTS          PHILIPPINES                    0                    1     1151    2093
6-24 months                  COHORTS          PHILIPPINES                    1                    0      126    2093
6-24 months                  COHORTS          PHILIPPINES                    1                    1      196    2093
6-24 months                  CONTENT          PERU                           0                    0      161     188
6-24 months                  CONTENT          PERU                           0                    1       26     188
6-24 months                  CONTENT          PERU                           1                    0        1     188
6-24 months                  CONTENT          PERU                           1                    1        0     188
6-24 months                  EE               PAKISTAN                       0                    0       36      93
6-24 months                  EE               PAKISTAN                       0                    1       43      93
6-24 months                  EE               PAKISTAN                       1                    0        3      93
6-24 months                  EE               PAKISTAN                       1                    1       11      93
6-24 months                  GMS-Nepal        NEPAL                          0                    0      137     396
6-24 months                  GMS-Nepal        NEPAL                          0                    1      181     396
6-24 months                  GMS-Nepal        NEPAL                          1                    0       35     396
6-24 months                  GMS-Nepal        NEPAL                          1                    1       43     396
6-24 months                  Guatemala BSC    GUATEMALA                      0                    0      120     195
6-24 months                  Guatemala BSC    GUATEMALA                      0                    1       74     195
6-24 months                  Guatemala BSC    GUATEMALA                      1                    0        1     195
6-24 months                  Guatemala BSC    GUATEMALA                      1                    1        0     195
6-24 months                  iLiNS-Zinc       BURKINA FASO                   0                    0     1857    3265
6-24 months                  iLiNS-Zinc       BURKINA FASO                   0                    1      859    3265
6-24 months                  iLiNS-Zinc       BURKINA FASO                   1                    0      225    3265
6-24 months                  iLiNS-Zinc       BURKINA FASO                   1                    1      324    3265
6-24 months                  IRC              INDIA                          0                    0      103     234
6-24 months                  IRC              INDIA                          0                    1       63     234
6-24 months                  IRC              INDIA                          1                    0       42     234
6-24 months                  IRC              INDIA                          1                    1       26     234
6-24 months                  JiVitA-3         BANGLADESH                     0                    0     7376   10482
6-24 months                  JiVitA-3         BANGLADESH                     0                    1     2061   10482
6-24 months                  JiVitA-3         BANGLADESH                     1                    0      845   10482
6-24 months                  JiVitA-3         BANGLADESH                     1                    1      200   10482
6-24 months                  JiVitA-4         BANGLADESH                     0                    0     2084    3644
6-24 months                  JiVitA-4         BANGLADESH                     0                    1     1261    3644
6-24 months                  JiVitA-4         BANGLADESH                     1                    0      184    3644
6-24 months                  JiVitA-4         BANGLADESH                     1                    1      115    3644
6-24 months                  Keneba           GAMBIA                         0                    0     1076    1999
6-24 months                  Keneba           GAMBIA                         0                    1      571    1999
6-24 months                  Keneba           GAMBIA                         1                    0      203    1999
6-24 months                  Keneba           GAMBIA                         1                    1      149    1999
6-24 months                  LCNI-5           MALAWI                         0                    0      289     730
6-24 months                  LCNI-5           MALAWI                         0                    1      427     730
6-24 months                  LCNI-5           MALAWI                         1                    0        3     730
6-24 months                  LCNI-5           MALAWI                         1                    1       11     730
6-24 months                  MAL-ED           BANGLADESH                     0                    0       72     158
6-24 months                  MAL-ED           BANGLADESH                     0                    1       58     158
6-24 months                  MAL-ED           BANGLADESH                     1                    0       19     158
6-24 months                  MAL-ED           BANGLADESH                     1                    1        9     158
6-24 months                  MAL-ED           BRAZIL                         0                    0      145     161
6-24 months                  MAL-ED           BRAZIL                         0                    1       10     161
6-24 months                  MAL-ED           BRAZIL                         1                    0        5     161
6-24 months                  MAL-ED           BRAZIL                         1                    1        1     161
6-24 months                  MAL-ED           INDIA                          0                    0       66     154
6-24 months                  MAL-ED           INDIA                          0                    1       58     154
6-24 months                  MAL-ED           INDIA                          1                    0       23     154
6-24 months                  MAL-ED           INDIA                          1                    1        7     154
6-24 months                  MAL-ED           NEPAL                          0                    0      138     194
6-24 months                  MAL-ED           NEPAL                          0                    1       34     194
6-24 months                  MAL-ED           NEPAL                          1                    0       15     194
6-24 months                  MAL-ED           NEPAL                          1                    1        7     194
6-24 months                  MAL-ED           PERU                           0                    0       88     149
6-24 months                  MAL-ED           PERU                           0                    1       57     149
6-24 months                  MAL-ED           PERU                           1                    0        2     149
6-24 months                  MAL-ED           PERU                           1                    1        2     149
6-24 months                  MAL-ED           SOUTH AFRICA                   0                    0       89     158
6-24 months                  MAL-ED           SOUTH AFRICA                   0                    1       58     158
6-24 months                  MAL-ED           SOUTH AFRICA                   1                    0        9     158
6-24 months                  MAL-ED           SOUTH AFRICA                   1                    1        2     158
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0       31     144
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1      112     144
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        0     144
6-24 months                  MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        1     144
6-24 months                  NIH-Birth        BANGLADESH                     0                    0      100     345
6-24 months                  NIH-Birth        BANGLADESH                     0                    1      151     345
6-24 months                  NIH-Birth        BANGLADESH                     1                    0       47     345
6-24 months                  NIH-Birth        BANGLADESH                     1                    1       47     345
6-24 months                  NIH-Crypto       BANGLADESH                     0                    0      276     506
6-24 months                  NIH-Crypto       BANGLADESH                     0                    1      103     506
6-24 months                  NIH-Crypto       BANGLADESH                     1                    0       97     506
6-24 months                  NIH-Crypto       BANGLADESH                     1                    1       30     506
6-24 months                  PROBIT           BELARUS                        0                    0    11605   15467
6-24 months                  PROBIT           BELARUS                        0                    1      783   15467
6-24 months                  PROBIT           BELARUS                        1                    0     2868   15467
6-24 months                  PROBIT           BELARUS                        1                    1      211   15467
6-24 months                  PROVIDE          BANGLADESH                     0                    0      258     456
6-24 months                  PROVIDE          BANGLADESH                     0                    1      111     456
6-24 months                  PROVIDE          BANGLADESH                     1                    0       61     456
6-24 months                  PROVIDE          BANGLADESH                     1                    1       26     456
6-24 months                  ResPak           PAKISTAN                       0                    0       61      97
6-24 months                  ResPak           PAKISTAN                       0                    1       16      97
6-24 months                  ResPak           PAKISTAN                       1                    0       17      97
6-24 months                  ResPak           PAKISTAN                       1                    1        3      97
6-24 months                  SAS-CompFeed     INDIA                          0                    0      365     813
6-24 months                  SAS-CompFeed     INDIA                          0                    1      365     813
6-24 months                  SAS-CompFeed     INDIA                          1                    0       39     813
6-24 months                  SAS-CompFeed     INDIA                          1                    1       44     813
6-24 months                  SAS-FoodSuppl    INDIA                          0                    0       53     243
6-24 months                  SAS-FoodSuppl    INDIA                          0                    1      148     243
6-24 months                  SAS-FoodSuppl    INDIA                          1                    0        6     243
6-24 months                  SAS-FoodSuppl    INDIA                          1                    1       36     243
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1160    1596
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      337    1596
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       76    1596
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       23    1596
6-24 months                  ZVITAMBO         ZIMBABWE                       0                    0     5411    8430
6-24 months                  ZVITAMBO         ZIMBABWE                       0                    1     1882    8430
6-24 months                  ZVITAMBO         ZIMBABWE                       1                    0      798    8430
6-24 months                  ZVITAMBO         ZIMBABWE                       1                    1      339    8430


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth st.), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ZVITAMBO, country: ZIMBABWE
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

* agecat: 0-24 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ResPak, country: PAKISTAN

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




# Results Detail

## Results Plots
![](/tmp/d2b78099-188d-418f-be4e-b2be3b8ba11e/c35cd5e8-bf82-48cf-adeb-1587122adb10/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d2b78099-188d-418f-be4e-b2be3b8ba11e/c35cd5e8-bf82-48cf-adeb-1587122adb10/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d2b78099-188d-418f-be4e-b2be3b8ba11e/c35cd5e8-bf82-48cf-adeb-1587122adb10/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d2b78099-188d-418f-be4e-b2be3b8ba11e/c35cd5e8-bf82-48cf-adeb-1587122adb10/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                    NA                0.9009009   0.8615296   0.9402722
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                    NA                0.9189189   0.8566222   0.9812157
0-24 months (no birth st.)   CMIN             BANGLADESH                     0                    NA                0.7741935   0.7081741   0.8402130
0-24 months (no birth st.)   CMIN             BANGLADESH                     1                    NA                0.5384615   0.2666586   0.8102645
0-24 months (no birth st.)   COHORTS          GUATEMALA                      0                    NA                0.6933163   0.6607283   0.7259044
0-24 months (no birth st.)   COHORTS          GUATEMALA                      1                    NA                0.7194703   0.6570220   0.7819186
0-24 months (no birth st.)   COHORTS          INDIA                          0                    NA                0.2789503   0.2669620   0.2909387
0-24 months (no birth st.)   COHORTS          INDIA                          1                    NA                0.2933017   0.2675743   0.3190291
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    0                    NA                0.6648927   0.6460683   0.6837171
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    1                    NA                0.6637279   0.6207501   0.7067057
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    NA                0.5610139   0.5151809   0.6068469
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                    NA                0.5637803   0.4753854   0.6521752
0-24 months (no birth st.)   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1654815   0.1390760   0.1918869
0-24 months (no birth st.)   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2692461   0.2089246   0.3295676
0-24 months (no birth st.)   IRC              INDIA                          0                    NA                0.5774986   0.5154602   0.6395370
0-24 months (no birth st.)   IRC              INDIA                          1                    NA                0.6102415   0.5187455   0.7017374
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                    NA                0.2486985   0.2407123   0.2566848
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                    NA                0.2817120   0.2598452   0.3035789
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                    NA                0.4116186   0.3926295   0.4306078
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                    NA                0.4385514   0.3793945   0.4977083
0-24 months (no birth st.)   Keneba           GAMBIA                         0                    NA                0.4422882   0.4211508   0.4634256
0-24 months (no birth st.)   Keneba           GAMBIA                         1                    NA                0.4999423   0.4551240   0.5447607
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                    NA                0.5518688   0.4787505   0.6249871
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                    NA                0.4020810   0.2389157   0.5652464
0-24 months (no birth st.)   MAL-ED           INDIA                          0                    NA                0.5635338   0.4893135   0.6377541
0-24 months (no birth st.)   MAL-ED           INDIA                          1                    NA                0.3568492   0.1982251   0.5154732
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                    NA                0.2456961   0.1831984   0.3081938
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                    NA                0.3216036   0.1280048   0.5152024
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                    NA                0.5137255   0.4522679   0.5751831
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                    NA                0.3000000   0.0987973   0.5012027
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     0                    NA                0.6212382   0.5721000   0.6703765
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     1                    NA                0.5547632   0.4760950   0.6334314
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                    NA                0.3898955   0.3463803   0.4334106
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     1                    NA                0.4136474   0.3392666   0.4880282
0-24 months (no birth st.)   PROBIT           BELARUS                        0                    NA                0.1227946   0.1049762   0.1406129
0-24 months (no birth st.)   PROBIT           BELARUS                        1                    NA                0.1070333   0.0909797   0.1230869
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                0.3673568   0.3252087   0.4095049
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                    NA                0.4246279   0.3373483   0.5119074
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                    NA                0.5152022   0.4381014   0.5923030
0-24 months (no birth st.)   ResPak           PAKISTAN                       1                    NA                0.5405103   0.3747636   0.7062569
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          0                    NA                0.5572684   0.4946904   0.6198464
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          1                    NA                0.6453711   0.5387278   0.7520144
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          0                    NA                0.7075015   0.6457567   0.7692462
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          1                    NA                0.8085649   0.6842983   0.9328316
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2965755   0.2770071   0.3161439
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3322289   0.2518668   0.4125910
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       0                    NA                0.3269306   0.3178900   0.3359712
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       1                    NA                0.4595526   0.4379786   0.4811266
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    NA                0.3794131   0.3148420   0.4439841
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                    NA                0.4269035   0.3156129   0.5381941
0-6 months (no birth st.)    CMIN             BANGLADESH                     0                    NA                0.2709677   0.2007882   0.3411473
0-6 months (no birth st.)    CMIN             BANGLADESH                     1                    NA                0.4615385   0.1897355   0.7333414
0-6 months (no birth st.)    COHORTS          GUATEMALA                      0                    NA                0.2235276   0.1921926   0.2548626
0-6 months (no birth st.)    COHORTS          GUATEMALA                      1                    NA                0.2060955   0.1495607   0.2626302
0-6 months (no birth st.)    COHORTS          INDIA                          0                    NA                0.0672273   0.0603926   0.0740620
0-6 months (no birth st.)    COHORTS          INDIA                          1                    NA                0.0992244   0.0819982   0.1164507
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    0                    NA                0.1845609   0.1689500   0.2001718
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    1                    NA                0.2160585   0.1787917   0.2533253
0-6 months (no birth st.)    EE               PAKISTAN                       0                    NA                0.5531849   0.4807072   0.6256626
0-6 months (no birth st.)    EE               PAKISTAN                       1                    NA                0.5058952   0.3303973   0.6813930
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    NA                0.1607071   0.1267248   0.1946894
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                    NA                0.2229623   0.1486947   0.2972299
0-6 months (no birth st.)    IRC              INDIA                          0                    NA                0.3195730   0.2608884   0.3782575
0-6 months (no birth st.)    IRC              INDIA                          1                    NA                0.3755357   0.2838714   0.4672000
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                    NA                0.1239272   0.1182867   0.1295677
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     1                    NA                0.1830826   0.1646958   0.2014694
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                    NA                0.0830240   0.0712277   0.0948204
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                    NA                0.1118921   0.0711803   0.1526039
0-6 months (no birth st.)    Keneba           GAMBIA                         0                    NA                0.2352409   0.2154779   0.2550038
0-6 months (no birth st.)    Keneba           GAMBIA                         1                    NA                0.2687779   0.2268236   0.3107322
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                    NA                0.2234637   0.1622978   0.2846295
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                    NA                0.1842105   0.0606711   0.3077499
0-6 months (no birth st.)    MAL-ED           INDIA                          0                    NA                0.2298851   0.1672174   0.2925527
0-6 months (no birth st.)    MAL-ED           INDIA                          1                    NA                0.1666667   0.0446365   0.2886968
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     0                    NA                0.2203572   0.1784380   0.2622765
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     1                    NA                0.2459592   0.1768783   0.3150401
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                    NA                0.1795017   0.1452951   0.2137083
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     1                    NA                0.2208296   0.1569248   0.2847344
0-6 months (no birth st.)    PROBIT           BELARUS                        0                    NA                0.0655917   0.0532838   0.0778996
0-6 months (no birth st.)    PROBIT           BELARUS                        1                    NA                0.0479492   0.0371090   0.0587894
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                0.1473755   0.1163592   0.1783919
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                    NA                0.2069049   0.1340308   0.2797789
0-6 months (no birth st.)    ResPak           PAKISTAN                       0                    NA                0.4293368   0.3530699   0.5056037
0-6 months (no birth st.)    ResPak           PAKISTAN                       1                    NA                0.4674340   0.3022252   0.6326428
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          0                    NA                0.1844949   0.1626442   0.2063457
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          1                    NA                0.2620569   0.1541107   0.3700031
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1355280   0.1208611   0.1501949
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1562900   0.0947585   0.2178215
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       0                    NA                0.1460769   0.1392742   0.1528797
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       1                    NA                0.2975857   0.2782189   0.3169525
6-24 months                  CMC-V-BCS-2002   INDIA                          0                    NA                0.8428571   0.7824078   0.9033065
6-24 months                  CMC-V-BCS-2002   INDIA                          1                    NA                0.8636364   0.7619600   0.9653127
6-24 months                  COHORTS          GUATEMALA                      0                    NA                0.7717251   0.7410595   0.8023906
6-24 months                  COHORTS          GUATEMALA                      1                    NA                0.7524235   0.6821924   0.8226546
6-24 months                  COHORTS          INDIA                          0                    NA                0.2492215   0.2369295   0.2615135
6-24 months                  COHORTS          INDIA                          1                    NA                0.2391687   0.2130616   0.2652759
6-24 months                  COHORTS          PHILIPPINES                    0                    NA                0.6451391   0.6230092   0.6672691
6-24 months                  COHORTS          PHILIPPINES                    1                    NA                0.6348589   0.5828286   0.6868892
6-24 months                  GMS-Nepal        NEPAL                          0                    NA                0.5668262   0.5121851   0.6214672
6-24 months                  GMS-Nepal        NEPAL                          1                    NA                0.5768863   0.4679506   0.6858221
6-24 months                  iLiNS-Zinc       BURKINA FASO                   0                    NA                0.3164643   0.2592628   0.3736658
6-24 months                  iLiNS-Zinc       BURKINA FASO                   1                    NA                0.5881783   0.5227274   0.6536292
6-24 months                  IRC              INDIA                          0                    NA                0.3786211   0.3044532   0.4527889
6-24 months                  IRC              INDIA                          1                    NA                0.3844952   0.2668220   0.5021683
6-24 months                  JiVitA-3         BANGLADESH                     0                    NA                0.2178248   0.2080654   0.2275842
6-24 months                  JiVitA-3         BANGLADESH                     1                    NA                0.1954950   0.1663930   0.2245970
6-24 months                  JiVitA-4         BANGLADESH                     0                    NA                0.3767987   0.3573319   0.3962655
6-24 months                  JiVitA-4         BANGLADESH                     1                    NA                0.3868622   0.3279137   0.4458107
6-24 months                  Keneba           GAMBIA                         0                    NA                0.3490793   0.3261246   0.3720340
6-24 months                  Keneba           GAMBIA                         1                    NA                0.4145465   0.3629730   0.4661200
6-24 months                  MAL-ED           BANGLADESH                     0                    NA                0.4461538   0.3604319   0.5318758
6-24 months                  MAL-ED           BANGLADESH                     1                    NA                0.3214286   0.1478933   0.4949639
6-24 months                  MAL-ED           INDIA                          0                    NA                0.4677419   0.3796338   0.5558501
6-24 months                  MAL-ED           INDIA                          1                    NA                0.2333333   0.0814907   0.3851760
6-24 months                  MAL-ED           NEPAL                          0                    NA                0.1976744   0.1380043   0.2573445
6-24 months                  MAL-ED           NEPAL                          1                    NA                0.3181818   0.1230487   0.5133149
6-24 months                  NIH-Birth        BANGLADESH                     0                    NA                0.6019393   0.5412207   0.6626579
6-24 months                  NIH-Birth        BANGLADESH                     1                    NA                0.5030930   0.3996882   0.6064979
6-24 months                  NIH-Crypto       BANGLADESH                     0                    NA                0.2709591   0.2258003   0.3161178
6-24 months                  NIH-Crypto       BANGLADESH                     1                    NA                0.2634114   0.1872784   0.3395444
6-24 months                  PROBIT           BELARUS                        0                    NA                0.0624983   0.0505010   0.0744957
6-24 months                  PROBIT           BELARUS                        1                    NA                0.0672470   0.0521876   0.0823063
6-24 months                  PROVIDE          BANGLADESH                     0                    NA                0.2991619   0.2522676   0.3460562
6-24 months                  PROVIDE          BANGLADESH                     1                    NA                0.3020115   0.2061915   0.3978315
6-24 months                  SAS-CompFeed     INDIA                          0                    NA                0.4999237   0.4491173   0.5507300
6-24 months                  SAS-CompFeed     INDIA                          1                    NA                0.5165237   0.4433086   0.5897387
6-24 months                  SAS-FoodSuppl    INDIA                          0                    NA                0.7363184   0.6752779   0.7973589
6-24 months                  SAS-FoodSuppl    INDIA                          1                    NA                0.8571429   0.7510963   0.9631894
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2250438   0.2038802   0.2462074
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2423216   0.1584104   0.3262328
6-24 months                  ZVITAMBO         ZIMBABWE                       0                    NA                0.2574812   0.2474442   0.2675181
6-24 months                  ZVITAMBO         ZIMBABWE                       1                    NA                0.3025563   0.2756988   0.3294138


### Parameter: E(Y)


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          NA                   NA                0.9054054   0.8720096   0.9388012
0-24 months (no birth st.)   CMIN             BANGLADESH                     NA                   NA                0.7559524   0.6908084   0.8210964
0-24 months (no birth st.)   COHORTS          GUATEMALA                      NA                   NA                0.6972194   0.6683052   0.7261335
0-24 months (no birth st.)   COHORTS          INDIA                          NA                   NA                0.2815773   0.2706357   0.2925189
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    NA                   NA                0.6647828   0.6473904   0.6821751
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          NA                   NA                0.5634783   0.5229056   0.6040509
0-24 months (no birth st.)   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1780497   0.1518612   0.2042383
0-24 months (no birth st.)   IRC              INDIA                          NA                   NA                0.5903955   0.5390958   0.6416952
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     NA                   NA                0.2522591   0.2445215   0.2599967
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     NA                   NA                0.4137487   0.3955533   0.4319441
0-24 months (no birth st.)   Keneba           GAMBIA                         NA                   NA                0.4533437   0.4341009   0.4725865
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     NA                   NA                0.5253456   0.4587520   0.5919392
0-24 months (no birth st.)   MAL-ED           INDIA                          NA                   NA                0.5285714   0.4608954   0.5962474
0-24 months (no birth st.)   MAL-ED           NEPAL                          NA                   NA                0.2606635   0.2012891   0.3200380
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   NA                   NA                0.4981818   0.4389793   0.5573843
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     NA                   NA                0.6018868   0.5601729   0.6436007
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   PROBIT           BELARUS                        NA                   NA                0.1205488   0.1047261   0.1363714
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     NA                   NA                0.3759874   0.3382238   0.4137509
0-24 months (no birth st.)   ResPak           PAKISTAN                       NA                   NA                0.5198020   0.4507336   0.5888704
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          NA                   NA                0.5660550   0.5086421   0.6234680
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          NA                   NA                0.7198444   0.6648337   0.7748550
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2984740   0.2794692   0.3174788
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       NA                   NA                0.3491124   0.3407575   0.3574673
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3835616   0.3276935   0.4394298
0-6 months (no birth st.)    CMIN             BANGLADESH                     NA                   NA                0.2857143   0.2171983   0.3542303
0-6 months (no birth st.)    COHORTS          GUATEMALA                      NA                   NA                0.2195677   0.1921865   0.2469489
0-6 months (no birth st.)    COHORTS          INDIA                          NA                   NA                0.0732095   0.0667753   0.0796436
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    NA                   NA                0.1889792   0.1745554   0.2034029
0-6 months (no birth st.)    EE               PAKISTAN                       NA                   NA                0.5539906   0.4870787   0.6209025
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          NA                   NA                0.1739130   0.1429052   0.2049209
0-6 months (no birth st.)    IRC              INDIA                          NA                   NA                0.3389831   0.2896025   0.3883636
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     NA                   NA                0.1303067   0.1247240   0.1358893
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     NA                   NA                0.0855893   0.0742297   0.0969489
0-6 months (no birth st.)    Keneba           GAMBIA                         NA                   NA                0.2419720   0.2241162   0.2598277
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     NA                   NA                0.2165899   0.1616567   0.2715231
0-6 months (no birth st.)    MAL-ED           INDIA                          NA                   NA                0.2190476   0.1629743   0.2751210
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     NA                   NA                0.2283019   0.1925336   0.2640702
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    PROBIT           BELARUS                        NA                   NA                0.0614448   0.0507274   0.0721623
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     NA                   NA                0.1595577   0.1310079   0.1881074
0-6 months (no birth st.)    ResPak           PAKISTAN                       NA                   NA                0.4356436   0.3670959   0.5041912
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          NA                   NA                0.1928375   0.1691727   0.2165022
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1368941   0.1226179   0.1511703
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1720551   0.1654372   0.1786729
6-24 months                  CMC-V-BCS-2002   INDIA                          NA                   NA                0.8478261   0.7957850   0.8998671
6-24 months                  COHORTS          GUATEMALA                      NA                   NA                0.7684332   0.7403543   0.7965121
6-24 months                  COHORTS          INDIA                          NA                   NA                0.2473250   0.2361242   0.2585258
6-24 months                  COHORTS          PHILIPPINES                    NA                   NA                0.6435738   0.6230503   0.6640973
6-24 months                  GMS-Nepal        NEPAL                          NA                   NA                0.5656566   0.5167753   0.6145378
6-24 months                  iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3623277   0.3130786   0.4115769
6-24 months                  IRC              INDIA                          NA                   NA                0.3803419   0.3180067   0.4426771
6-24 months                  JiVitA-3         BANGLADESH                     NA                   NA                0.2157031   0.2063258   0.2250804
6-24 months                  JiVitA-4         BANGLADESH                     NA                   NA                0.3776070   0.3590122   0.3962019
6-24 months                  Keneba           GAMBIA                         NA                   NA                0.3601801   0.3391307   0.3812295
6-24 months                  MAL-ED           BANGLADESH                     NA                   NA                0.4240506   0.3467471   0.5013542
6-24 months                  MAL-ED           INDIA                          NA                   NA                0.4220779   0.3438191   0.5003367
6-24 months                  MAL-ED           NEPAL                          NA                   NA                0.2113402   0.1537425   0.2689379
6-24 months                  NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months                  NIH-Crypto       BANGLADESH                     NA                   NA                0.2628459   0.2244546   0.3012371
6-24 months                  PROBIT           BELARUS                        NA                   NA                0.0642659   0.0526827   0.0758490
6-24 months                  PROVIDE          BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months                  SAS-CompFeed     INDIA                          NA                   NA                0.5030750   0.4588491   0.5473009
6-24 months                  SAS-FoodSuppl    INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2255639   0.2050525   0.2460753
6-24 months                  ZVITAMBO         ZIMBABWE                       NA                   NA                0.2634638   0.2540597   0.2728679


### Parameter: RR


agecat                       studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          1                    0                 1.0200000   0.9409586   1.1056810
0-24 months (no birth st.)   CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   CMIN             BANGLADESH                     1                    0                 0.6955128   0.4168474   1.1604680
0-24 months (no birth st.)   COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   COHORTS          GUATEMALA                      1                    0                 1.0377230   0.9402960   1.1452448
0-24 months (no birth st.)   COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   COHORTS          INDIA                          1                    0                 1.0514476   0.9543826   1.1583845
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    1                    0                 0.9982481   0.9307921   1.0705928
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          1                    0                 1.0049311   0.8421524   1.1991732
0-24 months (no birth st.)   iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   iLiNS-Zinc       BURKINA FASO                   1                    0                 1.6270467   1.2559921   2.1077211
0-24 months (no birth st.)   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   IRC              INDIA                          1                    0                 1.0566977   0.8787904   1.2706215
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     1                    0                 1.1327450   1.0449357   1.2279332
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     1                    0                 1.0654313   0.9250043   1.2271769
0-24 months (no birth st.)   Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   Keneba           GAMBIA                         1                    0                 1.1303542   1.0222313   1.2499136
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     1                    0                 0.7285809   0.4756961   1.1159017
0-24 months (no birth st.)   MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED           INDIA                          1                    0                 0.6332347   0.3983436   1.0066338
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED           NEPAL                          1                    0                 1.3089489   0.6806719   2.5171408
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   1                    0                 0.5839695   0.2954758   1.1541396
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     1                    0                 0.8929959   0.7591238   1.0504765
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     1                    0                 1.0609187   0.8604879   1.3080353
0-24 months (no birth st.)   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   PROBIT           BELARUS                        1                    0                 0.8716455   0.7431270   1.0223905
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     1                    0                 1.1559005   0.9137412   1.4622366
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ResPak           PAKISTAN                       1                    0                 1.0491225   0.7453881   1.4766242
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          1                    0                 1.1580975   0.9566070   1.4020280
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          1                    0                 1.1428456   0.9575347   1.3640195
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1202171   0.8717792   1.4394542
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       1                    0                 1.4056579   1.3311756   1.4843078
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          1                    0                 1.1251683   0.8238062   1.5367735
0-6 months (no birth st.)    CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    CMIN             BANGLADESH                     1                    0                 1.7032967   0.8951384   3.2410850
0-6 months (no birth st.)    COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    COHORTS          GUATEMALA                      1                    0                 0.9220134   0.6775401   1.2546986
0-6 months (no birth st.)    COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    COHORTS          INDIA                          1                    0                 1.4759545   1.2073146   1.8043696
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    1                    0                 1.1706626   0.9664088   1.4180861
0-6 months (no birth st.)    EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    EE               PAKISTAN                       1                    0                 0.9145137   0.6318984   1.3235282
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          1                    0                 1.3873830   0.9349259   2.0588066
0-6 months (no birth st.)    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    IRC              INDIA                          1                    0                 1.1751171   0.8659742   1.5946205
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     1                    0                 1.4773398   1.3265292   1.6452957
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     1                    0                 1.3477075   0.9134990   1.9883060
0-6 months (no birth st.)    Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    Keneba           GAMBIA                         1                    0                 1.1425645   0.9573071   1.3636727
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     1                    0                 0.8243421   0.3995088   1.7009383
0-6 months (no birth st.)    MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    MAL-ED           INDIA                          1                    0                 0.7250000   0.3319185   1.5835964
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     1                    0                 1.1161838   0.7954394   1.5662617
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     1                    0                 1.2302367   0.8699064   1.7398220
0-6 months (no birth st.)    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    PROBIT           BELARUS                        1                    0                 0.7310259   0.5730254   0.9325920
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     1                    0                 1.4039295   0.9330378   2.1124739
0-6 months (no birth st.)    ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ResPak           PAKISTAN                       1                    0                 1.0887350   0.7328736   1.6173919
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          1                    0                 1.4204015   0.9467352   2.1310502
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1531934   0.7666235   1.7346911
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       1                    0                 2.0371846   1.8806785   2.2067147
6-24 months                  CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  CMC-V-BCS-2002   INDIA                          1                    0                 1.0246533   0.8927031   1.1761071
6-24 months                  COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  COHORTS          GUATEMALA                      1                    0                 0.9749890   0.8809130   1.0791118
6-24 months                  COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  COHORTS          INDIA                          1                    0                 0.9596634   0.8521514   1.0807396
6-24 months                  COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  COHORTS          PHILIPPINES                    1                    0                 0.9840651   0.9011456   1.0746145
6-24 months                  GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  GMS-Nepal        NEPAL                          1                    0                 1.0177483   0.8243637   1.2564982
6-24 months                  iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  iLiNS-Zinc       BURKINA FASO                   1                    0                 1.8585928   1.4932677   2.3132940
6-24 months                  IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  IRC              INDIA                          1                    0                 1.0155145   0.7050824   1.4626228
6-24 months                  JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  JiVitA-3         BANGLADESH                     1                    0                 0.8974872   0.7707521   1.0450613
6-24 months                  JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  JiVitA-4         BANGLADESH                     1                    0                 1.0267079   0.8746447   1.2052083
6-24 months                  Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  Keneba           GAMBIA                         1                    0                 1.1875425   1.0323163   1.3661097
6-24 months                  MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED           BANGLADESH                     1                    0                 0.7204433   0.4061853   1.2778369
6-24 months                  MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED           INDIA                          1                    0                 0.4988506   0.2533667   0.9821808
6-24 months                  MAL-ED           NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  MAL-ED           NEPAL                          1                    0                 1.6096257   0.8125824   3.1884704
6-24 months                  NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  NIH-Birth        BANGLADESH                     1                    0                 0.8357869   0.6645131   1.0512056
6-24 months                  NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  NIH-Crypto       BANGLADESH                     1                    0                 0.9721446   0.6980221   1.3539185
6-24 months                  PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  PROBIT           BELARUS                        1                    0                 1.0759801   0.8805290   1.3148154
6-24 months                  PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  PROVIDE          BANGLADESH                     1                    0                 1.0095254   0.7088285   1.4377829
6-24 months                  SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  SAS-CompFeed     INDIA                          1                    0                 1.0332051   0.8507582   1.2547781
6-24 months                  SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  SAS-FoodSuppl    INDIA                          1                    0                 1.1640927   1.0030196   1.3510322
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0767753   0.7521293   1.5415502
6-24 months                  ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                  ZVITAMBO         ZIMBABWE                       1                    0                 1.1750619   1.0664582   1.2947253


### Parameter: PAR


agecat                       studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0045045   -0.0139408    0.0229498
0-24 months (no birth st.)   CMIN             BANGLADESH                     0                    NA                -0.0182412   -0.0418995    0.0054172
0-24 months (no birth st.)   COHORTS          GUATEMALA                      0                    NA                 0.0039030   -0.0106623    0.0184684
0-24 months (no birth st.)   COHORTS          INDIA                          0                    NA                 0.0026270   -0.0024189    0.0076728
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    0                    NA                -0.0001099   -0.0075205    0.0073006
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    NA                 0.0024644   -0.0187617    0.0236904
0-24 months (no birth st.)   iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0125683    0.0050932    0.0200434
0-24 months (no birth st.)   IRC              INDIA                          0                    NA                 0.0128969   -0.0218755    0.0476692
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                    NA                 0.0035606    0.0010330    0.0060881
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                    NA                 0.0021301   -0.0030355    0.0072956
0-24 months (no birth st.)   Keneba           GAMBIA                         0                    NA                 0.0110555    0.0020864    0.0200247
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                    NA                -0.0265232   -0.0578642    0.0048179
0-24 months (no birth st.)   MAL-ED           INDIA                          0                    NA                -0.0349624   -0.0664696   -0.0034552
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                    NA                 0.0149674   -0.0110320    0.0409668
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0155437   -0.0321956    0.0011083
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     0                    NA                -0.0193514   -0.0465781    0.0078752
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                    NA                 0.0036727   -0.0181993    0.0255447
0-24 months (no birth st.)   PROBIT           BELARUS                        0                    NA                -0.0022458   -0.0059563    0.0014647
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                 0.0086306   -0.0110695    0.0283307
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                    NA                 0.0045997   -0.0295638    0.0387633
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          0                    NA                 0.0087867   -0.0043127    0.0218860
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          0                    NA                 0.0123429   -0.0120813    0.0367670
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0018985   -0.0030411    0.0068380
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0221818    0.0181412    0.0262225
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0041486   -0.0290858    0.0373830
0-6 months (no birth st.)    CMIN             BANGLADESH                     0                    NA                 0.0147465   -0.0083076    0.0378007
0-6 months (no birth st.)    COHORTS          GUATEMALA                      0                    NA                -0.0039599   -0.0185563    0.0106365
0-6 months (no birth st.)    COHORTS          INDIA                          0                    NA                 0.0059822    0.0025729    0.0093914
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    0                    NA                 0.0044183   -0.0020132    0.0108497
0-6 months (no birth st.)    EE               PAKISTAN                       0                    NA                 0.0008057   -0.0268683    0.0284797
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    NA                 0.0132059   -0.0042453    0.0306572
0-6 months (no birth st.)    IRC              INDIA                          0                    NA                 0.0194101   -0.0145359    0.0533561
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                    NA                 0.0063795    0.0042370    0.0085220
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                    NA                 0.0025652   -0.0010067    0.0061372
0-6 months (no birth st.)    Keneba           GAMBIA                         0                    NA                 0.0067311   -0.0023427    0.0158049
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                    NA                -0.0068738   -0.0310957    0.0173481
0-6 months (no birth st.)    MAL-ED           INDIA                          0                    NA                -0.0108374   -0.0345750    0.0129001
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     0                    NA                 0.0079447   -0.0155458    0.0314351
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                    NA                 0.0103911   -0.0081098    0.0288919
0-6 months (no birth st.)    PROBIT           BELARUS                        0                    NA                -0.0041468   -0.0072825   -0.0010111
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                 0.0121821   -0.0036483    0.0280125
0-6 months (no birth st.)    ResPak           PAKISTAN                       0                    NA                 0.0063068   -0.0276277    0.0402412
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          0                    NA                 0.0083425   -0.0029741    0.0196592
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0013661   -0.0024502    0.0051824
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0259781    0.0223228    0.0296334
6-24 months                  CMC-V-BCS-2002   INDIA                          0                    NA                 0.0049689   -0.0233466    0.0332845
6-24 months                  COHORTS          GUATEMALA                      0                    NA                -0.0032919   -0.0161850    0.0096012
6-24 months                  COHORTS          INDIA                          0                    NA                -0.0018965   -0.0068471    0.0030541
6-24 months                  COHORTS          PHILIPPINES                    0                    NA                -0.0015653   -0.0101653    0.0070347
6-24 months                  GMS-Nepal        NEPAL                          0                    NA                -0.0011696   -0.0253700    0.0230308
6-24 months                  iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0458634    0.0293662    0.0623605
6-24 months                  IRC              INDIA                          0                    NA                 0.0017208   -0.0386247    0.0420663
6-24 months                  JiVitA-3         BANGLADESH                     0                    NA                -0.0021217   -0.0049970    0.0007535
6-24 months                  JiVitA-4         BANGLADESH                     0                    NA                 0.0008083   -0.0042474    0.0058641
6-24 months                  Keneba           GAMBIA                         0                    NA                 0.0111008    0.0011957    0.0210058
6-24 months                  MAL-ED           BANGLADESH                     0                    NA                -0.0221032   -0.0572034    0.0129970
6-24 months                  MAL-ED           INDIA                          0                    NA                -0.0456640   -0.0828925   -0.0084355
6-24 months                  MAL-ED           NEPAL                          0                    NA                 0.0136658   -0.0100938    0.0374254
6-24 months                  NIH-Birth        BANGLADESH                     0                    NA                -0.0280263   -0.0608087    0.0047561
6-24 months                  NIH-Crypto       BANGLADESH                     0                    NA                -0.0081132   -0.0301244    0.0138979
6-24 months                  PROBIT           BELARUS                        0                    NA                 0.0017675   -0.0010854    0.0046204
6-24 months                  PROVIDE          BANGLADESH                     0                    NA                 0.0012767   -0.0193164    0.0218697
6-24 months                  SAS-CompFeed     INDIA                          0                    NA                 0.0031514   -0.0076257    0.0139285
6-24 months                  SAS-FoodSuppl    INDIA                          0                    NA                 0.0208832   -0.0010346    0.0428011
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0005201   -0.0047989    0.0058391
6-24 months                  ZVITAMBO         ZIMBABWE                       0                    NA                 0.0059827    0.0021247    0.0098406


### Parameter: PAF


agecat                       studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0049751   -0.0156225    0.0251550
0-24 months (no birth st.)   CMIN             BANGLADESH                     0                    NA                -0.0241300   -0.0562877    0.0070486
0-24 months (no birth st.)   COHORTS          GUATEMALA                      0                    NA                 0.0055980   -0.0155188    0.0262757
0-24 months (no birth st.)   COHORTS          INDIA                          0                    NA                 0.0093295   -0.0087523    0.0270872
0-24 months (no birth st.)   COHORTS          PHILIPPINES                    0                    NA                -0.0001654   -0.0113752    0.0109201
0-24 months (no birth st.)   GMS-Nepal        NEPAL                          0                    NA                 0.0043735   -0.0340200    0.0413414
0-24 months (no birth st.)   iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0705885    0.0275334    0.1117373
0-24 months (no birth st.)   IRC              INDIA                          0                    NA                 0.0218444   -0.0388986    0.0790359
0-24 months (no birth st.)   JiVitA-3         BANGLADESH                     0                    NA                 0.0141148    0.0040623    0.0240657
0-24 months (no birth st.)   JiVitA-4         BANGLADESH                     0                    NA                 0.0051482   -0.0074207    0.0175603
0-24 months (no birth st.)   Keneba           GAMBIA                         0                    NA                 0.0243866    0.0043846    0.0439868
0-24 months (no birth st.)   MAL-ED           BANGLADESH                     0                    NA                -0.0504871   -0.1123479    0.0079335
0-24 months (no birth st.)   MAL-ED           INDIA                          0                    NA                -0.0661451   -0.1282175   -0.0074877
0-24 months (no birth st.)   MAL-ED           NEPAL                          0                    NA                 0.0574204   -0.0473529    0.1517126
0-24 months (no birth st.)   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0312008   -0.0653957    0.0018966
0-24 months (no birth st.)   NIH-Birth        BANGLADESH                     0                    NA                -0.0321513   -0.0785183    0.0122224
0-24 months (no birth st.)   NIH-Crypto       BANGLADESH                     0                    NA                 0.0093318   -0.0478428    0.0633866
0-24 months (no birth st.)   PROBIT           BELARUS                        0                    NA                -0.0186298   -0.0488171    0.0106886
0-24 months (no birth st.)   PROVIDE          BANGLADESH                     0                    NA                 0.0229545   -0.0308634    0.0739626
0-24 months (no birth st.)   ResPak           PAKISTAN                       0                    NA                 0.0088490   -0.0591164    0.0724530
0-24 months (no birth st.)   SAS-CompFeed     INDIA                          0                    NA                 0.0155226   -0.0084223    0.0388990
0-24 months (no birth st.)   SAS-FoodSuppl    INDIA                          0                    NA                 0.0171466   -0.0174973    0.0506110
0-24 months (no birth st.)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0063606   -0.0103266    0.0227722
0-24 months (no birth st.)   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0635378    0.0518911    0.0750414
0-6 months (no birth st.)    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0108160   -0.0797286    0.0937676
0-6 months (no birth st.)    CMIN             BANGLADESH                     0                    NA                 0.0516129   -0.0323589    0.1287544
0-6 months (no birth st.)    COHORTS          GUATEMALA                      0                    NA                -0.0180351   -0.0867148    0.0463040
0-6 months (no birth st.)    COHORTS          INDIA                          0                    NA                 0.0817132    0.0344497    0.1266632
0-6 months (no birth st.)    COHORTS          PHILIPPINES                    0                    NA                 0.0233798   -0.0112444    0.0568184
0-6 months (no birth st.)    EE               PAKISTAN                       0                    NA                 0.0014544   -0.0497709    0.0501800
0-6 months (no birth st.)    GMS-Nepal        NEPAL                          0                    NA                 0.0759341   -0.0295275    0.1705925
0-6 months (no birth st.)    IRC              INDIA                          0                    NA                 0.0572597   -0.0483729    0.1522490
0-6 months (no birth st.)    JiVitA-3         BANGLADESH                     0                    NA                 0.0489574    0.0325894    0.0650484
0-6 months (no birth st.)    JiVitA-4         BANGLADESH                     0                    NA                 0.0299716   -0.0127350    0.0708773
0-6 months (no birth st.)    Keneba           GAMBIA                         0                    NA                 0.0278176   -0.0104029    0.0645924
0-6 months (no birth st.)    MAL-ED           BANGLADESH                     0                    NA                -0.0317366   -0.1497168    0.0741368
0-6 months (no birth st.)    MAL-ED           INDIA                          0                    NA                -0.0494753   -0.1632968    0.0532096
0-6 months (no birth st.)    NIH-Birth        BANGLADESH                     0                    NA                 0.0347989   -0.0736715    0.1323108
0-6 months (no birth st.)    NIH-Crypto       BANGLADESH                     0                    NA                 0.0547208   -0.0476547    0.1470922
0-6 months (no birth st.)    PROBIT           BELARUS                        0                    NA                -0.0674884   -0.1161474   -0.0209508
0-6 months (no birth st.)    PROVIDE          BANGLADESH                     0                    NA                 0.0763493   -0.0276904    0.1698564
0-6 months (no birth st.)    ResPak           PAKISTAN                       0                    NA                 0.0144769   -0.0665975    0.0893886
0-6 months (no birth st.)    SAS-CompFeed     INDIA                          0                    NA                 0.0432620   -0.0152657    0.0984157
0-6 months (no birth st.)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0099791   -0.0182828    0.0374567
0-6 months (no birth st.)    ZVITAMBO         ZIMBABWE                       0                    NA                 0.1509872    0.1300058    0.1714626
6-24 months                  CMC-V-BCS-2002   INDIA                          0                    NA                 0.0058608   -0.0281245    0.0387227
6-24 months                  COHORTS          GUATEMALA                      0                    NA                -0.0042839   -0.0212071    0.0123589
6-24 months                  COHORTS          INDIA                          0                    NA                -0.0076679   -0.0278841    0.0121507
6-24 months                  COHORTS          PHILIPPINES                    0                    NA                -0.0024322   -0.0158860    0.0108434
6-24 months                  GMS-Nepal        NEPAL                          0                    NA                -0.0020677   -0.0457766    0.0398144
6-24 months                  iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.1265799    0.0708077    0.1790045
6-24 months                  IRC              INDIA                          0                    NA                 0.0045244   -0.1074113    0.1051457
6-24 months                  JiVitA-3         BANGLADESH                     0                    NA                -0.0098363   -0.0232689    0.0034200
6-24 months                  JiVitA-4         BANGLADESH                     0                    NA                 0.0021406   -0.0113432    0.0154447
6-24 months                  Keneba           GAMBIA                         0                    NA                 0.0308201    0.0029286    0.0579313
6-24 months                  MAL-ED           BANGLADESH                     0                    NA                -0.0521240   -0.1385643    0.0277538
6-24 months                  MAL-ED           INDIA                          0                    NA                -0.1081886   -0.2015137   -0.0221123
6-24 months                  MAL-ED           NEPAL                          0                    NA                 0.0646625   -0.0540176    0.1699795
6-24 months                  NIH-Birth        BANGLADESH                     0                    NA                -0.0488337   -0.1078831    0.0070684
6-24 months                  NIH-Crypto       BANGLADESH                     0                    NA                -0.0308668   -0.1180012    0.0494765
6-24 months                  PROBIT           BELARUS                        0                    NA                 0.0275034   -0.0183336    0.0712772
6-24 months                  PROVIDE          BANGLADESH                     0                    NA                 0.0042494   -0.0667110    0.0704894
6-24 months                  SAS-CompFeed     INDIA                          0                    NA                 0.0062642   -0.0156965    0.0277502
6-24 months                  SAS-FoodSuppl    INDIA                          0                    NA                 0.0275795   -0.0021485    0.0564256
6-24 months                  TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0023058   -0.0215560    0.0256102
6-24 months                  ZVITAMBO         ZIMBABWE                       0                    NA                 0.0227077    0.0079608    0.0372354
