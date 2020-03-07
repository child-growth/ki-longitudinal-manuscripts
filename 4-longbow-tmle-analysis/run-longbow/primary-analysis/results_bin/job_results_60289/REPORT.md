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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/411cc35e-f7e8-4398-996e-97ee48042ea8/4147b22f-8a5f-4831-b132-248352603938/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/411cc35e-f7e8-4398-996e-97ee48042ea8/4147b22f-8a5f-4831-b132-248352603938/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/411cc35e-f7e8-4398-996e-97ee48042ea8/4147b22f-8a5f-4831-b132-248352603938/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/411cc35e-f7e8-4398-996e-97ee48042ea8/4147b22f-8a5f-4831-b132-248352603938/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA         0                    NA                0.1793434   0.1694860   0.1892008
Birth       COHORTS          INDIA         1                    NA                0.1385596   0.1026661   0.1744530
Birth       COHORTS          PHILIPPINES   0                    NA                0.1564775   0.1430510   0.1699040
Birth       COHORTS          PHILIPPINES   1                    NA                0.1244151   0.0537950   0.1950352
Birth       EE               PAKISTAN      0                    NA                0.1240876   0.0687255   0.1794497
Birth       EE               PAKISTAN      1                    NA                0.1250000   0.0222203   0.2277797
Birth       GMS-Nepal        NEPAL         0                    NA                0.2104660   0.1769494   0.2439826
Birth       GMS-Nepal        NEPAL         1                    NA                0.1679367   0.0773511   0.2585222
Birth       JiVitA-3         BANGLADESH    0                    NA                0.1100552   0.1044427   0.1156678
Birth       JiVitA-3         BANGLADESH    1                    NA                0.1083676   0.0966338   0.1201014
Birth       JiVitA-4         BANGLADESH    0                    NA                0.0945484   0.0780613   0.1110356
Birth       JiVitA-4         BANGLADESH    1                    NA                0.1246817   0.0857407   0.1636227
Birth       NIH-Birth        BANGLADESH    0                    NA                0.2882129   0.2487144   0.3277114
Birth       NIH-Birth        BANGLADESH    1                    NA                0.3119428   0.2013756   0.4225100
Birth       NIH-Crypto       BANGLADESH    0                    NA                0.2517942   0.2177338   0.2858547
Birth       NIH-Crypto       BANGLADESH    1                    NA                0.1842714   0.0977517   0.2707910
Birth       PROVIDE          BANGLADESH    0                    NA                0.2144736   0.1781045   0.2508428
Birth       PROVIDE          BANGLADESH    1                    NA                0.2881261   0.1336993   0.4425528
Birth       SAS-CompFeed     INDIA         0                    NA                0.1054534   0.0755575   0.1353493
Birth       SAS-CompFeed     INDIA         1                    NA                0.1119608   0.0454395   0.1784822
Birth       ZVITAMBO         ZIMBABWE      0                    NA                0.1612653   0.1547413   0.1677892
Birth       ZVITAMBO         ZIMBABWE      1                    NA                0.1303141   0.1038463   0.1567819
6 months    CMC-V-BCS-2002   INDIA         0                    NA                0.1148251   0.0782243   0.1514259
6 months    CMC-V-BCS-2002   INDIA         1                    NA                0.1601535   0.0766630   0.2436440
6 months    CMIN             BANGLADESH    0                    NA                0.0794702   0.0362411   0.1226993
6 months    CMIN             BANGLADESH    1                    NA                0.0978261   0.0369955   0.1586567
6 months    COHORTS          GUATEMALA     0                    NA                0.0321384   0.0199789   0.0442980
6 months    COHORTS          GUATEMALA     1                    NA                0.0389610   0.0083837   0.0695383
6 months    COHORTS          INDIA         0                    NA                0.1167290   0.1086338   0.1248241
6 months    COHORTS          INDIA         1                    NA                0.1988703   0.1712497   0.2264910
6 months    COHORTS          PHILIPPINES   0                    NA                0.0581156   0.0490276   0.0672037
6 months    COHORTS          PHILIPPINES   1                    NA                0.0829255   0.0380353   0.1278157
6 months    EE               PAKISTAN      0                    NA                0.1075431   0.0651571   0.1499290
6 months    EE               PAKISTAN      1                    NA                0.1453118   0.0930203   0.1976033
6 months    GMS-Nepal        NEPAL         0                    NA                0.0887949   0.0631380   0.1144519
6 months    GMS-Nepal        NEPAL         1                    NA                0.0989011   0.0375108   0.1602914
6 months    IRC              INDIA         0                    NA                0.1348315   0.0993091   0.1703538
6 months    IRC              INDIA         1                    NA                0.1153846   0.0284424   0.2023268
6 months    JiVitA-3         BANGLADESH    0                    NA                0.0765743   0.0712153   0.0819333
6 months    JiVitA-3         BANGLADESH    1                    NA                0.1043206   0.0949136   0.1137275
6 months    JiVitA-4         BANGLADESH    0                    NA                0.0518160   0.0420250   0.0616071
6 months    JiVitA-4         BANGLADESH    1                    NA                0.0688901   0.0491675   0.0886127
6 months    Keneba           GAMBIA        0                    NA                0.0566872   0.0462664   0.0671080
6 months    Keneba           GAMBIA        1                    NA                0.0724120   0.0352505   0.1095735
6 months    LCNI-5           MALAWI        0                    NA                0.0150943   0.0047077   0.0254809
6 months    LCNI-5           MALAWI        1                    NA                0.0194175   0.0040230   0.0348120
6 months    NIH-Birth        BANGLADESH    0                    NA                0.0575221   0.0360371   0.0790072
6 months    NIH-Birth        BANGLADESH    1                    NA                0.1058824   0.0404108   0.1713539
6 months    NIH-Crypto       BANGLADESH    0                    NA                0.0261011   0.0134710   0.0387313
6 months    NIH-Crypto       BANGLADESH    1                    NA                0.0490196   0.0070898   0.0909494
6 months    PROVIDE          BANGLADESH    0                    NA                0.0350554   0.0195587   0.0505520
6 months    PROVIDE          BANGLADESH    1                    NA                0.0983607   0.0235660   0.1731553
6 months    ResPak           PAKISTAN      0                    NA                0.0754989   0.0351675   0.1158303
6 months    ResPak           PAKISTAN      1                    NA                0.2333713   0.1227181   0.3440244
6 months    SAS-CompFeed     INDIA         0                    NA                0.1040509   0.0771109   0.1309909
6 months    SAS-CompFeed     INDIA         1                    NA                0.1760553   0.1401911   0.2119196
6 months    SAS-FoodSuppl    INDIA         0                    NA                0.1538916   0.1071183   0.2006648
6 months    SAS-FoodSuppl    INDIA         1                    NA                0.2206641   0.1532681   0.2880600
6 months    ZVITAMBO         ZIMBABWE      0                    NA                0.0310429   0.0271480   0.0349377
6 months    ZVITAMBO         ZIMBABWE      1                    NA                0.0326145   0.0199954   0.0452336
24 months   CMC-V-BCS-2002   INDIA         0                    NA                0.0416139   0.0184744   0.0647534
24 months   CMC-V-BCS-2002   INDIA         1                    NA                0.1407172   0.0576130   0.2238214
24 months   CMIN             BANGLADESH    0                    NA                0.0706921   0.0296340   0.1117502
24 months   CMIN             BANGLADESH    1                    NA                0.1618177   0.0866525   0.2369828
24 months   COHORTS          GUATEMALA     0                    NA                0.0338309   0.0207647   0.0468972
24 months   COHORTS          GUATEMALA     1                    NA                0.0720478   0.0446149   0.0994806
24 months   COHORTS          INDIA         0                    NA                0.0840744   0.0761363   0.0920125
24 months   COHORTS          INDIA         1                    NA                0.1433190   0.1152763   0.1713616
24 months   COHORTS          PHILIPPINES   0                    NA                0.0647090   0.0546713   0.0747467
24 months   COHORTS          PHILIPPINES   1                    NA                0.1348791   0.0769420   0.1928162
24 months   EE               PAKISTAN      0                    NA                0.0973712   0.0380430   0.1566995
24 months   EE               PAKISTAN      1                    NA                0.2948782   0.1835055   0.4062508
24 months   GMS-Nepal        NEPAL         0                    NA                0.1751456   0.1380025   0.2122887
24 months   GMS-Nepal        NEPAL         1                    NA                0.2463913   0.1499778   0.3428047
24 months   IRC              INDIA         0                    NA                0.0726257   0.0457097   0.0995417
24 months   IRC              INDIA         1                    NA                0.0980392   0.0163267   0.1797517
24 months   JiVitA-3         BANGLADESH    0                    NA                0.1848141   0.1736792   0.1959490
24 months   JiVitA-3         BANGLADESH    1                    NA                0.2942843   0.2756400   0.3129287
24 months   JiVitA-4         BANGLADESH    0                    NA                0.1669363   0.1513218   0.1825507
24 months   JiVitA-4         BANGLADESH    1                    NA                0.2618096   0.2362798   0.2873394
24 months   Keneba           GAMBIA        0                    NA                0.1018814   0.0868330   0.1169298
24 months   Keneba           GAMBIA        1                    NA                0.1919856   0.1311896   0.2527816
24 months   MAL-ED           INDIA         0                    NA                0.1047120   0.0611940   0.1482301
24 months   MAL-ED           INDIA         1                    NA                0.1944444   0.0648755   0.3240134
24 months   NIH-Birth        BANGLADESH    0                    NA                0.1215033   0.0874593   0.1555473
24 months   NIH-Birth        BANGLADESH    1                    NA                0.1417485   0.0617996   0.2216974
24 months   NIH-Crypto       BANGLADESH    0                    NA                0.0740392   0.0496127   0.0984658
24 months   NIH-Crypto       BANGLADESH    1                    NA                0.1617472   0.0726562   0.2508382
24 months   PROVIDE          BANGLADESH    0                    NA                0.0962736   0.0708463   0.1217009
24 months   PROVIDE          BANGLADESH    1                    NA                0.2151739   0.1078941   0.3224536
24 months   ZVITAMBO         ZIMBABWE      0                    NA                0.1794968   0.1381946   0.2207990
24 months   ZVITAMBO         ZIMBABWE      1                    NA                0.1858633   0.1079667   0.2637599


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


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       COHORTS          INDIA         1                    0                 0.7725936   0.5928863   1.0067713
Birth       COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
Birth       COHORTS          PHILIPPINES   1                    0                 0.7950991   0.4478950   1.4114528
Birth       EE               PAKISTAN      0                    0                 1.0000000   1.0000000   1.0000000
Birth       EE               PAKISTAN      1                    0                 1.0073529   0.3952817   2.5671818
Birth       GMS-Nepal        NEPAL         0                    0                 1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL         1                    0                 0.7979278   0.4546176   1.4004930
Birth       JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH    1                    0                 0.9846660   0.8755285   1.1074078
Birth       JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       JiVitA-4         BANGLADESH    1                    0                 1.3187072   0.9253364   1.8793044
Birth       NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       NIH-Birth        BANGLADESH    1                    0                 1.0823347   0.7409554   1.5809970
Birth       NIH-Crypto       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto       BANGLADESH    1                    0                 0.7318331   0.4485470   1.1940325
Birth       PROVIDE          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH    1                    0                 1.3434101   0.7664361   2.3547308
Birth       SAS-CompFeed     INDIA         0                    0                 1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed     INDIA         1                    0                 1.0617093   0.6082852   1.8531220
Birth       ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO         ZIMBABWE      1                    0                 0.8080730   0.6569587   0.9939469
6 months    CMC-V-BCS-2002   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    CMC-V-BCS-2002   INDIA         1                    0                 1.3947603   0.7564073   2.5718369
6 months    CMIN             BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    CMIN             BANGLADESH    1                    0                 1.2309783   0.5388246   2.8122463
6 months    COHORTS          GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
6 months    COHORTS          GUATEMALA     1                    0                 1.2122877   0.5072524   2.8972591
6 months    COHORTS          INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    COHORTS          INDIA         1                    0                 1.7036934   1.4588081   1.9896868
6 months    COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
6 months    COHORTS          PHILIPPINES   1                    0                 1.4269043   0.8121174   2.5070953
6 months    EE               PAKISTAN      0                    0                 1.0000000   1.0000000   1.0000000
6 months    EE               PAKISTAN      1                    0                 1.3511963   0.7933905   2.3011765
6 months    GMS-Nepal        NEPAL         0                    0                 1.0000000   1.0000000   1.0000000
6 months    GMS-Nepal        NEPAL         1                    0                 1.1138148   0.5616423   2.2088494
6 months    IRC              INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA         1                    0                 0.8557692   0.3852033   1.9011805
6 months    JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH    1                    0                 1.3623446   1.2218151   1.5190373
6 months    JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    JiVitA-4         BANGLADESH    1                    0                 1.3295142   0.9412231   1.8779903
6 months    Keneba           GAMBIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    Keneba           GAMBIA        1                    0                 1.2773964   0.7406352   2.2031648
6 months    LCNI-5           MALAWI        0                    0                 1.0000000   1.0000000   1.0000000
6 months    LCNI-5           MALAWI        1                    0                 1.2864078   0.4502572   3.6753328
6 months    NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    NIH-Birth        BANGLADESH    1                    0                 1.8407240   0.8938320   3.7907176
6 months    NIH-Crypto       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    NIH-Crypto       BANGLADESH    1                    0                 1.8780637   0.7029196   5.0178194
6 months    PROVIDE          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH    1                    0                 2.8058671   1.1643246   6.7617656
6 months    ResPak           PAKISTAN      0                    0                 1.0000000   1.0000000   1.0000000
6 months    ResPak           PAKISTAN      1                    0                 3.0910557   1.5050907   6.3482054
6 months    SAS-CompFeed     INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed     INDIA         1                    0                 1.6920108   1.3393069   2.1375986
6 months    SAS-FoodSuppl    INDIA         0                    0                 1.0000000   1.0000000   1.0000000
6 months    SAS-FoodSuppl    INDIA         1                    0                 1.4338934   0.9322716   2.2054197
6 months    ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO         ZIMBABWE      1                    0                 1.0506278   0.6995136   1.5779803
24 months   CMC-V-BCS-2002   INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   CMC-V-BCS-2002   INDIA         1                    0                 3.3814956   1.4994970   7.6255655
24 months   CMIN             BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   CMIN             BANGLADESH    1                    0                 2.2890481   1.0937634   4.7905616
24 months   COHORTS          GUATEMALA     0                    0                 1.0000000   1.0000000   1.0000000
24 months   COHORTS          GUATEMALA     1                    0                 2.1296427   1.2376401   3.6645371
24 months   COHORTS          INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   COHORTS          INDIA         1                    0                 1.7046688   1.3721490   2.1177698
24 months   COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000   1.0000000
24 months   COHORTS          PHILIPPINES   1                    0                 2.0843937   1.3202423   3.2908331
24 months   EE               PAKISTAN      0                    0                 1.0000000   1.0000000   1.0000000
24 months   EE               PAKISTAN      1                    0                 3.0283915   1.4735773   6.2237353
24 months   GMS-Nepal        NEPAL         0                    0                 1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL         1                    0                 1.4067799   0.9012054   2.1959808
24 months   IRC              INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA         1                    0                 1.3499246   0.5422092   3.3608731
24 months   JiVitA-3         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH    1                    0                 1.5923259   1.4629867   1.7330998
24 months   JiVitA-4         BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   JiVitA-4         BANGLADESH    1                    0                 1.5683207   1.3680673   1.7978866
24 months   Keneba           GAMBIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   Keneba           GAMBIA        1                    0                 1.8844034   1.3291435   2.6716273
24 months   MAL-ED           INDIA         0                    0                 1.0000000   1.0000000   1.0000000
24 months   MAL-ED           INDIA         1                    0                 1.8569444   0.8467057   4.0725397
24 months   NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   NIH-Birth        BANGLADESH    1                    0                 1.1666221   0.6217151   2.1891170
24 months   NIH-Crypto       BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto       BANGLADESH    1                    0                 2.1846149   1.1497111   4.1510796
24 months   PROVIDE          BANGLADESH    0                    0                 1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH    1                    0                 2.2350248   1.2707330   3.9310662
24 months   ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO         ZIMBABWE      1                    0                 1.0354684   0.6426692   1.6683464


### Parameter: PAR


agecat      studyid          country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA         0                    NA                -0.0023694   -0.0046302   -0.0001085
Birth       COHORTS          PHILIPPINES   0                    NA                -0.0009066   -0.0030258    0.0012126
Birth       EE               PAKISTAN      0                    NA                 0.0002062   -0.0261762    0.0265886
Birth       GMS-Nepal        NEPAL         0                    NA                -0.0045378   -0.0149837    0.0059082
Birth       JiVitA-3         BANGLADESH    0                    NA                -0.0005293   -0.0026366    0.0015780
Birth       JiVitA-4         BANGLADESH    0                    NA                 0.0052011   -0.0023894    0.0127917
Birth       NIH-Birth        BANGLADESH    0                    NA                 0.0039610   -0.0098765    0.0177985
Birth       NIH-Crypto       BANGLADESH    0                    NA                -0.0085128   -0.0193062    0.0022807
Birth       PROVIDE          BANGLADESH    0                    NA                 0.0054512   -0.0057121    0.0166145
Birth       SAS-CompFeed     INDIA         0                    NA                 0.0015276   -0.0097918    0.0128469
Birth       ZVITAMBO         ZIMBABWE      0                    NA                -0.0017081   -0.0030772   -0.0003389
6 months    CMC-V-BCS-2002   INDIA         0                    NA                 0.0101749   -0.0084914    0.0288412
6 months    CMIN             BANGLADESH    0                    NA                 0.0069496   -0.0213264    0.0352255
6 months    COHORTS          GUATEMALA     0                    NA                 0.0010910   -0.0041736    0.0063557
6 months    COHORTS          INDIA         0                    NA                 0.0095484    0.0060783    0.0130186
6 months    COHORTS          PHILIPPINES   0                    NA                 0.0013818   -0.0011929    0.0039565
6 months    EE               PAKISTAN      0                    NA                 0.0177903   -0.0115503    0.0471308
6 months    GMS-Nepal        NEPAL         0                    NA                 0.0016306   -0.0091092    0.0123704
6 months    IRC              INDIA         0                    NA                -0.0024785   -0.0144652    0.0095081
6 months    JiVitA-3         BANGLADESH    0                    NA                 0.0080897    0.0049173    0.0112620
6 months    JiVitA-4         BANGLADESH    0                    NA                 0.0050844   -0.0011199    0.0112888
6 months    Keneba           GAMBIA        0                    NA                 0.0012353   -0.0021739    0.0046445
6 months    LCNI-5           MALAWI        0                    NA                 0.0015922   -0.0052488    0.0084332
6 months    NIH-Birth        BANGLADESH    0                    NA                 0.0076548   -0.0033541    0.0186637
6 months    NIH-Crypto       BANGLADESH    0                    NA                 0.0032695   -0.0030052    0.0095442
6 months    PROVIDE          BANGLADESH    0                    NA                 0.0064040   -0.0014720    0.0142800
6 months    ResPak           PAKISTAN      0                    NA                 0.0332877    0.0027813    0.0637942
6 months    SAS-CompFeed     INDIA         0                    NA                 0.0203868    0.0130424    0.0277313
6 months    SAS-FoodSuppl    INDIA         0                    NA                 0.0276874   -0.0044006    0.0597754
6 months    ZVITAMBO         ZIMBABWE      0                    NA                 0.0001153   -0.0011521    0.0013826
24 months   CMC-V-BCS-2002   INDIA         0                    NA                 0.0202141    0.0025926    0.0378355
24 months   CMIN             BANGLADESH    0                    NA                 0.0321885    0.0007292    0.0636479
24 months   COHORTS          GUATEMALA     0                    NA                 0.0123798    0.0026232    0.0221364
24 months   COHORTS          INDIA         0                    NA                 0.0075907    0.0040417    0.0111397
24 months   COHORTS          PHILIPPINES   0                    NA                 0.0034821    0.0002127    0.0067514
24 months   EE               PAKISTAN      0                    NA                 0.0812002    0.0284702    0.1339302
24 months   GMS-Nepal        NEPAL         0                    NA                 0.0117128   -0.0053552    0.0287807
24 months   IRC              INDIA         0                    NA                 0.0031689   -0.0075896    0.0139274
24 months   JiVitA-3         BANGLADESH    0                    NA                 0.0334818    0.0267577    0.0402059
24 months   JiVitA-4         BANGLADESH    0                    NA                 0.0273615    0.0186494    0.0360737
24 months   Keneba           GAMBIA        0                    NA                 0.0087791    0.0025895    0.0149688
24 months   MAL-ED           INDIA         0                    NA                 0.0142307   -0.0078630    0.0363244
24 months   NIH-Birth        BANGLADESH    0                    NA                 0.0023284   -0.0123366    0.0169935
24 months   NIH-Crypto       BANGLADESH    0                    NA                 0.0135094    0.0006557    0.0263631
24 months   PROVIDE          BANGLADESH    0                    NA                 0.0108076   -0.0003283    0.0219434
24 months   ZVITAMBO         ZIMBABWE      0                    NA                 0.0029512   -0.0175802    0.0234826


### Parameter: PAF


agecat      studyid          country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA         0                    NA                -0.0133883   -0.0262359   -0.0007015
Birth       COHORTS          PHILIPPINES   0                    NA                -0.0058277   -0.0195368    0.0076971
Birth       EE               PAKISTAN      0                    NA                 0.0016589   -0.2348505    0.1928700
Birth       GMS-Nepal        NEPAL         0                    NA                -0.0220356   -0.0739820    0.0273983
Birth       JiVitA-3         BANGLADESH    0                    NA                -0.0048326   -0.0242506    0.0142172
Birth       JiVitA-4         BANGLADESH    0                    NA                 0.0521421   -0.0267232    0.1249494
Birth       NIH-Birth        BANGLADESH    0                    NA                 0.0135571   -0.0349647    0.0598040
Birth       NIH-Crypto       BANGLADESH    0                    NA                -0.0349914   -0.0802742    0.0083933
Birth       PROVIDE          BANGLADESH    0                    NA                 0.0247865   -0.0272520    0.0741889
Birth       SAS-CompFeed     INDIA         0                    NA                 0.0142789   -0.0962645    0.1136755
Birth       ZVITAMBO         ZIMBABWE      0                    NA                -0.0107051   -0.0193133   -0.0021696
6 months    CMC-V-BCS-2002   INDIA         0                    NA                 0.0813991   -0.0795095    0.2183231
6 months    CMIN             BANGLADESH    0                    NA                 0.0804163   -0.3105913    0.3547689
6 months    COHORTS          GUATEMALA     0                    NA                 0.0328337   -0.1388794    0.1786571
6 months    COHORTS          INDIA         0                    NA                 0.0756147    0.0480537    0.1023777
6 months    COHORTS          PHILIPPINES   0                    NA                 0.0232240   -0.0208918    0.0654334
6 months    EE               PAKISTAN      0                    NA                 0.1419436   -0.1264312    0.3463775
6 months    GMS-Nepal        NEPAL         0                    NA                 0.0180326   -0.1081330    0.1298337
6 months    IRC              INDIA         0                    NA                -0.0187266   -0.1133497    0.0678546
6 months    JiVitA-3         BANGLADESH    0                    NA                 0.0955503    0.0577024    0.1318780
6 months    JiVitA-4         BANGLADESH    0                    NA                 0.0893569   -0.0244903    0.1905528
6 months    Keneba           GAMBIA        0                    NA                 0.0213262   -0.0392642    0.0783840
6 months    LCNI-5           MALAWI        0                    NA                 0.0954178   -0.4186525    0.4232069
6 months    NIH-Birth        BANGLADESH    0                    NA                 0.1174463   -0.0642104    0.2680948
6 months    NIH-Crypto       BANGLADESH    0                    NA                 0.1113183   -0.1239256    0.2973243
6 months    PROVIDE          BANGLADESH    0                    NA                 0.1544649   -0.0475894    0.3175480
6 months    ResPak           PAKISTAN      0                    NA                 0.3059909   -0.0120683    0.5240948
6 months    SAS-CompFeed     INDIA         0                    NA                 0.1638316    0.0901554    0.2315417
6 months    SAS-FoodSuppl    INDIA         0                    NA                 0.1524813   -0.0420922    0.3107251
6 months    ZVITAMBO         ZIMBABWE      0                    NA                 0.0036995   -0.0378166    0.0435549
24 months   CMC-V-BCS-2002   INDIA         0                    NA                 0.3269403    0.0144303    0.5403579
24 months   CMIN             BANGLADESH    0                    NA                 0.3128726   -0.0485084    0.5496993
24 months   COHORTS          GUATEMALA     0                    NA                 0.2678990    0.0390051    0.4422740
24 months   COHORTS          INDIA         0                    NA                 0.0828093    0.0439378    0.1201004
24 months   COHORTS          PHILIPPINES   0                    NA                 0.0510633    0.0024384    0.0973182
24 months   EE               PAKISTAN      0                    NA                 0.4547212    0.1095849    0.6660782
24 months   GMS-Nepal        NEPAL         0                    NA                 0.0626825   -0.0328518    0.1493804
24 months   IRC              INDIA         0                    NA                 0.0418093   -0.1104940    0.1732244
24 months   JiVitA-3         BANGLADESH    0                    NA                 0.1533781    0.1221920    0.1834563
24 months   JiVitA-4         BANGLADESH    0                    NA                 0.1408226    0.0940110    0.1852156
24 months   Keneba           GAMBIA        0                    NA                 0.0793338    0.0225108    0.1328536
24 months   MAL-ED           INDIA         0                    NA                 0.1196432   -0.0825540    0.2840744
24 months   NIH-Birth        BANGLADESH    0                    NA                 0.0188032   -0.1069868    0.1302993
24 months   NIH-Crypto       BANGLADESH    0                    NA                 0.1543074    0.0001366    0.2847064
24 months   PROVIDE          BANGLADESH    0                    NA                 0.1009288   -0.0069804    0.1972743
24 months   ZVITAMBO         ZIMBABWE      0                    NA                 0.0161756   -0.1029961    0.1224715
