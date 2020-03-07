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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/8788d7cb-10c5-4c17-9250-782088168421/b07bfa0a-a9ce-4acb-90c6-864058adb791/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8788d7cb-10c5-4c17-9250-782088168421/b07bfa0a-a9ce-4acb-90c6-864058adb791/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8788d7cb-10c5-4c17-9250-782088168421/b07bfa0a-a9ce-4acb-90c6-864058adb791/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8788d7cb-10c5-4c17-9250-782088168421/b07bfa0a-a9ce-4acb-90c6-864058adb791/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.1621622   0.1201147   0.2042096
0-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.4935065   0.3816866   0.6053264
0-24 months   CMIN             BANGLADESH                     0                    NA                0.2559524   0.1898410   0.3220638
0-24 months   CMIN             BANGLADESH                     1                    NA                0.4757282   0.3791031   0.5723533
0-24 months   COHORTS          GUATEMALA                      0                    NA                0.0887805   0.0713617   0.1061993
0-24 months   COHORTS          GUATEMALA                      1                    NA                0.1790123   0.1372537   0.2207710
0-24 months   COHORTS          INDIA                          0                    NA                0.0605734   0.0547685   0.0663783
0-24 months   COHORTS          INDIA                          1                    NA                0.2943107   0.2647637   0.3238578
0-24 months   COHORTS          PHILIPPINES                    0                    NA                0.1691664   0.1554411   0.1828916
0-24 months   COHORTS          PHILIPPINES                    1                    NA                0.4213483   0.3487981   0.4938985
0-24 months   EE               PAKISTAN                       0                    NA                0.3380282   0.2744178   0.4016386
0-24 months   EE               PAKISTAN                       1                    NA                0.5903614   0.5154536   0.6652693
0-24 months   GMS-Nepal        NEPAL                          0                    NA                0.2608696   0.2249523   0.2967868
0-24 months   GMS-Nepal        NEPAL                          1                    NA                0.4684685   0.3755701   0.5613668
0-24 months   Guatemala BSC    GUATEMALA                      0                    NA                0.0376569   0.0134841   0.0618297
0-24 months   Guatemala BSC    GUATEMALA                      1                    NA                0.1842105   0.0969178   0.2715032
0-24 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0402685   0.0297663   0.0507706
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.4166667   0.2980013   0.5353321
0-24 months   IRC              INDIA                          0                    NA                0.1480447   0.1112113   0.1848781
0-24 months   IRC              INDIA                          1                    NA                0.4423077   0.3071514   0.5774640
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                0.0407186   0.0376330   0.0438042
0-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.1922133   0.1830959   0.2013306
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.0972723   0.0866318   0.1079127
0-24 months   JiVitA-4         BANGLADESH                     1                    NA                0.3213368   0.2947448   0.3479287
0-24 months   Keneba           GAMBIA                         0                    NA                0.1262098   0.1134010   0.1390187
0-24 months   Keneba           GAMBIA                         1                    NA                0.3212121   0.2708239   0.3716003
0-24 months   LCNI-5           MALAWI                         0                    NA                0.0150659   0.0046987   0.0254331
0-24 months   LCNI-5           MALAWI                         1                    NA                0.1132686   0.0779114   0.1486258
0-24 months   MAL-ED           BANGLADESH                     0                    NA                0.1105991   0.0687901   0.1524081
0-24 months   MAL-ED           BANGLADESH                     1                    NA                0.3260870   0.1903603   0.4618136
0-24 months   MAL-ED           INDIA                          0                    NA                0.1714286   0.1203532   0.2225040
0-24 months   MAL-ED           INDIA                          1                    NA                0.4390244   0.2868157   0.5912330
0-24 months   MAL-ED           NEPAL                          0                    NA                0.0473934   0.0186638   0.0761229
0-24 months   MAL-ED           NEPAL                          1                    NA                0.4137931   0.2341656   0.5934206
0-24 months   MAL-ED           PERU                           0                    NA                0.0225564   0.0046830   0.0404298
0-24 months   MAL-ED           PERU                           1                    NA                0.1666667   0.0447254   0.2886080
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.0620438   0.0334343   0.0906533
0-24 months   MAL-ED           SOUTH AFRICA                   1                    NA                0.1578947   0.0417712   0.2740183
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0730594   0.0385272   0.1075915
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1666667   0.0537415   0.2795918
0-24 months   NIH-Birth        BANGLADESH                     0                    NA                0.1761364   0.1436178   0.2086549
0-24 months   NIH-Birth        BANGLADESH                     1                    NA                0.4583333   0.3585823   0.5580844
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.0627871   0.0441692   0.0814051
0-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.2857143   0.1992489   0.3721796
0-24 months   PROVIDE          BANGLADESH                     0                    NA                0.0995261   0.0761882   0.1228639
0-24 months   PROVIDE          BANGLADESH                     1                    NA                0.4029851   0.2854525   0.5205176
0-24 months   ResPak           PAKISTAN                       0                    NA                0.0742574   0.0380370   0.1104778
0-24 months   ResPak           PAKISTAN                       1                    NA                0.3292683   0.2273724   0.4311641
0-24 months   SAS-CompFeed     INDIA                          0                    NA                0.1625344   0.1321586   0.1929102
0-24 months   SAS-CompFeed     INDIA                          1                    NA                0.4103774   0.3267156   0.4940391
0-24 months   SAS-FoodSuppl    INDIA                          0                    NA                0.2645914   0.2105964   0.3185865
0-24 months   SAS-FoodSuppl    INDIA                          1                    NA                0.5403727   0.4632992   0.6174461
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0403045   0.0321455   0.0484635
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1779141   0.1191910   0.2366372
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0320236   0.0289398   0.0351075
0-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.1338028   0.1160952   0.1515104
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.0308219   0.0109711   0.0506728
0-6 months    CMC-V-BCS-2002   INDIA                          1                    NA                0.2894737   0.1873734   0.3915739
0-6 months    COHORTS          INDIA                          0                    NA                0.0076372   0.0054848   0.0097897
0-6 months    COHORTS          INDIA                          1                    NA                0.1627078   0.1377754   0.1876403
0-6 months    COHORTS          PHILIPPINES                    0                    NA                0.0181374   0.0132518   0.0230230
0-6 months    COHORTS          PHILIPPINES                    1                    NA                0.1129944   0.0663473   0.1596414
0-6 months    EE               PAKISTAN                       0                    NA                0.0845070   0.0471041   0.1219100
0-6 months    EE               PAKISTAN                       1                    NA                0.2349398   0.1703604   0.2995191
0-6 months    GMS-Nepal        NEPAL                          0                    NA                0.0278261   0.0143728   0.0412794
0-6 months    GMS-Nepal        NEPAL                          1                    NA                0.1801802   0.1086291   0.2517312
0-6 months    IRC              INDIA                          0                    NA                0.0335196   0.0148522   0.0521870
0-6 months    IRC              INDIA                          1                    NA                0.2549020   0.1351486   0.3746554
0-6 months    JiVitA-3         BANGLADESH                     0                    NA                0.0071487   0.0058800   0.0084174
0-6 months    JiVitA-3         BANGLADESH                     1                    NA                0.1098811   0.1028060   0.1169561
0-6 months    JiVitA-4         BANGLADESH                     0                    NA                0.0041040   0.0018434   0.0063645
0-6 months    JiVitA-4         BANGLADESH                     1                    NA                0.0835073   0.0662848   0.1007298
0-6 months    Keneba           GAMBIA                         0                    NA                0.0179856   0.0124611   0.0235101
0-6 months    Keneba           GAMBIA                         1                    NA                0.1260504   0.0838746   0.1682262
0-6 months    MAL-ED           INDIA                          0                    NA                0.0285714   0.0059939   0.0511490
0-6 months    MAL-ED           INDIA                          1                    NA                0.3170732   0.1743515   0.4597948
0-6 months    NIH-Birth        BANGLADESH                     0                    NA                0.0246212   0.0113924   0.0378501
0-6 months    NIH-Birth        BANGLADESH                     1                    NA                0.3404255   0.2445569   0.4362942
0-6 months    PROVIDE          BANGLADESH                     0                    NA                0.0173776   0.0071906   0.0275645
0-6 months    PROVIDE          BANGLADESH                     1                    NA                0.2835821   0.1755771   0.3915871
0-6 months    SAS-CompFeed     INDIA                          0                    NA                0.0321691   0.0166843   0.0476540
0-6 months    SAS-CompFeed     INDIA                          1                    NA                0.1706731   0.1019528   0.2393934
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0040305   0.0014020   0.0066589
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0613497   0.0245026   0.0981968
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.0047219   0.0035198   0.0059239
0-6 months    ZVITAMBO         ZIMBABWE                       1                    NA                0.0799408   0.0654788   0.0944028
6-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.1452703   0.1050738   0.1854667
6-24 months   CMC-V-BCS-2002   INDIA                          1                    NA                0.3506494   0.2439254   0.4573733
6-24 months   CMIN             BANGLADESH                     0                    NA                0.2721519   0.2026155   0.3416883
6-24 months   CMIN             BANGLADESH                     1                    NA                0.4623656   0.3608320   0.5638992
6-24 months   COHORTS          GUATEMALA                      0                    NA                0.0891089   0.0705805   0.1076373
6-24 months   COHORTS          GUATEMALA                      1                    NA                0.1779935   0.1353270   0.2206600
6-24 months   COHORTS          INDIA                          0                    NA                0.0624488   0.0563767   0.0685209
6-24 months   COHORTS          INDIA                          1                    NA                0.2341697   0.2054785   0.2628608
6-24 months   COHORTS          PHILIPPINES                    0                    NA                0.1784499   0.1638555   0.1930444
6-24 months   COHORTS          PHILIPPINES                    1                    NA                0.3926380   0.3176570   0.4676191
6-24 months   EE               PAKISTAN                       0                    NA                0.3205742   0.2572171   0.3839312
6-24 months   EE               PAKISTAN                       1                    NA                0.5460123   0.4694769   0.6225476
6-24 months   GMS-Nepal        NEPAL                          0                    NA                0.2995951   0.2591660   0.3400243
6-24 months   GMS-Nepal        NEPAL                          1                    NA                0.4583333   0.3585777   0.5580890
6-24 months   Guatemala BSC    GUATEMALA                      0                    NA                0.0379147   0.0120979   0.0637315
6-24 months   Guatemala BSC    GUATEMALA                      1                    NA                0.1515152   0.0648566   0.2381737
6-24 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0402685   0.0297663   0.0507706
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.4166667   0.2980013   0.5353321
6-24 months   IRC              INDIA                          0                    NA                0.1284916   0.0937852   0.1631981
6-24 months   IRC              INDIA                          1                    NA                0.3461538   0.2166898   0.4756179
6-24 months   JiVitA-3         BANGLADESH                     0                    NA                0.0533333   0.0489552   0.0577114
6-24 months   JiVitA-3         BANGLADESH                     1                    NA                0.1632576   0.1526219   0.1738932
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.0954592   0.0849044   0.1060140
6-24 months   JiVitA-4         BANGLADESH                     1                    NA                0.2781713   0.2539289   0.3024136
6-24 months   Keneba           GAMBIA                         0                    NA                0.1292713   0.1159267   0.1426159
6-24 months   Keneba           GAMBIA                         1                    NA                0.2875817   0.2368575   0.3383059
6-24 months   LCNI-5           MALAWI                         0                    NA                0.0154440   0.0048186   0.0260694
6-24 months   LCNI-5           MALAWI                         1                    NA                0.1136364   0.0781713   0.1491014
6-24 months   MAL-ED           BANGLADESH                     0                    NA                0.1194030   0.0744812   0.1643247
6-24 months   MAL-ED           BANGLADESH                     1                    NA                0.2894737   0.1449758   0.4339715
6-24 months   MAL-ED           INDIA                          0                    NA                0.1725888   0.1197068   0.2254708
6-24 months   MAL-ED           INDIA                          1                    NA                0.3421053   0.1909440   0.4932665
6-24 months   MAL-ED           NEPAL                          0                    NA                0.0483092   0.0190372   0.0775811
6-24 months   MAL-ED           NEPAL                          1                    NA                0.2142857   0.0619773   0.3665942
6-24 months   MAL-ED           PERU                           0                    NA                0.0254237   0.0053038   0.0455436
6-24 months   MAL-ED           PERU                           1                    NA                0.1470588   0.0277921   0.2663256
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0776699   0.0410454   0.1142944
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1282051   0.0230661   0.2333441
6-24 months   NIH-Birth        BANGLADESH                     0                    NA                0.1864035   0.1506270   0.2221800
6-24 months   NIH-Birth        BANGLADESH                     1                    NA                0.3372093   0.2372006   0.4372180
6-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.0653907   0.0460272   0.0847543
6-24 months   NIH-Crypto       BANGLADESH                     1                    NA                0.2135922   0.1343888   0.2927956
6-24 months   PROVIDE          BANGLADESH                     0                    NA                0.1032609   0.0778550   0.1286667
6-24 months   PROVIDE          BANGLADESH                     1                    NA                0.2903226   0.1772448   0.4034003
6-24 months   ResPak           PAKISTAN                       0                    NA                0.0828402   0.0411946   0.1244859
6-24 months   ResPak           PAKISTAN                       1                    NA                0.2537313   0.1493153   0.3581474
6-24 months   SAS-CompFeed     INDIA                          0                    NA                0.1640159   0.1371051   0.1909268
6-24 months   SAS-CompFeed     INDIA                          1                    NA                0.3890339   0.3160265   0.4620414
6-24 months   SAS-FoodSuppl    INDIA                          0                    NA                0.2786885   0.2223616   0.3350155
6-24 months   SAS-FoodSuppl    INDIA                          1                    NA                0.4904459   0.4121514   0.5687403
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0468334   0.0372779   0.0563890
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1811594   0.1168838   0.2454351
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0366119   0.0328683   0.0403554
6-24 months   ZVITAMBO         ZIMBABWE                       1                    NA                0.0786713   0.0630697   0.0942730


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
0-24 months   CMC-V-BCS-2002   INDIA                          1                    0                  3.043290    2.1567358    4.294274
0-24 months   CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   CMIN             BANGLADESH                     1                    0                  1.858659    1.3381217    2.581688
0-24 months   COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
0-24 months   COHORTS          GUATEMALA                      1                    0                  2.016348    1.4865759    2.734915
0-24 months   COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   COHORTS          INDIA                          1                    0                  4.858748    4.2291042    5.582135
0-24 months   COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
0-24 months   COHORTS          PHILIPPINES                    1                    0                  2.490733    2.0590266    3.012954
0-24 months   EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
0-24 months   EE               PAKISTAN                       1                    0                  1.746486    1.3918639    2.191459
0-24 months   GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   GMS-Nepal        NEPAL                          1                    0                  1.795796    1.4106280    2.286132
0-24 months   Guatemala BSC    GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
0-24 months   Guatemala BSC    GUATEMALA                      1                    0                  4.891813    2.2026861   10.863933
0-24 months   iLiNS-Zinc       BURKINA FASO                   0                    0                  1.000000    1.0000000    1.000000
0-24 months   iLiNS-Zinc       BURKINA FASO                   1                    0                 10.347222    7.0368104   15.214991
0-24 months   IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   IRC              INDIA                          1                    0                  2.987663    2.0146445    4.430624
0-24 months   JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   JiVitA-3         BANGLADESH                     1                    0                  4.720531    4.3377462    5.137096
0-24 months   JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   JiVitA-4         BANGLADESH                     1                    0                  3.303478    2.8858761    3.781509
0-24 months   Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
0-24 months   Keneba           GAMBIA                         1                    0                  2.545064    2.1113332    3.067896
0-24 months   LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
0-24 months   LCNI-5           MALAWI                         1                    0                  7.518204    3.5314685   16.005633
0-24 months   MAL-ED           BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   MAL-ED           BANGLADESH                     1                    0                  2.948370    1.6803167    5.173360
0-24 months   MAL-ED           INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   MAL-ED           INDIA                          1                    0                  2.560976    1.6213495    4.045146
0-24 months   MAL-ED           NEPAL                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   MAL-ED           NEPAL                          1                    0                  8.731034    4.1424511   18.402381
0-24 months   MAL-ED           PERU                           0                    0                  1.000000    1.0000000    1.000000
0-24 months   MAL-ED           PERU                           1                    0                  7.388889    2.5129690   21.725568
0-24 months   MAL-ED           SOUTH AFRICA                   0                    0                  1.000000    1.0000000    1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   1                    0                  2.544892    1.0682645    6.062612
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  2.281250    0.9986000    5.211397
0-24 months   NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   NIH-Birth        BANGLADESH                     1                    0                  2.602151    1.9560766    3.461617
0-24 months   NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   NIH-Crypto       BANGLADESH                     1                    0                  4.550523    2.9789002    6.951309
0-24 months   PROVIDE          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-24 months   PROVIDE          BANGLADESH                     1                    0                  4.049041    2.7850061    5.886784
0-24 months   ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
0-24 months   ResPak           PAKISTAN                       1                    0                  4.434146    2.4885022    7.900999
0-24 months   SAS-CompFeed     INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   SAS-CompFeed     INDIA                          1                    0                  2.524864    2.1651089    2.944396
0-24 months   SAS-FoodSuppl    INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-24 months   SAS-FoodSuppl    INDIA                          1                    0                  2.042291    1.5921714    2.619663
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  4.414247    2.9970833    6.501512
0-24 months   ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       1                    0                  4.178252    3.5474289    4.921250
0-6 months    CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    CMC-V-BCS-2002   INDIA                          1                    0                  9.391813    4.5065543   19.572858
0-6 months    COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    COHORTS          INDIA                          1                    0                 21.304558   15.4579483   29.362511
0-6 months    COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
0-6 months    COHORTS          PHILIPPINES                    1                    0                  6.229900    3.8054197   10.199047
0-6 months    EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
0-6 months    EE               PAKISTAN                       1                    0                  2.780121    1.6511674    4.680973
0-6 months    GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    GMS-Nepal        NEPAL                          1                    0                  6.475225    3.4636633   12.105259
0-6 months    IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    IRC              INDIA                          1                    0                  7.604575    3.6698339   15.758088
0-6 months    JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-6 months    JiVitA-3         BANGLADESH                     1                    0                 15.370765   12.7450298   18.537456
0-6 months    JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-6 months    JiVitA-4         BANGLADESH                     1                    0                 20.347947   11.3356534   36.525371
0-6 months    Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
0-6 months    Keneba           GAMBIA                         1                    0                  7.008403    4.4500092   11.037666
0-6 months    MAL-ED           INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    MAL-ED           INDIA                          1                    0                 11.097561    4.4696202   27.553987
0-6 months    NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-6 months    NIH-Birth        BANGLADESH                     1                    0                 13.826514    7.5380583   25.360972
0-6 months    PROVIDE          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
0-6 months    PROVIDE          BANGLADESH                     1                    0                 16.318860    8.1112404   32.831625
0-6 months    SAS-CompFeed     INDIA                          0                    0                  1.000000    1.0000000    1.000000
0-6 months    SAS-CompFeed     INDIA                          1                    0                  5.305495    3.0998314    9.080582
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 15.221540    6.2722591   36.939686
0-6 months    ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       1                    0                 16.929832   12.3885393   23.135836
6-24 months   CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   CMC-V-BCS-2002   INDIA                          1                    0                  2.413772    1.5997583    3.641986
6-24 months   CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   CMIN             BANGLADESH                     1                    0                  1.698925    1.2129914    2.379527
6-24 months   COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
6-24 months   COHORTS          GUATEMALA                      1                    0                  1.997483    1.4543562    2.743439
6-24 months   COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   COHORTS          INDIA                          1                    0                  3.749788    3.2068287    4.384677
6-24 months   COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
6-24 months   COHORTS          PHILIPPINES                    1                    0                  2.200270    1.7875339    2.708306
6-24 months   EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
6-24 months   EE               PAKISTAN                       1                    0                  1.703232    1.3367353    2.170213
6-24 months   GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   GMS-Nepal        NEPAL                          1                    0                  1.529842    1.1842101    1.976353
6-24 months   Guatemala BSC    GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
6-24 months   Guatemala BSC    GUATEMALA                      1                    0                  3.996212    1.6422918    9.724040
6-24 months   iLiNS-Zinc       BURKINA FASO                   0                    0                  1.000000    1.0000000    1.000000
6-24 months   iLiNS-Zinc       BURKINA FASO                   1                    0                 10.347222    7.0368104   15.214991
6-24 months   IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   IRC              INDIA                          1                    0                  2.693980    1.6983801    4.273206
6-24 months   JiVitA-3         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   JiVitA-3         BANGLADESH                     1                    0                  3.061079    2.7645161    3.389457
6-24 months   JiVitA-4         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   JiVitA-4         BANGLADESH                     1                    0                  2.914032    2.5339398    3.351139
6-24 months   Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
6-24 months   Keneba           GAMBIA                         1                    0                  2.224637    1.8134375    2.729076
6-24 months   LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
6-24 months   LCNI-5           MALAWI                         1                    0                  7.357954    3.4566776   15.662292
6-24 months   MAL-ED           BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   MAL-ED           BANGLADESH                     1                    0                  2.424342    1.2975620    4.529598
6-24 months   MAL-ED           INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   MAL-ED           INDIA                          1                    0                  1.982198    1.1577833    3.393648
6-24 months   MAL-ED           NEPAL                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   MAL-ED           NEPAL                          1                    0                  4.435714    1.7431481   11.287372
6-24 months   MAL-ED           PERU                           0                    0                  1.000000    1.0000000    1.000000
6-24 months   MAL-ED           PERU                           1                    0                  5.784314    1.8626489   17.962743
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                  1.650641    0.6409384    4.250979
6-24 months   NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   NIH-Birth        BANGLADESH                     1                    0                  1.809029    1.2706466    2.575527
6-24 months   NIH-Crypto       BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   NIH-Crypto       BANGLADESH                     1                    0                  3.266398    2.0322510    5.250020
6-24 months   PROVIDE          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6-24 months   PROVIDE          BANGLADESH                     1                    0                  2.811545    1.7736570    4.456772
6-24 months   ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
6-24 months   ResPak           PAKISTAN                       1                    0                  3.062900    1.5994897    5.865218
6-24 months   SAS-CompFeed     INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   SAS-CompFeed     INDIA                          1                    0                  2.371928    2.0288608    2.773006
6-24 months   SAS-FoodSuppl    INDIA                          0                    0                  1.000000    1.0000000    1.000000
6-24 months   SAS-FoodSuppl    INDIA                          1                    0                  1.759835    1.3602444    2.276811
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  3.868165    2.5689480    5.824448
6-24 months   ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       1                    0                  2.148794    1.7190706    2.685937


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.0684008    0.0402243   0.0965774
0-24 months   CMIN             BANGLADESH                     0                    NA                0.0835310    0.0372493   0.1298127
0-24 months   COHORTS          GUATEMALA                      0                    NA                0.0216717    0.0106115   0.0327319
0-24 months   COHORTS          INDIA                          0                    NA                0.0288619    0.0247517   0.0329722
0-24 months   COHORTS          PHILIPPINES                    0                    NA                0.0147417    0.0099409   0.0195424
0-24 months   EE               PAKISTAN                       0                    NA                0.1105206    0.0656657   0.1553756
0-24 months   GMS-Nepal        NEPAL                          0                    NA                0.0335911    0.0164883   0.0506939
0-24 months   Guatemala BSC    GUATEMALA                      0                    NA                0.0353590    0.0124312   0.0582868
0-24 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0843870    0.0655926   0.1031814
0-24 months   IRC              INDIA                          0                    NA                0.0373212    0.0171784   0.0574639
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                0.0481274    0.0450071   0.0512477
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.0640655    0.0555081   0.0726229
0-24 months   Keneba           GAMBIA                         0                    NA                0.0220909    0.0157878   0.0283939
0-24 months   LCNI-5           MALAWI                         0                    NA                0.0361246    0.0221970   0.0500522
0-24 months   MAL-ED           BANGLADESH                     0                    NA                0.0376899    0.0109452   0.0644346
0-24 months   MAL-ED           INDIA                          0                    NA                0.0437109    0.0147603   0.0726614
0-24 months   MAL-ED           NEPAL                          0                    NA                0.0442733    0.0175828   0.0709638
0-24 months   MAL-ED           PERU                           0                    NA                0.0171787    0.0015689   0.0327885
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.0116742   -0.0033029   0.0266512
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0150632   -0.0043938   0.0345203
0-24 months   NIH-Birth        BANGLADESH                     0                    NA                0.0434149    0.0254022   0.0614277
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.0308804    0.0174564   0.0443044
0-24 months   PROVIDE          BANGLADESH                     0                    NA                0.0290454    0.0158036   0.0422871
0-24 months   ResPak           PAKISTAN                       0                    NA                0.0736299    0.0396266   0.1076332
0-24 months   SAS-CompFeed     INDIA                          0                    NA                0.0694550    0.0511497   0.0877602
0-24 months   SAS-FoodSuppl    INDIA                          0                    NA                0.1062220    0.0677550   0.1446890
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0093616    0.0050962   0.0136269
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0103663    0.0084656   0.0122669
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.0534172    0.0294136   0.0774209
0-6 months    COHORTS          INDIA                          0                    NA                0.0183204    0.0151437   0.0214971
0-6 months    COHORTS          PHILIPPINES                    0                    NA                0.0055157    0.0026767   0.0083547
0-6 months    EE               PAKISTAN                       0                    NA                0.0658887    0.0323469   0.0994306
0-6 months    GMS-Nepal        NEPAL                          0                    NA                0.0246520    0.0121448   0.0371593
0-6 months    IRC              INDIA                          0                    NA                0.0276051    0.0109089   0.0443014
0-6 months    JiVitA-3         BANGLADESH                     0                    NA                0.0325291    0.0301756   0.0348826
0-6 months    JiVitA-4         BANGLADESH                     0                    NA                0.0224082    0.0173104   0.0275060
0-6 months    Keneba           GAMBIA                         0                    NA                0.0104466    0.0061454   0.0147477
0-6 months    MAL-ED           INDIA                          0                    NA                0.0471258    0.0200723   0.0741792
0-6 months    NIH-Birth        BANGLADESH                     0                    NA                0.0477261    0.0306074   0.0648447
0-6 months    PROVIDE          BANGLADESH                     0                    NA                0.0254796    0.0135831   0.0373760
0-6 months    SAS-CompFeed     INDIA                          0                    NA                0.0383096    0.0209566   0.0556626
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0038994    0.0013207   0.0064781
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.0073394    0.0058754   0.0088033
6-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.0423973    0.0173853   0.0674092
6-24 months   CMIN             BANGLADESH                     0                    NA                0.0704776    0.0234803   0.1174748
6-24 months   COHORTS          GUATEMALA                      0                    NA                0.0225495    0.0105503   0.0345488
6-24 months   COHORTS          INDIA                          0                    NA                0.0207164    0.0169415   0.0244913
6-24 months   COHORTS          PHILIPPINES                    0                    NA                0.0124333    0.0076275   0.0172390
6-24 months   EE               PAKISTAN                       0                    NA                0.0987807    0.0537821   0.1437793
6-24 months   GMS-Nepal        NEPAL                          0                    NA                0.0258286    0.0076868   0.0439703
6-24 months   Guatemala BSC    GUATEMALA                      0                    NA                0.0270673    0.0047788   0.0493557
6-24 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0843870    0.0655926   0.1031814
6-24 months   IRC              INDIA                          0                    NA                0.0276059    0.0092140   0.0459979
6-24 months   JiVitA-3         BANGLADESH                     0                    NA                0.0335880    0.0300828   0.0370931
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.0522659    0.0444701   0.0600617
6-24 months   Keneba           GAMBIA                         0                    NA                0.0177122    0.0115530   0.0238714
6-24 months   LCNI-5           MALAWI                         0                    NA                0.0366141    0.0224339   0.0507942
6-24 months   MAL-ED           BANGLADESH                     0                    NA                0.0270405    0.0017172   0.0523638
6-24 months   MAL-ED           INDIA                          0                    NA                0.0274112    0.0003089   0.0545134
6-24 months   MAL-ED           NEPAL                          0                    NA                0.0197759    0.0000540   0.0394979
6-24 months   MAL-ED           PERU                           0                    NA                0.0153170   -0.0006592   0.0312932
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0080444   -0.0098296   0.0259183
6-24 months   NIH-Birth        BANGLADESH                     0                    NA                0.0239286    0.0064474   0.0414098
6-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.0209106    0.0088120   0.0330093
6-24 months   PROVIDE          BANGLADESH                     0                    NA                0.0188890    0.0063644   0.0314135
6-24 months   ResPak           PAKISTAN                       0                    NA                0.0485157    0.0151154   0.0819160
6-24 months   SAS-CompFeed     INDIA                          0                    NA                0.0620460    0.0448096   0.0792824
6-24 months   SAS-FoodSuppl    INDIA                          0                    NA                0.0829075    0.0438102   0.1220048
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0091904    0.0045044   0.0138763
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.0044498    0.0027349   0.0061647


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.2966688    0.1719631   0.4025932
0-24 months   CMIN             BANGLADESH                     0                    NA                0.2460533    0.0982840   0.3696068
0-24 months   COHORTS          GUATEMALA                      0                    NA                0.1962089    0.0936324   0.2871764
0-24 months   COHORTS          INDIA                          0                    NA                0.3227129    0.2810462   0.3619648
0-24 months   COHORTS          PHILIPPINES                    0                    NA                0.0801578    0.0540980   0.1054997
0-24 months   EE               PAKISTAN                       0                    NA                0.2463960    0.1384827   0.3407921
0-24 months   GMS-Nepal        NEPAL                          0                    NA                0.1140766    0.0544687   0.1699268
0-24 months   Guatemala BSC    GUATEMALA                      0                    NA                0.4842641    0.1540456   0.6855818
0-24 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.6769619    0.5876736   0.7469150
0-24 months   IRC              INDIA                          0                    NA                0.2013378    0.0906633   0.2985423
0-24 months   JiVitA-3         BANGLADESH                     0                    NA                0.5416949    0.5136924   0.5680849
0-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.3970893    0.3478267   0.4426307
0-24 months   Keneba           GAMBIA                         0                    NA                0.1489601    0.1068654   0.1890708
0-24 months   LCNI-5           MALAWI                         0                    NA                0.7056891    0.4538749   0.8413937
0-24 months   MAL-ED           BANGLADESH                     0                    NA                0.2541652    0.0647098   0.4052439
0-24 months   MAL-ED           INDIA                          0                    NA                0.2031746    0.0623997   0.3228130
0-24 months   MAL-ED           NEPAL                          0                    NA                0.4829815    0.1980653   0.6666709
0-24 months   MAL-ED           PERU                           0                    NA                0.4323308    0.0107995   0.6742336
0-24 months   MAL-ED           SOUTH AFRICA                   0                    NA                0.1583624   -0.0606925   0.3321780
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1709351   -0.0708039   0.3581004
0-24 months   NIH-Birth        BANGLADESH                     0                    NA                0.1977439    0.1145843   0.2730930
0-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.3296810    0.1907455   0.4447636
0-24 months   PROVIDE          BANGLADESH                     0                    NA                0.2259084    0.1241474   0.3158462
0-24 months   ResPak           PAKISTAN                       0                    NA                0.4978784    0.2640302   0.6574232
0-24 months   SAS-CompFeed     INDIA                          0                    NA                0.2993886    0.2406970   0.3535436
0-24 months   SAS-FoodSuppl    INDIA                          0                    NA                0.2864566    0.1759410   0.3821509
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1884904    0.1045691   0.2645465
0-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.2445456    0.2026445   0.2842448
0-6 months    CMC-V-BCS-2002   INDIA                          0                    NA                0.6341140    0.3743864   0.7860140
0-6 months    COHORTS          INDIA                          0                    NA                0.7057808    0.6253207   0.7689626
0-6 months    COHORTS          PHILIPPINES                    0                    NA                0.2331899    0.1171397   0.3339856
0-6 months    EE               PAKISTAN                       0                    NA                0.4381023    0.1946356   0.6079675
0-6 months    GMS-Nepal        NEPAL                          0                    NA                0.4697585    0.2425011   0.6288363
0-6 months    IRC              INDIA                          0                    NA                0.4516201    0.1849635   0.6310343
0-6 months    JiVitA-3         BANGLADESH                     0                    NA                0.8198312    0.7874834   0.8472552
0-6 months    JiVitA-4         BANGLADESH                     0                    NA                0.8452044    0.7388466   0.9082468
0-6 months    Keneba           GAMBIA                         0                    NA                0.3674203    0.2276339   0.4819076
0-6 months    MAL-ED           INDIA                          0                    NA                0.6225564    0.2796741   0.8022233
0-6 months    NIH-Birth        BANGLADESH                     0                    NA                0.6596801    0.4670398   0.7826899
0-6 months    PROVIDE          BANGLADESH                     0                    NA                0.5945234    0.3557611   0.7447977
0-6 months    SAS-CompFeed     INDIA                          0                    NA                0.5435627    0.3395302   0.6845655
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4917387    0.1849308   0.6830582
0-6 months    ZVITAMBO         ZIMBABWE                       0                    NA                0.6085074    0.5197650   0.6808511
6-24 months   CMC-V-BCS-2002   INDIA                          0                    NA                0.2259170    0.0871245   0.3436077
6-24 months   CMIN             BANGLADESH                     0                    NA                0.2056962    0.0569058   0.3310122
6-24 months   COHORTS          GUATEMALA                      0                    NA                0.2019511    0.0913438   0.2990946
6-24 months   COHORTS          INDIA                          0                    NA                0.2490994    0.2062941   0.2895962
6-24 months   COHORTS          PHILIPPINES                    0                    NA                0.0651356    0.0398993   0.0897085
6-24 months   EE               PAKISTAN                       0                    NA                0.2355539    0.1199096   0.3360025
6-24 months   GMS-Nepal        NEPAL                          0                    NA                0.0793691    0.0219893   0.1333824
6-24 months   Guatemala BSC    GUATEMALA                      0                    NA                0.4165350    0.0363123   0.6467410
6-24 months   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.6769619    0.5876736   0.7469150
6-24 months   IRC              INDIA                          0                    NA                0.1768506    0.0556818   0.2824718
6-24 months   JiVitA-3         BANGLADESH                     0                    NA                0.3864181    0.3493282   0.4213938
6-24 months   JiVitA-4         BANGLADESH                     0                    NA                0.3538052    0.3025855   0.4012633
6-24 months   Keneba           GAMBIA                         0                    NA                0.1205049    0.0786311   0.1604757
6-24 months   LCNI-5           MALAWI                         0                    NA                0.7033312    0.4495815   0.8400992
6-24 months   MAL-ED           BANGLADESH                     0                    NA                0.1846482    0.0004100   0.3349287
6-24 months   MAL-ED           INDIA                          0                    NA                0.1370558   -0.0066227   0.2602266
6-24 months   MAL-ED           NEPAL                          0                    NA                0.2904589   -0.0216670   0.5072284
6-24 months   MAL-ED           PERU                           0                    NA                0.3759630   -0.0586014   0.6321353
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0938511   -0.1368976   0.2777663
6-24 months   NIH-Birth        BANGLADESH                     0                    NA                0.1137658    0.0278421   0.1920951
6-24 months   NIH-Crypto       BANGLADESH                     0                    NA                0.2422977    0.1007220   0.3615847
6-24 months   PROVIDE          BANGLADESH                     0                    NA                0.1546377    0.0502410   0.2475592
6-24 months   ResPak           PAKISTAN                       0                    NA                0.3693453    0.0923657   0.5618000
6-24 months   SAS-CompFeed     INDIA                          0                    NA                0.2744647    0.2147465   0.3296413
6-24 months   SAS-FoodSuppl    INDIA                          0                    NA                0.2292821    0.1138091   0.3297086
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1640441    0.0813530   0.2392919
6-24 months   ZVITAMBO         ZIMBABWE                       0                    NA                0.1083695    0.0667551   0.1481282
