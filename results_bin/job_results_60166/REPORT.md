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

**Intervention Variable:** enwast

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

agecat      studyid          country                        enwast    sstunted   n_cell       n
----------  ---------------  -----------------------------  -------  ---------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0                0       75      87
Birth       CMC-V-BCS-2002   INDIA                          0                1        0      87
Birth       CMC-V-BCS-2002   INDIA                          1                0       11      87
Birth       CMC-V-BCS-2002   INDIA                          1                1        1      87
Birth       CMIN             BANGLADESH                     0                0       15      19
Birth       CMIN             BANGLADESH                     0                1        0      19
Birth       CMIN             BANGLADESH                     1                0        4      19
Birth       CMIN             BANGLADESH                     1                1        0      19
Birth       COHORTS          GUATEMALA                      0                0      564     762
Birth       COHORTS          GUATEMALA                      0                1        0     762
Birth       COHORTS          GUATEMALA                      1                0      198     762
Birth       COHORTS          GUATEMALA                      1                1        0     762
Birth       COHORTS          INDIA                          0                0     5097    6231
Birth       COHORTS          INDIA                          0                1        0    6231
Birth       COHORTS          INDIA                          1                0     1134    6231
Birth       COHORTS          INDIA                          1                1        0    6231
Birth       COHORTS          PHILIPPINES                    0                0     2448    2910
Birth       COHORTS          PHILIPPINES                    0                1        0    2910
Birth       COHORTS          PHILIPPINES                    1                0      462    2910
Birth       COHORTS          PHILIPPINES                    1                1        0    2910
Birth       CONTENT          PERU                           0                0        2       2
Birth       CONTENT          PERU                           0                1        0       2
Birth       CONTENT          PERU                           1                0        0       2
Birth       CONTENT          PERU                           1                1        0       2
Birth       EE               PAKISTAN                       0                0      154     180
Birth       EE               PAKISTAN                       0                1        1     180
Birth       EE               PAKISTAN                       1                0       25     180
Birth       EE               PAKISTAN                       1                1        0     180
Birth       GMS-Nepal        NEPAL                          0                0      509     645
Birth       GMS-Nepal        NEPAL                          0                1        0     645
Birth       GMS-Nepal        NEPAL                          1                0      136     645
Birth       GMS-Nepal        NEPAL                          1                1        0     645
Birth       IRC              INDIA                          0                0      251     364
Birth       IRC              INDIA                          0                1        0     364
Birth       IRC              INDIA                          1                0      113     364
Birth       IRC              INDIA                          1                1        0     364
Birth       JiVitA-3         BANGLADESH                     0                0    16036   18062
Birth       JiVitA-3         BANGLADESH                     0                1        5   18062
Birth       JiVitA-3         BANGLADESH                     1                0     2019   18062
Birth       JiVitA-3         BANGLADESH                     1                1        2   18062
Birth       JiVitA-4         BANGLADESH                     0                0     2156    2399
Birth       JiVitA-4         BANGLADESH                     0                1        1    2399
Birth       JiVitA-4         BANGLADESH                     1                0      242    2399
Birth       JiVitA-4         BANGLADESH                     1                1        0    2399
Birth       Keneba           GAMBIA                         0                0     1102    1488
Birth       Keneba           GAMBIA                         0                1        0    1488
Birth       Keneba           GAMBIA                         1                0      386    1488
Birth       Keneba           GAMBIA                         1                1        0    1488
Birth       MAL-ED           BANGLADESH                     0                0      178     215
Birth       MAL-ED           BANGLADESH                     0                1        1     215
Birth       MAL-ED           BANGLADESH                     1                0       36     215
Birth       MAL-ED           BANGLADESH                     1                1        0     215
Birth       MAL-ED           BRAZIL                         0                0       59      62
Birth       MAL-ED           BRAZIL                         0                1        1      62
Birth       MAL-ED           BRAZIL                         1                0        2      62
Birth       MAL-ED           BRAZIL                         1                1        0      62
Birth       MAL-ED           INDIA                          0                0       40      45
Birth       MAL-ED           INDIA                          0                1        0      45
Birth       MAL-ED           INDIA                          1                0        5      45
Birth       MAL-ED           INDIA                          1                1        0      45
Birth       MAL-ED           NEPAL                          0                0       24      26
Birth       MAL-ED           NEPAL                          0                1        0      26
Birth       MAL-ED           NEPAL                          1                0        2      26
Birth       MAL-ED           NEPAL                          1                1        0      26
Birth       MAL-ED           PERU                           0                0      222     228
Birth       MAL-ED           PERU                           0                1        1     228
Birth       MAL-ED           PERU                           1                0        5     228
Birth       MAL-ED           PERU                           1                1        0     228
Birth       MAL-ED           SOUTH AFRICA                   0                0      108     121
Birth       MAL-ED           SOUTH AFRICA                   0                1        0     121
Birth       MAL-ED           SOUTH AFRICA                   1                0       13     121
Birth       MAL-ED           SOUTH AFRICA                   1                1        0     121
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      114     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        1     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     115
Birth       NIH-Birth        BANGLADESH                     0                0      407     580
Birth       NIH-Birth        BANGLADESH                     0                1        0     580
Birth       NIH-Birth        BANGLADESH                     1                0      173     580
Birth       NIH-Birth        BANGLADESH                     1                1        0     580
Birth       NIH-Crypto       BANGLADESH                     0                0      532     713
Birth       NIH-Crypto       BANGLADESH                     0                1        3     713
Birth       NIH-Crypto       BANGLADESH                     1                0      178     713
Birth       NIH-Crypto       BANGLADESH                     1                1        0     713
Birth       PROBIT           BELARUS                        0                0    10909   13886
Birth       PROBIT           BELARUS                        0                1        0   13886
Birth       PROBIT           BELARUS                        1                0     2977   13886
Birth       PROBIT           BELARUS                        1                1        0   13886
Birth       PROVIDE          BANGLADESH                     0                0      414     532
Birth       PROVIDE          BANGLADESH                     0                1        1     532
Birth       PROVIDE          BANGLADESH                     1                0      117     532
Birth       PROVIDE          BANGLADESH                     1                1        0     532
Birth       ResPak           PAKISTAN                       0                0       33      38
Birth       ResPak           PAKISTAN                       0                1        1      38
Birth       ResPak           PAKISTAN                       1                0        4      38
Birth       ResPak           PAKISTAN                       1                1        0      38
Birth       SAS-CompFeed     INDIA                          0                0      983    1105
Birth       SAS-CompFeed     INDIA                          0                1        2    1105
Birth       SAS-CompFeed     INDIA                          1                0      120    1105
Birth       SAS-CompFeed     INDIA                          1                1        0    1105
Birth       ZVITAMBO         ZIMBABWE                       0                0    10856   13092
Birth       ZVITAMBO         ZIMBABWE                       0                1        0   13092
Birth       ZVITAMBO         ZIMBABWE                       1                0     2236   13092
Birth       ZVITAMBO         ZIMBABWE                       1                1        0   13092
6 months    CMC-V-BCS-2002   INDIA                          0                0      245     363
6 months    CMC-V-BCS-2002   INDIA                          0                1       27     363
6 months    CMC-V-BCS-2002   INDIA                          1                0       76     363
6 months    CMC-V-BCS-2002   INDIA                          1                1       15     363
6 months    CMIN             BANGLADESH                     0                0      200     232
6 months    CMIN             BANGLADESH                     0                1       18     232
6 months    CMIN             BANGLADESH                     1                0       11     232
6 months    CMIN             BANGLADESH                     1                1        3     232
6 months    COHORTS          GUATEMALA                      0                0      628     901
6 months    COHORTS          GUATEMALA                      0                1       97     901
6 months    COHORTS          GUATEMALA                      1                0      164     901
6 months    COHORTS          GUATEMALA                      1                1       12     901
6 months    COHORTS          INDIA                          0                0     5205    6508
6 months    COHORTS          INDIA                          0                1      159    6508
6 months    COHORTS          INDIA                          1                0     1089    6508
6 months    COHORTS          INDIA                          1                1       55    6508
6 months    COHORTS          PHILIPPINES                    0                0     2099    2593
6 months    COHORTS          PHILIPPINES                    0                1       92    2593
6 months    COHORTS          PHILIPPINES                    1                0      385    2593
6 months    COHORTS          PHILIPPINES                    1                1       17    2593
6 months    CONTENT          PERU                           0                0      213     215
6 months    CONTENT          PERU                           0                1        1     215
6 months    CONTENT          PERU                           1                0        1     215
6 months    CONTENT          PERU                           1                1        0     215
6 months    EE               PAKISTAN                       0                0      227     292
6 months    EE               PAKISTAN                       0                1       28     292
6 months    EE               PAKISTAN                       1                0       32     292
6 months    EE               PAKISTAN                       1                1        5     292
6 months    GMS-Nepal        NEPAL                          0                0      410     528
6 months    GMS-Nepal        NEPAL                          0                1       11     528
6 months    GMS-Nepal        NEPAL                          1                0      105     528
6 months    GMS-Nepal        NEPAL                          1                1        2     528
6 months    Guatemala BSC    GUATEMALA                      0                0      270     299
6 months    Guatemala BSC    GUATEMALA                      0                1       23     299
6 months    Guatemala BSC    GUATEMALA                      1                0        2     299
6 months    Guatemala BSC    GUATEMALA                      1                1        4     299
6 months    IRC              INDIA                          0                0      255     382
6 months    IRC              INDIA                          0                1       13     382
6 months    IRC              INDIA                          1                0      105     382
6 months    IRC              INDIA                          1                1        9     382
6 months    JiVitA-3         BANGLADESH                     0                0    12374   14244
6 months    JiVitA-3         BANGLADESH                     0                1      350   14244
6 months    JiVitA-3         BANGLADESH                     1                0     1456   14244
6 months    JiVitA-3         BANGLADESH                     1                1       64   14244
6 months    JiVitA-4         BANGLADESH                     0                0     3861    4410
6 months    JiVitA-4         BANGLADESH                     0                1      149    4410
6 months    JiVitA-4         BANGLADESH                     1                0      375    4410
6 months    JiVitA-4         BANGLADESH                     1                1       25    4410
6 months    Keneba           GAMBIA                         0                0     1597    2029
6 months    Keneba           GAMBIA                         0                1       44    2029
6 months    Keneba           GAMBIA                         1                0      367    2029
6 months    Keneba           GAMBIA                         1                1       21    2029
6 months    LCNI-5           MALAWI                         0                0      759     839
6 months    LCNI-5           MALAWI                         0                1       66     839
6 months    LCNI-5           MALAWI                         1                0        9     839
6 months    LCNI-5           MALAWI                         1                1        5     839
6 months    MAL-ED           BANGLADESH                     0                0      183     229
6 months    MAL-ED           BANGLADESH                     0                1        5     229
6 months    MAL-ED           BANGLADESH                     1                0       40     229
6 months    MAL-ED           BANGLADESH                     1                1        1     229
6 months    MAL-ED           BRAZIL                         0                0      192     199
6 months    MAL-ED           BRAZIL                         0                1        0     199
6 months    MAL-ED           BRAZIL                         1                0        7     199
6 months    MAL-ED           BRAZIL                         1                1        0     199
6 months    MAL-ED           INDIA                          0                0      185     232
6 months    MAL-ED           INDIA                          0                1        4     232
6 months    MAL-ED           INDIA                          1                0       40     232
6 months    MAL-ED           INDIA                          1                1        3     232
6 months    MAL-ED           NEPAL                          0                0      201     232
6 months    MAL-ED           NEPAL                          0                1        0     232
6 months    MAL-ED           NEPAL                          1                0       31     232
6 months    MAL-ED           NEPAL                          1                1        0     232
6 months    MAL-ED           PERU                           0                0      252     266
6 months    MAL-ED           PERU                           0                1        9     266
6 months    MAL-ED           PERU                           1                0        5     266
6 months    MAL-ED           PERU                           1                1        0     266
6 months    MAL-ED           SOUTH AFRICA                   0                0      231     253
6 months    MAL-ED           SOUTH AFRICA                   0                1        4     253
6 months    MAL-ED           SOUTH AFRICA                   1                0       17     253
6 months    MAL-ED           SOUTH AFRICA                   1                1        1     253
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      223     238
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1       12     238
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        3     238
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     238
6 months    NIH-Birth        BANGLADESH                     0                0      354     514
6 months    NIH-Birth        BANGLADESH                     0                1       14     514
6 months    NIH-Birth        BANGLADESH                     1                0      135     514
6 months    NIH-Birth        BANGLADESH                     1                1       11     514
6 months    NIH-Crypto       BANGLADESH                     0                0      506     694
6 months    NIH-Crypto       BANGLADESH                     0                1       11     694
6 months    NIH-Crypto       BANGLADESH                     1                0      170     694
6 months    NIH-Crypto       BANGLADESH                     1                1        7     694
6 months    PROBIT           BELARUS                        0                0    12547   15753
6 months    PROBIT           BELARUS                        0                1      142   15753
6 months    PROBIT           BELARUS                        1                0     3031   15753
6 months    PROBIT           BELARUS                        1                1       33   15753
6 months    PROVIDE          BANGLADESH                     0                0      467     597
6 months    PROVIDE          BANGLADESH                     0                1        5     597
6 months    PROVIDE          BANGLADESH                     1                0      119     597
6 months    PROVIDE          BANGLADESH                     1                1        6     597
6 months    ResPak           PAKISTAN                       0                0      152     228
6 months    ResPak           PAKISTAN                       0                1       33     228
6 months    ResPak           PAKISTAN                       1                0       31     228
6 months    ResPak           PAKISTAN                       1                1       12     228
6 months    SAS-CompFeed     INDIA                          0                0     1004    1213
6 months    SAS-CompFeed     INDIA                          0                1       70    1213
6 months    SAS-CompFeed     INDIA                          1                0      121    1213
6 months    SAS-CompFeed     INDIA                          1                1       18    1213
6 months    SAS-FoodSuppl    INDIA                          0                0      272     380
6 months    SAS-FoodSuppl    INDIA                          0                1       39     380
6 months    SAS-FoodSuppl    INDIA                          1                0       54     380
6 months    SAS-FoodSuppl    INDIA                          1                1       15     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1883    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       18    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      119    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0    2020
6 months    ZVITAMBO         ZIMBABWE                       0                0     6710    8174
6 months    ZVITAMBO         ZIMBABWE                       0                1      194    8174
6 months    ZVITAMBO         ZIMBABWE                       1                0     1186    8174
6 months    ZVITAMBO         ZIMBABWE                       1                1       84    8174
24 months   CMC-V-BCS-2002   INDIA                          0                0      183     364
24 months   CMC-V-BCS-2002   INDIA                          0                1       89     364
24 months   CMC-V-BCS-2002   INDIA                          1                0       59     364
24 months   CMC-V-BCS-2002   INDIA                          1                1       33     364
24 months   CMIN             BANGLADESH                     0                0      159     232
24 months   CMIN             BANGLADESH                     0                1       58     232
24 months   CMIN             BANGLADESH                     1                0       10     232
24 months   CMIN             BANGLADESH                     1                1        5     232
24 months   COHORTS          GUATEMALA                      0                0      439    1027
24 months   COHORTS          GUATEMALA                      0                1      435    1027
24 months   COHORTS          GUATEMALA                      1                0       85    1027
24 months   COHORTS          GUATEMALA                      1                1       68    1027
24 months   COHORTS          INDIA                          0                0     3359    5070
24 months   COHORTS          INDIA                          0                1      893    5070
24 months   COHORTS          INDIA                          1                0      629    5070
24 months   COHORTS          INDIA                          1                1      189    5070
24 months   COHORTS          PHILIPPINES                    0                0     1421    2347
24 months   COHORTS          PHILIPPINES                    0                1      568    2347
24 months   COHORTS          PHILIPPINES                    1                0      269    2347
24 months   COHORTS          PHILIPPINES                    1                1       89    2347
24 months   CONTENT          PERU                           0                0      162     164
24 months   CONTENT          PERU                           0                1        1     164
24 months   CONTENT          PERU                           1                0        1     164
24 months   CONTENT          PERU                           1                1        0     164
24 months   EE               PAKISTAN                       0                0       81     137
24 months   EE               PAKISTAN                       0                1       34     137
24 months   EE               PAKISTAN                       1                0       14     137
24 months   EE               PAKISTAN                       1                1        8     137
24 months   GMS-Nepal        NEPAL                          0                0      332     455
24 months   GMS-Nepal        NEPAL                          0                1       33     455
24 months   GMS-Nepal        NEPAL                          1                0       81     455
24 months   GMS-Nepal        NEPAL                          1                1        9     455
24 months   IRC              INDIA                          0                0      247     383
24 months   IRC              INDIA                          0                1       22     383
24 months   IRC              INDIA                          1                0      101     383
24 months   IRC              INDIA                          1                1       13     383
24 months   JiVitA-3         BANGLADESH                     0                0     5677    7242
24 months   JiVitA-3         BANGLADESH                     0                1      745    7242
24 months   JiVitA-3         BANGLADESH                     1                0      728    7242
24 months   JiVitA-3         BANGLADESH                     1                1       92    7242
24 months   JiVitA-4         BANGLADESH                     0                0     3627    4315
24 months   JiVitA-4         BANGLADESH                     0                1      316    4315
24 months   JiVitA-4         BANGLADESH                     1                0      331    4315
24 months   JiVitA-4         BANGLADESH                     1                1       41    4315
24 months   Keneba           GAMBIA                         0                0     1256    1677
24 months   Keneba           GAMBIA                         0                1       98    1677
24 months   Keneba           GAMBIA                         1                0      289    1677
24 months   Keneba           GAMBIA                         1                1       34    1677
24 months   LCNI-5           MALAWI                         0                0      502     579
24 months   LCNI-5           MALAWI                         0                1       67     579
24 months   LCNI-5           MALAWI                         1                0        7     579
24 months   LCNI-5           MALAWI                         1                1        3     579
24 months   MAL-ED           BANGLADESH                     0                0      146     201
24 months   MAL-ED           BANGLADESH                     0                1       18     201
24 months   MAL-ED           BANGLADESH                     1                0       32     201
24 months   MAL-ED           BANGLADESH                     1                1        5     201
24 months   MAL-ED           BRAZIL                         0                0      153     160
24 months   MAL-ED           BRAZIL                         0                1        1     160
24 months   MAL-ED           BRAZIL                         1                0        6     160
24 months   MAL-ED           BRAZIL                         1                1        0     160
24 months   MAL-ED           INDIA                          0                0      157     223
24 months   MAL-ED           INDIA                          0                1       23     223
24 months   MAL-ED           INDIA                          1                0       37     223
24 months   MAL-ED           INDIA                          1                1        6     223
24 months   MAL-ED           NEPAL                          0                0      189     225
24 months   MAL-ED           NEPAL                          0                1        6     225
24 months   MAL-ED           NEPAL                          1                0       29     225
24 months   MAL-ED           NEPAL                          1                1        1     225
24 months   MAL-ED           PERU                           0                0      179     197
24 months   MAL-ED           PERU                           0                1       14     197
24 months   MAL-ED           PERU                           1                0        4     197
24 months   MAL-ED           PERU                           1                1        0     197
24 months   MAL-ED           SOUTH AFRICA                   0                0      197     237
24 months   MAL-ED           SOUTH AFRICA                   0                1       24     237
24 months   MAL-ED           SOUTH AFRICA                   1                0       13     237
24 months   MAL-ED           SOUTH AFRICA                   1                1        3     237
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      138     205
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1       64     205
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0        2     205
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        1     205
24 months   NIH-Birth        BANGLADESH                     0                0      235     409
24 months   NIH-Birth        BANGLADESH                     0                1       58     409
24 months   NIH-Birth        BANGLADESH                     1                0       92     409
24 months   NIH-Birth        BANGLADESH                     1                1       24     409
24 months   NIH-Crypto       BANGLADESH                     0                0      342     500
24 months   NIH-Crypto       BANGLADESH                     0                1       22     500
24 months   NIH-Crypto       BANGLADESH                     1                0      127     500
24 months   NIH-Crypto       BANGLADESH                     1                1        9     500
24 months   PROBIT           BELARUS                        0                0     3070    4032
24 months   PROBIT           BELARUS                        0                1       48    4032
24 months   PROBIT           BELARUS                        1                0      898    4032
24 months   PROBIT           BELARUS                        1                1       16    4032
24 months   PROVIDE          BANGLADESH                     0                0      411     570
24 months   PROVIDE          BANGLADESH                     0                1       41     570
24 months   PROVIDE          BANGLADESH                     1                0      110     570
24 months   PROVIDE          BANGLADESH                     1                1        8     570
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0        4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1        0       6
24 months   ZVITAMBO         ZIMBABWE                       0                0     1224    1505
24 months   ZVITAMBO         ZIMBABWE                       0                1      122    1505
24 months   ZVITAMBO         ZIMBABWE                       1                0      140    1505
24 months   ZVITAMBO         ZIMBABWE                       1                1       19    1505


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
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/c53e72e0-6d84-4e6f-a605-7c1486900906/ee2f00ff-dde3-4258-a59c-87fb3d350fb5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c53e72e0-6d84-4e6f-a605-7c1486900906/ee2f00ff-dde3-4258-a59c-87fb3d350fb5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c53e72e0-6d84-4e6f-a605-7c1486900906/ee2f00ff-dde3-4258-a59c-87fb3d350fb5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c53e72e0-6d84-4e6f-a605-7c1486900906/ee2f00ff-dde3-4258-a59c-87fb3d350fb5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  -----------  ----------
6 months    CMC-V-BCS-2002   INDIA         0                    NA                0.0946698    0.0593947   0.1299448
6 months    CMC-V-BCS-2002   INDIA         1                    NA                0.1850301    0.1075629   0.2624973
6 months    COHORTS          GUATEMALA     0                    NA                0.1331479    0.1084298   0.1578660
6 months    COHORTS          GUATEMALA     1                    NA                0.0684109    0.0314941   0.1053278
6 months    COHORTS          INDIA         0                    NA                0.0298317    0.0252901   0.0343732
6 months    COHORTS          INDIA         1                    NA                0.0468086    0.0344929   0.0591243
6 months    COHORTS          PHILIPPINES   0                    NA                0.0415888    0.0332336   0.0499439
6 months    COHORTS          PHILIPPINES   1                    NA                0.0442957    0.0240006   0.0645909
6 months    EE               PAKISTAN      0                    NA                0.1098039    0.0713647   0.1482432
6 months    EE               PAKISTAN      1                    NA                0.1351351    0.0247907   0.2454796
6 months    IRC              INDIA         0                    NA                0.0485075    0.0227527   0.0742622
6 months    IRC              INDIA         1                    NA                0.0789474    0.0293823   0.1285125
6 months    JiVitA-3         BANGLADESH    0                    NA                0.0275316    0.0244575   0.0306057
6 months    JiVitA-3         BANGLADESH    1                    NA                0.0416139    0.0301634   0.0530643
6 months    JiVitA-4         BANGLADESH    0                    NA                0.0371633    0.0311996   0.0431270
6 months    JiVitA-4         BANGLADESH    1                    NA                0.0626769    0.0420579   0.0832960
6 months    Keneba           GAMBIA        0                    NA                0.0268102    0.0189916   0.0346287
6 months    Keneba           GAMBIA        1                    NA                0.0531696    0.0305590   0.0757803
6 months    LCNI-5           MALAWI        0                    NA                0.0800000    0.0613187   0.0986813
6 months    LCNI-5           MALAWI        1                    NA                0.3571429    0.1895146   0.5247712
6 months    NIH-Birth        BANGLADESH    0                    NA                0.0389055    0.0187961   0.0590149
6 months    NIH-Birth        BANGLADESH    1                    NA                0.0772806    0.0311779   0.1233834
6 months    NIH-Crypto       BANGLADESH    0                    NA                0.0212766    0.0088287   0.0337245
6 months    NIH-Crypto       BANGLADESH    1                    NA                0.0395480    0.0108154   0.0682806
6 months    PROBIT           BELARUS       0                    NA                0.0112685    0.0049937   0.0175433
6 months    PROBIT           BELARUS       1                    NA                0.0105014    0.0032936   0.0177092
6 months    PROVIDE          BANGLADESH    0                    NA                0.0105932    0.0013496   0.0198369
6 months    PROVIDE          BANGLADESH    1                    NA                0.0480000    0.0104944   0.0855056
6 months    ResPak           PAKISTAN      0                    NA                0.1810381    0.1256034   0.2364728
6 months    ResPak           PAKISTAN      1                    NA                0.2650688    0.1298738   0.4002639
6 months    SAS-CompFeed     INDIA         0                    NA                0.0650121    0.0463174   0.0837068
6 months    SAS-CompFeed     INDIA         1                    NA                0.1233652    0.0734241   0.1733062
6 months    SAS-FoodSuppl    INDIA         0                    NA                0.1247294    0.0879267   0.1615321
6 months    SAS-FoodSuppl    INDIA         1                    NA                0.2088372    0.1112199   0.3064546
6 months    ZVITAMBO         ZIMBABWE      0                    NA                0.0279514    0.0240528   0.0318500
6 months    ZVITAMBO         ZIMBABWE      1                    NA                0.0694421    0.0555236   0.0833605
24 months   CMC-V-BCS-2002   INDIA         0                    NA                0.3300447    0.2742006   0.3858888
24 months   CMC-V-BCS-2002   INDIA         1                    NA                0.3844180    0.2862077   0.4826282
24 months   CMIN             BANGLADESH    0                    NA                0.2672811    0.2082734   0.3262889
24 months   CMIN             BANGLADESH    1                    NA                0.3333333    0.0942583   0.5724084
24 months   COHORTS          GUATEMALA     0                    NA                0.4987916    0.4656646   0.5319185
24 months   COHORTS          GUATEMALA     1                    NA                0.4330200    0.3558659   0.5101741
24 months   COHORTS          INDIA         0                    NA                0.2099079    0.1977503   0.2220655
24 months   COHORTS          INDIA         1                    NA                0.2310095    0.2028493   0.2591696
24 months   COHORTS          PHILIPPINES   0                    NA                0.2811734    0.2614227   0.3009241
24 months   COHORTS          PHILIPPINES   1                    NA                0.2730247    0.2288874   0.3171621
24 months   EE               PAKISTAN      0                    NA                0.2956522    0.2119428   0.3793616
24 months   EE               PAKISTAN      1                    NA                0.3636364    0.1618862   0.5653865
24 months   GMS-Nepal        NEPAL         0                    NA                0.0904110    0.0609591   0.1198628
24 months   GMS-Nepal        NEPAL         1                    NA                0.1000000    0.0379523   0.1620477
24 months   IRC              INDIA         0                    NA                0.0847041    0.0509483   0.1184599
24 months   IRC              INDIA         1                    NA                0.1058264    0.0490932   0.1625596
24 months   JiVitA-3         BANGLADESH    0                    NA                0.1156851    0.1067061   0.1246642
24 months   JiVitA-3         BANGLADESH    1                    NA                0.1174128    0.0904796   0.1443461
24 months   JiVitA-4         BANGLADESH    0                    NA                0.0803031    0.0703698   0.0902364
24 months   JiVitA-4         BANGLADESH    1                    NA                0.1088016    0.0803671   0.1372362
24 months   Keneba           GAMBIA        0                    NA                0.0728162    0.0589701   0.0866623
24 months   Keneba           GAMBIA        1                    NA                0.1029995    0.0695582   0.1364407
24 months   MAL-ED           BANGLADESH    0                    NA                0.1097561    0.0617962   0.1577160
24 months   MAL-ED           BANGLADESH    1                    NA                0.1351351    0.0247048   0.2455655
24 months   MAL-ED           INDIA         0                    NA                0.1277778    0.0788980   0.1766575
24 months   MAL-ED           INDIA         1                    NA                0.1395349    0.0357348   0.2433350
24 months   NIH-Birth        BANGLADESH    0                    NA                0.1980602    0.1524195   0.2437009
24 months   NIH-Birth        BANGLADESH    1                    NA                0.2053432    0.1314661   0.2792202
24 months   NIH-Crypto       BANGLADESH    0                    NA                0.0604396    0.0359345   0.0849446
24 months   NIH-Crypto       BANGLADESH    1                    NA                0.0661765    0.0243552   0.1079978
24 months   PROBIT           BELARUS       0                    NA                0.0156813   -0.0010376   0.0324003
24 months   PROBIT           BELARUS       1                    NA                0.0175743    0.0058872   0.0292614
24 months   PROVIDE          BANGLADESH    0                    NA                0.0907080    0.0642087   0.1172073
24 months   PROVIDE          BANGLADESH    1                    NA                0.0677966    0.0223975   0.1131958
24 months   ZVITAMBO         ZIMBABWE      0                    NA                0.0905594    0.0752161   0.1059027
24 months   ZVITAMBO         ZIMBABWE      1                    NA                0.1157792    0.0646865   0.1668719


### Parameter: E(Y)


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
6 months    CMC-V-BCS-2002   INDIA         NA                   NA                0.1157025   0.0827518   0.1486532
6 months    COHORTS          GUATEMALA     NA                   NA                0.1209767   0.0996719   0.1422815
6 months    COHORTS          INDIA         NA                   NA                0.0328826   0.0285497   0.0372155
6 months    COHORTS          PHILIPPINES   NA                   NA                0.0420363   0.0343109   0.0497616
6 months    EE               PAKISTAN      NA                   NA                0.1130137   0.0766368   0.1493906
6 months    IRC              INDIA         NA                   NA                0.0575916   0.0341987   0.0809846
6 months    JiVitA-3         BANGLADESH    NA                   NA                0.0290649   0.0261073   0.0320225
6 months    JiVitA-4         BANGLADESH    NA                   NA                0.0394558   0.0337069   0.0452047
6 months    Keneba           GAMBIA        NA                   NA                0.0320355   0.0243714   0.0396996
6 months    LCNI-5           MALAWI        NA                   NA                0.0846246   0.0657805   0.1034686
6 months    NIH-Birth        BANGLADESH    NA                   NA                0.0486381   0.0300237   0.0672526
6 months    NIH-Crypto       BANGLADESH    NA                   NA                0.0259366   0.0141026   0.0377706
6 months    PROBIT           BELARUS       NA                   NA                0.0111090   0.0054740   0.0167440
6 months    PROVIDE          BANGLADESH    NA                   NA                0.0184255   0.0076286   0.0292223
6 months    ResPak           PAKISTAN      NA                   NA                0.1973684   0.1455920   0.2491449
6 months    SAS-CompFeed     INDIA         NA                   NA                0.0725474   0.0527677   0.0923271
6 months    SAS-FoodSuppl    INDIA         NA                   NA                0.1421053   0.1069532   0.1772573
6 months    ZVITAMBO         ZIMBABWE      NA                   NA                0.0340103   0.0300807   0.0379399
24 months   CMC-V-BCS-2002   INDIA         NA                   NA                0.3351648   0.2866046   0.3837251
24 months   CMIN             BANGLADESH    NA                   NA                0.2715517   0.2141972   0.3289063
24 months   COHORTS          GUATEMALA     NA                   NA                0.4897760   0.4591879   0.5203642
24 months   COHORTS          INDIA         NA                   NA                0.2134122   0.2021332   0.2246912
24 months   COHORTS          PHILIPPINES   NA                   NA                0.2799318   0.2617643   0.2980994
24 months   EE               PAKISTAN      NA                   NA                0.3065693   0.2290795   0.3840591
24 months   GMS-Nepal        NEPAL         NA                   NA                0.0923077   0.0656815   0.1189338
24 months   IRC              INDIA         NA                   NA                0.0913838   0.0624876   0.1202800
24 months   JiVitA-3         BANGLADESH    NA                   NA                0.1155758   0.1070958   0.1240558
24 months   JiVitA-4         BANGLADESH    NA                   NA                0.0827346   0.0732177   0.0922516
24 months   Keneba           GAMBIA        NA                   NA                0.0787120   0.0658197   0.0916043
24 months   MAL-ED           BANGLADESH    NA                   NA                0.1144279   0.0703104   0.1585454
24 months   MAL-ED           INDIA         NA                   NA                0.1300448   0.0857996   0.1742901
24 months   NIH-Birth        BANGLADESH    NA                   NA                0.2004890   0.1616404   0.2393376
24 months   NIH-Crypto       BANGLADESH    NA                   NA                0.0620000   0.0408410   0.0831590
24 months   PROBIT           BELARUS       NA                   NA                0.0158730   0.0028238   0.0289223
24 months   PROVIDE          BANGLADESH    NA                   NA                0.0859649   0.0629328   0.1089970
24 months   ZVITAMBO         ZIMBABWE      NA                   NA                0.0936877   0.0789610   0.1084144


### Parameter: RR


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
6 months    CMC-V-BCS-2002   INDIA         0                    0                 1.0000000   1.0000000    1.000000
6 months    CMC-V-BCS-2002   INDIA         1                    0                 1.9544789   1.1224893    3.403140
6 months    COHORTS          GUATEMALA     0                    0                 1.0000000   1.0000000    1.000000
6 months    COHORTS          GUATEMALA     1                    0                 0.5137965   0.2905612    0.908541
6 months    COHORTS          INDIA         0                    0                 1.0000000   1.0000000    1.000000
6 months    COHORTS          INDIA         1                    0                 1.5690922   1.1583890    2.125409
6 months    COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000    1.000000
6 months    COHORTS          PHILIPPINES   1                    0                 1.0650893   0.6458548    1.756456
6 months    EE               PAKISTAN      0                    0                 1.0000000   1.0000000    1.000000
6 months    EE               PAKISTAN      1                    0                 1.2306950   0.5061877    2.992191
6 months    IRC              INDIA         0                    0                 1.0000000   1.0000000    1.000000
6 months    IRC              INDIA         1                    0                 1.6275304   0.7152181    3.703563
6 months    JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000    1.000000
6 months    JiVitA-3         BANGLADESH    1                    0                 1.5114949   1.1185879    2.042412
6 months    JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000    1.000000
6 months    JiVitA-4         BANGLADESH    1                    0                 1.6865291   1.1703770    2.430311
6 months    Keneba           GAMBIA        0                    0                 1.0000000   1.0000000    1.000000
6 months    Keneba           GAMBIA        1                    0                 1.9831879   1.1840619    3.321646
6 months    LCNI-5           MALAWI        0                    0                 1.0000000   1.0000000    1.000000
6 months    LCNI-5           MALAWI        1                    0                 4.4642857   2.6428796    7.540959
6 months    NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000    1.000000
6 months    NIH-Birth        BANGLADESH    1                    0                 1.9863677   0.9000767    4.383689
6 months    NIH-Crypto       BANGLADESH    0                    0                 1.0000000   1.0000000    1.000000
6 months    NIH-Crypto       BANGLADESH    1                    0                 1.8587571   0.7313258    4.724266
6 months    PROBIT           BELARUS       0                    0                 1.0000000   1.0000000    1.000000
6 months    PROBIT           BELARUS       1                    0                 0.9319259   0.4471131    1.942430
6 months    PROVIDE          BANGLADESH    0                    0                 1.0000000   1.0000000    1.000000
6 months    PROVIDE          BANGLADESH    1                    0                 4.5312000   1.4044963   14.618603
6 months    ResPak           PAKISTAN      0                    0                 1.0000000   1.0000000    1.000000
6 months    ResPak           PAKISTAN      1                    0                 1.4641607   0.8084613    2.651663
6 months    SAS-CompFeed     INDIA         0                    0                 1.0000000   1.0000000    1.000000
6 months    SAS-CompFeed     INDIA         1                    0                 1.8975727   1.2412171    2.901009
6 months    SAS-FoodSuppl    INDIA         0                    0                 1.0000000   1.0000000    1.000000
6 months    SAS-FoodSuppl    INDIA         1                    0                 1.6743220   0.9626486    2.912126
6 months    ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000    1.000000
6 months    ZVITAMBO         ZIMBABWE      1                    0                 2.4843855   1.9462657    3.171289
24 months   CMC-V-BCS-2002   INDIA         0                    0                 1.0000000   1.0000000    1.000000
24 months   CMC-V-BCS-2002   INDIA         1                    0                 1.1647451   0.8565937    1.583751
24 months   CMIN             BANGLADESH    0                    0                 1.0000000   1.0000000    1.000000
24 months   CMIN             BANGLADESH    1                    0                 1.2471264   0.5888451    2.641313
24 months   COHORTS          GUATEMALA     0                    0                 1.0000000   1.0000000    1.000000
24 months   COHORTS          GUATEMALA     1                    0                 0.8681381   0.7184085    1.049074
24 months   COHORTS          INDIA         0                    0                 1.0000000   1.0000000    1.000000
24 months   COHORTS          INDIA         1                    0                 1.1005278   0.9633667    1.257218
24 months   COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000    1.000000
24 months   COHORTS          PHILIPPINES   1                    0                 0.9710191   0.8155572    1.156115
24 months   EE               PAKISTAN      0                    0                 1.0000000   1.0000000    1.000000
24 months   EE               PAKISTAN      1                    0                 1.2299465   0.6597384    2.292982
24 months   GMS-Nepal        NEPAL         0                    0                 1.0000000   1.0000000    1.000000
24 months   GMS-Nepal        NEPAL         1                    0                 1.1060606   0.5488190    2.229096
24 months   IRC              INDIA         0                    0                 1.0000000   1.0000000    1.000000
24 months   IRC              INDIA         1                    0                 1.2493651   0.6408549    2.435673
24 months   JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000    1.000000
24 months   JiVitA-3         BANGLADESH    1                    0                 1.0149345   0.7963375    1.293537
24 months   JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000    1.000000
24 months   JiVitA-4         BANGLADESH    1                    0                 1.3548869   1.0203847    1.799046
24 months   Keneba           GAMBIA        0                    0                 1.0000000   1.0000000    1.000000
24 months   Keneba           GAMBIA        1                    0                 1.4145137   0.9710770    2.060443
24 months   MAL-ED           BANGLADESH    0                    0                 1.0000000   1.0000000    1.000000
24 months   MAL-ED           BANGLADESH    1                    0                 1.2312312   0.4874034    3.110217
24 months   MAL-ED           INDIA         0                    0                 1.0000000   1.0000000    1.000000
24 months   MAL-ED           INDIA         1                    0                 1.0920121   0.4730886    2.520649
24 months   NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000    1.000000
24 months   NIH-Birth        BANGLADESH    1                    0                 1.0367714   0.6780250    1.585332
24 months   NIH-Crypto       BANGLADESH    0                    0                 1.0000000   1.0000000    1.000000
24 months   NIH-Crypto       BANGLADESH    1                    0                 1.0949198   0.5167665    2.319905
24 months   PROBIT           BELARUS       0                    0                 1.0000000   1.0000000    1.000000
24 months   PROBIT           BELARUS       1                    0                 1.1207124   0.3246034    3.869326
24 months   PROVIDE          BANGLADESH    0                    0                 1.0000000   1.0000000    1.000000
24 months   PROVIDE          BANGLADESH    1                    0                 0.7474163   0.3599748    1.551862
24 months   ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000    1.000000
24 months   ZVITAMBO         ZIMBABWE      1                    0                 1.2784896   0.7971499    2.050474


### Parameter: PAR


agecat      studyid          country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  -----------  -----------
6 months    CMC-V-BCS-2002   INDIA         0                    NA                 0.0210327   -0.0000438    0.0421091
6 months    COHORTS          GUATEMALA     0                    NA                -0.0121712   -0.0210198   -0.0033227
6 months    COHORTS          INDIA         0                    NA                 0.0030509    0.0007356    0.0053663
6 months    COHORTS          PHILIPPINES   0                    NA                 0.0004475   -0.0028558    0.0037508
6 months    EE               PAKISTAN      0                    NA                 0.0032098   -0.0116279    0.0180475
6 months    IRC              INDIA         0                    NA                 0.0090842   -0.0076438    0.0258121
6 months    JiVitA-3         BANGLADESH    0                    NA                 0.0015333    0.0002700    0.0027965
6 months    JiVitA-4         BANGLADESH    0                    NA                 0.0022925    0.0003550    0.0042300
6 months    Keneba           GAMBIA        0                    NA                 0.0052253    0.0006388    0.0098118
6 months    LCNI-5           MALAWI        0                    NA                 0.0046246   -0.0002290    0.0094781
6 months    NIH-Birth        BANGLADESH    0                    NA                 0.0097326   -0.0040402    0.0235055
6 months    NIH-Crypto       BANGLADESH    0                    NA                 0.0046600   -0.0033482    0.0126682
6 months    PROBIT           BELARUS       0                    NA                -0.0001595   -0.0016333    0.0013142
6 months    PROVIDE          BANGLADESH    0                    NA                 0.0078322   -0.0003475    0.0160119
6 months    ResPak           PAKISTAN      0                    NA                 0.0163303   -0.0113068    0.0439675
6 months    SAS-CompFeed     INDIA         0                    NA                 0.0075353    0.0003446    0.0147261
6 months    SAS-FoodSuppl    INDIA         0                    NA                 0.0173758   -0.0019054    0.0366570
6 months    ZVITAMBO         ZIMBABWE      0                    NA                 0.0060589    0.0038298    0.0082879
24 months   CMC-V-BCS-2002   INDIA         0                    NA                 0.0051201   -0.0237193    0.0339596
24 months   CMIN             BANGLADESH    0                    NA                 0.0042706   -0.0117879    0.0203291
24 months   COHORTS          GUATEMALA     0                    NA                -0.0090155   -0.0215523    0.0035213
24 months   COHORTS          INDIA         0                    NA                 0.0035043   -0.0013618    0.0083704
24 months   COHORTS          PHILIPPINES   0                    NA                -0.0012416   -0.0084097    0.0059266
24 months   EE               PAKISTAN      0                    NA                 0.0109172   -0.0244087    0.0462430
24 months   GMS-Nepal        NEPAL         0                    NA                 0.0018967   -0.0116934    0.0154869
24 months   IRC              INDIA         0                    NA                 0.0066797   -0.0140136    0.0273729
24 months   JiVitA-3         BANGLADESH    0                    NA                -0.0001093   -0.0032198    0.0030012
24 months   JiVitA-4         BANGLADESH    0                    NA                 0.0024315   -0.0000936    0.0049567
24 months   Keneba           GAMBIA        0                    NA                 0.0058958   -0.0011093    0.0129010
24 months   MAL-ED           BANGLADESH    0                    NA                 0.0046718   -0.0175324    0.0268760
24 months   MAL-ED           INDIA         0                    NA                 0.0022671   -0.0198648    0.0243989
24 months   NIH-Birth        BANGLADESH    0                    NA                 0.0024288   -0.0217961    0.0266537
24 months   NIH-Crypto       BANGLADESH    0                    NA                 0.0015604   -0.0116258    0.0147467
24 months   PROBIT           BELARUS       0                    NA                 0.0001917   -0.0045294    0.0049128
24 months   PROVIDE          BANGLADESH    0                    NA                -0.0047431   -0.0156521    0.0061659
24 months   ZVITAMBO         ZIMBABWE      0                    NA                 0.0031283   -0.0024302    0.0086869


### Parameter: PAF


agecat      studyid          country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  -----------  -----------
6 months    CMC-V-BCS-2002   INDIA         0                    NA                 0.1817825   -0.0181085    0.3424278
6 months    COHORTS          GUATEMALA     0                    NA                -0.1006081   -0.1745551   -0.0313166
6 months    COHORTS          INDIA         0                    NA                 0.0927829    0.0207370    0.1595283
6 months    COHORTS          PHILIPPINES   0                    NA                 0.0106453   -0.0711357    0.0861824
6 months    EE               PAKISTAN      0                    NA                 0.0284017   -0.1118993    0.1509993
6 months    IRC              INDIA         0                    NA                 0.1577341   -0.1800814    0.3988449
6 months    JiVitA-3         BANGLADESH    0                    NA                 0.0527537    0.0086039    0.0949374
6 months    JiVitA-4         BANGLADESH    0                    NA                 0.0581031    0.0074216    0.1061969
6 months    Keneba           GAMBIA        0                    NA                 0.1631101    0.0130251    0.2903723
6 months    LCNI-5           MALAWI        0                    NA                 0.0546479   -0.0037528    0.1096507
6 months    NIH-Birth        BANGLADESH    0                    NA                 0.2001030   -0.1262271    0.4318773
6 months    NIH-Crypto       BANGLADESH    0                    NA                 0.1796690   -0.1798998    0.4296610
6 months    PROBIT           BELARUS       0                    NA                -0.0143593   -0.1535735    0.1080544
6 months    PROVIDE          BANGLADESH    0                    NA                 0.4250770   -0.0928713    0.6975523
6 months    ResPak           PAKISTAN      0                    NA                 0.0827404   -0.0672133    0.2116241
6 months    SAS-CompFeed     INDIA         0                    NA                 0.1038675    0.0050794    0.1928467
6 months    SAS-FoodSuppl    INDIA         0                    NA                 0.1222744   -0.0217842    0.2460227
6 months    ZVITAMBO         ZIMBABWE      0                    NA                 0.1781483    0.1131205    0.2384082
24 months   CMC-V-BCS-2002   INDIA         0                    NA                 0.0152765   -0.0746101    0.0976444
24 months   CMIN             BANGLADESH    0                    NA                 0.0157267   -0.0451956    0.0730980
24 months   COHORTS          GUATEMALA     0                    NA                -0.0184074   -0.0443483    0.0068891
24 months   COHORTS          INDIA         0                    NA                 0.0164204   -0.0066393    0.0389520
24 months   COHORTS          PHILIPPINES   0                    NA                -0.0044352   -0.0303632    0.0208403
24 months   EE               PAKISTAN      0                    NA                 0.0356108   -0.0867270    0.1441765
24 months   GMS-Nepal        NEPAL         0                    NA                 0.0205479   -0.1382088    0.1571614
24 months   IRC              INDIA         0                    NA                 0.0730947   -0.1818549    0.2730466
24 months   JiVitA-3         BANGLADESH    0                    NA                -0.0009460   -0.0282255    0.0256098
24 months   JiVitA-4         BANGLADESH    0                    NA                 0.0293897   -0.0019333    0.0597334
24 months   Keneba           GAMBIA        0                    NA                 0.0749038   -0.0176807    0.1590653
24 months   MAL-ED           BANGLADESH    0                    NA                 0.0408271   -0.1736513    0.2161108
24 months   MAL-ED           INDIA         0                    NA                 0.0174330   -0.1682942    0.1736345
24 months   NIH-Birth        BANGLADESH    0                    NA                 0.0121143   -0.1164224    0.1258522
24 months   NIH-Crypto       BANGLADESH    0                    NA                 0.0251684   -0.2123089    0.2161266
24 months   PROBIT           BELARUS       0                    NA                 0.0120750   -0.3445891    0.2741309
24 months   PROVIDE          BANGLADESH    0                    NA                -0.0551743   -0.1892409    0.0637786
24 months   ZVITAMBO         ZIMBABWE      0                    NA                 0.0333910   -0.0276238    0.0907831
