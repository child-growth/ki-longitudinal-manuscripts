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

**Intervention Variable:** enwast

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        enwast    stunted   n_cell       n
----------  ---------------  -----------------------------  -------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0               0       66      87
Birth       CMC-V-BCS-2002   INDIA                          0               1        9      87
Birth       CMC-V-BCS-2002   INDIA                          1               0        9      87
Birth       CMC-V-BCS-2002   INDIA                          1               1        3      87
Birth       CMIN             BANGLADESH                     0               0       14      19
Birth       CMIN             BANGLADESH                     0               1        1      19
Birth       CMIN             BANGLADESH                     1               0        3      19
Birth       CMIN             BANGLADESH                     1               1        1      19
Birth       COHORTS          GUATEMALA                      0               0      540     762
Birth       COHORTS          GUATEMALA                      0               1       24     762
Birth       COHORTS          GUATEMALA                      1               0      198     762
Birth       COHORTS          GUATEMALA                      1               1        0     762
Birth       COHORTS          INDIA                          0               0     4772    6231
Birth       COHORTS          INDIA                          0               1      325    6231
Birth       COHORTS          INDIA                          1               0     1074    6231
Birth       COHORTS          INDIA                          1               1       60    6231
Birth       COHORTS          PHILIPPINES                    0               0     2373    2910
Birth       COHORTS          PHILIPPINES                    0               1       75    2910
Birth       COHORTS          PHILIPPINES                    1               0      451    2910
Birth       COHORTS          PHILIPPINES                    1               1       11    2910
Birth       CONTENT          PERU                           0               0        2       2
Birth       CONTENT          PERU                           0               1        0       2
Birth       CONTENT          PERU                           1               0        0       2
Birth       CONTENT          PERU                           1               1        0       2
Birth       EE               PAKISTAN                       0               0      120     180
Birth       EE               PAKISTAN                       0               1       35     180
Birth       EE               PAKISTAN                       1               0       20     180
Birth       EE               PAKISTAN                       1               1        5     180
Birth       GMS-Nepal        NEPAL                          0               0      450     645
Birth       GMS-Nepal        NEPAL                          0               1       59     645
Birth       GMS-Nepal        NEPAL                          1               0      124     645
Birth       GMS-Nepal        NEPAL                          1               1       12     645
Birth       IRC              INDIA                          0               0      228     364
Birth       IRC              INDIA                          0               1       23     364
Birth       IRC              INDIA                          1               0      111     364
Birth       IRC              INDIA                          1               1        2     364
Birth       Keneba           GAMBIA                         0               0     1065    1488
Birth       Keneba           GAMBIA                         0               1       37    1488
Birth       Keneba           GAMBIA                         1               0      381    1488
Birth       Keneba           GAMBIA                         1               1        5    1488
Birth       MAL-ED           BANGLADESH                     0               0      155     215
Birth       MAL-ED           BANGLADESH                     0               1       24     215
Birth       MAL-ED           BANGLADESH                     1               0       32     215
Birth       MAL-ED           BANGLADESH                     1               1        4     215
Birth       MAL-ED           BRAZIL                         0               0       54      62
Birth       MAL-ED           BRAZIL                         0               1        6      62
Birth       MAL-ED           BRAZIL                         1               0        2      62
Birth       MAL-ED           BRAZIL                         1               1        0      62
Birth       MAL-ED           INDIA                          0               0       33      45
Birth       MAL-ED           INDIA                          0               1        7      45
Birth       MAL-ED           INDIA                          1               0        4      45
Birth       MAL-ED           INDIA                          1               1        1      45
Birth       MAL-ED           NEPAL                          0               0       24      26
Birth       MAL-ED           NEPAL                          0               1        0      26
Birth       MAL-ED           NEPAL                          1               0        1      26
Birth       MAL-ED           NEPAL                          1               1        1      26
Birth       MAL-ED           PERU                           0               0      202     228
Birth       MAL-ED           PERU                           0               1       21     228
Birth       MAL-ED           PERU                           1               0        5     228
Birth       MAL-ED           PERU                           1               1        0     228
Birth       MAL-ED           SOUTH AFRICA                   0               0      100     121
Birth       MAL-ED           SOUTH AFRICA                   0               1        8     121
Birth       MAL-ED           SOUTH AFRICA                   1               0       13     121
Birth       MAL-ED           SOUTH AFRICA                   1               1        0     121
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0      102     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1       12     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        1     115
Birth       NIH-Birth        BANGLADESH                     0               0      360     580
Birth       NIH-Birth        BANGLADESH                     0               1       47     580
Birth       NIH-Birth        BANGLADESH                     1               0      151     580
Birth       NIH-Birth        BANGLADESH                     1               1       22     580
Birth       NIH-Crypto       BANGLADESH                     0               0      468     713
Birth       NIH-Crypto       BANGLADESH                     0               1       67     713
Birth       NIH-Crypto       BANGLADESH                     1               0      163     713
Birth       NIH-Crypto       BANGLADESH                     1               1       15     713
Birth       PROBIT           BELARUS                        0               0    10882   13886
Birth       PROBIT           BELARUS                        0               1       27   13886
Birth       PROBIT           BELARUS                        1               0     2977   13886
Birth       PROBIT           BELARUS                        1               1        0   13886
Birth       PROVIDE          BANGLADESH                     0               0      386     532
Birth       PROVIDE          BANGLADESH                     0               1       29     532
Birth       PROVIDE          BANGLADESH                     1               0      105     532
Birth       PROVIDE          BANGLADESH                     1               1       12     532
Birth       ResPak           PAKISTAN                       0               0       26      38
Birth       ResPak           PAKISTAN                       0               1        8      38
Birth       ResPak           PAKISTAN                       1               0        2      38
Birth       ResPak           PAKISTAN                       1               1        2      38
Birth       SAS-CompFeed     INDIA                          0               0      806    1105
Birth       SAS-CompFeed     INDIA                          0               1      179    1105
Birth       SAS-CompFeed     INDIA                          1               0       97    1105
Birth       SAS-CompFeed     INDIA                          1               1       23    1105
Birth       ZVITAMBO         ZIMBABWE                       0               0    10252   13092
Birth       ZVITAMBO         ZIMBABWE                       0               1      604   13092
Birth       ZVITAMBO         ZIMBABWE                       1               0     2146   13092
Birth       ZVITAMBO         ZIMBABWE                       1               1       90   13092
6 months    CMC-V-BCS-2002   INDIA                          0               0      196     363
6 months    CMC-V-BCS-2002   INDIA                          0               1       76     363
6 months    CMC-V-BCS-2002   INDIA                          1               0       57     363
6 months    CMC-V-BCS-2002   INDIA                          1               1       34     363
6 months    CMIN             BANGLADESH                     0               0      142     232
6 months    CMIN             BANGLADESH                     0               1       76     232
6 months    CMIN             BANGLADESH                     1               0        8     232
6 months    CMIN             BANGLADESH                     1               1        6     232
6 months    COHORTS          GUATEMALA                      0               0      420     901
6 months    COHORTS          GUATEMALA                      0               1      305     901
6 months    COHORTS          GUATEMALA                      1               0      115     901
6 months    COHORTS          GUATEMALA                      1               1       61     901
6 months    COHORTS          INDIA                          0               0     4516    6508
6 months    COHORTS          INDIA                          0               1      848    6508
6 months    COHORTS          INDIA                          1               0      943    6508
6 months    COHORTS          INDIA                          1               1      201    6508
6 months    COHORTS          PHILIPPINES                    0               0     1760    2593
6 months    COHORTS          PHILIPPINES                    0               1      431    2593
6 months    COHORTS          PHILIPPINES                    1               0      332    2593
6 months    COHORTS          PHILIPPINES                    1               1       70    2593
6 months    CONTENT          PERU                           0               0      205     215
6 months    CONTENT          PERU                           0               1        9     215
6 months    CONTENT          PERU                           1               0        1     215
6 months    CONTENT          PERU                           1               1        0     215
6 months    EE               PAKISTAN                       0               0      152     292
6 months    EE               PAKISTAN                       0               1      103     292
6 months    EE               PAKISTAN                       1               0       22     292
6 months    EE               PAKISTAN                       1               1       15     292
6 months    GMS-Nepal        NEPAL                          0               0      345     528
6 months    GMS-Nepal        NEPAL                          0               1       76     528
6 months    GMS-Nepal        NEPAL                          1               0       86     528
6 months    GMS-Nepal        NEPAL                          1               1       21     528
6 months    Guatemala BSC    GUATEMALA                      0               0      208     299
6 months    Guatemala BSC    GUATEMALA                      0               1       85     299
6 months    Guatemala BSC    GUATEMALA                      1               0        1     299
6 months    Guatemala BSC    GUATEMALA                      1               1        5     299
6 months    IRC              INDIA                          0               0      214     382
6 months    IRC              INDIA                          0               1       54     382
6 months    IRC              INDIA                          1               0       84     382
6 months    IRC              INDIA                          1               1       30     382
6 months    Keneba           GAMBIA                         0               0     1425    2029
6 months    Keneba           GAMBIA                         0               1      216    2029
6 months    Keneba           GAMBIA                         1               0      325    2029
6 months    Keneba           GAMBIA                         1               1       63    2029
6 months    LCNI-5           MALAWI                         0               0      522     839
6 months    LCNI-5           MALAWI                         0               1      303     839
6 months    LCNI-5           MALAWI                         1               0        8     839
6 months    LCNI-5           MALAWI                         1               1        6     839
6 months    MAL-ED           BANGLADESH                     0               0      158     229
6 months    MAL-ED           BANGLADESH                     0               1       30     229
6 months    MAL-ED           BANGLADESH                     1               0       34     229
6 months    MAL-ED           BANGLADESH                     1               1        7     229
6 months    MAL-ED           BRAZIL                         0               0      186     199
6 months    MAL-ED           BRAZIL                         0               1        6     199
6 months    MAL-ED           BRAZIL                         1               0        7     199
6 months    MAL-ED           BRAZIL                         1               1        0     199
6 months    MAL-ED           INDIA                          0               0      154     232
6 months    MAL-ED           INDIA                          0               1       35     232
6 months    MAL-ED           INDIA                          1               0       36     232
6 months    MAL-ED           INDIA                          1               1        7     232
6 months    MAL-ED           NEPAL                          0               0      193     232
6 months    MAL-ED           NEPAL                          0               1        8     232
6 months    MAL-ED           NEPAL                          1               0       29     232
6 months    MAL-ED           NEPAL                          1               1        2     232
6 months    MAL-ED           PERU                           0               0      205     266
6 months    MAL-ED           PERU                           0               1       56     266
6 months    MAL-ED           PERU                           1               0        5     266
6 months    MAL-ED           PERU                           1               1        0     266
6 months    MAL-ED           SOUTH AFRICA                   0               0      189     253
6 months    MAL-ED           SOUTH AFRICA                   0               1       46     253
6 months    MAL-ED           SOUTH AFRICA                   1               0       15     253
6 months    MAL-ED           SOUTH AFRICA                   1               1        3     253
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0      184     238
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1       51     238
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        2     238
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        1     238
6 months    NIH-Birth        BANGLADESH                     0               0      282     514
6 months    NIH-Birth        BANGLADESH                     0               1       86     514
6 months    NIH-Birth        BANGLADESH                     1               0      107     514
6 months    NIH-Birth        BANGLADESH                     1               1       39     514
6 months    NIH-Crypto       BANGLADESH                     0               0      417     694
6 months    NIH-Crypto       BANGLADESH                     0               1      100     694
6 months    NIH-Crypto       BANGLADESH                     1               0      143     694
6 months    NIH-Crypto       BANGLADESH                     1               1       34     694
6 months    PROBIT           BELARUS                        0               0    12188   15753
6 months    PROBIT           BELARUS                        0               1      501   15753
6 months    PROBIT           BELARUS                        1               0     2947   15753
6 months    PROBIT           BELARUS                        1               1      117   15753
6 months    PROVIDE          BANGLADESH                     0               0      403     597
6 months    PROVIDE          BANGLADESH                     0               1       69     597
6 months    PROVIDE          BANGLADESH                     1               0      104     597
6 months    PROVIDE          BANGLADESH                     1               1       21     597
6 months    ResPak           PAKISTAN                       0               0      120     228
6 months    ResPak           PAKISTAN                       0               1       65     228
6 months    ResPak           PAKISTAN                       1               0       26     228
6 months    ResPak           PAKISTAN                       1               1       17     228
6 months    SAS-CompFeed     INDIA                          0               0      831    1213
6 months    SAS-CompFeed     INDIA                          0               1      243    1213
6 months    SAS-CompFeed     INDIA                          1               0       90    1213
6 months    SAS-CompFeed     INDIA                          1               1       49    1213
6 months    SAS-FoodSuppl    INDIA                          0               0      181     380
6 months    SAS-FoodSuppl    INDIA                          0               1      130     380
6 months    SAS-FoodSuppl    INDIA                          1               0       36     380
6 months    SAS-FoodSuppl    INDIA                          1               1       33     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1715    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      186    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      111    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        8    2020
6 months    ZVITAMBO         ZIMBABWE                       0               0     6001    8174
6 months    ZVITAMBO         ZIMBABWE                       0               1      903    8174
6 months    ZVITAMBO         ZIMBABWE                       1               0      974    8174
6 months    ZVITAMBO         ZIMBABWE                       1               1      296    8174
24 months   CMC-V-BCS-2002   INDIA                          0               0       73     364
24 months   CMC-V-BCS-2002   INDIA                          0               1      199     364
24 months   CMC-V-BCS-2002   INDIA                          1               0       29     364
24 months   CMC-V-BCS-2002   INDIA                          1               1       63     364
24 months   CMIN             BANGLADESH                     0               0       71     232
24 months   CMIN             BANGLADESH                     0               1      146     232
24 months   CMIN             BANGLADESH                     1               0        6     232
24 months   CMIN             BANGLADESH                     1               1        9     232
24 months   COHORTS          GUATEMALA                      0               0      160    1027
24 months   COHORTS          GUATEMALA                      0               1      714    1027
24 months   COHORTS          GUATEMALA                      1               0       32    1027
24 months   COHORTS          GUATEMALA                      1               1      121    1027
24 months   COHORTS          INDIA                          0               0     2031    5070
24 months   COHORTS          INDIA                          0               1     2221    5070
24 months   COHORTS          INDIA                          1               0      393    5070
24 months   COHORTS          INDIA                          1               1      425    5070
24 months   COHORTS          PHILIPPINES                    0               0      761    2347
24 months   COHORTS          PHILIPPINES                    0               1     1228    2347
24 months   COHORTS          PHILIPPINES                    1               0      147    2347
24 months   COHORTS          PHILIPPINES                    1               1      211    2347
24 months   CONTENT          PERU                           0               0      150     164
24 months   CONTENT          PERU                           0               1       13     164
24 months   CONTENT          PERU                           1               0        1     164
24 months   CONTENT          PERU                           1               1        0     164
24 months   EE               PAKISTAN                       0               0       35     137
24 months   EE               PAKISTAN                       0               1       80     137
24 months   EE               PAKISTAN                       1               0        7     137
24 months   EE               PAKISTAN                       1               1       15     137
24 months   GMS-Nepal        NEPAL                          0               0      204     455
24 months   GMS-Nepal        NEPAL                          0               1      161     455
24 months   GMS-Nepal        NEPAL                          1               0       54     455
24 months   GMS-Nepal        NEPAL                          1               1       36     455
24 months   IRC              INDIA                          0               0      164     383
24 months   IRC              INDIA                          0               1      105     383
24 months   IRC              INDIA                          1               0       63     383
24 months   IRC              INDIA                          1               1       51     383
24 months   Keneba           GAMBIA                         0               0      915    1677
24 months   Keneba           GAMBIA                         0               1      439    1677
24 months   Keneba           GAMBIA                         1               0      200    1677
24 months   Keneba           GAMBIA                         1               1      123    1677
24 months   LCNI-5           MALAWI                         0               0      317     579
24 months   LCNI-5           MALAWI                         0               1      252     579
24 months   LCNI-5           MALAWI                         1               0        4     579
24 months   LCNI-5           MALAWI                         1               1        6     579
24 months   MAL-ED           BANGLADESH                     0               0       88     201
24 months   MAL-ED           BANGLADESH                     0               1       76     201
24 months   MAL-ED           BANGLADESH                     1               0       22     201
24 months   MAL-ED           BANGLADESH                     1               1       15     201
24 months   MAL-ED           BRAZIL                         0               0      147     160
24 months   MAL-ED           BRAZIL                         0               1        7     160
24 months   MAL-ED           BRAZIL                         1               0        6     160
24 months   MAL-ED           BRAZIL                         1               1        0     160
24 months   MAL-ED           INDIA                          0               0       98     223
24 months   MAL-ED           INDIA                          0               1       82     223
24 months   MAL-ED           INDIA                          1               0       32     223
24 months   MAL-ED           INDIA                          1               1       11     223
24 months   MAL-ED           NEPAL                          0               0      155     225
24 months   MAL-ED           NEPAL                          0               1       40     225
24 months   MAL-ED           NEPAL                          1               0       22     225
24 months   MAL-ED           NEPAL                          1               1        8     225
24 months   MAL-ED           PERU                           0               0      122     197
24 months   MAL-ED           PERU                           0               1       71     197
24 months   MAL-ED           PERU                           1               0        3     197
24 months   MAL-ED           PERU                           1               1        1     197
24 months   MAL-ED           SOUTH AFRICA                   0               0      140     237
24 months   MAL-ED           SOUTH AFRICA                   0               1       81     237
24 months   MAL-ED           SOUTH AFRICA                   1               0       13     237
24 months   MAL-ED           SOUTH AFRICA                   1               1        3     237
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0       56     205
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1      146     205
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0        2     205
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        1     205
24 months   NIH-Birth        BANGLADESH                     0               0      129     409
24 months   NIH-Birth        BANGLADESH                     0               1      164     409
24 months   NIH-Birth        BANGLADESH                     1               0       56     409
24 months   NIH-Birth        BANGLADESH                     1               1       60     409
24 months   NIH-Crypto       BANGLADESH                     0               0      276     500
24 months   NIH-Crypto       BANGLADESH                     0               1       88     500
24 months   NIH-Crypto       BANGLADESH                     1               0      100     500
24 months   NIH-Crypto       BANGLADESH                     1               1       36     500
24 months   PROBIT           BELARUS                        0               0     2921    4032
24 months   PROBIT           BELARUS                        0               1      197    4032
24 months   PROBIT           BELARUS                        1               0      837    4032
24 months   PROBIT           BELARUS                        1               1       77    4032
24 months   PROVIDE          BANGLADESH                     0               0      303     570
24 months   PROVIDE          BANGLADESH                     0               1      149     570
24 months   PROVIDE          BANGLADESH                     1               0       82     570
24 months   PROVIDE          BANGLADESH                     1               1       36     570
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        1       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ZVITAMBO         ZIMBABWE                       0               0      918    1505
24 months   ZVITAMBO         ZIMBABWE                       0               1      428    1505
24 months   ZVITAMBO         ZIMBABWE                       1               0      100    1505
24 months   ZVITAMBO         ZIMBABWE                       1               1       59    1505


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
* agecat: Birth, studyid: CONTENT, country: PERU
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: ResPak, country: PAKISTAN
* agecat: 6 months, studyid: CONTENT, country: PERU
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
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




# Results Detail

## Results Plots
![](/tmp/3211c4df-eb80-4c0d-a956-73735ce6e518/cc3dee97-79cd-48ae-b378-39a28ceb310f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3211c4df-eb80-4c0d-a956-73735ce6e518/cc3dee97-79cd-48ae-b378-39a28ceb310f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3211c4df-eb80-4c0d-a956-73735ce6e518/cc3dee97-79cd-48ae-b378-39a28ceb310f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3211c4df-eb80-4c0d-a956-73735ce6e518/cc3dee97-79cd-48ae-b378-39a28ceb310f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA                          0                    NA                0.0637630   0.0570548   0.0704711
Birth       COHORTS          INDIA                          1                    NA                0.0529101   0.0398802   0.0659400
Birth       COHORTS          PHILIPPINES                    0                    NA                0.0306373   0.0238094   0.0374651
Birth       COHORTS          PHILIPPINES                    1                    NA                0.0238095   0.0099054   0.0377137
Birth       EE               PAKISTAN                       0                    NA                0.2258065   0.1598002   0.2918127
Birth       EE               PAKISTAN                       1                    NA                0.2000000   0.0427655   0.3572345
Birth       GMS-Nepal        NEPAL                          0                    NA                0.1159136   0.0880818   0.1437453
Birth       GMS-Nepal        NEPAL                          1                    NA                0.0882353   0.0405287   0.1359419
Birth       Keneba           GAMBIA                         0                    NA                0.0335753   0.0229364   0.0442142
Birth       Keneba           GAMBIA                         1                    NA                0.0129534   0.0016694   0.0242373
Birth       NIH-Birth        BANGLADESH                     0                    NA                0.1154791   0.0844027   0.1465556
Birth       NIH-Birth        BANGLADESH                     1                    NA                0.1271676   0.0774794   0.1768559
Birth       NIH-Crypto       BANGLADESH                     0                    NA                0.1252336   0.0971675   0.1532998
Birth       NIH-Crypto       BANGLADESH                     1                    NA                0.0842697   0.0434319   0.1251075
Birth       PROVIDE          BANGLADESH                     0                    NA                0.0698795   0.0453281   0.0944310
Birth       PROVIDE          BANGLADESH                     1                    NA                0.1025641   0.0475387   0.1575895
Birth       SAS-CompFeed     INDIA                          0                    NA                0.1817259   0.1557751   0.2076767
Birth       SAS-CompFeed     INDIA                          1                    NA                0.1916667   0.1058706   0.2774627
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                0.0556374   0.0513254   0.0599495
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                0.0402504   0.0321035   0.0483974
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.2794118   0.2260133   0.3328102
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.3736264   0.2740946   0.4731582
6 months    CMIN             BANGLADESH                     0                    NA                0.3486239   0.2852292   0.4120185
6 months    CMIN             BANGLADESH                     1                    NA                0.4285714   0.1687861   0.6883568
6 months    COHORTS          GUATEMALA                      0                    NA                0.4206897   0.3847349   0.4566444
6 months    COHORTS          GUATEMALA                      1                    NA                0.3465909   0.2762458   0.4169360
6 months    COHORTS          INDIA                          0                    NA                0.1580910   0.1483271   0.1678549
6 months    COHORTS          INDIA                          1                    NA                0.1756993   0.1536448   0.1977538
6 months    COHORTS          PHILIPPINES                    0                    NA                0.1967138   0.1800658   0.2133619
6 months    COHORTS          PHILIPPINES                    1                    NA                0.1741294   0.1370518   0.2112069
6 months    EE               PAKISTAN                       0                    NA                0.4039216   0.3435930   0.4642502
6 months    EE               PAKISTAN                       1                    NA                0.4054054   0.2469353   0.5638755
6 months    GMS-Nepal        NEPAL                          0                    NA                0.1805226   0.1437475   0.2172976
6 months    GMS-Nepal        NEPAL                          1                    NA                0.1962617   0.1209360   0.2715873
6 months    IRC              INDIA                          0                    NA                0.2014925   0.1534065   0.2495786
6 months    IRC              INDIA                          1                    NA                0.2631579   0.1822184   0.3440974
6 months    Keneba           GAMBIA                         0                    NA                0.1316271   0.1152654   0.1479887
6 months    Keneba           GAMBIA                         1                    NA                0.1623711   0.1256666   0.1990757
6 months    LCNI-5           MALAWI                         0                    NA                0.3672727   0.3340779   0.4004675
6 months    LCNI-5           MALAWI                         1                    NA                0.4285714   0.2554457   0.6016972
6 months    MAL-ED           BANGLADESH                     0                    NA                0.1595745   0.1071117   0.2120372
6 months    MAL-ED           BANGLADESH                     1                    NA                0.1707317   0.0553037   0.2861597
6 months    MAL-ED           INDIA                          0                    NA                0.1851852   0.1296859   0.2406845
6 months    MAL-ED           INDIA                          1                    NA                0.1627907   0.0522089   0.2733725
6 months    NIH-Birth        BANGLADESH                     0                    NA                0.2336957   0.1904171   0.2769742
6 months    NIH-Birth        BANGLADESH                     1                    NA                0.2671233   0.1952834   0.3389632
6 months    NIH-Crypto       BANGLADESH                     0                    NA                0.1934236   0.1593519   0.2274953
6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.1920904   0.1340128   0.2501680
6 months    PROBIT           BELARUS                        0                    NA                0.0394830   0.0287889   0.0501771
6 months    PROBIT           BELARUS                        1                    NA                0.0381854   0.0276723   0.0486985
6 months    PROVIDE          BANGLADESH                     0                    NA                0.1461864   0.1142875   0.1780854
6 months    PROVIDE          BANGLADESH                     1                    NA                0.1680000   0.1024046   0.2335954
6 months    ResPak           PAKISTAN                       0                    NA                0.3513514   0.2824080   0.4202947
6 months    ResPak           PAKISTAN                       1                    NA                0.3953488   0.2488915   0.5418061
6 months    SAS-CompFeed     INDIA                          0                    NA                0.2262570   0.2027031   0.2498109
6 months    SAS-CompFeed     INDIA                          1                    NA                0.3525180   0.2244576   0.4805784
6 months    SAS-FoodSuppl    INDIA                          0                    NA                0.4180064   0.3631168   0.4728961
6 months    SAS-FoodSuppl    INDIA                          1                    NA                0.4782609   0.3602411   0.5962807
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0978432   0.0844843   0.1112021
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0672269   0.0222239   0.1122299
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.1307937   0.1228399   0.1387476
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.2330709   0.2098170   0.2563247
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.7316176   0.6788849   0.7843504
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.6847826   0.5897149   0.7798503
24 months   CMIN             BANGLADESH                     0                    NA                0.6728111   0.6102503   0.7353718
24 months   CMIN             BANGLADESH                     1                    NA                0.6000000   0.3515459   0.8484541
24 months   COHORTS          GUATEMALA                      0                    NA                0.8169336   0.7912828   0.8425845
24 months   COHORTS          GUATEMALA                      1                    NA                0.7908497   0.7263748   0.8553245
24 months   COHORTS          INDIA                          0                    NA                0.5223424   0.5073273   0.5373576
24 months   COHORTS          INDIA                          1                    NA                0.5195599   0.4853185   0.5538013
24 months   COHORTS          PHILIPPINES                    0                    NA                0.6173957   0.5960318   0.6387595
24 months   COHORTS          PHILIPPINES                    1                    NA                0.5893855   0.5384153   0.6403556
24 months   EE               PAKISTAN                       0                    NA                0.6956522   0.6112466   0.7800578
24 months   EE               PAKISTAN                       1                    NA                0.6818182   0.4864744   0.8771619
24 months   GMS-Nepal        NEPAL                          0                    NA                0.4410959   0.3901024   0.4920894
24 months   GMS-Nepal        NEPAL                          1                    NA                0.4000000   0.2986765   0.5013235
24 months   IRC              INDIA                          0                    NA                0.3903346   0.3319627   0.4487065
24 months   IRC              INDIA                          1                    NA                0.4473684   0.3559752   0.5387616
24 months   Keneba           GAMBIA                         0                    NA                0.3242245   0.2992848   0.3491643
24 months   Keneba           GAMBIA                         1                    NA                0.3808050   0.3278336   0.4337763
24 months   MAL-ED           BANGLADESH                     0                    NA                0.4634146   0.3869055   0.5399238
24 months   MAL-ED           BANGLADESH                     1                    NA                0.4054054   0.2468119   0.5639989
24 months   MAL-ED           INDIA                          0                    NA                0.4555556   0.3826375   0.5284736
24 months   MAL-ED           INDIA                          1                    NA                0.2558140   0.1251088   0.3865191
24 months   MAL-ED           NEPAL                          0                    NA                0.2051282   0.1483268   0.2619296
24 months   MAL-ED           NEPAL                          1                    NA                0.2666667   0.1080716   0.4252618
24 months   NIH-Birth        BANGLADESH                     0                    NA                0.5597270   0.5028161   0.6166378
24 months   NIH-Birth        BANGLADESH                     1                    NA                0.5172414   0.4261951   0.6082877
24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.2417582   0.1977305   0.2857860
24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.2647059   0.1904851   0.3389267
24 months   PROBIT           BELARUS                        0                    NA                0.0631815   0.0333463   0.0930168
24 months   PROBIT           BELARUS                        1                    NA                0.0842451   0.0502638   0.1182264
24 months   PROVIDE          BANGLADESH                     0                    NA                0.3296460   0.2862713   0.3730207
24 months   PROVIDE          BANGLADESH                     1                    NA                0.3050847   0.2219343   0.3882352
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.3179792   0.2930925   0.3428659
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.3710692   0.2959549   0.4461835


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA                          NA                   NA                0.0617878   0.0558091   0.0677665
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.0295533   0.0233992   0.0357074
Birth       EE               PAKISTAN                       NA                   NA                0.2222222   0.1613186   0.2831258
Birth       GMS-Nepal        NEPAL                          NA                   NA                0.1100775   0.0859045   0.1342505
Birth       Keneba           GAMBIA                         NA                   NA                0.0282258   0.0198080   0.0366436
Birth       NIH-Birth        BANGLADESH                     NA                   NA                0.1189655   0.0925952   0.1453359
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.1150070   0.0915734   0.1384407
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.0770677   0.0543836   0.0997518
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.1828054   0.1605315   0.2050793
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.0530095   0.0491714   0.0568475
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3030303   0.2556886   0.3503720
6 months    CMIN             BANGLADESH                     NA                   NA                0.3534483   0.2918020   0.4150945
6 months    COHORTS          GUATEMALA                      NA                   NA                0.4062153   0.3741290   0.4383016
6 months    COHORTS          INDIA                          NA                   NA                0.1611862   0.1522521   0.1701204
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.1932125   0.1780130   0.2084119
6 months    EE               PAKISTAN                       NA                   NA                0.4041096   0.3477284   0.4604908
6 months    GMS-Nepal        NEPAL                          NA                   NA                0.1837121   0.1506498   0.2167744
6 months    IRC              INDIA                          NA                   NA                0.2198953   0.1783071   0.2614835
6 months    Keneba           GAMBIA                         NA                   NA                0.1375062   0.1225178   0.1524945
6 months    LCNI-5           MALAWI                         NA                   NA                0.3682956   0.3356382   0.4009530
6 months    MAL-ED           BANGLADESH                     NA                   NA                0.1615721   0.1137975   0.2093466
6 months    MAL-ED           INDIA                          NA                   NA                0.1810345   0.1313803   0.2306886
6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.2431907   0.2060665   0.2803148
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.1930836   0.1636957   0.2224715
6 months    PROBIT           BELARUS                        NA                   NA                0.0392306   0.0293481   0.0491131
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.1507538   0.1220277   0.1794798
6 months    ResPak           PAKISTAN                       NA                   NA                0.3596491   0.2972205   0.4220777
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2407255   0.2138448   0.2676061
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0960396   0.0831873   0.1088919
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1466846   0.1390145   0.1543548
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7197802   0.6735800   0.7659804
24 months   CMIN             BANGLADESH                     NA                   NA                0.6681034   0.6073788   0.7288281
24 months   COHORTS          GUATEMALA                      NA                   NA                0.8130477   0.7891917   0.8369037
24 months   COHORTS          INDIA                          NA                   NA                0.5218935   0.5081423   0.5356447
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6131231   0.5934151   0.6328312
24 months   EE               PAKISTAN                       NA                   NA                0.6934307   0.6159409   0.7709205
24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4329670   0.3873894   0.4785447
24 months   IRC              INDIA                          NA                   NA                0.4073107   0.3580395   0.4565819
24 months   Keneba           GAMBIA                         NA                   NA                0.3351222   0.3125235   0.3577210
24 months   MAL-ED           BANGLADESH                     NA                   NA                0.4527363   0.3837514   0.5217212
24 months   MAL-ED           INDIA                          NA                   NA                0.4170404   0.3521799   0.4819008
24 months   MAL-ED           NEPAL                          NA                   NA                0.2133333   0.1596859   0.2669808
24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5476773   0.4993820   0.5959725
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2480000   0.2101093   0.2858907
24 months   PROBIT           BELARUS                        NA                   NA                0.0679563   0.0425902   0.0933225
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3245614   0.2860904   0.3630324
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.3235880   0.2999438   0.3472323


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       COHORTS          INDIA                          1                    0                 0.8297924   0.6348444   1.0846051
Birth       COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
Birth       COHORTS          PHILIPPINES                    1                    0                 0.7771429   0.4159519   1.4519732
Birth       EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
Birth       EE               PAKISTAN                       1                    0                 0.8857143   0.3828476   2.0490918
Birth       GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                 0.7612164   0.4212920   1.3754128
Birth       Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
Birth       Keneba           GAMBIA                         1                    0                 0.3858003   0.1526824   0.9748462
Birth       NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       NIH-Birth        BANGLADESH                     1                    0                 1.1012176   0.6852171   1.7697752
Birth       NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 0.6728995   0.3945224   1.1477012
Birth       PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 1.4677277   0.7729141   2.7871461
Birth       SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed     INDIA                          1                    0                 1.0547020   0.6350702   1.7516118
Birth       ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 0.7234418   0.5824736   0.8985267
6 months    CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 1.3371891   0.9634013   1.8560020
6 months    CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    CMIN             BANGLADESH                     1                    0                 1.2293233   0.6528619   2.3147865
6 months    COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6 months    COHORTS          GUATEMALA                      1                    0                 0.8238636   0.6610182   1.0268270
6 months    COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    COHORTS          INDIA                          1                    0                 1.1113810   0.9662894   1.2782585
6 months    COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6 months    COHORTS          PHILIPPINES                    1                    0                 0.8851912   0.7039241   1.1131363
6 months    EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    EE               PAKISTAN                       1                    0                 1.0036736   0.6604799   1.5251949
6 months    GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                 1.0871864   0.7040385   1.6788491
6 months    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA                          1                    0                 1.3060429   0.8848866   1.9276459
6 months    Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    Keneba           GAMBIA                         1                    0                 1.2335696   0.9530735   1.5966176
6 months    LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    LCNI-5           MALAWI                         1                    0                 1.1669024   0.7713640   1.7652642
6 months    MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                 1.0699187   0.5044964   2.2690470
6 months    MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED           INDIA                          1                    0                 0.8790698   0.4183849   1.8470161
6 months    NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    NIH-Birth        BANGLADESH                     1                    0                 1.1430392   0.8246112   1.5844298
6 months    NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 0.9931073   0.6998893   1.4091689
6 months    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6 months    PROBIT           BELARUS                        1                    0                 0.9671343   0.7493196   1.2482640
6 months    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 1.1492174   0.7347649   1.7974466
6 months    ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ResPak           PAKISTAN                       1                    0                 1.1252236   0.7399085   1.7111955
6 months    SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed     INDIA                          1                    0                 1.5580425   1.0796091   2.2484957
6 months    SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 1.1441472   0.8651330   1.5131462
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6870877   0.3469776   1.3605763
6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 1.7819726   1.5854639   2.0028374
24 months   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 0.9359843   0.8004502   1.0944673
24 months   CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   CMIN             BANGLADESH                     1                    0                 0.8917808   0.5833684   1.3632433
24 months   COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
24 months   COHORTS          GUATEMALA                      1                    0                 0.9680709   0.8870859   1.0564493
24 months   COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   COHORTS          INDIA                          1                    0                 0.9946730   0.9256656   1.0688248
24 months   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
24 months   COHORTS          PHILIPPINES                    1                    0                 0.9546317   0.8697271   1.0478249
24 months   EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
24 months   EE               PAKISTAN                       1                    0                 0.9801136   0.7180443   1.3378321
24 months   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 0.9068323   0.6864375   1.1979894
24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA                          1                    0                 1.1461153   0.8897655   1.4763219
24 months   Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
24 months   Keneba           GAMBIA                         1                    0                 1.1745100   1.0018977   1.3768609
24 months   MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                 0.8748222   0.5721558   1.3375969
24 months   MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           INDIA                          1                    0                 0.5615428   0.3287391   0.9592116
24 months   MAL-ED           NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           NEPAL                          1                    0                 1.3000000   0.6745755   2.5052794
24 months   NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   NIH-Birth        BANGLADESH                     1                    0                 0.9240959   0.7541095   1.1323995
24 months   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 1.0949198   0.7837538   1.5296250
24 months   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
24 months   PROBIT           BELARUS                        1                    0                 1.3333815   0.7522646   2.3634052
24 months   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 0.9254920   0.6838080   1.2525963
24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.1669606   0.9392933   1.4498101


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    NA                -0.0019752   -0.0046444    0.0006940
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.0010840   -0.0035449    0.0013769
Birth       EE               PAKISTAN                       0                    NA                -0.0035842   -0.0273046    0.0201362
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.0058360   -0.0175144    0.0058423
Birth       Keneba           GAMBIA                         0                    NA                -0.0053495   -0.0093987   -0.0013003
Birth       NIH-Birth        BANGLADESH                     0                    NA                 0.0034864   -0.0139998    0.0209726
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.0102266   -0.0226657    0.0022124
Birth       PROVIDE          BANGLADESH                     0                    NA                 0.0071882   -0.0061132    0.0204895
Birth       SAS-CompFeed     INDIA                          0                    NA                 0.0010795   -0.0094607    0.0116198
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.0026280   -0.0042054   -0.0010505
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0236185   -0.0050078    0.0522449
6 months    CMIN             BANGLADESH                     0                    NA                 0.0048244   -0.0114980    0.0211468
6 months    COHORTS          GUATEMALA                      0                    NA                -0.0144743   -0.0300252    0.0010765
6 months    COHORTS          INDIA                          0                    NA                 0.0030953   -0.0011476    0.0073381
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0035013   -0.0098103    0.0028076
6 months    EE               PAKISTAN                       0                    NA                 0.0001880   -0.0212980    0.0216741
6 months    GMS-Nepal        NEPAL                          0                    NA                 0.0031896   -0.0138060    0.0201851
6 months    IRC              INDIA                          0                    NA                 0.0184028   -0.0098357    0.0466412
6 months    Keneba           GAMBIA                         0                    NA                 0.0058791   -0.0018236    0.0135818
6 months    LCNI-5           MALAWI                         0                    NA                 0.0010229   -0.0034161    0.0054618
6 months    MAL-ED           BANGLADESH                     0                    NA                 0.0019976   -0.0207098    0.0247049
6 months    MAL-ED           INDIA                          0                    NA                -0.0041507   -0.0271104    0.0188090
6 months    NIH-Birth        BANGLADESH                     0                    NA                 0.0094950   -0.0143634    0.0333534
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0003400   -0.0175132    0.0168332
6 months    PROBIT           BELARUS                        0                    NA                -0.0002524   -0.0021730    0.0016683
6 months    PROVIDE          BANGLADESH                     0                    NA                 0.0045673   -0.0107216    0.0198562
6 months    ResPak           PAKISTAN                       0                    NA                 0.0082978   -0.0223129    0.0389085
6 months    SAS-CompFeed     INDIA                          0                    NA                 0.0144685   -0.0023016    0.0312386
6 months    SAS-FoodSuppl    INDIA                          0                    NA                 0.0109409   -0.0128087    0.0346906
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0018036   -0.0045870    0.0009797
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0158909    0.0119888    0.0197929
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0118374   -0.0393941    0.0157193
24 months   CMIN             BANGLADESH                     0                    NA                -0.0047076   -0.0214330    0.0120178
24 months   COHORTS          GUATEMALA                      0                    NA                -0.0038859   -0.0142391    0.0064672
24 months   COHORTS          INDIA                          0                    NA                -0.0004489   -0.0064814    0.0055835
24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0042725   -0.0127124    0.0041674
24 months   EE               PAKISTAN                       0                    NA                -0.0022215   -0.0364043    0.0319613
24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0081289   -0.0306164    0.0143587
24 months   IRC              INDIA                          0                    NA                 0.0169761   -0.0154079    0.0493601
24 months   Keneba           GAMBIA                         0                    NA                 0.0108977   -0.0004296    0.0222250
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.0106783   -0.0432412    0.0218846
24 months   MAL-ED           INDIA                          0                    NA                -0.0385152   -0.0691803   -0.0078501
24 months   MAL-ED           NEPAL                          0                    NA                 0.0082051   -0.0144227    0.0308329
24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0120497   -0.0425584    0.0184590
24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0062418   -0.0172481    0.0297316
24 months   PROBIT           BELARUS                        0                    NA                 0.0047748   -0.0048123    0.0143619
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0050846   -0.0245167    0.0143474
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0056088   -0.0027916    0.0140093


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    NA                -0.0319669   -0.0759832    0.0102489
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.0366792   -0.1230298    0.0430318
Birth       EE               PAKISTAN                       0                    NA                -0.0161290   -0.1286362    0.0851629
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.0530175   -0.1641142    0.0474767
Birth       Keneba           GAMBIA                         0                    NA                -0.1895255   -0.3298960   -0.0639712
Birth       NIH-Birth        BANGLADESH                     0                    NA                 0.0293060   -0.1292682    0.1656128
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.0889218   -0.2014277    0.0130486
Birth       PROVIDE          BANGLADESH                     0                    NA                 0.0932706   -0.0945910    0.2488901
Birth       SAS-CompFeed     INDIA                          0                    NA                 0.0059054   -0.0535702    0.0620236
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.0495754   -0.0795615   -0.0204222
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0779412   -0.0213620    0.1675895
6 months    CMIN             BANGLADESH                     0                    NA                 0.0136496   -0.0336341    0.0587702
6 months    COHORTS          GUATEMALA                      0                    NA                -0.0356322   -0.0746756    0.0019928
6 months    COHORTS          INDIA                          0                    NA                 0.0192030   -0.0074625    0.0451626
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0181217   -0.0512873    0.0139977
6 months    EE               PAKISTAN                       0                    NA                 0.0004653   -0.0541432    0.0522448
6 months    GMS-Nepal        NEPAL                          0                    NA                 0.0173617   -0.0796124    0.1056253
6 months    IRC              INDIA                          0                    NA                 0.0836887   -0.0536196    0.2031029
6 months    Keneba           GAMBIA                         0                    NA                 0.0427552   -0.0147902    0.0970374
6 months    LCNI-5           MALAWI                         0                    NA                 0.0027773   -0.0093645    0.0147730
6 months    MAL-ED           BANGLADESH                     0                    NA                 0.0123634   -0.1386338    0.1433365
6 months    MAL-ED           INDIA                          0                    NA                -0.0229277   -0.1578533    0.0962749
6 months    NIH-Birth        BANGLADESH                     0                    NA                 0.0390435   -0.0641683    0.1322450
6 months    NIH-Crypto       BANGLADESH                     0                    NA                -0.0017610   -0.0947703    0.0833464
6 months    PROBIT           BELARUS                        0                    NA                -0.0064336   -0.0560439    0.0408462
6 months    PROVIDE          BANGLADESH                     0                    NA                 0.0302966   -0.0764931    0.1264926
6 months    ResPak           PAKISTAN                       0                    NA                 0.0230719   -0.0658685    0.1045907
6 months    SAS-CompFeed     INDIA                          0                    NA                 0.0601037   -0.0088883    0.1243777
6 months    SAS-FoodSuppl    INDIA                          0                    NA                 0.0255065   -0.0315029    0.0793650
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0187801   -0.0480893    0.0097095
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.1083336    0.0817655    0.1341329
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0164459   -0.0555246    0.0211860
24 months   CMIN             BANGLADESH                     0                    NA                -0.0070462   -0.0324198    0.0177037
24 months   COHORTS          GUATEMALA                      0                    NA                -0.0047795   -0.0176003    0.0078799
24 months   COHORTS          INDIA                          0                    NA                -0.0008602   -0.0124860    0.0106321
24 months   COHORTS          PHILIPPINES                    0                    NA                -0.0069685   -0.0208325    0.0067072
24 months   EE               PAKISTAN                       0                    NA                -0.0032037   -0.0537349    0.0449044
24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0187748   -0.0720817    0.0318816
24 months   IRC              INDIA                          0                    NA                 0.0416786   -0.0412746    0.1180233
24 months   Keneba           GAMBIA                         0                    NA                 0.0325186   -0.0018775    0.0657339
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.0235862   -0.0981647    0.0459276
24 months   MAL-ED           INDIA                          0                    NA                -0.0923536   -0.1692558   -0.0205094
24 months   MAL-ED           NEPAL                          0                    NA                 0.0384615   -0.0734418    0.1386992
24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0220015   -0.0793058    0.0322604
24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0251684   -0.0742724    0.1154043
24 months   PROBIT           BELARUS                        0                    NA                 0.0702631   -0.0942536    0.2100454
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0156661   -0.0773370    0.0424745
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0173333   -0.0089712    0.0429519
