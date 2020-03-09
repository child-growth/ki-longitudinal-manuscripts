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
Birth       JiVitA-3         BANGLADESH                     0               0    13377   18062
Birth       JiVitA-3         BANGLADESH                     0               1     2664   18062
Birth       JiVitA-3         BANGLADESH                     1               0     1691   18062
Birth       JiVitA-3         BANGLADESH                     1               1      330   18062
Birth       JiVitA-4         BANGLADESH                     0               0     1777    2399
Birth       JiVitA-4         BANGLADESH                     0               1      380    2399
Birth       JiVitA-4         BANGLADESH                     1               0      189    2399
Birth       JiVitA-4         BANGLADESH                     1               1       53    2399
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
6 months    JiVitA-3         BANGLADESH                     0               0    10434   14244
6 months    JiVitA-3         BANGLADESH                     0               1     2290   14244
6 months    JiVitA-3         BANGLADESH                     1               0     1225   14244
6 months    JiVitA-3         BANGLADESH                     1               1      295   14244
6 months    JiVitA-4         BANGLADESH                     0               0     3163    4410
6 months    JiVitA-4         BANGLADESH                     0               1      847    4410
6 months    JiVitA-4         BANGLADESH                     1               0      295    4410
6 months    JiVitA-4         BANGLADESH                     1               1      105    4410
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
24 months   JiVitA-3         BANGLADESH                     0               0     3592    7242
24 months   JiVitA-3         BANGLADESH                     0               1     2830    7242
24 months   JiVitA-3         BANGLADESH                     1               0      474    7242
24 months   JiVitA-3         BANGLADESH                     1               1      346    7242
24 months   JiVitA-4         BANGLADESH                     0               0     2490    4315
24 months   JiVitA-4         BANGLADESH                     0               1     1453    4315
24 months   JiVitA-4         BANGLADESH                     1               0      214    4315
24 months   JiVitA-4         BANGLADESH                     1               1      158    4315
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/ca71847c-4a94-4702-ac00-782a077fb451/184c382b-e8d0-47ca-b73d-3c1c32924a9b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ca71847c-4a94-4702-ac00-782a077fb451/184c382b-e8d0-47ca-b73d-3c1c32924a9b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ca71847c-4a94-4702-ac00-782a077fb451/184c382b-e8d0-47ca-b73d-3c1c32924a9b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ca71847c-4a94-4702-ac00-782a077fb451/184c382b-e8d0-47ca-b73d-3c1c32924a9b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA                          0                    NA                0.0641161   0.0573793   0.0708529
Birth       COHORTS          INDIA                          1                    NA                0.0516598   0.0384819   0.0648377
Birth       COHORTS          PHILIPPINES                    0                    NA                0.0304772   0.0236684   0.0372860
Birth       COHORTS          PHILIPPINES                    1                    NA                0.0246839   0.0104239   0.0389438
Birth       EE               PAKISTAN                       0                    NA                0.2258065   0.1598002   0.2918127
Birth       EE               PAKISTAN                       1                    NA                0.2000000   0.0427655   0.3572345
Birth       GMS-Nepal        NEPAL                          0                    NA                0.1156140   0.0877524   0.1434755
Birth       GMS-Nepal        NEPAL                          1                    NA                0.0849557   0.0364691   0.1334423
Birth       JiVitA-3         BANGLADESH                     0                    NA                0.1664758   0.1601274   0.1728243
Birth       JiVitA-3         BANGLADESH                     1                    NA                0.1610048   0.1436617   0.1783479
Birth       JiVitA-4         BANGLADESH                     0                    NA                0.1761911   0.1573477   0.1950344
Birth       JiVitA-4         BANGLADESH                     1                    NA                0.2225973   0.1564206   0.2887740
Birth       Keneba           GAMBIA                         0                    NA                0.0335753   0.0229364   0.0442142
Birth       Keneba           GAMBIA                         1                    NA                0.0129534   0.0016694   0.0242373
Birth       NIH-Birth        BANGLADESH                     0                    NA                0.1139434   0.0832690   0.1446179
Birth       NIH-Birth        BANGLADESH                     1                    NA                0.1285251   0.0772670   0.1797833
Birth       NIH-Crypto       BANGLADESH                     0                    NA                0.1244208   0.0964252   0.1524164
Birth       NIH-Crypto       BANGLADESH                     1                    NA                0.0860803   0.0444035   0.1277572
Birth       PROVIDE          BANGLADESH                     0                    NA                0.0702146   0.0455730   0.0948562
Birth       PROVIDE          BANGLADESH                     1                    NA                0.1059696   0.0485981   0.1633411
Birth       SAS-CompFeed     INDIA                          0                    NA                0.1817847   0.1557953   0.2077740
Birth       SAS-CompFeed     INDIA                          1                    NA                0.1922212   0.1090677   0.2753747
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                0.0553255   0.0510194   0.0596317
Birth       ZVITAMBO         ZIMBABWE                       1                    NA                0.0411313   0.0328045   0.0494582
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.2772447   0.2239415   0.3305479
6 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.3947755   0.2938440   0.4957070
6 months    CMIN             BANGLADESH                     0                    NA                0.3486239   0.2852292   0.4120185
6 months    CMIN             BANGLADESH                     1                    NA                0.4285714   0.1687861   0.6883568
6 months    COHORTS          GUATEMALA                      0                    NA                0.4226922   0.3867349   0.4586494
6 months    COHORTS          GUATEMALA                      1                    NA                0.3402873   0.2697524   0.4108221
6 months    COHORTS          INDIA                          0                    NA                0.1587617   0.1490116   0.1685119
6 months    COHORTS          INDIA                          1                    NA                0.1721075   0.1502998   0.1939152
6 months    COHORTS          PHILIPPINES                    0                    NA                0.1957910   0.1791644   0.2124176
6 months    COHORTS          PHILIPPINES                    1                    NA                0.1782304   0.1414237   0.2150371
6 months    EE               PAKISTAN                       0                    NA                0.4041588   0.3437933   0.4645244
6 months    EE               PAKISTAN                       1                    NA                0.4565375   0.2935528   0.6195221
6 months    GMS-Nepal        NEPAL                          0                    NA                0.1800658   0.1432144   0.2169173
6 months    GMS-Nepal        NEPAL                          1                    NA                0.1977779   0.1200159   0.2755399
6 months    IRC              INDIA                          0                    NA                0.2043254   0.1561842   0.2524666
6 months    IRC              INDIA                          1                    NA                0.2565575   0.1748442   0.3382708
6 months    JiVitA-3         BANGLADESH                     0                    NA                0.1798036   0.1720184   0.1875888
6 months    JiVitA-3         BANGLADESH                     1                    NA                0.1971669   0.1739217   0.2204120
6 months    JiVitA-4         BANGLADESH                     0                    NA                0.2112941   0.1968333   0.2257549
6 months    JiVitA-4         BANGLADESH                     1                    NA                0.2612579   0.2130507   0.3094651
6 months    Keneba           GAMBIA                         0                    NA                0.1317387   0.1153329   0.1481445
6 months    Keneba           GAMBIA                         1                    NA                0.1650436   0.1271596   0.2029275
6 months    LCNI-5           MALAWI                         0                    NA                0.3672727   0.3340779   0.4004675
6 months    LCNI-5           MALAWI                         1                    NA                0.4285714   0.2554457   0.6016972
6 months    MAL-ED           BANGLADESH                     0                    NA                0.1595745   0.1071117   0.2120372
6 months    MAL-ED           BANGLADESH                     1                    NA                0.1707317   0.0553037   0.2861597
6 months    MAL-ED           INDIA                          0                    NA                0.1851852   0.1296859   0.2406845
6 months    MAL-ED           INDIA                          1                    NA                0.1627907   0.0522089   0.2733725
6 months    NIH-Birth        BANGLADESH                     0                    NA                0.2351185   0.1918308   0.2784062
6 months    NIH-Birth        BANGLADESH                     1                    NA                0.2712994   0.1999249   0.3426738
6 months    NIH-Crypto       BANGLADESH                     0                    NA                0.1929626   0.1587689   0.2271562
6 months    NIH-Crypto       BANGLADESH                     1                    NA                0.1904341   0.1312437   0.2496245
6 months    PROBIT           BELARUS                        0                    NA                0.0391940   0.0284509   0.0499372
6 months    PROBIT           BELARUS                        1                    NA                0.0402527   0.0297806   0.0507247
6 months    PROVIDE          BANGLADESH                     0                    NA                0.1489951   0.1168460   0.1811441
6 months    PROVIDE          BANGLADESH                     1                    NA                0.1518119   0.0895186   0.2141052
6 months    ResPak           PAKISTAN                       0                    NA                0.3533172   0.2841914   0.4224430
6 months    ResPak           PAKISTAN                       1                    NA                0.3888940   0.2427976   0.5349904
6 months    SAS-CompFeed     INDIA                          0                    NA                0.2259085   0.2026646   0.2491525
6 months    SAS-CompFeed     INDIA                          1                    NA                0.3592831   0.2559207   0.4626456
6 months    SAS-FoodSuppl    INDIA                          0                    NA                0.4190708   0.3641491   0.4739924
6 months    SAS-FoodSuppl    INDIA                          1                    NA                0.4758955   0.3569664   0.5948246
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0978432   0.0844843   0.1112021
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0672269   0.0222239   0.1122299
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.1300749   0.1221330   0.1380168
6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.2416450   0.2182876   0.2650023
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.7319304   0.6791942   0.7846666
24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.6740881   0.5773657   0.7708105
24 months   CMIN             BANGLADESH                     0                    NA                0.6728111   0.6102503   0.7353718
24 months   CMIN             BANGLADESH                     1                    NA                0.6000000   0.3515459   0.8484541
24 months   COHORTS          GUATEMALA                      0                    NA                0.8170217   0.7913609   0.8426825
24 months   COHORTS          GUATEMALA                      1                    NA                0.7943466   0.7290376   0.8596557
24 months   COHORTS          INDIA                          0                    NA                0.5227338   0.5078327   0.5376350
24 months   COHORTS          INDIA                          1                    NA                0.5127993   0.4787431   0.5468554
24 months   COHORTS          PHILIPPINES                    0                    NA                0.6121239   0.5908627   0.6333851
24 months   COHORTS          PHILIPPINES                    1                    NA                0.6208705   0.5723578   0.6693831
24 months   EE               PAKISTAN                       0                    NA                0.6956522   0.6112466   0.7800578
24 months   EE               PAKISTAN                       1                    NA                0.6818182   0.4864744   0.8771619
24 months   GMS-Nepal        NEPAL                          0                    NA                0.4447223   0.3936983   0.4957463
24 months   GMS-Nepal        NEPAL                          1                    NA                0.3844555   0.2866223   0.4822888
24 months   IRC              INDIA                          0                    NA                0.3950080   0.3366409   0.4533751
24 months   IRC              INDIA                          1                    NA                0.4510978   0.3607538   0.5414418
24 months   JiVitA-3         BANGLADESH                     0                    NA                0.4401472   0.4253450   0.4549493
24 months   JiVitA-3         BANGLADESH                     1                    NA                0.4271345   0.3883309   0.4659380
24 months   JiVitA-4         BANGLADESH                     0                    NA                0.3686741   0.3502657   0.3870825
24 months   JiVitA-4         BANGLADESH                     1                    NA                0.4228881   0.3681030   0.4776731
24 months   Keneba           GAMBIA                         0                    NA                0.3250241   0.3000786   0.3499696
24 months   Keneba           GAMBIA                         1                    NA                0.3769273   0.3244490   0.4294057
24 months   MAL-ED           BANGLADESH                     0                    NA                0.4616520   0.3850235   0.5382804
24 months   MAL-ED           BANGLADESH                     1                    NA                0.3906403   0.2336247   0.5476560
24 months   MAL-ED           INDIA                          0                    NA                0.4597953   0.3868378   0.5327529
24 months   MAL-ED           INDIA                          1                    NA                0.2530247   0.1199565   0.3860929
24 months   MAL-ED           NEPAL                          0                    NA                0.2051282   0.1483268   0.2619296
24 months   MAL-ED           NEPAL                          1                    NA                0.2666667   0.1080716   0.4252618
24 months   NIH-Birth        BANGLADESH                     0                    NA                0.5619930   0.5051824   0.6188036
24 months   NIH-Birth        BANGLADESH                     1                    NA                0.5240192   0.4319207   0.6161177
24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.2385224   0.1947518   0.2822929
24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.2757075   0.2015560   0.3498590
24 months   PROBIT           BELARUS                        0                    NA                0.0625818   0.0324469   0.0927167
24 months   PROBIT           BELARUS                        1                    NA                0.0807638   0.0515119   0.1100157
24 months   PROVIDE          BANGLADESH                     0                    NA                0.3334823   0.2903123   0.3766522
24 months   PROVIDE          BANGLADESH                     1                    NA                0.2956016   0.2139042   0.3772990
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.3168916   0.2920356   0.3417476
24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.3891500   0.3074863   0.4708137


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA                          NA                   NA                0.0617878   0.0558091   0.0677665
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.0295533   0.0233992   0.0357074
Birth       EE               PAKISTAN                       NA                   NA                0.2222222   0.1613186   0.2831258
Birth       GMS-Nepal        NEPAL                          NA                   NA                0.1100775   0.0859045   0.1342505
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.1657624   0.1596821   0.1718426
Birth       JiVitA-4         BANGLADESH                     NA                   NA                0.1804919   0.1622043   0.1987794
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
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1814799   0.1738720   0.1890878
6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.2158730   0.2021674   0.2295786
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
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4385529   0.4244156   0.4526902
24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.3733488   0.3557063   0.3909913
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
Birth       COHORTS          INDIA                          1                    0                 0.8057229   0.6117255   1.0612429
Birth       COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
Birth       COHORTS          PHILIPPINES                    1                    0                 0.8099129   0.4360057   1.5044732
Birth       EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
Birth       EE               PAKISTAN                       1                    0                 0.8857143   0.3828476   2.0490918
Birth       GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL                          1                    0                 0.7348222   0.3953243   1.3658750
Birth       JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH                     1                    0                 0.9671364   0.8649861   1.0813501
Birth       JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-4         BANGLADESH                     1                    0                 1.2633858   0.9223934   1.7304371
Birth       Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
Birth       Keneba           GAMBIA                         1                    0                 0.3858003   0.1526824   0.9748462
Birth       NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       NIH-Birth        BANGLADESH                     1                    0                 1.1279733   0.6967466   1.8260924
Birth       NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto       BANGLADESH                     1                    0                 0.6918483   0.4058760   1.1793110
Birth       PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH                     1                    0                 1.5092248   0.7912775   2.8785850
Birth       SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed     INDIA                          1                    0                 1.0574113   0.6560645   1.7042818
Birth       ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO         ZIMBABWE                       1                    0                 0.7434424   0.5985401   0.9234245
6 months    CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    CMC-V-BCS-2002   INDIA                          1                    0                 1.4239245   1.0341834   1.9605430
6 months    CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    CMIN             BANGLADESH                     1                    0                 1.2293233   0.6528619   2.3147865
6 months    COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6 months    COHORTS          GUATEMALA                      1                    0                 0.8050476   0.6436096   1.0069793
6 months    COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    COHORTS          INDIA                          1                    0                 1.0840616   0.9422379   1.2472324
6 months    COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6 months    COHORTS          PHILIPPINES                    1                    0                 0.9103097   0.7285851   1.1373602
6 months    EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    EE               PAKISTAN                       1                    0                 1.1295991   0.7671743   1.6632389
6 months    GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal        NEPAL                          1                    0                 1.0983643   0.7049007   1.7114527
6 months    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA                          1                    0                 1.2556320   0.8443642   1.8672175
6 months    JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH                     1                    0                 1.0965680   0.9722236   1.2368157
6 months    JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-4         BANGLADESH                     1                    0                 1.2364660   1.0136556   1.5082521
6 months    Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    Keneba           GAMBIA                         1                    0                 1.2528099   0.9653486   1.6258715
6 months    LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6 months    LCNI-5           MALAWI                         1                    0                 1.1669024   0.7713640   1.7652642
6 months    MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED           BANGLADESH                     1                    0                 1.0699187   0.5044964   2.2690470
6 months    MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    MAL-ED           INDIA                          1                    0                 0.8790698   0.4183849   1.8470161
6 months    NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    NIH-Birth        BANGLADESH                     1                    0                 1.1538833   0.8365634   1.5915670
6 months    NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    NIH-Crypto       BANGLADESH                     1                    0                 0.9868966   0.6898258   1.4118997
6 months    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6 months    PROBIT           BELARUS                        1                    0                 1.0270103   0.8038169   1.3121771
6 months    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH                     1                    0                 1.0189055   0.6422626   1.6164237
6 months    ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ResPak           PAKISTAN                       1                    0                 1.1006936   0.7226217   1.6765708
6 months    SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed     INDIA                          1                    0                 1.5903920   1.2038394   2.1010666
6 months    SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6 months    SAS-FoodSuppl    INDIA                          1                    0                 1.1355969   0.8557020   1.5070438
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6870877   0.3469776   1.3605763
6 months    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO         ZIMBABWE                       1                    0                 1.8577366   1.6575087   2.0821521
24 months   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   CMC-V-BCS-2002   INDIA                          1                    0                 0.9209729   0.7840394   1.0818221
24 months   CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   CMIN             BANGLADESH                     1                    0                 0.8917808   0.5833684   1.3632433
24 months   COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
24 months   COHORTS          GUATEMALA                      1                    0                 0.9722467   0.8903321   1.0616977
24 months   COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   COHORTS          INDIA                          1                    0                 0.9809949   0.9135257   1.0534472
24 months   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
24 months   COHORTS          PHILIPPINES                    1                    0                 1.0142889   0.9323033   1.1034842
24 months   EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
24 months   EE               PAKISTAN                       1                    0                 0.9801136   0.7180443   1.3378321
24 months   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL                          1                    0                 0.8644845   0.6534737   1.1436320
24 months   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA                          1                    0                 1.1419967   0.8914004   1.4630421
24 months   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH                     1                    0                 0.9704356   0.8831160   1.0663890
24 months   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-4         BANGLADESH                     1                    0                 1.1470511   1.0001312   1.3155537
24 months   Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
24 months   Keneba           GAMBIA                         1                    0                 1.1596904   0.9895529   1.3590802
24 months   MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           BANGLADESH                     1                    0                 0.8461793   0.5477767   1.3071374
24 months   MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           INDIA                          1                    0                 0.5502986   0.3184159   0.9510471
24 months   MAL-ED           NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           NEPAL                          1                    0                 1.3000000   0.6745755   2.5052794
24 months   NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   NIH-Birth        BANGLADESH                     1                    0                 0.9324300   0.7615455   1.1416597
24 months   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto       BANGLADESH                     1                    0                 1.1558978   0.8382287   1.5939562
24 months   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
24 months   PROBIT           BELARUS                        1                    0                 1.2905327   0.7502752   2.2198183
24 months   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH                     1                    0                 0.8864087   0.6554360   1.1987750
24 months   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO         ZIMBABWE                       1                    0                 1.2280225   0.9818906   1.5358527


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    NA                -0.0023282   -0.0050049    0.0003484
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.0009239   -0.0033748    0.0015270
Birth       EE               PAKISTAN                       0                    NA                -0.0035842   -0.0273046    0.0201362
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.0055365   -0.0172614    0.0061885
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.0007134   -0.0027049    0.0012780
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.0043008   -0.0025994    0.0112010
Birth       Keneba           GAMBIA                         0                    NA                -0.0053495   -0.0093987   -0.0013003
Birth       NIH-Birth        BANGLADESH                     0                    NA                 0.0050221   -0.0123388    0.0223830
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.0094138   -0.0217847    0.0029571
Birth       PROVIDE          BANGLADESH                     0                    NA                 0.0068531   -0.0065698    0.0202760
Birth       SAS-CompFeed     INDIA                          0                    NA                 0.0010207   -0.0095820    0.0116234
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.0023160   -0.0038979   -0.0007342
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0257856   -0.0031417    0.0547130
6 months    CMIN             BANGLADESH                     0                    NA                 0.0048244   -0.0114980    0.0211468
6 months    COHORTS          GUATEMALA                      0                    NA                -0.0164768   -0.0320158   -0.0009378
6 months    COHORTS          INDIA                          0                    NA                 0.0024245   -0.0017781    0.0066272
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0025785   -0.0088210    0.0036640
6 months    EE               PAKISTAN                       0                    NA                -0.0000492   -0.0213707    0.0212722
6 months    GMS-Nepal        NEPAL                          0                    NA                 0.0036463   -0.0134142    0.0207067
6 months    IRC              INDIA                          0                    NA                 0.0155699   -0.0128634    0.0440032
6 months    JiVitA-3         BANGLADESH                     0                    NA                 0.0016763   -0.0007745    0.0041272
6 months    JiVitA-4         BANGLADESH                     0                    NA                 0.0045790    0.0000381    0.0091198
6 months    Keneba           GAMBIA                         0                    NA                 0.0057675   -0.0019451    0.0134800
6 months    LCNI-5           MALAWI                         0                    NA                 0.0010229   -0.0034161    0.0054618
6 months    MAL-ED           BANGLADESH                     0                    NA                 0.0019976   -0.0207098    0.0247049
6 months    MAL-ED           INDIA                          0                    NA                -0.0041507   -0.0271104    0.0188090
6 months    NIH-Birth        BANGLADESH                     0                    NA                 0.0080721   -0.0160196    0.0321638
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0001210   -0.0172195    0.0174615
6 months    PROBIT           BELARUS                        0                    NA                 0.0000366   -0.0018195    0.0018927
6 months    PROVIDE          BANGLADESH                     0                    NA                 0.0017587   -0.0134021    0.0169195
6 months    ResPak           PAKISTAN                       0                    NA                 0.0063319   -0.0235595    0.0362234
6 months    SAS-CompFeed     INDIA                          0                    NA                 0.0148169   -0.0002158    0.0298496
6 months    SAS-FoodSuppl    INDIA                          0                    NA                 0.0098766   -0.0140032    0.0337564
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0018036   -0.0045870    0.0009797
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.0166097    0.0127302    0.0204892
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0121502   -0.0398266    0.0155261
24 months   CMIN             BANGLADESH                     0                    NA                -0.0047076   -0.0214330    0.0120178
24 months   COHORTS          GUATEMALA                      0                    NA                -0.0039740   -0.0143362    0.0063883
24 months   COHORTS          INDIA                          0                    NA                -0.0008404   -0.0066280    0.0049473
24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0009992   -0.0069519    0.0089504
24 months   EE               PAKISTAN                       0                    NA                -0.0022215   -0.0364043    0.0319613
24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0117553   -0.0346416    0.0111311
24 months   IRC              INDIA                          0                    NA                 0.0123027   -0.0196666    0.0442720
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.0015943   -0.0061413    0.0029528
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0046747   -0.0002097    0.0095590
24 months   Keneba           GAMBIA                         0                    NA                 0.0100981   -0.0011230    0.0213193
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.0089157   -0.0419916    0.0241603
24 months   MAL-ED           INDIA                          0                    NA                -0.0427550   -0.0734587   -0.0120513
24 months   MAL-ED           NEPAL                          0                    NA                 0.0082051   -0.0144227    0.0308329
24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0143158   -0.0449426    0.0163110
24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0094776   -0.0131359    0.0320912
24 months   PROBIT           BELARUS                        0                    NA                 0.0053746   -0.0036338    0.0143829
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0089209   -0.0277498    0.0099081
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0066964   -0.0017714    0.0151643


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA                          0                    NA                -0.0376813   -0.0817842    0.0046236
Birth       COHORTS          PHILIPPINES                    0                    NA                -0.0312633   -0.1173174    0.0481631
Birth       EE               PAKISTAN                       0                    NA                -0.0161290   -0.1286362    0.0851629
Birth       GMS-Nepal        NEPAL                          0                    NA                -0.0502961   -0.1618581    0.0505536
Birth       JiVitA-3         BANGLADESH                     0                    NA                -0.0043040   -0.0163952    0.0076434
Birth       JiVitA-4         BANGLADESH                     0                    NA                 0.0238283   -0.0149707    0.0611441
Birth       Keneba           GAMBIA                         0                    NA                -0.1895255   -0.3298960   -0.0639712
Birth       NIH-Birth        BANGLADESH                     0                    NA                 0.0422147   -0.1151062    0.1773405
Birth       NIH-Crypto       BANGLADESH                     0                    NA                -0.0818542   -0.1937813    0.0195788
Birth       PROVIDE          BANGLADESH                     0                    NA                 0.0889229   -0.1008263    0.2459650
Birth       SAS-CompFeed     INDIA                          0                    NA                 0.0055838   -0.0542472    0.0620193
Birth       ZVITAMBO         ZIMBABWE                       0                    NA                -0.0436910   -0.0737832   -0.0144420
6 months    CMC-V-BCS-2002   INDIA                          0                    NA                 0.0850926   -0.0152772    0.1755398
6 months    CMIN             BANGLADESH                     0                    NA                 0.0136496   -0.0336341    0.0587702
6 months    COHORTS          GUATEMALA                      0                    NA                -0.0405618   -0.0795928   -0.0029420
6 months    COHORTS          INDIA                          0                    NA                 0.0150416   -0.0113659    0.0407597
6 months    COHORTS          PHILIPPINES                    0                    NA                -0.0133453   -0.0461556    0.0184361
6 months    EE               PAKISTAN                       0                    NA                -0.0001219   -0.0542998    0.0512720
6 months    GMS-Nepal        NEPAL                          0                    NA                 0.0198478   -0.0775434    0.1084365
6 months    IRC              INDIA                          0                    NA                 0.0708061   -0.0672879    0.1910324
6 months    JiVitA-3         BANGLADESH                     0                    NA                 0.0092369   -0.0043315    0.0226220
6 months    JiVitA-4         BANGLADESH                     0                    NA                 0.0212113   -0.0001025    0.0420709
6 months    Keneba           GAMBIA                         0                    NA                 0.0419433   -0.0157032    0.0963180
6 months    LCNI-5           MALAWI                         0                    NA                 0.0027773   -0.0093645    0.0147730
6 months    MAL-ED           BANGLADESH                     0                    NA                 0.0123634   -0.1386338    0.1433365
6 months    MAL-ED           INDIA                          0                    NA                -0.0229277   -0.1578533    0.0962749
6 months    NIH-Birth        BANGLADESH                     0                    NA                 0.0331926   -0.0710032    0.1272514
6 months    NIH-Crypto       BANGLADESH                     0                    NA                 0.0006267   -0.0933409    0.0865183
6 months    PROBIT           BELARUS                        0                    NA                 0.0009323   -0.0476148    0.0472298
6 months    PROVIDE          BANGLADESH                     0                    NA                 0.0116662   -0.0941617    0.1072583
6 months    ResPak           PAKISTAN                       0                    NA                 0.0176058   -0.0691740    0.0973422
6 months    SAS-CompFeed     INDIA                          0                    NA                 0.0615511    0.0003663    0.1189910
6 months    SAS-FoodSuppl    INDIA                          0                    NA                 0.0230252   -0.0342867    0.0771613
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0187801   -0.0480893    0.0097095
6 months    ZVITAMBO         ZIMBABWE                       0                    NA                 0.1132339    0.0868161    0.1388875
24 months   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0168804   -0.0561361    0.0209161
24 months   CMIN             BANGLADESH                     0                    NA                -0.0070462   -0.0324198    0.0177037
24 months   COHORTS          GUATEMALA                      0                    NA                -0.0048878   -0.0177200    0.0077827
24 months   COHORTS          INDIA                          0                    NA                -0.0016102   -0.0127617    0.0094185
24 months   COHORTS          PHILIPPINES                    0                    NA                 0.0016297   -0.0114233    0.0145143
24 months   EE               PAKISTAN                       0                    NA                -0.0032037   -0.0537349    0.0449044
24 months   GMS-Nepal        NEPAL                          0                    NA                -0.0271505   -0.0814715    0.0244420
24 months   IRC              INDIA                          0                    NA                 0.0302047   -0.0515858    0.1056337
24 months   JiVitA-3         BANGLADESH                     0                    NA                -0.0036353   -0.0140594    0.0066816
24 months   JiVitA-4         BANGLADESH                     0                    NA                 0.0125209   -0.0006753    0.0255430
24 months   Keneba           GAMBIA                         0                    NA                 0.0301327   -0.0039401    0.0630490
24 months   MAL-ED           BANGLADESH                     0                    NA                -0.0196928   -0.0954843    0.0508551
24 months   MAL-ED           INDIA                          0                    NA                -0.1025200   -0.1797541   -0.0303421
24 months   MAL-ED           NEPAL                          0                    NA                 0.0384615   -0.0734418    0.1386992
24 months   NIH-Birth        BANGLADESH                     0                    NA                -0.0261391   -0.0836976    0.0283624
24 months   NIH-Crypto       BANGLADESH                     0                    NA                 0.0382163   -0.0575184    0.1252842
24 months   PROBIT           BELARUS                        0                    NA                 0.0790888   -0.0802053    0.2148924
24 months   PROVIDE          BANGLADESH                     0                    NA                -0.0274859   -0.0871958    0.0289447
24 months   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0206943   -0.0058218    0.0465114
