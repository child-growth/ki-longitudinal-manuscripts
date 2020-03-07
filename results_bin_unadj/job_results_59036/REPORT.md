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

**Intervention Variable:** enstunt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        enstunt    wasted   n_cell       n
----------  ---------------  -----------------------------  --------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          0               0       66      86
Birth       CMC-V-BCS-2002   INDIA                          0               1        8      86
Birth       CMC-V-BCS-2002   INDIA                          1               0        9      86
Birth       CMC-V-BCS-2002   INDIA                          1               1        3      86
Birth       CMIN             BANGLADESH                     0               0       14      19
Birth       CMIN             BANGLADESH                     0               1        3      19
Birth       CMIN             BANGLADESH                     1               0        1      19
Birth       CMIN             BANGLADESH                     1               1        1      19
Birth       COHORTS          GUATEMALA                      0               0      540     756
Birth       COHORTS          GUATEMALA                      0               1      192     756
Birth       COHORTS          GUATEMALA                      1               0       24     756
Birth       COHORTS          GUATEMALA                      1               1        0     756
Birth       COHORTS          INDIA                          0               0     4772    6193
Birth       COHORTS          INDIA                          0               1     1041    6193
Birth       COHORTS          INDIA                          1               0      325    6193
Birth       COHORTS          INDIA                          1               1       55    6193
Birth       COHORTS          PHILIPPINES                    0               0     2373    2899
Birth       COHORTS          PHILIPPINES                    0               1      440    2899
Birth       COHORTS          PHILIPPINES                    1               0       75    2899
Birth       COHORTS          PHILIPPINES                    1               1       11    2899
Birth       CONTENT          PERU                           0               0        2       2
Birth       CONTENT          PERU                           0               1        0       2
Birth       CONTENT          PERU                           1               0        0       2
Birth       CONTENT          PERU                           1               1        0       2
Birth       EE               PAKISTAN                       0               0      120     177
Birth       EE               PAKISTAN                       0               1       17     177
Birth       EE               PAKISTAN                       1               0       35     177
Birth       EE               PAKISTAN                       1               1        5     177
Birth       GMS-Nepal        NEPAL                          0               0      450     641
Birth       GMS-Nepal        NEPAL                          0               1      120     641
Birth       GMS-Nepal        NEPAL                          1               0       59     641
Birth       GMS-Nepal        NEPAL                          1               1       12     641
Birth       IRC              INDIA                          0               0      228     343
Birth       IRC              INDIA                          0               1       90     343
Birth       IRC              INDIA                          1               0       23     343
Birth       IRC              INDIA                          1               1        2     343
Birth       JiVitA-3         BANGLADESH                     0               0    13377   18014
Birth       JiVitA-3         BANGLADESH                     0               1     1650   18014
Birth       JiVitA-3         BANGLADESH                     1               0     2664   18014
Birth       JiVitA-3         BANGLADESH                     1               1      323   18014
Birth       JiVitA-4         BANGLADESH                     0               0     1777    2396
Birth       JiVitA-4         BANGLADESH                     0               1      186    2396
Birth       JiVitA-4         BANGLADESH                     1               0      380    2396
Birth       JiVitA-4         BANGLADESH                     1               1       53    2396
Birth       Keneba           GAMBIA                         0               0     1065    1466
Birth       Keneba           GAMBIA                         0               1      360    1466
Birth       Keneba           GAMBIA                         1               0       37    1466
Birth       Keneba           GAMBIA                         1               1        4    1466
Birth       MAL-ED           BANGLADESH                     0               0      155     215
Birth       MAL-ED           BANGLADESH                     0               1       32     215
Birth       MAL-ED           BANGLADESH                     1               0       24     215
Birth       MAL-ED           BANGLADESH                     1               1        4     215
Birth       MAL-ED           BRAZIL                         0               0       54      62
Birth       MAL-ED           BRAZIL                         0               1        2      62
Birth       MAL-ED           BRAZIL                         1               0        6      62
Birth       MAL-ED           BRAZIL                         1               1        0      62
Birth       MAL-ED           INDIA                          0               0       33      45
Birth       MAL-ED           INDIA                          0               1        4      45
Birth       MAL-ED           INDIA                          1               0        7      45
Birth       MAL-ED           INDIA                          1               1        1      45
Birth       MAL-ED           NEPAL                          0               0       24      26
Birth       MAL-ED           NEPAL                          0               1        1      26
Birth       MAL-ED           NEPAL                          1               0        0      26
Birth       MAL-ED           NEPAL                          1               1        1      26
Birth       MAL-ED           PERU                           0               0      202     228
Birth       MAL-ED           PERU                           0               1        5     228
Birth       MAL-ED           PERU                           1               0       21     228
Birth       MAL-ED           PERU                           1               1        0     228
Birth       MAL-ED           SOUTH AFRICA                   0               0      100     120
Birth       MAL-ED           SOUTH AFRICA                   0               1       12     120
Birth       MAL-ED           SOUTH AFRICA                   1               0        8     120
Birth       MAL-ED           SOUTH AFRICA                   1               1        0     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0      102     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1        0     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0       12     115
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        1     115
Birth       NIH-Birth        BANGLADESH                     0               0      360     575
Birth       NIH-Birth        BANGLADESH                     0               1      146     575
Birth       NIH-Birth        BANGLADESH                     1               0       47     575
Birth       NIH-Birth        BANGLADESH                     1               1       22     575
Birth       NIH-Crypto       BANGLADESH                     0               0      468     707
Birth       NIH-Crypto       BANGLADESH                     0               1      157     707
Birth       NIH-Crypto       BANGLADESH                     1               0       67     707
Birth       NIH-Crypto       BANGLADESH                     1               1       15     707
Birth       PROBIT           BELARUS                        0               0    10884   13817
Birth       PROBIT           BELARUS                        0               1     2906   13817
Birth       PROBIT           BELARUS                        1               0       27   13817
Birth       PROBIT           BELARUS                        1               1        0   13817
Birth       PROVIDE          BANGLADESH                     0               0      386     532
Birth       PROVIDE          BANGLADESH                     0               1      105     532
Birth       PROVIDE          BANGLADESH                     1               0       29     532
Birth       PROVIDE          BANGLADESH                     1               1       12     532
Birth       ResPak           PAKISTAN                       0               0       26      38
Birth       ResPak           PAKISTAN                       0               1        2      38
Birth       ResPak           PAKISTAN                       1               0        8      38
Birth       ResPak           PAKISTAN                       1               1        2      38
Birth       SAS-CompFeed     INDIA                          0               0      806    1103
Birth       SAS-CompFeed     INDIA                          0               1       95    1103
Birth       SAS-CompFeed     INDIA                          1               0      179    1103
Birth       SAS-CompFeed     INDIA                          1               1       23    1103
Birth       ZVITAMBO         ZIMBABWE                       0               0    10252   12917
Birth       ZVITAMBO         ZIMBABWE                       0               1     1975   12917
Birth       ZVITAMBO         ZIMBABWE                       1               0      604   12917
Birth       ZVITAMBO         ZIMBABWE                       1               1       86   12917
6 months    CMC-V-BCS-2002   INDIA                          0               0      258     368
6 months    CMC-V-BCS-2002   INDIA                          0               1       34     368
6 months    CMC-V-BCS-2002   INDIA                          1               0       64     368
6 months    CMC-V-BCS-2002   INDIA                          1               1       12     368
6 months    CMIN             BANGLADESH                     0               0      139     243
6 months    CMIN             BANGLADESH                     0               1       12     243
6 months    CMIN             BANGLADESH                     1               0       83     243
6 months    CMIN             BANGLADESH                     1               1        9     243
6 months    COHORTS          GUATEMALA                      0               0      783     963
6 months    COHORTS          GUATEMALA                      0               1       26     963
6 months    COHORTS          GUATEMALA                      1               0      148     963
6 months    COHORTS          GUATEMALA                      1               1        6     963
6 months    COHORTS          INDIA                          0               0     5333    6850
6 months    COHORTS          INDIA                          0               1      701    6850
6 months    COHORTS          INDIA                          1               0      652    6850
6 months    COHORTS          INDIA                          1               1      164    6850
6 months    COHORTS          PHILIPPINES                    0               0     2401    2706
6 months    COHORTS          PHILIPPINES                    0               1      148    2706
6 months    COHORTS          PHILIPPINES                    1               0      144    2706
6 months    COHORTS          PHILIPPINES                    1               1       13    2706
6 months    CONTENT          PERU                           0               0      195     215
6 months    CONTENT          PERU                           0               1        0     215
6 months    CONTENT          PERU                           1               0       20     215
6 months    CONTENT          PERU                           1               1        0     215
6 months    EE               PAKISTAN                       0               0      185     375
6 months    EE               PAKISTAN                       0               1       24     375
6 months    EE               PAKISTAN                       1               0      143     375
6 months    EE               PAKISTAN                       1               1       23     375
6 months    GMS-Nepal        NEPAL                          0               0      431     564
6 months    GMS-Nepal        NEPAL                          0               1       42     564
6 months    GMS-Nepal        NEPAL                          1               0       82     564
6 months    GMS-Nepal        NEPAL                          1               1        9     564
6 months    Guatemala BSC    GUATEMALA                      0               0      227     299
6 months    Guatemala BSC    GUATEMALA                      0               1        1     299
6 months    Guatemala BSC    GUATEMALA                      1               0       68     299
6 months    Guatemala BSC    GUATEMALA                      1               1        3     299
6 months    IRC              INDIA                          0               0      308     408
6 months    IRC              INDIA                          0               1       48     408
6 months    IRC              INDIA                          1               0       46     408
6 months    IRC              INDIA                          1               1        6     408
6 months    JiVitA-3         BANGLADESH                     0               0    10788   16784
6 months    JiVitA-3         BANGLADESH                     0               1      885   16784
6 months    JiVitA-3         BANGLADESH                     1               0     4575   16784
6 months    JiVitA-3         BANGLADESH                     1               1      536   16784
6 months    JiVitA-4         BANGLADESH                     0               0     3296    4833
6 months    JiVitA-4         BANGLADESH                     0               1      177    4833
6 months    JiVitA-4         BANGLADESH                     1               0     1262    4833
6 months    JiVitA-4         BANGLADESH                     1               1       98    4833
6 months    Keneba           GAMBIA                         0               0     1785    2089
6 months    Keneba           GAMBIA                         0               1      108    2089
6 months    Keneba           GAMBIA                         1               0      183    2089
6 months    Keneba           GAMBIA                         1               1       13    2089
6 months    LCNI-5           MALAWI                         0               0      522     839
6 months    LCNI-5           MALAWI                         0               1        8     839
6 months    LCNI-5           MALAWI                         1               0      303     839
6 months    LCNI-5           MALAWI                         1               1        6     839
6 months    MAL-ED           BANGLADESH                     0               0      196     241
6 months    MAL-ED           BANGLADESH                     0               1        6     241
6 months    MAL-ED           BANGLADESH                     1               0       37     241
6 months    MAL-ED           BANGLADESH                     1               1        2     241
6 months    MAL-ED           BRAZIL                         0               0      183     209
6 months    MAL-ED           BRAZIL                         0               1        1     209
6 months    MAL-ED           BRAZIL                         1               0       25     209
6 months    MAL-ED           BRAZIL                         1               1        0     209
6 months    MAL-ED           INDIA                          0               0      182     236
6 months    MAL-ED           INDIA                          0               1       16     236
6 months    MAL-ED           INDIA                          1               0       35     236
6 months    MAL-ED           INDIA                          1               1        3     236
6 months    MAL-ED           NEPAL                          0               0      205     236
6 months    MAL-ED           NEPAL                          0               1        3     236
6 months    MAL-ED           NEPAL                          1               0       27     236
6 months    MAL-ED           NEPAL                          1               1        1     236
6 months    MAL-ED           PERU                           0               0      239     273
6 months    MAL-ED           PERU                           0               1        0     273
6 months    MAL-ED           PERU                           1               0       34     273
6 months    MAL-ED           PERU                           1               1        0     273
6 months    MAL-ED           SOUTH AFRICA                   0               0      221     254
6 months    MAL-ED           SOUTH AFRICA                   0               1        6     254
6 months    MAL-ED           SOUTH AFRICA                   1               0       26     254
6 months    MAL-ED           SOUTH AFRICA                   1               1        1     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0      207     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1        1     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0       39     247
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        0     247
6 months    NIH-Birth        BANGLADESH                     0               0      426     537
6 months    NIH-Birth        BANGLADESH                     0               1       26     537
6 months    NIH-Birth        BANGLADESH                     1               0       76     537
6 months    NIH-Birth        BANGLADESH                     1               1        9     537
6 months    NIH-Crypto       BANGLADESH                     0               0      597     715
6 months    NIH-Crypto       BANGLADESH                     0               1       16     715
6 months    NIH-Crypto       BANGLADESH                     1               0       97     715
6 months    NIH-Crypto       BANGLADESH                     1               1        5     715
6 months    PROBIT           BELARUS                        0               0    15535   15757
6 months    PROBIT           BELARUS                        0               1      106   15757
6 months    PROBIT           BELARUS                        1               0      114   15757
6 months    PROBIT           BELARUS                        1               1        2   15757
6 months    PROVIDE          BANGLADESH                     0               0      523     603
6 months    PROVIDE          BANGLADESH                     0               1       19     603
6 months    PROVIDE          BANGLADESH                     1               0       55     603
6 months    PROVIDE          BANGLADESH                     1               1        6     603
6 months    ResPak           PAKISTAN                       0               0      160     239
6 months    ResPak           PAKISTAN                       0               1       13     239
6 months    ResPak           PAKISTAN                       1               0       53     239
6 months    ResPak           PAKISTAN                       1               1       13     239
6 months    SAS-CompFeed     INDIA                          0               0      868    1334
6 months    SAS-CompFeed     INDIA                          0               1      101    1334
6 months    SAS-CompFeed     INDIA                          1               0      300    1334
6 months    SAS-CompFeed     INDIA                          1               1       65    1334
6 months    SAS-FoodSuppl    INDIA                          0               0      196     380
6 months    SAS-FoodSuppl    INDIA                          0               1       36     380
6 months    SAS-FoodSuppl    INDIA                          1               0      115     380
6 months    SAS-FoodSuppl    INDIA                          1               1       33     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1807    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1       83    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      134    2028
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        4    2028
6 months    ZVITAMBO         ZIMBABWE                       0               0     7395    8505
6 months    ZVITAMBO         ZIMBABWE                       0               1      237    8505
6 months    ZVITAMBO         ZIMBABWE                       1               0      845    8505
6 months    ZVITAMBO         ZIMBABWE                       1               1       28    8505
24 months   CMC-V-BCS-2002   INDIA                          0               0      283     372
24 months   CMC-V-BCS-2002   INDIA                          0               1       12     372
24 months   CMC-V-BCS-2002   INDIA                          1               0       66     372
24 months   CMC-V-BCS-2002   INDIA                          1               1       11     372
24 months   CMIN             BANGLADESH                     0               0      142     243
24 months   CMIN             BANGLADESH                     0               1       11     243
24 months   CMIN             BANGLADESH                     1               0       76     243
24 months   CMIN             BANGLADESH                     1               1       14     243
24 months   COHORTS          GUATEMALA                      0               0      718    1082
24 months   COHORTS          GUATEMALA                      0               1       25    1082
24 months   COHORTS          GUATEMALA                      1               0      314    1082
24 months   COHORTS          GUATEMALA                      1               1       25    1082
24 months   COHORTS          INDIA                          0               0     4267    5291
24 months   COHORTS          INDIA                          0               1      387    5291
24 months   COHORTS          INDIA                          1               0      539    5291
24 months   COHORTS          INDIA                          1               1       98    5291
24 months   COHORTS          PHILIPPINES                    0               0     2162    2449
24 months   COHORTS          PHILIPPINES                    0               1      149    2449
24 months   COHORTS          PHILIPPINES                    1               0      120    2449
24 months   COHORTS          PHILIPPINES                    1               1       18    2449
24 months   CONTENT          PERU                           0               0      146     164
24 months   CONTENT          PERU                           0               1        1     164
24 months   CONTENT          PERU                           1               0       17     164
24 months   CONTENT          PERU                           1               1        0     164
24 months   EE               PAKISTAN                       0               0       90     168
24 months   EE               PAKISTAN                       0               1       10     168
24 months   EE               PAKISTAN                       1               0       48     168
24 months   EE               PAKISTAN                       1               1       20     168
24 months   GMS-Nepal        NEPAL                          0               0      334     487
24 months   GMS-Nepal        NEPAL                          0               1       71     487
24 months   GMS-Nepal        NEPAL                          1               0       62     487
24 months   GMS-Nepal        NEPAL                          1               1       20     487
24 months   IRC              INDIA                          0               0      332     409
24 months   IRC              INDIA                          0               1       26     409
24 months   IRC              INDIA                          1               0       46     409
24 months   IRC              INDIA                          1               1        5     409
24 months   JiVitA-3         BANGLADESH                     0               0     4815    8603
24 months   JiVitA-3         BANGLADESH                     0               1     1099    8603
24 months   JiVitA-3         BANGLADESH                     1               0     1910    8603
24 months   JiVitA-3         BANGLADESH                     1               1      779    8603
24 months   JiVitA-4         BANGLADESH                     0               0     2816    4735
24 months   JiVitA-4         BANGLADESH                     0               1      564    4735
24 months   JiVitA-4         BANGLADESH                     1               0      999    4735
24 months   JiVitA-4         BANGLADESH                     1               1      356    4735
24 months   Keneba           GAMBIA                         0               0     1392    1726
24 months   Keneba           GAMBIA                         0               1      158    1726
24 months   Keneba           GAMBIA                         1               0      143    1726
24 months   Keneba           GAMBIA                         1               1       33    1726
24 months   LCNI-5           MALAWI                         0               0      361     563
24 months   LCNI-5           MALAWI                         0               1        4     563
24 months   LCNI-5           MALAWI                         1               0      192     563
24 months   LCNI-5           MALAWI                         1               1        6     563
24 months   MAL-ED           BANGLADESH                     0               0      160     212
24 months   MAL-ED           BANGLADESH                     0               1       19     212
24 months   MAL-ED           BANGLADESH                     1               0       31     212
24 months   MAL-ED           BANGLADESH                     1               1        2     212
24 months   MAL-ED           BRAZIL                         0               0      147     169
24 months   MAL-ED           BRAZIL                         0               1        3     169
24 months   MAL-ED           BRAZIL                         1               0       19     169
24 months   MAL-ED           BRAZIL                         1               1        0     169
24 months   MAL-ED           INDIA                          0               0      171     227
24 months   MAL-ED           INDIA                          0               1       20     227
24 months   MAL-ED           INDIA                          1               0       29     227
24 months   MAL-ED           INDIA                          1               1        7     227
24 months   MAL-ED           NEPAL                          0               0      198     228
24 months   MAL-ED           NEPAL                          0               1        3     228
24 months   MAL-ED           NEPAL                          1               0       25     228
24 months   MAL-ED           NEPAL                          1               1        2     228
24 months   MAL-ED           PERU                           0               0      173     201
24 months   MAL-ED           PERU                           0               1        1     201
24 months   MAL-ED           PERU                           1               0       24     201
24 months   MAL-ED           PERU                           1               1        3     201
24 months   MAL-ED           SOUTH AFRICA                   0               0      213     238
24 months   MAL-ED           SOUTH AFRICA                   0               1        1     238
24 months   MAL-ED           SOUTH AFRICA                   1               0       24     238
24 months   MAL-ED           SOUTH AFRICA                   1               1        0     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               0      178     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0               1        3     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               0       32     214
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1               1        1     214
24 months   NIH-Birth        BANGLADESH                     0               0      311     428
24 months   NIH-Birth        BANGLADESH                     0               1       43     428
24 months   NIH-Birth        BANGLADESH                     1               0       64     428
24 months   NIH-Birth        BANGLADESH                     1               1       10     428
24 months   NIH-Crypto       BANGLADESH                     0               0      411     514
24 months   NIH-Crypto       BANGLADESH                     0               1       33     514
24 months   NIH-Crypto       BANGLADESH                     1               0       58     514
24 months   NIH-Crypto       BANGLADESH                     1               1       12     514
24 months   PROBIT           BELARUS                        0               0     3926    3970
24 months   PROBIT           BELARUS                        0               1       31    3970
24 months   PROBIT           BELARUS                        1               0       12    3970
24 months   PROBIT           BELARUS                        1               1        1    3970
24 months   PROVIDE          BANGLADESH                     0               0      469     579
24 months   PROVIDE          BANGLADESH                     0               1       50     579
24 months   PROVIDE          BANGLADESH                     1               0       48     579
24 months   PROVIDE          BANGLADESH                     1               1       12     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        6       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ZVITAMBO         ZIMBABWE                       0               0      272     433
24 months   ZVITAMBO         ZIMBABWE                       0               1       59     433
24 months   ZVITAMBO         ZIMBABWE                       1               0       82     433
24 months   ZVITAMBO         ZIMBABWE                       1               1       20     433


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
* agecat: Birth, studyid: Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: CONTENT, country: PERU
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/de8bb1d8-11a7-445e-9100-e061500747b6/62d9b815-19c6-487a-8ba1-4bdbd1024da0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/de8bb1d8-11a7-445e-9100-e061500747b6/62d9b815-19c6-487a-8ba1-4bdbd1024da0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/de8bb1d8-11a7-445e-9100-e061500747b6/62d9b815-19c6-487a-8ba1-4bdbd1024da0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/de8bb1d8-11a7-445e-9100-e061500747b6/62d9b815-19c6-487a-8ba1-4bdbd1024da0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA         0                    NA                0.1790814   0.1692241   0.1889387
Birth       COHORTS          INDIA         1                    NA                0.1447368   0.1093590   0.1801146
Birth       COHORTS          PHILIPPINES   0                    NA                0.1564166   0.1429907   0.1698425
Birth       COHORTS          PHILIPPINES   1                    NA                0.1279070   0.0573074   0.1985066
Birth       EE               PAKISTAN      0                    NA                0.1240876   0.0687255   0.1794497
Birth       EE               PAKISTAN      1                    NA                0.1250000   0.0222203   0.2277797
Birth       GMS-Nepal        NEPAL         0                    NA                0.2105263   0.1770320   0.2440207
Birth       GMS-Nepal        NEPAL         1                    NA                0.1690141   0.0817740   0.2562542
Birth       JiVitA-3         BANGLADESH    0                    NA                0.1098024   0.1042203   0.1153844
Birth       JiVitA-3         BANGLADESH    1                    NA                0.1081353   0.0964811   0.1197894
Birth       JiVitA-4         BANGLADESH    0                    NA                0.0947529   0.0782537   0.1112522
Birth       JiVitA-4         BANGLADESH    1                    NA                0.1224018   0.0837018   0.1611019
Birth       NIH-Birth        BANGLADESH    0                    NA                0.2885375   0.2490256   0.3280495
Birth       NIH-Birth        BANGLADESH    1                    NA                0.3188406   0.2087848   0.4288963
Birth       NIH-Crypto       BANGLADESH    0                    NA                0.2512000   0.2171742   0.2852258
Birth       NIH-Crypto       BANGLADESH    1                    NA                0.1829268   0.0991898   0.2666639
Birth       PROVIDE          BANGLADESH    0                    NA                0.2138493   0.1775479   0.2501506
Birth       PROVIDE          BANGLADESH    1                    NA                0.2926829   0.1532805   0.4320854
Birth       SAS-CompFeed     INDIA         0                    NA                0.1054384   0.0753607   0.1355161
Birth       SAS-CompFeed     INDIA         1                    NA                0.1138614   0.0488329   0.1788899
Birth       ZVITAMBO         ZIMBABWE      0                    NA                0.1615278   0.1550044   0.1680511
Birth       ZVITAMBO         ZIMBABWE      1                    NA                0.1246377   0.0999910   0.1492844
6 months    CMC-V-BCS-2002   INDIA         0                    NA                0.1164384   0.0795988   0.1532779
6 months    CMC-V-BCS-2002   INDIA         1                    NA                0.1578947   0.0758030   0.2399864
6 months    CMIN             BANGLADESH    0                    NA                0.0794702   0.0362411   0.1226993
6 months    CMIN             BANGLADESH    1                    NA                0.0978261   0.0369955   0.1586567
6 months    COHORTS          GUATEMALA     0                    NA                0.0321384   0.0199789   0.0442980
6 months    COHORTS          GUATEMALA     1                    NA                0.0389610   0.0083837   0.0695383
6 months    COHORTS          INDIA         0                    NA                0.1161750   0.1080893   0.1242607
6 months    COHORTS          INDIA         1                    NA                0.2009804   0.1734831   0.2284777
6 months    COHORTS          PHILIPPINES   0                    NA                0.0580620   0.0489817   0.0671423
6 months    COHORTS          PHILIPPINES   1                    NA                0.0828025   0.0396872   0.1259179
6 months    EE               PAKISTAN      0                    NA                0.1148325   0.0715513   0.1581138
6 months    EE               PAKISTAN      1                    NA                0.1385542   0.0859285   0.1911799
6 months    GMS-Nepal        NEPAL         0                    NA                0.0887949   0.0631380   0.1144519
6 months    GMS-Nepal        NEPAL         1                    NA                0.0989011   0.0375108   0.1602914
6 months    IRC              INDIA         0                    NA                0.1348315   0.0993091   0.1703538
6 months    IRC              INDIA         1                    NA                0.1153846   0.0284424   0.2023268
6 months    JiVitA-3         BANGLADESH    0                    NA                0.0758160   0.0705430   0.0810890
6 months    JiVitA-3         BANGLADESH    1                    NA                0.1048718   0.0956121   0.1141316
6 months    JiVitA-4         BANGLADESH    0                    NA                0.0509646   0.0411532   0.0607760
6 months    JiVitA-4         BANGLADESH    1                    NA                0.0720588   0.0526287   0.0914889
6 months    Keneba           GAMBIA        0                    NA                0.0570523   0.0466013   0.0675033
6 months    Keneba           GAMBIA        1                    NA                0.0663265   0.0314795   0.1011735
6 months    LCNI-5           MALAWI        0                    NA                0.0150943   0.0047077   0.0254809
6 months    LCNI-5           MALAWI        1                    NA                0.0194175   0.0040230   0.0348120
6 months    NIH-Birth        BANGLADESH    0                    NA                0.0575221   0.0360371   0.0790072
6 months    NIH-Birth        BANGLADESH    1                    NA                0.1058824   0.0404108   0.1713539
6 months    NIH-Crypto       BANGLADESH    0                    NA                0.0261011   0.0134710   0.0387313
6 months    NIH-Crypto       BANGLADESH    1                    NA                0.0490196   0.0070898   0.0909494
6 months    PROVIDE          BANGLADESH    0                    NA                0.0350554   0.0195587   0.0505520
6 months    PROVIDE          BANGLADESH    1                    NA                0.0983607   0.0235660   0.1731553
6 months    ResPak           PAKISTAN      0                    NA                0.0751445   0.0357785   0.1145105
6 months    ResPak           PAKISTAN      1                    NA                0.1969697   0.1008190   0.2931204
6 months    SAS-CompFeed     INDIA         0                    NA                0.1042312   0.0777378   0.1307245
6 months    SAS-CompFeed     INDIA         1                    NA                0.1780822   0.1433447   0.2128197
6 months    SAS-FoodSuppl    INDIA         0                    NA                0.1551724   0.1085207   0.2018241
6 months    SAS-FoodSuppl    INDIA         1                    NA                0.2229730   0.1558249   0.2901211
6 months    ZVITAMBO         ZIMBABWE      0                    NA                0.0310535   0.0271616   0.0349453
6 months    ZVITAMBO         ZIMBABWE      1                    NA                0.0320733   0.0203848   0.0437618
24 months   CMC-V-BCS-2002   INDIA         0                    NA                0.0406780   0.0181053   0.0632507
24 months   CMC-V-BCS-2002   INDIA         1                    NA                0.1428571   0.0645926   0.2211216
24 months   CMIN             BANGLADESH    0                    NA                0.0718954   0.0308800   0.1129108
24 months   CMIN             BANGLADESH    1                    NA                0.1555556   0.0805229   0.2305883
24 months   COHORTS          GUATEMALA     0                    NA                0.0336474   0.0206756   0.0466191
24 months   COHORTS          GUATEMALA     1                    NA                0.0737463   0.0459118   0.1015809
24 months   COHORTS          INDIA         0                    NA                0.0831543   0.0752207   0.0910878
24 months   COHORTS          INDIA         1                    NA                0.1538462   0.1258249   0.1818674
24 months   COHORTS          PHILIPPINES   0                    NA                0.0644743   0.0544591   0.0744894
24 months   COHORTS          PHILIPPINES   1                    NA                0.1304348   0.0742337   0.1866359
24 months   EE               PAKISTAN      0                    NA                0.1000000   0.0410253   0.1589747
24 months   EE               PAKISTAN      1                    NA                0.2941176   0.1854959   0.4027394
24 months   GMS-Nepal        NEPAL         0                    NA                0.1753086   0.1382393   0.2123779
24 months   GMS-Nepal        NEPAL         1                    NA                0.2439024   0.1508593   0.3369456
24 months   IRC              INDIA         0                    NA                0.0726257   0.0457097   0.0995417
24 months   IRC              INDIA         1                    NA                0.0980392   0.0163267   0.1797517
24 months   JiVitA-3         BANGLADESH    0                    NA                0.1858302   0.1747358   0.1969246
24 months   JiVitA-3         BANGLADESH    1                    NA                0.2896988   0.2715075   0.3078901
24 months   JiVitA-4         BANGLADESH    0                    NA                0.1668639   0.1512902   0.1824376
24 months   JiVitA-4         BANGLADESH    1                    NA                0.2627306   0.2369894   0.2884718
24 months   Keneba           GAMBIA        0                    NA                0.1019355   0.0868686   0.1170024
24 months   Keneba           GAMBIA        1                    NA                0.1875000   0.1298194   0.2451806
24 months   MAL-ED           INDIA         0                    NA                0.1047120   0.0611940   0.1482301
24 months   MAL-ED           INDIA         1                    NA                0.1944444   0.0648755   0.3240134
24 months   NIH-Birth        BANGLADESH    0                    NA                0.1214689   0.0873994   0.1555384
24 months   NIH-Birth        BANGLADESH    1                    NA                0.1351351   0.0571524   0.2131179
24 months   NIH-Crypto       BANGLADESH    0                    NA                0.0743243   0.0499027   0.0987459
24 months   NIH-Crypto       BANGLADESH    1                    NA                0.1714286   0.0830538   0.2598034
24 months   PROVIDE          BANGLADESH    0                    NA                0.0963391   0.0709327   0.1217456
24 months   PROVIDE          BANGLADESH    1                    NA                0.2000000   0.0987004   0.3012996
24 months   ZVITAMBO         ZIMBABWE      0                    NA                0.1782477   0.1369697   0.2195257
24 months   ZVITAMBO         ZIMBABWE      1                    NA                0.1960784   0.1189398   0.2732170


### Parameter: E(Y)


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA         NA                   NA                0.1769740   0.1674681   0.1864799
Birth       COHORTS          PHILIPPINES   NA                   NA                0.1555709   0.1423748   0.1687670
Birth       EE               PAKISTAN      NA                   NA                0.1242938   0.0755526   0.1730349
Birth       GMS-Nepal        NEPAL         NA                   NA                0.2059282   0.1745993   0.2372572
Birth       JiVitA-3         BANGLADESH    NA                   NA                0.1095259   0.1044047   0.1146471
Birth       JiVitA-4         BANGLADESH    NA                   NA                0.0997496   0.0843744   0.1151247
Birth       NIH-Birth        BANGLADESH    NA                   NA                0.2921739   0.2549711   0.3293768
Birth       NIH-Crypto       BANGLADESH    NA                   NA                0.2432815   0.2116319   0.2749310
Birth       PROVIDE          BANGLADESH    NA                   NA                0.2199248   0.1846953   0.2551543
Birth       SAS-CompFeed     INDIA         NA                   NA                0.1069810   0.0760961   0.1378659
Birth       ZVITAMBO         ZIMBABWE      NA                   NA                0.1595572   0.1532418   0.1658725
6 months    CMC-V-BCS-2002   INDIA         NA                   NA                0.1250000   0.0911644   0.1588356
6 months    CMIN             BANGLADESH    NA                   NA                0.0864198   0.0510184   0.1218211
6 months    COHORTS          GUATEMALA     NA                   NA                0.0332295   0.0219033   0.0445557
6 months    COHORTS          INDIA         NA                   NA                0.1262774   0.1184108   0.1341439
6 months    COHORTS          PHILIPPINES   NA                   NA                0.0594974   0.0505830   0.0684118
6 months    EE               PAKISTAN      NA                   NA                0.1253333   0.0917776   0.1588891
6 months    GMS-Nepal        NEPAL         NA                   NA                0.0904255   0.0667359   0.1141152
6 months    IRC              INDIA         NA                   NA                0.1323529   0.0994307   0.1652752
6 months    JiVitA-3         BANGLADESH    NA                   NA                0.0846640   0.0798626   0.0894653
6 months    JiVitA-4         BANGLADESH    NA                   NA                0.0569005   0.0480577   0.0657432
6 months    Keneba           GAMBIA        NA                   NA                0.0579225   0.0479029   0.0679420
6 months    LCNI-5           MALAWI        NA                   NA                0.0166865   0.0080138   0.0253592
6 months    NIH-Birth        BANGLADESH    NA                   NA                0.0651769   0.0442802   0.0860736
6 months    NIH-Crypto       BANGLADESH    NA                   NA                0.0293706   0.0169860   0.0417552
6 months    PROVIDE          BANGLADESH    NA                   NA                0.0414594   0.0255348   0.0573839
6 months    ResPak           PAKISTAN      NA                   NA                0.1087866   0.0692283   0.1483450
6 months    SAS-CompFeed     INDIA         NA                   NA                0.1244378   0.0992652   0.1496104
6 months    SAS-FoodSuppl    INDIA         NA                   NA                0.1815789   0.1427684   0.2203895
6 months    ZVITAMBO         ZIMBABWE      NA                   NA                0.0311581   0.0274654   0.0348509
24 months   CMC-V-BCS-2002   INDIA         NA                   NA                0.0618280   0.0373207   0.0863352
24 months   CMIN             BANGLADESH    NA                   NA                0.1028807   0.0646041   0.1411572
24 months   COHORTS          GUATEMALA     NA                   NA                0.0462107   0.0336957   0.0587258
24 months   COHORTS          INDIA         NA                   NA                0.0916651   0.0838893   0.0994409
24 months   COHORTS          PHILIPPINES   NA                   NA                0.0681911   0.0582056   0.0781766
24 months   EE               PAKISTAN      NA                   NA                0.1785714   0.1204842   0.2366587
24 months   GMS-Nepal        NEPAL         NA                   NA                0.1868583   0.1522030   0.2215136
24 months   IRC              INDIA         NA                   NA                0.0757946   0.0501131   0.1014762
24 months   JiVitA-3         BANGLADESH    NA                   NA                0.2182959   0.2084450   0.2281469
24 months   JiVitA-4         BANGLADESH    NA                   NA                0.1942978   0.1810880   0.2075076
24 months   Keneba           GAMBIA        NA                   NA                0.1106605   0.0958563   0.1254646
24 months   MAL-ED           INDIA         NA                   NA                0.1189427   0.0767376   0.1611478
24 months   NIH-Birth        BANGLADESH    NA                   NA                0.1238318   0.0925894   0.1550741
24 months   NIH-Crypto       BANGLADESH    NA                   NA                0.0875486   0.0630907   0.1120065
24 months   PROVIDE          BANGLADESH    NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ZVITAMBO         ZIMBABWE      NA                   NA                0.1824480   0.1460286   0.2188675


### Parameter: RR


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       COHORTS          INDIA         0                    0                 1.0000000   1.0000000   1.000000
Birth       COHORTS          INDIA         1                    0                 0.8082183   0.6290953   1.038343
Birth       COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000   1.000000
Birth       COHORTS          PHILIPPINES   1                    0                 0.8177326   0.4677531   1.429571
Birth       EE               PAKISTAN      0                    0                 1.0000000   1.0000000   1.000000
Birth       EE               PAKISTAN      1                    0                 1.0073529   0.3952817   2.567182
Birth       GMS-Nepal        NEPAL         0                    0                 1.0000000   1.0000000   1.000000
Birth       GMS-Nepal        NEPAL         1                    0                 0.8028169   0.4677776   1.377824
Birth       JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
Birth       JiVitA-3         BANGLADESH    1                    0                 0.9848172   0.8759940   1.107159
Birth       JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
Birth       JiVitA-4         BANGLADESH    1                    0                 1.2918001   0.9036534   1.846668
Birth       NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
Birth       NIH-Birth        BANGLADESH    1                    0                 1.1050228   0.7622506   1.601935
Birth       NIH-Crypto       BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
Birth       NIH-Crypto       BANGLADESH    1                    0                 0.7282119   0.4517864   1.173768
Birth       PROVIDE          BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
Birth       PROVIDE          BANGLADESH    1                    0                 1.3686411   0.8254559   2.269265
Birth       SAS-CompFeed     INDIA         0                    0                 1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed     INDIA         1                    0                 1.0798854   0.6299820   1.851088
Birth       ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000   1.000000
Birth       ZVITAMBO         ZIMBABWE      1                    0                 0.7716177   0.6305929   0.944181
6 months    CMC-V-BCS-2002   INDIA         0                    0                 1.0000000   1.0000000   1.000000
6 months    CMC-V-BCS-2002   INDIA         1                    0                 1.3560372   0.7378259   2.492237
6 months    CMIN             BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
6 months    CMIN             BANGLADESH    1                    0                 1.2309783   0.5388246   2.812246
6 months    COHORTS          GUATEMALA     0                    0                 1.0000000   1.0000000   1.000000
6 months    COHORTS          GUATEMALA     1                    0                 1.2122877   0.5072524   2.897259
6 months    COHORTS          INDIA         0                    0                 1.0000000   1.0000000   1.000000
6 months    COHORTS          INDIA         1                    0                 1.7299796   1.4838030   2.016999
6 months    COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000   1.000000
6 months    COHORTS          PHILIPPINES   1                    0                 1.4261060   0.8280089   2.456228
6 months    EE               PAKISTAN      0                    0                 1.0000000   1.0000000   1.000000
6 months    EE               PAKISTAN      1                    0                 1.2065763   0.7065901   2.060355
6 months    GMS-Nepal        NEPAL         0                    0                 1.0000000   1.0000000   1.000000
6 months    GMS-Nepal        NEPAL         1                    0                 1.1138148   0.5616423   2.208849
6 months    IRC              INDIA         0                    0                 1.0000000   1.0000000   1.000000
6 months    IRC              INDIA         1                    0                 0.8557692   0.3852033   1.901180
6 months    JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
6 months    JiVitA-3         BANGLADESH    1                    0                 1.3832419   1.2422714   1.540209
6 months    JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
6 months    JiVitA-4         BANGLADESH    1                    0                 1.4139000   1.0112634   1.976847
6 months    Keneba           GAMBIA        0                    0                 1.0000000   1.0000000   1.000000
6 months    Keneba           GAMBIA        1                    0                 1.1625567   0.6664551   2.027951
6 months    LCNI-5           MALAWI        0                    0                 1.0000000   1.0000000   1.000000
6 months    LCNI-5           MALAWI        1                    0                 1.2864078   0.4502572   3.675333
6 months    NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
6 months    NIH-Birth        BANGLADESH    1                    0                 1.8407240   0.8938320   3.790718
6 months    NIH-Crypto       BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
6 months    NIH-Crypto       BANGLADESH    1                    0                 1.8780637   0.7029196   5.017819
6 months    PROVIDE          BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
6 months    PROVIDE          BANGLADESH    1                    0                 2.8058671   1.1643246   6.761766
6 months    ResPak           PAKISTAN      0                    0                 1.0000000   1.0000000   1.000000
6 months    ResPak           PAKISTAN      1                    0                 2.6212121   1.2809284   5.363885
6 months    SAS-CompFeed     INDIA         0                    0                 1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed     INDIA         1                    0                 1.7085311   1.3771315   2.119680
6 months    SAS-FoodSuppl    INDIA         0                    0                 1.0000000   1.0000000   1.000000
6 months    SAS-FoodSuppl    INDIA         1                    0                 1.4369369   0.9389260   2.199095
6 months    ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000   1.000000
6 months    ZVITAMBO         ZIMBABWE      1                    0                 1.0328418   0.7025311   1.518455
24 months   CMC-V-BCS-2002   INDIA         0                    0                 1.0000000   1.0000000   1.000000
24 months   CMC-V-BCS-2002   INDIA         1                    0                 3.5119048   1.6102202   7.659496
24 months   CMIN             BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
24 months   CMIN             BANGLADESH    1                    0                 2.1636364   1.0250241   4.567036
24 months   COHORTS          GUATEMALA     0                    0                 1.0000000   1.0000000   1.000000
24 months   COHORTS          GUATEMALA     1                    0                 2.1917404   1.2778438   3.759244
24 months   COHORTS          INDIA         0                    0                 1.0000000   1.0000000   1.000000
24 months   COHORTS          INDIA         1                    0                 1.8501292   1.5062787   2.272473
24 months   COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000   1.000000
24 months   COHORTS          PHILIPPINES   1                    0                 2.0230522   1.2796504   3.198327
24 months   EE               PAKISTAN      0                    0                 1.0000000   1.0000000   1.000000
24 months   EE               PAKISTAN      1                    0                 2.9411765   1.4666325   5.898219
24 months   GMS-Nepal        NEPAL         0                    0                 1.0000000   1.0000000   1.000000
24 months   GMS-Nepal        NEPAL         1                    0                 1.3912745   0.8994778   2.151965
24 months   IRC              INDIA         0                    0                 1.0000000   1.0000000   1.000000
24 months   IRC              INDIA         1                    0                 1.3499246   0.5422092   3.360873
24 months   JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
24 months   JiVitA-3         BANGLADESH    1                    0                 1.5589432   1.4329788   1.695980
24 months   JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
24 months   JiVitA-4         BANGLADESH    1                    0                 1.5745204   1.3734556   1.805020
24 months   Keneba           GAMBIA        0                    0                 1.0000000   1.0000000   1.000000
24 months   Keneba           GAMBIA        1                    0                 1.8393987   1.3075327   2.587612
24 months   MAL-ED           INDIA         0                    0                 1.0000000   1.0000000   1.000000
24 months   MAL-ED           INDIA         1                    0                 1.8569444   0.8467057   4.072540
24 months   NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
24 months   NIH-Birth        BANGLADESH    1                    0                 1.1125079   0.5856653   2.113278
24 months   NIH-Crypto       BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
24 months   NIH-Crypto       BANGLADESH    1                    0                 2.3064935   1.2515673   4.250600
24 months   PROVIDE          BANGLADESH    0                    0                 1.0000000   1.0000000   1.000000
24 months   PROVIDE          BANGLADESH    1                    0                 2.0760000   1.1728091   3.674746
24 months   ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000   1.000000
24 months   ZVITAMBO         ZIMBABWE      1                    0                 1.1000332   0.6968644   1.736454


### Parameter: PAR


agecat      studyid          country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA         0                    NA                -0.0021074   -0.0043702    0.0001554
Birth       COHORTS          PHILIPPINES   0                    NA                -0.0008458   -0.0029849    0.0012934
Birth       EE               PAKISTAN      0                    NA                 0.0002062   -0.0261762    0.0265886
Birth       GMS-Nepal        NEPAL         0                    NA                -0.0045981   -0.0149980    0.0058018
Birth       JiVitA-3         BANGLADESH    0                    NA                -0.0002764   -0.0023812    0.0018283
Birth       JiVitA-4         BANGLADESH    0                    NA                 0.0049967   -0.0025883    0.0125816
Birth       NIH-Birth        BANGLADESH    0                    NA                 0.0036364   -0.0104188    0.0176915
Birth       NIH-Crypto       BANGLADESH    0                    NA                -0.0079185   -0.0185251    0.0026880
Birth       PROVIDE          BANGLADESH    0                    NA                 0.0060755   -0.0051693    0.0173203
Birth       SAS-CompFeed     INDIA         0                    NA                 0.0015426   -0.0096062    0.0126913
Birth       ZVITAMBO         ZIMBABWE      0                    NA                -0.0019706   -0.0033400   -0.0006012
6 months    CMC-V-BCS-2002   INDIA         0                    NA                 0.0085616   -0.0101001    0.0272234
6 months    CMIN             BANGLADESH    0                    NA                 0.0069496   -0.0213264    0.0352255
6 months    COHORTS          GUATEMALA     0                    NA                 0.0010910   -0.0041736    0.0063557
6 months    COHORTS          INDIA         0                    NA                 0.0101024    0.0066267    0.0135781
6 months    COHORTS          PHILIPPINES   0                    NA                 0.0014354   -0.0011302    0.0040011
6 months    EE               PAKISTAN      0                    NA                 0.0105008   -0.0196851    0.0406867
6 months    GMS-Nepal        NEPAL         0                    NA                 0.0016306   -0.0091092    0.0123704
6 months    IRC              INDIA         0                    NA                -0.0024785   -0.0144652    0.0095081
6 months    JiVitA-3         BANGLADESH    0                    NA                 0.0088480    0.0057297    0.0119662
6 months    JiVitA-4         BANGLADESH    0                    NA                 0.0059359   -0.0003007    0.0121725
6 months    Keneba           GAMBIA        0                    NA                 0.0008702   -0.0025452    0.0042855
6 months    LCNI-5           MALAWI        0                    NA                 0.0015922   -0.0052488    0.0084332
6 months    NIH-Birth        BANGLADESH    0                    NA                 0.0076548   -0.0033541    0.0186637
6 months    NIH-Crypto       BANGLADESH    0                    NA                 0.0032695   -0.0030052    0.0095442
6 months    PROVIDE          BANGLADESH    0                    NA                 0.0064040   -0.0014720    0.0142800
6 months    ResPak           PAKISTAN      0                    NA                 0.0336421    0.0041282    0.0631561
6 months    SAS-CompFeed     INDIA         0                    NA                 0.0202066    0.0128666    0.0275467
6 months    SAS-FoodSuppl    INDIA         0                    NA                 0.0264065   -0.0056116    0.0584247
6 months    ZVITAMBO         ZIMBABWE      0                    NA                 0.0001047   -0.0011599    0.0013692
24 months   CMC-V-BCS-2002   INDIA         0                    NA                 0.0211500    0.0037715    0.0385285
24 months   CMIN             BANGLADESH    0                    NA                 0.0309852   -0.0010920    0.0630625
24 months   COHORTS          GUATEMALA     0                    NA                 0.0125633    0.0028783    0.0222483
24 months   COHORTS          INDIA         0                    NA                 0.0085108    0.0049503    0.0120714
24 months   COHORTS          PHILIPPINES   0                    NA                 0.0037168    0.0004441    0.0069896
24 months   EE               PAKISTAN      0                    NA                 0.0785714    0.0264979    0.1306449
24 months   GMS-Nepal        NEPAL         0                    NA                 0.0115497   -0.0054680    0.0285674
24 months   IRC              INDIA         0                    NA                 0.0031689   -0.0075896    0.0139274
24 months   JiVitA-3         BANGLADESH    0                    NA                 0.0324657    0.0258967    0.0390347
24 months   JiVitA-4         BANGLADESH    0                    NA                 0.0274339    0.0186628    0.0362049
24 months   Keneba           GAMBIA        0                    NA                 0.0087250    0.0025244    0.0149256
24 months   MAL-ED           INDIA         0                    NA                 0.0142307   -0.0078630    0.0363244
24 months   NIH-Birth        BANGLADESH    0                    NA                 0.0023628   -0.0123589    0.0170846
24 months   NIH-Crypto       BANGLADESH    0                    NA                 0.0132243    0.0004094    0.0260392
24 months   PROVIDE          BANGLADESH    0                    NA                 0.0107421   -0.0003827    0.0218668
24 months   ZVITAMBO         ZIMBABWE      0                    NA                 0.0042003   -0.0164213    0.0248220


### Parameter: PAF


agecat      studyid          country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA         0                    NA                -0.0119078   -0.0247657    0.0007889
Birth       COHORTS          PHILIPPINES   0                    NA                -0.0054364   -0.0192764    0.0082156
Birth       EE               PAKISTAN      0                    NA                 0.0016589   -0.2348505    0.1928700
Birth       GMS-Nepal        NEPAL         0                    NA                -0.0223285   -0.0740430    0.0268959
Birth       JiVitA-3         BANGLADESH    0                    NA                -0.0025239   -0.0219239    0.0165078
Birth       JiVitA-4         BANGLADESH    0                    NA                 0.0500920   -0.0287202    0.1228662
Birth       NIH-Birth        BANGLADESH    0                    NA                 0.0124459   -0.0368453    0.0593938
Birth       NIH-Crypto       BANGLADESH    0                    NA                -0.0325488   -0.0770081    0.0100751
Birth       PROVIDE          BANGLADESH    0                    NA                 0.0276255   -0.0247817    0.0773526
Birth       SAS-CompFeed     INDIA         0                    NA                 0.0144190   -0.0944248    0.1124379
Birth       ZVITAMBO         ZIMBABWE      0                    NA                -0.0123504   -0.0209608   -0.0038126
6 months    CMC-V-BCS-2002   INDIA         0                    NA                 0.0684932   -0.0924361    0.2057156
6 months    CMIN             BANGLADESH    0                    NA                 0.0804163   -0.3105913    0.3547689
6 months    COHORTS          GUATEMALA     0                    NA                 0.0328337   -0.1388794    0.1786571
6 months    COHORTS          INDIA         0                    NA                 0.0800014    0.0524044    0.1067946
6 months    COHORTS          PHILIPPINES   0                    NA                 0.0241259   -0.0198244    0.0661821
6 months    EE               PAKISTAN      0                    NA                 0.0837830   -0.1906799    0.2949796
6 months    GMS-Nepal        NEPAL         0                    NA                 0.0180326   -0.1081330    0.1298337
6 months    IRC              INDIA         0                    NA                -0.0187266   -0.1133497    0.0678546
6 months    JiVitA-3         BANGLADESH    0                    NA                 0.1045070    0.0674401    0.1401007
6 months    JiVitA-4         BANGLADESH    0                    NA                 0.1043206   -0.0101528    0.2058216
6 months    Keneba           GAMBIA        0                    NA                 0.0150227   -0.0456888    0.0722094
6 months    LCNI-5           MALAWI        0                    NA                 0.0954178   -0.4186525    0.4232069
6 months    NIH-Birth        BANGLADESH    0                    NA                 0.1174463   -0.0642104    0.2680948
6 months    NIH-Crypto       BANGLADESH    0                    NA                 0.1113183   -0.1239256    0.2973243
6 months    PROVIDE          BANGLADESH    0                    NA                 0.1544649   -0.0475894    0.3175480
6 months    ResPak           PAKISTAN      0                    NA                 0.3092486    0.0063226    0.5198265
6 months    SAS-CompFeed     INDIA         0                    NA                 0.1623833    0.0908720    0.2282695
6 months    SAS-FoodSuppl    INDIA         0                    NA                 0.1454273   -0.0483166    0.3033645
6 months    ZVITAMBO         ZIMBABWE      0                    NA                 0.0033597   -0.0380610    0.0431277
24 months   CMC-V-BCS-2002   INDIA         0                    NA                 0.3420781    0.0387827    0.5496739
24 months   CMIN             BANGLADESH    0                    NA                 0.3011765   -0.0649414    0.5414261
24 months   COHORTS          GUATEMALA     0                    NA                 0.2718708    0.0453886    0.4446199
24 months   COHORTS          INDIA         0                    NA                 0.0928469    0.0538466    0.1302395
24 months   COHORTS          PHILIPPINES   0                    NA                 0.0545063    0.0058787    0.1007552
24 months   EE               PAKISTAN      0                    NA                 0.4400000    0.1031968    0.6503135
24 months   GMS-Nepal        NEPAL         0                    NA                 0.0618098   -0.0333767    0.1482285
24 months   IRC              INDIA         0                    NA                 0.0418093   -0.1104940    0.1732244
24 months   JiVitA-3         BANGLADESH    0                    NA                 0.1487234    0.1182370    0.1781557
24 months   JiVitA-4         BANGLADESH    0                    NA                 0.1411950    0.0941623    0.1857857
24 months   Keneba           GAMBIA        0                    NA                 0.0788448    0.0218912    0.1324821
24 months   MAL-ED           INDIA         0                    NA                 0.1196432   -0.0825540    0.2840744
24 months   NIH-Birth        BANGLADESH    0                    NA                 0.0190811   -0.1072287    0.1309818
24 months   NIH-Crypto       BANGLADESH    0                    NA                 0.1510511   -0.0025595    0.2811256
24 months   PROVIDE          BANGLADESH    0                    NA                 0.1003170   -0.0074257    0.1965368
24 months   ZVITAMBO         ZIMBABWE      0                    NA                 0.0230219   -0.0967442    0.1297094
