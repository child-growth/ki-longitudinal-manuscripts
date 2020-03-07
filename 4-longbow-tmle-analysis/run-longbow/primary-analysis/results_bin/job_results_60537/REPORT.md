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

**Outcome Variable:** ever_co

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

agecat        studyid          country                        enstunt    ever_co   n_cell       n
------------  ---------------  -----------------------------  --------  --------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          0                0      248     373
0-24 months   CMC-V-BCS-2002   INDIA                          0                1       48     373
0-24 months   CMC-V-BCS-2002   INDIA                          1                0       39     373
0-24 months   CMC-V-BCS-2002   INDIA                          1                1       38     373
0-24 months   CMIN             BANGLADESH                     0                0      125     271
0-24 months   CMIN             BANGLADESH                     0                1       43     271
0-24 months   CMIN             BANGLADESH                     1                0       54     271
0-24 months   CMIN             BANGLADESH                     1                1       49     271
0-24 months   COHORTS          GUATEMALA                      0                0      934    1349
0-24 months   COHORTS          GUATEMALA                      0                1       91    1349
0-24 months   COHORTS          GUATEMALA                      1                0      266    1349
0-24 months   COHORTS          GUATEMALA                      1                1       58    1349
0-24 months   COHORTS          INDIA                          0                0     6095    7402
0-24 months   COHORTS          INDIA                          0                1      393    7402
0-24 months   COHORTS          INDIA                          1                0      645    7402
0-24 months   COHORTS          INDIA                          1                1      269    7402
0-24 months   COHORTS          PHILIPPINES                    0                0     2382    3045
0-24 months   COHORTS          PHILIPPINES                    0                1      485    3045
0-24 months   COHORTS          PHILIPPINES                    1                0      103    3045
0-24 months   COHORTS          PHILIPPINES                    1                1       75    3045
0-24 months   CONTENT          PERU                           0                0      195     215
0-24 months   CONTENT          PERU                           0                1        0     215
0-24 months   CONTENT          PERU                           1                0       20     215
0-24 months   CONTENT          PERU                           1                1        0     215
0-24 months   EE               PAKISTAN                       0                0      141     379
0-24 months   EE               PAKISTAN                       0                1       72     379
0-24 months   EE               PAKISTAN                       1                0       68     379
0-24 months   EE               PAKISTAN                       1                1       98     379
0-24 months   GMS-Nepal        NEPAL                          0                0      425     686
0-24 months   GMS-Nepal        NEPAL                          0                1      150     686
0-24 months   GMS-Nepal        NEPAL                          1                0       59     686
0-24 months   GMS-Nepal        NEPAL                          1                1       52     686
0-24 months   Guatemala BSC    GUATEMALA                      0                0      230     315
0-24 months   Guatemala BSC    GUATEMALA                      0                1        9     315
0-24 months   Guatemala BSC    GUATEMALA                      1                0       62     315
0-24 months   Guatemala BSC    GUATEMALA                      1                1       14     315
0-24 months   iLiNS-Zinc       BURKINA FASO                   0                0     2431    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   0                1      102    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                0      427    3265
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                1      305    3265
0-24 months   IRC              INDIA                          0                0      305     410
0-24 months   IRC              INDIA                          0                1       53     410
0-24 months   IRC              INDIA                          1                0       29     410
0-24 months   IRC              INDIA                          1                1       23     410
0-24 months   JiVitA-3         BANGLADESH                     0                0    17622   26923
0-24 months   JiVitA-3         BANGLADESH                     0                1      748   26923
0-24 months   JiVitA-3         BANGLADESH                     1                0     6909   26923
0-24 months   JiVitA-3         BANGLADESH                     1                1     1644   26923
0-24 months   JiVitA-4         BANGLADESH                     0                0     3508    5442
0-24 months   JiVitA-4         BANGLADESH                     0                1      378    5442
0-24 months   JiVitA-4         BANGLADESH                     1                0     1056    5442
0-24 months   JiVitA-4         BANGLADESH                     1                1      500    5442
0-24 months   Keneba           GAMBIA                         0                0     2257    2913
0-24 months   Keneba           GAMBIA                         0                1      326    2913
0-24 months   Keneba           GAMBIA                         1                0      224    2913
0-24 months   Keneba           GAMBIA                         1                1      106    2913
0-24 months   LCNI-5           MALAWI                         0                0      523     840
0-24 months   LCNI-5           MALAWI                         0                1        8     840
0-24 months   LCNI-5           MALAWI                         1                0      274     840
0-24 months   LCNI-5           MALAWI                         1                1       35     840
0-24 months   MAL-ED           BANGLADESH                     0                0      193     263
0-24 months   MAL-ED           BANGLADESH                     0                1       24     263
0-24 months   MAL-ED           BANGLADESH                     1                0       31     263
0-24 months   MAL-ED           BANGLADESH                     1                1       15     263
0-24 months   MAL-ED           BRAZIL                         0                0      201     233
0-24 months   MAL-ED           BRAZIL                         0                1        1     233
0-24 months   MAL-ED           BRAZIL                         1                0       29     233
0-24 months   MAL-ED           BRAZIL                         1                1        2     233
0-24 months   MAL-ED           INDIA                          0                0      174     251
0-24 months   MAL-ED           INDIA                          0                1       36     251
0-24 months   MAL-ED           INDIA                          1                0       23     251
0-24 months   MAL-ED           INDIA                          1                1       18     251
0-24 months   MAL-ED           NEPAL                          0                0      201     240
0-24 months   MAL-ED           NEPAL                          0                1       10     240
0-24 months   MAL-ED           NEPAL                          1                0       17     240
0-24 months   MAL-ED           NEPAL                          1                1       12     240
0-24 months   MAL-ED           PERU                           0                0      260     302
0-24 months   MAL-ED           PERU                           0                1        6     302
0-24 months   MAL-ED           PERU                           1                0       30     302
0-24 months   MAL-ED           PERU                           1                1        6     302
0-24 months   MAL-ED           SOUTH AFRICA                   0                0      257     312
0-24 months   MAL-ED           SOUTH AFRICA                   0                1       17     312
0-24 months   MAL-ED           SOUTH AFRICA                   1                0       32     312
0-24 months   MAL-ED           SOUTH AFRICA                   1                1        6     312
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      203     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1       16     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       35     261
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        7     261
0-24 months   NIH-Birth        BANGLADESH                     0                0      435     624
0-24 months   NIH-Birth        BANGLADESH                     0                1       93     624
0-24 months   NIH-Birth        BANGLADESH                     1                0       52     624
0-24 months   NIH-Birth        BANGLADESH                     1                1       44     624
0-24 months   NIH-Crypto       BANGLADESH                     0                0      612     758
0-24 months   NIH-Crypto       BANGLADESH                     0                1       41     758
0-24 months   NIH-Crypto       BANGLADESH                     1                0       75     758
0-24 months   NIH-Crypto       BANGLADESH                     1                1       30     758
0-24 months   PROBIT           BELARUS                        0                0    16751   16897
0-24 months   PROBIT           BELARUS                        0                1       14   16897
0-24 months   PROBIT           BELARUS                        1                0      128   16897
0-24 months   PROBIT           BELARUS                        1                1        4   16897
0-24 months   PROVIDE          BANGLADESH                     0                0      570     700
0-24 months   PROVIDE          BANGLADESH                     0                1       63     700
0-24 months   PROVIDE          BANGLADESH                     1                0       40     700
0-24 months   PROVIDE          BANGLADESH                     1                1       27     700
0-24 months   ResPak           PAKISTAN                       0                0      187     284
0-24 months   ResPak           PAKISTAN                       0                1       15     284
0-24 months   ResPak           PAKISTAN                       1                0       55     284
0-24 months   ResPak           PAKISTAN                       1                1       27     284
0-24 months   SAS-CompFeed     INDIA                          0                0      912    1513
0-24 months   SAS-CompFeed     INDIA                          0                1      177    1513
0-24 months   SAS-CompFeed     INDIA                          1                0      250    1513
0-24 months   SAS-CompFeed     INDIA                          1                1      174    1513
0-24 months   SAS-FoodSuppl    INDIA                          0                0      189     418
0-24 months   SAS-FoodSuppl    INDIA                          0                1       68     418
0-24 months   SAS-FoodSuppl    INDIA                          1                0       74     418
0-24 months   SAS-FoodSuppl    INDIA                          1                1       87     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     2143    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       90    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      134    2396
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       29    2396
0-24 months   ZVITAMBO         ZIMBABWE                       0                0    12121   13942
0-24 months   ZVITAMBO         ZIMBABWE                       0                1      401   13942
0-24 months   ZVITAMBO         ZIMBABWE                       1                0     1230   13942
0-24 months   ZVITAMBO         ZIMBABWE                       1                1      190   13942
0-6 months    CMC-V-BCS-2002   INDIA                          0                0      283     368
0-6 months    CMC-V-BCS-2002   INDIA                          0                1        9     368
0-6 months    CMC-V-BCS-2002   INDIA                          1                0       54     368
0-6 months    CMC-V-BCS-2002   INDIA                          1                1       22     368
0-6 months    CMIN             BANGLADESH                     0                0      165     271
0-6 months    CMIN             BANGLADESH                     0                1        3     271
0-6 months    CMIN             BANGLADESH                     1                0       91     271
0-6 months    CMIN             BANGLADESH                     1                1       12     271
0-6 months    COHORTS          GUATEMALA                      0                0      906    1063
0-6 months    COHORTS          GUATEMALA                      0                1       17    1063
0-6 months    COHORTS          GUATEMALA                      1                0      136    1063
0-6 months    COHORTS          GUATEMALA                      1                1        4    1063
0-6 months    COHORTS          INDIA                          0                0     6237    7127
0-6 months    COHORTS          INDIA                          0                1       48    7127
0-6 months    COHORTS          INDIA                          1                0      705    7127
0-6 months    COHORTS          INDIA                          1                1      137    7127
0-6 months    COHORTS          PHILIPPINES                    0                0     2815    3044
0-6 months    COHORTS          PHILIPPINES                    0                1       52    3044
0-6 months    COHORTS          PHILIPPINES                    1                0      157    3044
0-6 months    COHORTS          PHILIPPINES                    1                1       20    3044
0-6 months    CONTENT          PERU                           0                0      195     215
0-6 months    CONTENT          PERU                           0                1        0     215
0-6 months    CONTENT          PERU                           1                0       20     215
0-6 months    CONTENT          PERU                           1                1        0     215
0-6 months    EE               PAKISTAN                       0                0      195     379
0-6 months    EE               PAKISTAN                       0                1       18     379
0-6 months    EE               PAKISTAN                       1                0      127     379
0-6 months    EE               PAKISTAN                       1                1       39     379
0-6 months    GMS-Nepal        NEPAL                          0                0      559     686
0-6 months    GMS-Nepal        NEPAL                          0                1       16     686
0-6 months    GMS-Nepal        NEPAL                          1                0       91     686
0-6 months    GMS-Nepal        NEPAL                          1                1       20     686
0-6 months    Guatemala BSC    GUATEMALA                      0                0      221     295
0-6 months    Guatemala BSC    GUATEMALA                      0                1        2     295
0-6 months    Guatemala BSC    GUATEMALA                      1                0       66     295
0-6 months    Guatemala BSC    GUATEMALA                      1                1        6     295
0-6 months    IRC              INDIA                          0                0      346     409
0-6 months    IRC              INDIA                          0                1       12     409
0-6 months    IRC              INDIA                          1                0       38     409
0-6 months    IRC              INDIA                          1                1       13     409
0-6 months    JiVitA-3         BANGLADESH                     0                0    18194   26816
0-6 months    JiVitA-3         BANGLADESH                     0                1      131   26816
0-6 months    JiVitA-3         BANGLADESH                     1                0     7558   26816
0-6 months    JiVitA-3         BANGLADESH                     1                1      933   26816
0-6 months    JiVitA-4         BANGLADESH                     0                0     3640    5092
0-6 months    JiVitA-4         BANGLADESH                     0                1       15    5092
0-6 months    JiVitA-4         BANGLADESH                     1                0     1317    5092
0-6 months    JiVitA-4         BANGLADESH                     1                1      120    5092
0-6 months    Keneba           GAMBIA                         0                0     2184    2462
0-6 months    Keneba           GAMBIA                         0                1       40    2462
0-6 months    Keneba           GAMBIA                         1                0      208    2462
0-6 months    Keneba           GAMBIA                         1                1       30    2462
0-6 months    LCNI-5           MALAWI                         0                0      175     272
0-6 months    LCNI-5           MALAWI                         0                1        0     272
0-6 months    LCNI-5           MALAWI                         1                0       97     272
0-6 months    LCNI-5           MALAWI                         1                1        0     272
0-6 months    MAL-ED           BANGLADESH                     0                0      216     263
0-6 months    MAL-ED           BANGLADESH                     0                1        1     263
0-6 months    MAL-ED           BANGLADESH                     1                0       38     263
0-6 months    MAL-ED           BANGLADESH                     1                1        8     263
0-6 months    MAL-ED           BRAZIL                         0                0      202     233
0-6 months    MAL-ED           BRAZIL                         0                1        0     233
0-6 months    MAL-ED           BRAZIL                         1                0       30     233
0-6 months    MAL-ED           BRAZIL                         1                1        1     233
0-6 months    MAL-ED           INDIA                          0                0      204     251
0-6 months    MAL-ED           INDIA                          0                1        6     251
0-6 months    MAL-ED           INDIA                          1                0       28     251
0-6 months    MAL-ED           INDIA                          1                1       13     251
0-6 months    MAL-ED           NEPAL                          0                0      211     240
0-6 months    MAL-ED           NEPAL                          0                1        0     240
0-6 months    MAL-ED           NEPAL                          1                0       21     240
0-6 months    MAL-ED           NEPAL                          1                1        8     240
0-6 months    MAL-ED           PERU                           0                0      266     302
0-6 months    MAL-ED           PERU                           0                1        0     302
0-6 months    MAL-ED           PERU                           1                0       34     302
0-6 months    MAL-ED           PERU                           1                1        2     302
0-6 months    MAL-ED           SOUTH AFRICA                   0                0      274     312
0-6 months    MAL-ED           SOUTH AFRICA                   0                1        0     312
0-6 months    MAL-ED           SOUTH AFRICA                   1                0       33     312
0-6 months    MAL-ED           SOUTH AFRICA                   1                1        5     312
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      217     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1        2     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       40     261
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        2     261
0-6 months    NIH-Birth        BANGLADESH                     0                0      515     622
0-6 months    NIH-Birth        BANGLADESH                     0                1       13     622
0-6 months    NIH-Birth        BANGLADESH                     1                0       62     622
0-6 months    NIH-Birth        BANGLADESH                     1                1       32     622
0-6 months    NIH-Crypto       BANGLADESH                     0                0      652     758
0-6 months    NIH-Crypto       BANGLADESH                     0                1        1     758
0-6 months    NIH-Crypto       BANGLADESH                     1                0       89     758
0-6 months    NIH-Crypto       BANGLADESH                     1                1       16     758
0-6 months    PROBIT           BELARUS                        0                0    16753   16892
0-6 months    PROBIT           BELARUS                        0                1       10   16892
0-6 months    PROBIT           BELARUS                        1                0      126   16892
0-6 months    PROBIT           BELARUS                        1                1        3   16892
0-6 months    PROVIDE          BANGLADESH                     0                0      622     700
0-6 months    PROVIDE          BANGLADESH                     0                1       11     700
0-6 months    PROVIDE          BANGLADESH                     1                0       48     700
0-6 months    PROVIDE          BANGLADESH                     1                1       19     700
0-6 months    ResPak           PAKISTAN                       0                0      200     282
0-6 months    ResPak           PAKISTAN                       0                1        2     282
0-6 months    ResPak           PAKISTAN                       1                0       65     282
0-6 months    ResPak           PAKISTAN                       1                1       15     282
0-6 months    SAS-CompFeed     INDIA                          0                0     1053    1504
0-6 months    SAS-CompFeed     INDIA                          0                1       35    1504
0-6 months    SAS-CompFeed     INDIA                          1                0      345    1504
0-6 months    SAS-CompFeed     INDIA                          1                1       71    1504
0-6 months    SAS-FoodSuppl    INDIA                          0                0      257     416
0-6 months    SAS-FoodSuppl    INDIA                          0                1        0     416
0-6 months    SAS-FoodSuppl    INDIA                          1                0      127     416
0-6 months    SAS-FoodSuppl    INDIA                          1                1       32     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     2224    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1        9    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      153    2396
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       10    2396
0-6 months    ZVITAMBO         ZIMBABWE                       0                0    12436   13846
0-6 months    ZVITAMBO         ZIMBABWE                       0                1       59   13846
0-6 months    ZVITAMBO         ZIMBABWE                       1                0     1243   13846
0-6 months    ZVITAMBO         ZIMBABWE                       1                1      108   13846
6-24 months   CMC-V-BCS-2002   INDIA                          0                0      253     373
6-24 months   CMC-V-BCS-2002   INDIA                          0                1       43     373
6-24 months   CMC-V-BCS-2002   INDIA                          1                0       50     373
6-24 months   CMC-V-BCS-2002   INDIA                          1                1       27     373
6-24 months   CMIN             BANGLADESH                     0                0      115     251
6-24 months   CMIN             BANGLADESH                     0                1       43     251
6-24 months   CMIN             BANGLADESH                     1                0       50     251
6-24 months   CMIN             BANGLADESH                     1                1       43     251
6-24 months   COHORTS          GUATEMALA                      0                0      828    1218
6-24 months   COHORTS          GUATEMALA                      0                1       81    1218
6-24 months   COHORTS          GUATEMALA                      1                0      254    1218
6-24 months   COHORTS          GUATEMALA                      1                1       55    1218
6-24 months   COHORTS          INDIA                          0                0     5720    6938
6-24 months   COHORTS          INDIA                          0                1      381    6938
6-24 months   COHORTS          INDIA                          1                0      641    6938
6-24 months   COHORTS          INDIA                          1                1      196    6938
6-24 months   COHORTS          PHILIPPINES                    0                0     2173    2808
6-24 months   COHORTS          PHILIPPINES                    0                1      472    2808
6-24 months   COHORTS          PHILIPPINES                    1                0       99    2808
6-24 months   COHORTS          PHILIPPINES                    1                1       64    2808
6-24 months   CONTENT          PERU                           0                0      195     215
6-24 months   CONTENT          PERU                           0                1        0     215
6-24 months   CONTENT          PERU                           1                0       20     215
6-24 months   CONTENT          PERU                           1                1        0     215
6-24 months   EE               PAKISTAN                       0                0      142     372
6-24 months   EE               PAKISTAN                       0                1       67     372
6-24 months   EE               PAKISTAN                       1                0       74     372
6-24 months   EE               PAKISTAN                       1                1       89     372
6-24 months   GMS-Nepal        NEPAL                          0                0      346     590
6-24 months   GMS-Nepal        NEPAL                          0                1      148     590
6-24 months   GMS-Nepal        NEPAL                          1                0       52     590
6-24 months   GMS-Nepal        NEPAL                          1                1       44     590
6-24 months   Guatemala BSC    GUATEMALA                      0                0      203     277
6-24 months   Guatemala BSC    GUATEMALA                      0                1        8     277
6-24 months   Guatemala BSC    GUATEMALA                      1                0       56     277
6-24 months   Guatemala BSC    GUATEMALA                      1                1       10     277
6-24 months   iLiNS-Zinc       BURKINA FASO                   0                0     2431    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   0                1      102    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                0      427    3265
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                1      305    3265
6-24 months   IRC              INDIA                          0                0      312     410
6-24 months   IRC              INDIA                          0                1       46     410
6-24 months   IRC              INDIA                          1                0       34     410
6-24 months   IRC              INDIA                          1                1       18     410
6-24 months   JiVitA-3         BANGLADESH                     0                0    11360   17280
6-24 months   JiVitA-3         BANGLADESH                     0                1      640   17280
6-24 months   JiVitA-3         BANGLADESH                     1                0     4418   17280
6-24 months   JiVitA-3         BANGLADESH                     1                1      862   17280
6-24 months   JiVitA-4         BANGLADESH                     0                0     3506    5429
6-24 months   JiVitA-4         BANGLADESH                     0                1      370    5429
6-24 months   JiVitA-4         BANGLADESH                     1                0     1121    5429
6-24 months   JiVitA-4         BANGLADESH                     1                1      432    5429
6-24 months   Keneba           GAMBIA                         0                0     2115    2735
6-24 months   Keneba           GAMBIA                         0                1      314    2735
6-24 months   Keneba           GAMBIA                         1                0      218    2735
6-24 months   Keneba           GAMBIA                         1                1       88    2735
6-24 months   LCNI-5           MALAWI                         0                0      510     826
6-24 months   LCNI-5           MALAWI                         0                1        8     826
6-24 months   LCNI-5           MALAWI                         1                0      273     826
6-24 months   LCNI-5           MALAWI                         1                1       35     826
6-24 months   MAL-ED           BANGLADESH                     0                0      177     239
6-24 months   MAL-ED           BANGLADESH                     0                1       24     239
6-24 months   MAL-ED           BANGLADESH                     1                0       27     239
6-24 months   MAL-ED           BANGLADESH                     1                1       11     239
6-24 months   MAL-ED           BRAZIL                         0                0      181     207
6-24 months   MAL-ED           BRAZIL                         0                1        1     207
6-24 months   MAL-ED           BRAZIL                         1                0       24     207
6-24 months   MAL-ED           BRAZIL                         1                1        1     207
6-24 months   MAL-ED           INDIA                          0                0      163     235
6-24 months   MAL-ED           INDIA                          0                1       34     235
6-24 months   MAL-ED           INDIA                          1                0       25     235
6-24 months   MAL-ED           INDIA                          1                1       13     235
6-24 months   MAL-ED           NEPAL                          0                0      197     235
6-24 months   MAL-ED           NEPAL                          0                1       10     235
6-24 months   MAL-ED           NEPAL                          1                0       22     235
6-24 months   MAL-ED           NEPAL                          1                1        6     235
6-24 months   MAL-ED           PERU                           0                0      230     270
6-24 months   MAL-ED           PERU                           0                1        6     270
6-24 months   MAL-ED           PERU                           1                0       29     270
6-24 months   MAL-ED           PERU                           1                1        5     270
6-24 months   MAL-ED           SOUTH AFRICA                   0                0      214     259
6-24 months   MAL-ED           SOUTH AFRICA                   0                1       17     259
6-24 months   MAL-ED           SOUTH AFRICA                   1                0       25     259
6-24 months   MAL-ED           SOUTH AFRICA                   1                1        3     259
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      190     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1       16     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       34     245
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        5     245
6-24 months   NIH-Birth        BANGLADESH                     0                0      371     542
6-24 months   NIH-Birth        BANGLADESH                     0                1       85     542
6-24 months   NIH-Birth        BANGLADESH                     1                0       57     542
6-24 months   NIH-Birth        BANGLADESH                     1                1       29     542
6-24 months   NIH-Crypto       BANGLADESH                     0                0      586     730
6-24 months   NIH-Crypto       BANGLADESH                     0                1       41     730
6-24 months   NIH-Crypto       BANGLADESH                     1                0       81     730
6-24 months   NIH-Crypto       BANGLADESH                     1                1       22     730
6-24 months   PROBIT           BELARUS                        0                0    16473   16598
6-24 months   PROBIT           BELARUS                        0                1        5   16598
6-24 months   PROBIT           BELARUS                        1                0      119   16598
6-24 months   PROBIT           BELARUS                        1                1        1   16598
6-24 months   PROVIDE          BANGLADESH                     0                0      495     614
6-24 months   PROVIDE          BANGLADESH                     0                1       57     614
6-24 months   PROVIDE          BANGLADESH                     1                0       44     614
6-24 months   PROVIDE          BANGLADESH                     1                1       18     614
6-24 months   ResPak           PAKISTAN                       0                0      155     236
6-24 months   ResPak           PAKISTAN                       0                1       14     236
6-24 months   ResPak           PAKISTAN                       1                0       50     236
6-24 months   ResPak           PAKISTAN                       1                1       17     236
6-24 months   SAS-CompFeed     INDIA                          0                0      841    1389
6-24 months   SAS-CompFeed     INDIA                          0                1      165    1389
6-24 months   SAS-CompFeed     INDIA                          1                0      234    1389
6-24 months   SAS-CompFeed     INDIA                          1                1      149    1389
6-24 months   SAS-FoodSuppl    INDIA                          0                0      176     401
6-24 months   SAS-FoodSuppl    INDIA                          0                1       68     401
6-24 months   SAS-FoodSuppl    INDIA                          1                0       80     401
6-24 months   SAS-FoodSuppl    INDIA                          1                1       77     401
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                0     1791    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                1       88    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                0      113    2017
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                1       25    2017
6-24 months   ZVITAMBO         ZIMBABWE                       0                0     9315   10813
6-24 months   ZVITAMBO         ZIMBABWE                       0                1      354   10813
6-24 months   ZVITAMBO         ZIMBABWE                       1                0     1054   10813
6-24 months   ZVITAMBO         ZIMBABWE                       1                1       90   10813


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
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
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
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: CONTENT, country: PERU
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/902e2e75-9053-4f73-9aa5-7455e693cf94/55b0b8a7-61dc-4ec8-9917-adc552d11732/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/902e2e75-9053-4f73-9aa5-7455e693cf94/55b0b8a7-61dc-4ec8-9917-adc552d11732/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/902e2e75-9053-4f73-9aa5-7455e693cf94/55b0b8a7-61dc-4ec8-9917-adc552d11732/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/902e2e75-9053-4f73-9aa5-7455e693cf94/55b0b8a7-61dc-4ec8-9917-adc552d11732/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.1629639   0.1206974   0.2052304
0-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.4894930   0.3721604   0.6068256
0-24 months   CMIN             BANGLADESH                     0                    NA                0.2510704   0.1847285   0.3174123
0-24 months   CMIN             BANGLADESH                     1                    NA                0.4841924   0.3861683   0.5822165
0-24 months   COHORTS          GUATEMALA                      0                    NA                0.0878332   0.0705124   0.1051539
0-24 months   COHORTS          GUATEMALA                      1                    NA                0.1816592   0.1391148   0.2242035
0-24 months   COHORTS          INDIA                          0                    NA                0.0614577   0.0556429   0.0672725
0-24 months   COHORTS          INDIA                          1                    NA                0.2784465   0.2487736   0.3081195
0-24 months   COHORTS          PHILIPPINES                    0                    NA                0.1701508   0.1564241   0.1838774
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.3916039   0.3192823   0.4639254
0-24 months   EE               PAKISTAN                       0                    NA                0.3363064   0.2719678   0.4006451
0-24 months   EE               PAKISTAN                       1                    NA                0.5993926   0.5236974   0.6750878
0-24 months   GMS-Nepal        NEPAL                          0                    NA                0.2606914   0.2248476   0.2965352
0-24 months   GMS-Nepal        NEPAL                          1                    NA                0.4697156   0.3734617   0.5659696
0-24 months   Guatemala BSC    GUATEMALA                      0                    NA                0.0376569   0.0134841   0.0618297
0-24 months   Guatemala BSC    GUATEMALA                      1                    NA                0.1842105   0.0969178   0.2715032
0-24 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0409688   0.0302695   0.0516680
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.4076855   0.3195705   0.4958005
0-24 months   IRC              INDIA                          0                    NA                0.1464378   0.1096892   0.1831864
0-24 months   IRC              INDIA                          1                    NA                0.4659400   0.3269971   0.6048829
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                0.0415287   0.0383852   0.0446722
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.1920396   0.1827816   0.2012977
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.0986169   0.0878571   0.1093768
0-24 months   JiVitA-4         BANGLADESH                     1                    NA                0.3107577   0.2844908   0.3370247
0-24 months   Keneba           GAMBIA                         0                    NA                0.1254715   0.1126915   0.1382516
0-24 months   Keneba           GAMBIA                         1                    NA                0.3344607   0.2828065   0.3861149
0-24 months   LCNI-5           MALAWI                         0                    NA                0.0150659   0.0046987   0.0254331
0-24 months   LCNI-5           MALAWI                         1                    NA                0.1132686   0.0779114   0.1486258
0-24 months   MAL-ED           BANGLADESH                     0                    NA                0.1113893   0.0692778   0.1535008
0-24 months   MAL-ED           BANGLADESH                     1                    NA                0.3179219   0.1769023   0.4589414
0-24 months   MAL-ED           INDIA                          0                    NA                0.1730838   0.1219300   0.2242376
0-24 months   MAL-ED           INDIA                          1                    NA                0.4616047   0.3011731   0.6220364
0-24 months   MAL-ED           NEPAL                          0                    NA                0.0464871   0.0178190   0.0751552
0-24 months   MAL-ED           NEPAL                          1                    NA                0.5036309   0.3276184   0.6796434
0-24 months   MAL-ED           PERU                           0                    NA                0.0225564   0.0046830   0.0404298
0-24 months   MAL-ED           PERU                           1                    NA                0.1666667   0.0447254   0.2886080
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.0620438   0.0334343   0.0906533
0-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.1578947   0.0417712   0.2740183
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0730594   0.0385272   0.1075915
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1666667   0.0537415   0.2795918
0-24 months   NIH-Birth        BANGLADESH                     0                    NA                0.1756206   0.1431530   0.2080883
0-24 months   NIH-Birth        BANGLADESH                     1                    NA                0.4667418   0.3650688   0.5684148
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.0643433   0.0453198   0.0833667
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.2872827   0.1964620   0.3781034
0-24 months   PROVIDE          BANGLADESH                     0                    NA                0.0998734   0.0764400   0.1233068
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.4143883   0.2852890   0.5434876
0-24 months   ResPak           PAKISTAN                       0                    NA                0.0756423   0.0385486   0.1127360
0-24 months   ResPak           PAKISTAN                       1                    NA                0.3127736   0.2107067   0.4148404
0-24 months   SAS-CompFeed     INDIA                          0                    NA                0.1648511   0.1346008   0.1951013
0-24 months   SAS-CompFeed     INDIA                          1                    NA                0.4002922   0.3182264   0.4823579
0-24 months   SAS-FoodSuppl    INDIA                          0                    NA                0.2650101   0.2107746   0.3192456
0-24 months   SAS-FoodSuppl    INDIA                          1                    NA                0.5422720   0.4645934   0.6199507
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0403157   0.0321557   0.0484756
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1800867   0.1207062   0.2394671
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0322139   0.0291175   0.0353104
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1337607   0.1155088   0.1520126
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.0308219   0.0109711   0.0506728
0-6 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.2894737   0.1873734   0.3915739
0-6 months    COHORTS          INDIA                          0                    NA                0.0076721   0.0055173   0.0098269
0-6 months    COHORTS          INDIA                          1                    NA                0.1594162   0.1344322   0.1844003
0-6 months    COHORTS          PHILIPPINES                    0                    NA                0.0181336   0.0132459   0.0230213
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.1154972   0.0635618   0.1674327
0-6 months    EE               PAKISTAN                       0                    NA                0.0845274   0.0471299   0.1219249
0-6 months    EE               PAKISTAN                       1                    NA                0.2259912   0.1611398   0.2908427
0-6 months    GMS-Nepal        NEPAL                          0                    NA                0.0279645   0.0144705   0.0414585
0-6 months    GMS-Nepal        NEPAL                          1                    NA                0.1806472   0.1078164   0.2534780
0-6 months    IRC              INDIA                          0                    NA                0.0330669   0.0144333   0.0517005
0-6 months    IRC              INDIA                          1                    NA                0.2750680   0.1525234   0.3976127
0-6 months    JiVitA-3         BANGLADESH                     0                    NA                0.0074479   0.0061222   0.0087735
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.1086490   0.1013402   0.1159579
0-6 months    JiVitA-4         BANGLADESH                     0                    NA                0.0040767   0.0018302   0.0063231
0-6 months    JiVitA-4         BANGLADESH                     1                    NA                0.0825850   0.0655479   0.0996222
0-6 months    Keneba           GAMBIA                         0                    NA                0.0178361   0.0123202   0.0233521
0-6 months    Keneba           GAMBIA                         1                    NA                0.1454290   0.0980502   0.1928077
0-6 months    MAL-ED           INDIA                          0                    NA                0.0285714   0.0059939   0.0511490
0-6 months    MAL-ED           INDIA                          1                    NA                0.3170732   0.1743515   0.4597948
0-6 months    NIH-Birth        BANGLADESH                     0                    NA                0.0246884   0.0114188   0.0379580
0-6 months    NIH-Birth        BANGLADESH                     1                    NA                0.3307179   0.2346762   0.4267595
0-6 months    PROVIDE          BANGLADESH                     0                    NA                0.0174899   0.0072766   0.0277032
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.2998311   0.1827185   0.4169436
0-6 months    SAS-CompFeed     INDIA                          0                    NA                0.0330776   0.0174978   0.0486573
0-6 months    SAS-CompFeed     INDIA                          1                    NA                0.1633086   0.0961294   0.2304879
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0040305   0.0014020   0.0066589
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0613497   0.0245026   0.0981968
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.0047103   0.0035100   0.0059106
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.0826864   0.0678000   0.0975727
6-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.1435673   0.1034245   0.1837100
6-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.3584588   0.2454401   0.4714775
6-24 months   CMIN             BANGLADESH                     0                    NA                0.2714610   0.2019207   0.3410013
6-24 months   CMIN             BANGLADESH                     1                    NA                0.4579336   0.3556203   0.5602469
6-24 months   COHORTS          GUATEMALA                      0                    NA                0.0888125   0.0702855   0.1073395
6-24 months   COHORTS          GUATEMALA                      1                    NA                0.1760444   0.1335115   0.2185773
6-24 months   COHORTS          INDIA                          0                    NA                0.0632384   0.0571601   0.0693168
6-24 months   COHORTS          INDIA                          1                    NA                0.2203897   0.1915528   0.2492267
6-24 months   COHORTS          PHILIPPINES                    0                    NA                0.1794234   0.1648295   0.1940173
6-24 months   COHORTS          PHILIPPINES                    1                    NA                0.3648788   0.2910697   0.4386879
6-24 months   EE               PAKISTAN                       0                    NA                0.3202152   0.2564878   0.3839425
6-24 months   EE               PAKISTAN                       1                    NA                0.5469497   0.4703043   0.6235950
6-24 months   GMS-Nepal        NEPAL                          0                    NA                0.3010850   0.2607306   0.3414393
6-24 months   GMS-Nepal        NEPAL                          1                    NA                0.4616187   0.3599533   0.5632841
6-24 months   Guatemala BSC    GUATEMALA                      0                    NA                0.0379147   0.0120979   0.0637315
6-24 months   Guatemala BSC    GUATEMALA                      1                    NA                0.1515152   0.0648566   0.2381737
6-24 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0409461   0.0303696   0.0515227
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.4058718   0.3055445   0.5061990
6-24 months   IRC              INDIA                          0                    NA                0.1279886   0.0932927   0.1626845
6-24 months   IRC              INDIA                          1                    NA                0.3580434   0.2295833   0.4865035
6-24 months   JiVitA-3         BANGLADESH                     0                    NA                0.0544504   0.0500200   0.0588807
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.1599972   0.1491210   0.1708735
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.0966084   0.0859651   0.1072517
6-24 months   JiVitA-4         BANGLADESH                     1                    NA                0.2691420   0.2450321   0.2932519
6-24 months   Keneba           GAMBIA                         0                    NA                0.1288356   0.1155052   0.1421660
6-24 months   Keneba           GAMBIA                         1                    NA                0.2964835   0.2441182   0.3488487
6-24 months   LCNI-5           MALAWI                         0                    NA                0.0154440   0.0048186   0.0260694
6-24 months   LCNI-5           MALAWI                         1                    NA                0.1136364   0.0781713   0.1491014
6-24 months   MAL-ED           BANGLADESH                     0                    NA                0.1212892   0.0763110   0.1662674
6-24 months   MAL-ED           BANGLADESH                     1                    NA                0.3500369   0.2039940   0.4960797
6-24 months   MAL-ED           INDIA                          0                    NA                0.1719924   0.1191160   0.2248689
6-24 months   MAL-ED           INDIA                          1                    NA                0.3468034   0.1917731   0.5018337
6-24 months   MAL-ED           NEPAL                          0                    NA                0.0483092   0.0190372   0.0775811
6-24 months   MAL-ED           NEPAL                          1                    NA                0.2142857   0.0619773   0.3665942
6-24 months   MAL-ED           PERU                           0                    NA                0.0254237   0.0053038   0.0455436
6-24 months   MAL-ED           PERU                           1                    NA                0.1470588   0.0277921   0.2663256
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0776699   0.0410454   0.1142944
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1282051   0.0230661   0.2333441
6-24 months   NIH-Birth        BANGLADESH                     0                    NA                0.1862401   0.1505302   0.2219500
6-24 months   NIH-Birth        BANGLADESH                     1                    NA                0.3291644   0.2263156   0.4320132
6-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.0670092   0.0472544   0.0867639
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.2167923   0.1320330   0.3015517
6-24 months   PROVIDE          BANGLADESH                     0                    NA                0.1029048   0.0775123   0.1282974
6-24 months   PROVIDE          BANGLADESH                     1                    NA                0.2977777   0.1800407   0.4155147
6-24 months   ResPak           PAKISTAN                       0                    NA                0.0848350   0.0421393   0.1275308
6-24 months   ResPak           PAKISTAN                       1                    NA                0.2452447   0.1360828   0.3544066
6-24 months   SAS-CompFeed     INDIA                          0                    NA                0.1663496   0.1391043   0.1935949
6-24 months   SAS-CompFeed     INDIA                          1                    NA                0.3824108   0.3044575   0.4603641
6-24 months   SAS-FoodSuppl    INDIA                          0                    NA                0.2756369   0.2192008   0.3320730
6-24 months   SAS-FoodSuppl    INDIA                          1                    NA                0.4872973   0.4077112   0.5668835
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0467672   0.0372098   0.0563246
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1926215   0.1278789   0.2573642
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0368823   0.0331175   0.0406470
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0772439   0.0610589   0.0934290


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   CMIN             BANGLADESH                     NA                   NA                0.3394834   0.2830004   0.3959663
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1104522   0.0937191   0.1271852
0-24 months   COHORTS          INDIA                          NA                   NA                0.0894353   0.0829338   0.0959368
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   EE               PAKISTAN                       NA                   NA                0.4485488   0.3984116   0.4986861
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2944606   0.2603274   0.3285938
0-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.0730159   0.0442400   0.1017917
0-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1246554   0.1041227   0.1451882
0-24 months   IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0888460   0.0849398   0.0927521
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1613377   0.1500062   0.1726692
0-24 months   Keneba           GAMBIA                         NA                   NA                0.1483007   0.1353925   0.1612090
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.0511905   0.0362780   0.0661030
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1482890   0.1052563   0.1913216
0-24 months   MAL-ED           INDIA                          NA                   NA                0.2151394   0.1642023   0.2660766
0-24 months   MAL-ED           NEPAL                          NA                   NA                0.0916667   0.0550838   0.1282495
0-24 months   MAL-ED           PERU                           NA                   NA                0.0397351   0.0176679   0.0618023
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.0737179   0.0446760   0.1027599
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0881226   0.0536659   0.1225793
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ResPak           PAKISTAN                       NA                   NA                0.1478873   0.1065284   0.1892462
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2319894   0.1917264   0.2722524
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0496661   0.0409652   0.0583670
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0423899   0.0390454   0.0457344
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.0842391   0.0558231   0.1126551
0-6 months    COHORTS          INDIA                          NA                   NA                0.0259576   0.0222658   0.0296495
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    EE               PAKISTAN                       NA                   NA                0.1503958   0.1143605   0.1864311
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.0524781   0.0357793   0.0691770
0-6 months    IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0396778   0.0371765   0.0421791
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.0265122   0.0211694   0.0318550
0-6 months    Keneba           GAMBIA                         NA                   NA                0.0284322   0.0218657   0.0349987
0-6 months    MAL-ED           INDIA                          NA                   NA                0.0756972   0.0429084   0.1084860
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.0723473   0.0519719   0.0927227
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0079299   0.0043777   0.0114821
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120612   0.0102430   0.0138795
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   CMIN             BANGLADESH                     NA                   NA                0.3426295   0.2837999   0.4014590
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1116585   0.0939639   0.1293530
6-24 months   COHORTS          INDIA                          NA                   NA                0.0831652   0.0766672   0.0896632
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   EE               PAKISTAN                       NA                   NA                0.4193548   0.3691429   0.4695668
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.3254237   0.2875855   0.3632619
6-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.0649819   0.0359016   0.0940623
6-24 months   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1246554   0.1041227   0.1451882
6-24 months   IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0869213   0.0822621   0.0915805
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1477252   0.1371297   0.1583206
6-24 months   Keneba           GAMBIA                         NA                   NA                0.1469835   0.1337108   0.1602563
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.0520581   0.0368996   0.0672166
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   MAL-ED           INDIA                          NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   MAL-ED           NEPAL                          NA                   NA                0.0680851   0.0358110   0.1003592
6-24 months   MAL-ED           PERU                           NA                   NA                0.0407407   0.0171167   0.0643648
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0857143   0.0505889   0.1208396
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ResPak           PAKISTAN                       NA                   NA                0.1313559   0.0881682   0.1745436
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0560238   0.0459853   0.0660623
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0410617   0.0373214   0.0448020


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   CMC-V-BCS-2002   INDIA                          1                    0                  3.003690    2.1049561    4.286147
0-24 months   CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   CMIN             BANGLADESH                     1                    0                  1.928513    1.3816273    2.691870
0-24 months   COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
0-24 months   COHORTS          GUATEMALA                      1                    0                  2.068230    1.5220110    2.810476
0-24 months   COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   COHORTS          INDIA                          1                    0                  4.530704    3.9309125    5.222014
0-24 months   COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
0-24 months   COHORTS          PHILIPPINES                    1                    0                  2.301511    1.8827049    2.813480
0-24 months   EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
0-24 months   EE               PAKISTAN                       1                    0                  1.782281    1.4182410    2.239765
0-24 months   GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   GMS-Nepal        NEPAL                          1                    0                  1.801807    1.4079706    2.305808
0-24 months   Guatemala BSC    GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
0-24 months   Guatemala BSC    GUATEMALA                      1                    0                  4.891813    2.2026861   10.863933
0-24 months   iLiNS-Zinc       BURKINA FASO                   0                    0                  1.000000    1.0000000    1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    0                  9.951133    7.1982512   13.756820
0-24 months   IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   IRC              INDIA                          1                    0                  3.181829    2.1529696    4.702360
0-24 months   JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   JiVitA-3         BANGLADESH                     1                    0                  4.624264    4.2441351    5.038439
0-24 months   JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   JiVitA-4         BANGLADESH                     1                    0                  3.151161    2.7510222    3.609500
0-24 months   Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
0-24 months   Keneba           GAMBIA                         1                    0                  2.665630    2.2161829    3.206227
0-24 months   LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
0-24 months   LCNI-5           MALAWI                         1                    0                  7.518204    3.5314685   16.005633
0-24 months   MAL-ED           BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   MAL-ED           BANGLADESH                     1                    0                  2.854151    1.5981502    5.097253
0-24 months   MAL-ED           INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   MAL-ED           INDIA                          1                    0                  2.666944    1.6933767    4.200241
0-24 months   MAL-ED           NEPAL                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   MAL-ED           NEPAL                          1                    0                 10.833774    5.3813792   21.810517
0-24 months   MAL-ED           PERU                           0                    0                  1.000000    1.0000000    1.000000
0-24 months   MAL-ED           PERU                           1                    0                  7.388889    2.5129690   21.725568
0-24 months   MAL-ED           SOUTH AFRICA                   0                    0                  1.000000    1.0000000    1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0                  2.544892    1.0682645    6.062612
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  2.281250    0.9986000    5.211397
0-24 months   NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   NIH-Birth        BANGLADESH                     1                    0                  2.657671    1.9970207    3.536875
0-24 months   NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   NIH-Crypto       BANGLADESH                     1                    0                  4.464844    2.8949734    6.886015
0-24 months   PROVIDE          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   PROVIDE          BANGLADESH                     1                    0                  4.149136    2.8135751    6.118666
0-24 months   ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
0-24 months   ResPak           PAKISTAN                       1                    0                  4.134903    2.2951623    7.449332
0-24 months   SAS-CompFeed     INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   SAS-CompFeed     INDIA                          1                    0                  2.428205    2.0747290    2.841903
0-24 months   SAS-FoodSuppl    INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   SAS-FoodSuppl    INDIA                          1                    0                  2.046231    1.5926255    2.629032
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  4.466917    3.0330141    6.578719
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0                  4.152264    3.5139917    4.906471
0-6 months    CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    CMC-V-BCS-2002   INDIA                          1                    0                  9.391813    4.5065543   19.572858
0-6 months    COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    COHORTS          INDIA                          1                    0                 20.778743   15.0652471   28.659083
0-6 months    COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
0-6 months    COHORTS          PHILIPPINES                    1                    0                  6.369241    3.7697003   10.761392
0-6 months    EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
0-6 months    EE               PAKISTAN                       1                    0                  2.673585    1.5797463    4.524814
0-6 months    GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    GMS-Nepal        NEPAL                          1                    0                  6.459878    3.4421938   12.123090
0-6 months    IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    IRC              INDIA                          1                    0                  8.318531    4.0696396   17.003461
0-6 months    JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-6 months    JiVitA-3         BANGLADESH                     1                    0                 14.587936   12.0738047   17.625585
0-6 months    JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-6 months    JiVitA-4         BANGLADESH                     1                    0                 20.258011   11.2762801   36.393830
0-6 months    Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
0-6 months    Keneba           GAMBIA                         1                    0                  8.153611    5.2039630   12.775144
0-6 months    MAL-ED           INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    MAL-ED           INDIA                          1                    0                 11.097561    4.4696202   27.553987
0-6 months    NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-6 months    NIH-Birth        BANGLADESH                     1                    0                 13.395681    7.2776929   24.656753
0-6 months    PROVIDE          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-6 months    PROVIDE          BANGLADESH                     1                    0                 17.143077    8.5229857   34.481473
0-6 months    SAS-CompFeed     INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    SAS-CompFeed     INDIA                          1                    0                  4.937143    2.8650946    8.507707
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 15.221540    6.2722591   36.939686
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0                 17.554371   12.8491980   23.982505
6-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   CMC-V-BCS-2002   INDIA                          1                    0                  2.496800    1.6379076    3.806083
6-24 months   CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   CMIN             BANGLADESH                     1                    0                  1.686922    1.1996843    2.372046
6-24 months   COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
6-24 months   COHORTS          GUATEMALA                      1                    0                  1.982202    1.4400428    2.728478
6-24 months   COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   COHORTS          INDIA                          1                    0                  3.485060    2.9646401    4.096836
6-24 months   COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
6-24 months   COHORTS          PHILIPPINES                    1                    0                  2.033619    1.6368881    2.526505
6-24 months   EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
6-24 months   EE               PAKISTAN                       1                    0                  1.708069    1.3402384    2.176852
6-24 months   GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   GMS-Nepal        NEPAL                          1                    0                  1.533184    1.1849132    1.983819
6-24 months   Guatemala BSC    GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
6-24 months   Guatemala BSC    GUATEMALA                      1                    0                  3.996212    1.6422918    9.724040
6-24 months   iLiNS-Zinc       BURKINA FASO                   0                    0                  1.000000    1.0000000    1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    0                  9.912337    6.9859010   14.064676
6-24 months   IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   IRC              INDIA                          1                    0                  2.797463    1.7862569    4.381118
6-24 months   JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   JiVitA-3         BANGLADESH                     1                    0                  2.938406    2.6506751    3.257369
6-24 months   JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   JiVitA-4         BANGLADESH                     1                    0                  2.785906    2.4185224    3.209098
6-24 months   Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
6-24 months   Keneba           GAMBIA                         1                    0                  2.301254    1.8753531    2.823878
6-24 months   LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
6-24 months   LCNI-5           MALAWI                         1                    0                  7.357954    3.4566776   15.662292
6-24 months   MAL-ED           BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   MAL-ED           BANGLADESH                     1                    0                  2.885969    1.6530031    5.038597
6-24 months   MAL-ED           INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   MAL-ED           INDIA                          1                    0                  2.016387    1.1701173    3.474709
6-24 months   MAL-ED           NEPAL                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   MAL-ED           NEPAL                          1                    0                  4.435714    1.7431481   11.287372
6-24 months   MAL-ED           PERU                           0                    0                  1.000000    1.0000000    1.000000
6-24 months   MAL-ED           PERU                           1                    0                  5.784314    1.8626489   17.962743
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  1.650641    0.6409384    4.250979
6-24 months   NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   NIH-Birth        BANGLADESH                     1                    0                  1.767420    1.2259917    2.547956
6-24 months   NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   NIH-Crypto       BANGLADESH                     1                    0                  3.235264    1.9826984    5.279136
6-24 months   PROVIDE          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   PROVIDE          BANGLADESH                     1                    0                  2.893720    1.8174276    4.607399
6-24 months   ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
6-24 months   ResPak           PAKISTAN                       1                    0                  2.890842    1.4778459    5.654830
6-24 months   SAS-CompFeed     INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   SAS-CompFeed     INDIA                          1                    0                  2.298838    1.9195085    2.753130
6-24 months   SAS-FoodSuppl    INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   SAS-FoodSuppl    INDIA                          1                    0                  1.767896    1.3610882    2.296292
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  4.118735    2.7792736    6.103745
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0                  2.094337    1.6590630    2.643810


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.0675991    0.0391389   0.0960593
0-24 months   CMIN             BANGLADESH                     0                    NA                0.0884130    0.0419017   0.1349242
0-24 months   COHORTS          GUATEMALA                      0                    NA                0.0226190    0.0115341   0.0337039
0-24 months   COHORTS          INDIA                          0                    NA                0.0279776    0.0239052   0.0320500
0-24 months   COHORTS          PHILIPPINES                    0                    NA                0.0137573    0.0090632   0.0184514
0-24 months   EE               PAKISTAN                       0                    NA                0.1122424    0.0669071   0.1575777
0-24 months   GMS-Nepal        NEPAL                          0                    NA                0.0337693    0.0165349   0.0510036
0-24 months   Guatemala BSC    GUATEMALA                      0                    NA                0.0353590    0.0124312   0.0582868
0-24 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0836867    0.0653509   0.1020224
0-24 months   IRC              INDIA                          0                    NA                0.0389281    0.0186665   0.0591897
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                0.0473173    0.0441655   0.0504690
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.0627208    0.0542442   0.0711974
0-24 months   Keneba           GAMBIA                         0                    NA                0.0228292    0.0165254   0.0291330
0-24 months   LCNI-5           MALAWI                         0                    NA                0.0361246    0.0221970   0.0500522
0-24 months   MAL-ED           BANGLADESH                     0                    NA                0.0368997    0.0103233   0.0634761
0-24 months   MAL-ED           INDIA                          0                    NA                0.0420557    0.0134943   0.0706171
0-24 months   MAL-ED           NEPAL                          0                    NA                0.0451796    0.0187074   0.0716517
0-24 months   MAL-ED           PERU                           0                    NA                0.0171787    0.0015689   0.0327885
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.0116742   -0.0033029   0.0266512
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0150632   -0.0043938   0.0345203
0-24 months   NIH-Birth        BANGLADESH                     0                    NA                0.0439306    0.0258334   0.0620279
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.0293243    0.0158693   0.0427792
0-24 months   PROVIDE          BANGLADESH                     0                    NA                0.0286980    0.0156193   0.0417768
0-24 months   ResPak           PAKISTAN                       0                    NA                0.0722450    0.0380431   0.1064469
0-24 months   SAS-CompFeed     INDIA                          0                    NA                0.0671384    0.0490140   0.0852627
0-24 months   SAS-FoodSuppl    INDIA                          0                    NA                0.1058033    0.0668583   0.1447482
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0093505    0.0050785   0.0136224
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0101760    0.0082735   0.0120785
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.0534172    0.0294136   0.0774209
0-6 months    COHORTS          INDIA                          0                    NA                0.0182855    0.0151094   0.0214617
0-6 months    COHORTS          PHILIPPINES                    0                    NA                0.0055195    0.0026762   0.0083628
0-6 months    EE               PAKISTAN                       0                    NA                0.0658684    0.0323589   0.0993778
0-6 months    GMS-Nepal        NEPAL                          0                    NA                0.0245136    0.0119796   0.0370477
0-6 months    IRC              INDIA                          0                    NA                0.0280578    0.0114973   0.0446183
0-6 months    JiVitA-3         BANGLADESH                     0                    NA                0.0322299    0.0298551   0.0346048
0-6 months    JiVitA-4         BANGLADESH                     0                    NA                0.0224355    0.0173393   0.0275317
0-6 months    Keneba           GAMBIA                         0                    NA                0.0105960    0.0062940   0.0148981
0-6 months    MAL-ED           INDIA                          0                    NA                0.0471258    0.0200723   0.0741792
0-6 months    NIH-Birth        BANGLADESH                     0                    NA                0.0476589    0.0305819   0.0647359
0-6 months    PROVIDE          BANGLADESH                     0                    NA                0.0253672    0.0135539   0.0371805
0-6 months    SAS-CompFeed     INDIA                          0                    NA                0.0374012    0.0202270   0.0545753
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0038994    0.0013207   0.0064781
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.0073509    0.0058868   0.0088151
6-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.0441003    0.0189886   0.0692120
6-24 months   CMIN             BANGLADESH                     0                    NA                0.0711685    0.0237433   0.1185937
6-24 months   COHORTS          GUATEMALA                      0                    NA                0.0228459    0.0107866   0.0349052
6-24 months   COHORTS          INDIA                          0                    NA                0.0199267    0.0161905   0.0236629
6-24 months   COHORTS          PHILIPPINES                    0                    NA                0.0114598    0.0068162   0.0161033
6-24 months   EE               PAKISTAN                       0                    NA                0.0991396    0.0542069   0.1440724
6-24 months   GMS-Nepal        NEPAL                          0                    NA                0.0243388    0.0061204   0.0425571
6-24 months   Guatemala BSC    GUATEMALA                      0                    NA                0.0270673    0.0047788   0.0493557
6-24 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0837093    0.0652286   0.1021901
6-24 months   IRC              INDIA                          0                    NA                0.0281090    0.0098567   0.0463612
6-24 months   JiVitA-3         BANGLADESH                     0                    NA                0.0324709    0.0289475   0.0359944
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.0511168    0.0433139   0.0589197
6-24 months   Keneba           GAMBIA                         0                    NA                0.0181479    0.0119771   0.0243187
6-24 months   LCNI-5           MALAWI                         0                    NA                0.0366141    0.0224339   0.0507942
6-24 months   MAL-ED           BANGLADESH                     0                    NA                0.0251543    0.0001716   0.0501370
6-24 months   MAL-ED           INDIA                          0                    NA                0.0280076    0.0007020   0.0553131
6-24 months   MAL-ED           NEPAL                          0                    NA                0.0197759    0.0000540   0.0394979
6-24 months   MAL-ED           PERU                           0                    NA                0.0153170   -0.0006592   0.0312932
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0080444   -0.0098296   0.0259183
6-24 months   NIH-Birth        BANGLADESH                     0                    NA                0.0240920    0.0066526   0.0415314
6-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.0192922    0.0071622   0.0314222
6-24 months   PROVIDE          BANGLADESH                     0                    NA                0.0192450    0.0067760   0.0317141
6-24 months   ResPak           PAKISTAN                       0                    NA                0.0465209    0.0126856   0.0803561
6-24 months   SAS-CompFeed     INDIA                          0                    NA                0.0597123    0.0420900   0.0773347
6-24 months   SAS-FoodSuppl    INDIA                          0                    NA                0.0859591    0.0465436   0.1253746
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0092566    0.0045660   0.0139473
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0041794    0.0024590   0.0058998


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.2931914    0.1670029   0.4002640
0-24 months   CMIN             BANGLADESH                     0                    NA                0.2604339    0.1111259   0.3846620
0-24 months   COHORTS          GUATEMALA                      0                    NA                0.2047858    0.1022123   0.2956401
0-24 months   COHORTS          INDIA                          0                    NA                0.3128252    0.2714903   0.3518148
0-24 months   COHORTS          PHILIPPINES                    0                    NA                0.0748053    0.0493231   0.0996045
0-24 months   EE               PAKISTAN                       0                    NA                0.2502345    0.1406373   0.3458544
0-24 months   GMS-Nepal        NEPAL                          0                    NA                0.1146818    0.0547049   0.1708533
0-24 months   Guatemala BSC    GUATEMALA                      0                    NA                0.4842641    0.1540456   0.6855818
0-24 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.6713440    0.5834229   0.7407089
0-24 months   IRC              INDIA                          0                    NA                0.2100067    0.0986940   0.3075721
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                0.5325765    0.5039160   0.5595811
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.3887548    0.3394979   0.4343385
0-24 months   Keneba           GAMBIA                         0                    NA                0.1539385    0.1118754   0.1940093
0-24 months   LCNI-5           MALAWI                         0                    NA                0.7056891    0.4538749   0.8413937
0-24 months   MAL-ED           BANGLADESH                     0                    NA                0.2488363    0.0597111   0.3999218
0-24 months   MAL-ED           INDIA                          0                    NA                0.1954810    0.0565951   0.3139204
0-24 months   MAL-ED           NEPAL                          0                    NA                0.4928679    0.2094471   0.6746796
0-24 months   MAL-ED           PERU                           0                    NA                0.4323308    0.0107995   0.6742336
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.1583624   -0.0606925   0.3321780
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1709351   -0.0708039   0.3581004
0-24 months   NIH-Birth        BANGLADESH                     0                    NA                0.2000929    0.1166313   0.2756689
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.3130675    0.1716898   0.4303145
0-24 months   PROVIDE          BANGLADESH                     0                    NA                0.2232069    0.1223360   0.3124846
0-24 months   ResPak           PAKISTAN                       0                    NA                0.4885140    0.2491723   0.6515607
0-24 months   SAS-CompFeed     INDIA                          0                    NA                0.2894027    0.2318415   0.3426506
0-24 months   SAS-FoodSuppl    INDIA                          0                    NA                0.2853276    0.1734712   0.3820461
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1882664    0.1042103   0.2644351
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.2400569    0.1979945   0.2799134
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.6341140    0.3743864   0.7860140
0-6 months    COHORTS          INDIA                          0                    NA                0.7044382    0.6239451   0.7677020
0-6 months    COHORTS          PHILIPPINES                    0                    NA                0.2333518    0.1170763   0.3343146
0-6 months    EE               PAKISTAN                       0                    NA                0.4379670    0.1947331   0.6077311
0-6 months    GMS-Nepal        NEPAL                          0                    NA                0.4671211    0.2389127   0.6269023
0-6 months    IRC              INDIA                          0                    NA                0.4590255    0.1942387   0.6367989
0-6 months    JiVitA-3         BANGLADESH                     0                    NA                0.8122913    0.7783514   0.8410342
0-6 months    JiVitA-4         BANGLADESH                     0                    NA                0.8462344    0.7405288   0.9088768
0-6 months    Keneba           GAMBIA                         0                    NA                0.3726774    0.2329252   0.4869684
0-6 months    MAL-ED           INDIA                          0                    NA                0.6225564    0.2796741   0.8022233
0-6 months    NIH-Birth        BANGLADESH                     0                    NA                0.6587515    0.4660294   0.7819159
0-6 months    PROVIDE          BANGLADESH                     0                    NA                0.5919018    0.3546646   0.7419263
0-6 months    SAS-CompFeed     INDIA                          0                    NA                0.5306732    0.3286185   0.6719188
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4917387    0.1849308   0.6830582
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.6094680    0.5208251   0.6817128
6-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.2349916    0.0955222   0.3529549
6-24 months   CMIN             BANGLADESH                     0                    NA                0.2077127    0.0576562   0.3338745
6-24 months   COHORTS          GUATEMALA                      0                    NA                0.2046054    0.0934565   0.3021266
6-24 months   COHORTS          INDIA                          0                    NA                0.2396044    0.1972054   0.2797641
6-24 months   COHORTS          PHILIPPINES                    0                    NA                0.0600355    0.0356447   0.0838095
6-24 months   EE               PAKISTAN                       0                    NA                0.2364099    0.1205386   0.3370149
6-24 months   GMS-Nepal        NEPAL                          0                    NA                0.0747910    0.0172675   0.1289474
6-24 months   Guatemala BSC    GUATEMALA                      0                    NA                0.4165350    0.0363123   0.6467410
6-24 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.6715256    0.5836053   0.7408818
6-24 months   IRC              INDIA                          0                    NA                0.1800730    0.0597281   0.2850151
6-24 months   JiVitA-3         BANGLADESH                     0                    NA                0.3735671    0.3360521   0.4089623
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.3460262    0.2945351   0.3937590
6-24 months   Keneba           GAMBIA                         0                    NA                0.1234691    0.0815334   0.1634900
6-24 months   LCNI-5           MALAWI                         0                    NA                0.7033312    0.4495815   0.8400992
6-24 months   MAL-ED           BANGLADESH                     0                    NA                0.1717680   -0.0096992   0.3206211
6-24 months   MAL-ED           INDIA                          0                    NA                0.1400378   -0.0047653   0.2639723
6-24 months   MAL-ED           NEPAL                          0                    NA                0.2904589   -0.0216670   0.5072284
6-24 months   MAL-ED           PERU                           0                    NA                0.3759630   -0.0586014   0.6321353
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0938511   -0.1368976   0.2777663
6-24 months   NIH-Birth        BANGLADESH                     0                    NA                0.1145427    0.0288861   0.1926439
6-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.2235447    0.0799089   0.3447574
6-24 months   PROVIDE          BANGLADESH                     0                    NA                0.1575525    0.0535939   0.2500918
6-24 months   ResPak           PAKISTAN                       0                    NA                0.3541590    0.0697386   0.5516200
6-24 months   SAS-CompFeed     INDIA                          0                    NA                0.2641415    0.2015410   0.3218339
6-24 months   SAS-FoodSuppl    INDIA                          0                    NA                0.2377214    0.1211019   0.3388668
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1652268    0.0824309   0.2405518
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.1017834    0.0599247   0.1417783
