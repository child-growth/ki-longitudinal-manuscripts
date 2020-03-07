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

**Outcome Variable:** ever_swasted

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

agecat                        studyid          country                        enstunt    ever_swasted   n_cell       n
----------------------------  ---------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                     0      249     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                     1       44     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                     0       64     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                     1       11     368
0-24 months (no birth wast)   CMIN             BANGLADESH                     0                     0      149     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     0                     1       17     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     1                     0       82     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     1                     1       20     268
0-24 months (no birth wast)   COHORTS          GUATEMALA                      0                     0     1003    1332
0-24 months (no birth wast)   COHORTS          GUATEMALA                      0                     1       10    1332
0-24 months (no birth wast)   COHORTS          GUATEMALA                      1                     0      302    1332
0-24 months (no birth wast)   COHORTS          GUATEMALA                      1                     1       17    1332
0-24 months (no birth wast)   COHORTS          INDIA                          0                     0     6014    7135
0-24 months (no birth wast)   COHORTS          INDIA                          0                     1      274    7135
0-24 months (no birth wast)   COHORTS          INDIA                          1                     0      784    7135
0-24 months (no birth wast)   COHORTS          INDIA                          1                     1       63    7135
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    0                     0     2617    3019
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    0                     1      228    3019
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    1                     0      153    3019
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    1                     1       21    3019
0-24 months (no birth wast)   CONTENT          PERU                           0                     0      194     215
0-24 months (no birth wast)   CONTENT          PERU                           0                     1        1     215
0-24 months (no birth wast)   CONTENT          PERU                           1                     0       20     215
0-24 months (no birth wast)   CONTENT          PERU                           1                     1        0     215
0-24 months (no birth wast)   EE               PAKISTAN                       0                     0      183     377
0-24 months (no birth wast)   EE               PAKISTAN                       0                     1       28     377
0-24 months (no birth wast)   EE               PAKISTAN                       1                     0      128     377
0-24 months (no birth wast)   EE               PAKISTAN                       1                     1       38     377
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                     0      441     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                     1      112     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                     0       88     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                     1       19     660
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      0                     0      239     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      0                     1        0     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      1                     0       72     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      1                     1        2     313
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   0                     0     2434    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   0                     1       12    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   1                     0      632    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   1                     1       13    3091
0-24 months (no birth wast)   IRC              INDIA                          0                     0      288     409
0-24 months (no birth wast)   IRC              INDIA                          0                     1       69     409
0-24 months (no birth wast)   IRC              INDIA                          1                     0       44     409
0-24 months (no birth wast)   IRC              INDIA                          1                     1        8     409
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                     0    17486   26529
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                     1      599   26529
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                     0     8095   26529
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                     1      349   26529
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                     0     3727    5396
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                     1      132    5396
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                     0     1437    5396
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                     1      100    5396
0-24 months (no birth wast)   Keneba           GAMBIA                         0                     0     2218    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         0                     1      332    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         1                     0      267    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         1                     1       51    2868
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                     0      527     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                     1        3     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                     0      303     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                     1        4     837
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                     0      207     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                     1       10     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                     0       44     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                     1        2     263
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                     0      198     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                     1        4     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                     0       31     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                     1        0     233
0-24 months (no birth wast)   MAL-ED           INDIA                          0                     0      197     246
0-24 months (no birth wast)   MAL-ED           INDIA                          0                     1        9     246
0-24 months (no birth wast)   MAL-ED           INDIA                          1                     0       36     246
0-24 months (no birth wast)   MAL-ED           INDIA                          1                     1        4     246
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                     0      209     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                     1        1     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                     0       27     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                     1        2     239
0-24 months (no birth wast)   MAL-ED           PERU                           0                     0      262     302
0-24 months (no birth wast)   MAL-ED           PERU                           0                     1        4     302
0-24 months (no birth wast)   MAL-ED           PERU                           1                     0       36     302
0-24 months (no birth wast)   MAL-ED           PERU                           1                     1        0     302
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                     0      260     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                     1       10     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                     0       36     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                     1        2     308
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      213     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        6     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0       40     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        2     261
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     0                     0      465     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     0                     1       43     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     1                     0       83     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     1                     1       11     602
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                     0      637     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                     1       12     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                     0       97     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                     1        8     754
0-24 months (no birth wast)   PROBIT           BELARUS                        0                     0    16545   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        0                     1      202   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        1                     0      130   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        1                     1        2   16879
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                     0      606     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                     1       15     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                     0       62     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                     1        4     687
0-24 months (no birth wast)   ResPak           PAKISTAN                       0                     0      167     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       0                     1       32     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       1                     0       61     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       1                     1       20     280
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                     0      982    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                     1      101    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                     0      348    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                     1       71    1502
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                     0      226     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                     1       18     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                     0      131     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                     1       22     397
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0     2117    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1      105    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      146    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       16    2384
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                     0    11829   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                     1      414   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                     0     1330   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                     1       64   13637
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                     0      254     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                     1       26     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                     0       66     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                     1        4     350
0-6 months (no birth wast)    CMIN             BANGLADESH                     0                     0      163     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     0                     1        3     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     1                     0       95     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     1                     1        6     267
0-6 months (no birth wast)    COHORTS          GUATEMALA                      0                     0      891    1030
0-6 months (no birth wast)    COHORTS          GUATEMALA                      0                     1        1    1030
0-6 months (no birth wast)    COHORTS          GUATEMALA                      1                     0      137    1030
0-6 months (no birth wast)    COHORTS          GUATEMALA                      1                     1        1    1030
0-6 months (no birth wast)    COHORTS          INDIA                          0                     0     5681    6510
0-6 months (no birth wast)    COHORTS          INDIA                          0                     1      105    6510
0-6 months (no birth wast)    COHORTS          INDIA                          1                     0      711    6510
0-6 months (no birth wast)    COHORTS          INDIA                          1                     1       13    6510
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    0                     0     2763    2998
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    0                     1       63    2998
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    1                     0      169    2998
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    1                     1        3    2998
0-6 months (no birth wast)    CONTENT          PERU                           0                     0      194     215
0-6 months (no birth wast)    CONTENT          PERU                           0                     1        1     215
0-6 months (no birth wast)    CONTENT          PERU                           1                     0       20     215
0-6 months (no birth wast)    CONTENT          PERU                           1                     1        0     215
0-6 months (no birth wast)    EE               PAKISTAN                       0                     0      203     375
0-6 months (no birth wast)    EE               PAKISTAN                       0                     1        7     375
0-6 months (no birth wast)    EE               PAKISTAN                       1                     0      152     375
0-6 months (no birth wast)    EE               PAKISTAN                       1                     1       13     375
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                     0      509     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                     1       28     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                     0      102     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                     1        3     642
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      0                     0      223     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      0                     1        0     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      1                     0       67     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      1                     1        0     290
0-6 months (no birth wast)    IRC              INDIA                          0                     0      285     390
0-6 months (no birth wast)    IRC              INDIA                          0                     1       54     390
0-6 months (no birth wast)    IRC              INDIA                          1                     0       48     390
0-6 months (no birth wast)    IRC              INDIA                          1                     1        3     390
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                     0    17576   26234
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                     1      314   26234
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                     0     8223   26234
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                     1      121   26234
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                     0     3551    4957
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                     1       15    4957
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                     0     1385    4957
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                     1        6    4957
0-6 months (no birth wast)    Keneba           GAMBIA                         0                     0     2110    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         0                     1       80    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         1                     0      219    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         1                     1       15    2424
0-6 months (no birth wast)    LCNI-5           MALAWI                         0                     0      171     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         0                     1        0     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         1                     0       97     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         1                     1        0     268
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                     0      209     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                     1        7     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                     0       46     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                     1        0     262
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                     0      199     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                     1        3     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                     0       31     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                     1        0     233
0-6 months (no birth wast)    MAL-ED           INDIA                          0                     0      198     244
0-6 months (no birth wast)    MAL-ED           INDIA                          0                     1        7     244
0-6 months (no birth wast)    MAL-ED           INDIA                          1                     0       39     244
0-6 months (no birth wast)    MAL-ED           INDIA                          1                     1        0     244
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                     0      208     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                     1        0     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                     0       28     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                     1        1     237
0-6 months (no birth wast)    MAL-ED           PERU                           0                     0      265     302
0-6 months (no birth wast)    MAL-ED           PERU                           0                     1        1     302
0-6 months (no birth wast)    MAL-ED           PERU                           1                     0       36     302
0-6 months (no birth wast)    MAL-ED           PERU                           1                     1        0     302
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                     0      267     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                     1        2     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                     0       37     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                     1        1     307
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      217     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        2     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0       41     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        1     261
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     0                     0      486     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     0                     1        9     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     1                     0       89     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     1                     1        0     584
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                     0      644     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                     1        1     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                     0      104     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                     1        0     749
0-6 months (no birth wast)    PROBIT           BELARUS                        0                     0    16373   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        0                     1      190   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        1                     0      128   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        1                     1        2   16693
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                     0      613     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                     1        5     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                     0       64     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                     1        1     683
0-6 months (no birth wast)    ResPak           PAKISTAN                       0                     0      188     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       0                     1       10     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       1                     0       66     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       1                     1       12     276
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                     0     1038    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                     1       33    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                     0      389    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                     1       13    1473
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          0                     0      211     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          0                     1        0     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          1                     0      130     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          1                     1        0     341
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0     2176    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       38    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      158    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1        4    2376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                     0    11935   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                     1      121   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                     0     1309   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                     1       11   13376
6-24 months                   CMC-V-BCS-2002   INDIA                          0                     0      275     373
6-24 months                   CMC-V-BCS-2002   INDIA                          0                     1       21     373
6-24 months                   CMC-V-BCS-2002   INDIA                          1                     0       68     373
6-24 months                   CMC-V-BCS-2002   INDIA                          1                     1        9     373
6-24 months                   CMIN             BANGLADESH                     0                     0      144     252
6-24 months                   CMIN             BANGLADESH                     0                     1       14     252
6-24 months                   CMIN             BANGLADESH                     1                     0       79     252
6-24 months                   CMIN             BANGLADESH                     1                     1       15     252
6-24 months                   COHORTS          GUATEMALA                      0                     0      898    1220
6-24 months                   COHORTS          GUATEMALA                      0                     1       12    1220
6-24 months                   COHORTS          GUATEMALA                      1                     0      292    1220
6-24 months                   COHORTS          GUATEMALA                      1                     1       18    1220
6-24 months                   COHORTS          INDIA                          0                     0     5910    6941
6-24 months                   COHORTS          INDIA                          0                     1      191    6941
6-24 months                   COHORTS          INDIA                          1                     0      776    6941
6-24 months                   COHORTS          INDIA                          1                     1       64    6941
6-24 months                   COHORTS          PHILIPPINES                    0                     0     2476    2809
6-24 months                   COHORTS          PHILIPPINES                    0                     1      170    2809
6-24 months                   COHORTS          PHILIPPINES                    1                     0      145    2809
6-24 months                   COHORTS          PHILIPPINES                    1                     1       18    2809
6-24 months                   CONTENT          PERU                           0                     0      195     215
6-24 months                   CONTENT          PERU                           0                     1        0     215
6-24 months                   CONTENT          PERU                           1                     0       20     215
6-24 months                   CONTENT          PERU                           1                     1        0     215
6-24 months                   EE               PAKISTAN                       0                     0      185     374
6-24 months                   EE               PAKISTAN                       0                     1       24     374
6-24 months                   EE               PAKISTAN                       1                     0      138     374
6-24 months                   EE               PAKISTAN                       1                     1       27     374
6-24 months                   GMS-Nepal        NEPAL                          0                     0      400     590
6-24 months                   GMS-Nepal        NEPAL                          0                     1       94     590
6-24 months                   GMS-Nepal        NEPAL                          1                     0       78     590
6-24 months                   GMS-Nepal        NEPAL                          1                     1       18     590
6-24 months                   Guatemala BSC    GUATEMALA                      0                     0      211     277
6-24 months                   Guatemala BSC    GUATEMALA                      0                     1        0     277
6-24 months                   Guatemala BSC    GUATEMALA                      1                     0       64     277
6-24 months                   Guatemala BSC    GUATEMALA                      1                     1        2     277
6-24 months                   iLiNS-Zinc       BURKINA FASO                   0                     0     2464    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   0                     1       69    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   1                     0      637    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   1                     1       96    3266
6-24 months                   IRC              INDIA                          0                     0      338     410
6-24 months                   IRC              INDIA                          0                     1       20     410
6-24 months                   IRC              INDIA                          1                     0       46     410
6-24 months                   IRC              INDIA                          1                     1        6     410
6-24 months                   JiVitA-3         BANGLADESH                     0                     0    11690   17298
6-24 months                   JiVitA-3         BANGLADESH                     0                     1      311   17298
6-24 months                   JiVitA-3         BANGLADESH                     1                     0     5055   17298
6-24 months                   JiVitA-3         BANGLADESH                     1                     1      242   17298
6-24 months                   JiVitA-4         BANGLADESH                     0                     0     3744    5430
6-24 months                   JiVitA-4         BANGLADESH                     0                     1      132    5430
6-24 months                   JiVitA-4         BANGLADESH                     1                     0     1447    5430
6-24 months                   JiVitA-4         BANGLADESH                     1                     1      107    5430
6-24 months                   Keneba           GAMBIA                         0                     0     2156    2738
6-24 months                   Keneba           GAMBIA                         0                     1      274    2738
6-24 months                   Keneba           GAMBIA                         1                     0      261    2738
6-24 months                   Keneba           GAMBIA                         1                     1       47    2738
6-24 months                   LCNI-5           MALAWI                         0                     0      515     826
6-24 months                   LCNI-5           MALAWI                         0                     1        3     826
6-24 months                   LCNI-5           MALAWI                         1                     0      303     826
6-24 months                   LCNI-5           MALAWI                         1                     1        5     826
6-24 months                   MAL-ED           BANGLADESH                     0                     0      198     240
6-24 months                   MAL-ED           BANGLADESH                     0                     1        3     240
6-24 months                   MAL-ED           BANGLADESH                     1                     0       37     240
6-24 months                   MAL-ED           BANGLADESH                     1                     1        2     240
6-24 months                   MAL-ED           BRAZIL                         0                     0      181     207
6-24 months                   MAL-ED           BRAZIL                         0                     1        1     207
6-24 months                   MAL-ED           BRAZIL                         1                     0       25     207
6-24 months                   MAL-ED           BRAZIL                         1                     1        0     207
6-24 months                   MAL-ED           INDIA                          0                     0      195     235
6-24 months                   MAL-ED           INDIA                          0                     1        2     235
6-24 months                   MAL-ED           INDIA                          1                     0       34     235
6-24 months                   MAL-ED           INDIA                          1                     1        4     235
6-24 months                   MAL-ED           NEPAL                          0                     0      206     235
6-24 months                   MAL-ED           NEPAL                          0                     1        1     235
6-24 months                   MAL-ED           NEPAL                          1                     0       27     235
6-24 months                   MAL-ED           NEPAL                          1                     1        1     235
6-24 months                   MAL-ED           PERU                           0                     0      233     270
6-24 months                   MAL-ED           PERU                           0                     1        3     270
6-24 months                   MAL-ED           PERU                           1                     0       34     270
6-24 months                   MAL-ED           PERU                           1                     1        0     270
6-24 months                   MAL-ED           SOUTH AFRICA                   0                     0      222     259
6-24 months                   MAL-ED           SOUTH AFRICA                   0                     1        9     259
6-24 months                   MAL-ED           SOUTH AFRICA                   1                     0       27     259
6-24 months                   MAL-ED           SOUTH AFRICA                   1                     1        1     259
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0      202     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        4     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0       38     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        1     245
6-24 months                   NIH-Birth        BANGLADESH                     0                     0      419     542
6-24 months                   NIH-Birth        BANGLADESH                     0                     1       37     542
6-24 months                   NIH-Birth        BANGLADESH                     1                     0       75     542
6-24 months                   NIH-Birth        BANGLADESH                     1                     1       11     542
6-24 months                   NIH-Crypto       BANGLADESH                     0                     0      615     730
6-24 months                   NIH-Crypto       BANGLADESH                     0                     1       12     730
6-24 months                   NIH-Crypto       BANGLADESH                     1                     0       95     730
6-24 months                   NIH-Crypto       BANGLADESH                     1                     1        8     730
6-24 months                   PROBIT           BELARUS                        0                     0    16466   16598
6-24 months                   PROBIT           BELARUS                        0                     1       12   16598
6-24 months                   PROBIT           BELARUS                        1                     0      120   16598
6-24 months                   PROBIT           BELARUS                        1                     1        0   16598
6-24 months                   PROVIDE          BANGLADESH                     0                     0      543     615
6-24 months                   PROVIDE          BANGLADESH                     0                     1       10     615
6-24 months                   PROVIDE          BANGLADESH                     1                     0       59     615
6-24 months                   PROVIDE          BANGLADESH                     1                     1        3     615
6-24 months                   ResPak           PAKISTAN                       0                     0      147     236
6-24 months                   ResPak           PAKISTAN                       0                     1       22     236
6-24 months                   ResPak           PAKISTAN                       1                     0       56     236
6-24 months                   ResPak           PAKISTAN                       1                     1       11     236
6-24 months                   SAS-CompFeed     INDIA                          0                     0      933    1389
6-24 months                   SAS-CompFeed     INDIA                          0                     1       73    1389
6-24 months                   SAS-CompFeed     INDIA                          1                     0      322    1389
6-24 months                   SAS-CompFeed     INDIA                          1                     1       61    1389
6-24 months                   SAS-FoodSuppl    INDIA                          0                     0      219     402
6-24 months                   SAS-FoodSuppl    INDIA                          0                     1       25     402
6-24 months                   SAS-FoodSuppl    INDIA                          1                     0      132     402
6-24 months                   SAS-FoodSuppl    INDIA                          1                     1       26     402
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0     1810    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       70    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      125    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       13    2018
6-24 months                   ZVITAMBO         ZIMBABWE                       0                     0     9371   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       0                     1      300   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       1                     0     1088   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       1                     1       56   10815


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ZVITAMBO, country: ZIMBABWE
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

* agecat: 0-24 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/ba14c494-5086-4718-9c53-137372e4749c/0a9388dd-c8a4-4993-a9c2-c1dbf47e4fe1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ba14c494-5086-4718-9c53-137372e4749c/0a9388dd-c8a4-4993-a9c2-c1dbf47e4fe1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ba14c494-5086-4718-9c53-137372e4749c/0a9388dd-c8a4-4993-a9c2-c1dbf47e4fe1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ba14c494-5086-4718-9c53-137372e4749c/0a9388dd-c8a4-4993-a9c2-c1dbf47e4fe1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                0.1499864   0.1088346   0.1911381
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    NA                0.1407190   0.0577623   0.2236757
0-24 months (no birth wast)   CMIN             BANGLADESH                     0                    NA                0.1038186   0.0576197   0.1500175
0-24 months (no birth wast)   CMIN             BANGLADESH                     1                    NA                0.1971871   0.1177313   0.2766430
0-24 months (no birth wast)   COHORTS          GUATEMALA                      0                    NA                0.0098811   0.0037745   0.0159876
0-24 months (no birth wast)   COHORTS          GUATEMALA                      1                    NA                0.0533777   0.0282947   0.0784607
0-24 months (no birth wast)   COHORTS          INDIA                          0                    NA                0.0437566   0.0387111   0.0488022
0-24 months (no birth wast)   COHORTS          INDIA                          1                    NA                0.0714189   0.0538824   0.0889555
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    0                    NA                0.0801255   0.0701418   0.0901093
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    1                    NA                0.1180084   0.0697604   0.1662564
0-24 months (no birth wast)   EE               PAKISTAN                       0                    NA                0.1356812   0.0900572   0.1813052
0-24 months (no birth wast)   EE               PAKISTAN                       1                    NA                0.2307701   0.1665489   0.2949912
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    NA                0.2023183   0.1687413   0.2358954
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                    NA                0.1787760   0.1030693   0.2544828
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0048951   0.0014478   0.0083424
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0200696   0.0052216   0.0349175
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                0.1932773   0.1522665   0.2342881
0-24 months (no birth wast)   IRC              INDIA                          1                    NA                0.1538462   0.0556610   0.2520313
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    NA                0.0334114   0.0304010   0.0364218
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                    NA                0.0404679   0.0354820   0.0454538
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    NA                0.0347734   0.0280899   0.0414569
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                    NA                0.0624533   0.0502489   0.0746578
0-24 months (no birth wast)   Keneba           GAMBIA                         0                    NA                0.1301528   0.1170877   0.1432179
0-24 months (no birth wast)   Keneba           GAMBIA                         1                    NA                0.1685293   0.1262472   0.2108114
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     0                    NA                0.0851500   0.0609331   0.1093668
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     1                    NA                0.1185724   0.0522745   0.1848704
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                0.0184900   0.0081188   0.0288612
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    NA                0.0761905   0.0254116   0.1269694
0-24 months (no birth wast)   ResPak           PAKISTAN                       0                    NA                0.1510766   0.1011771   0.2009760
0-24 months (no birth wast)   ResPak           PAKISTAN                       1                    NA                0.2713060   0.1740345   0.3685775
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    NA                0.0944281   0.0736559   0.1152002
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                    NA                0.1643226   0.1229043   0.2057408
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    NA                0.0725642   0.0395580   0.1055704
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                    NA                0.1396632   0.0835903   0.1957360
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0472912   0.0384625   0.0561200
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0911337   0.0485745   0.1336929
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                0.0339019   0.0306924   0.0371115
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    NA                0.0444365   0.0335669   0.0553062
0-6 months (no birth wast)    COHORTS          INDIA                          0                    NA                0.0180813   0.0146482   0.0215144
0-6 months (no birth wast)    COHORTS          INDIA                          1                    NA                0.0183962   0.0085765   0.0282159
0-6 months (no birth wast)    EE               PAKISTAN                       0                    NA                0.0333333   0.0090227   0.0576440
0-6 months (no birth wast)    EE               PAKISTAN                       1                    NA                0.0787879   0.0376260   0.1199498
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    NA                0.0176636   0.0153979   0.0199294
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                    NA                0.0142743   0.0113933   0.0171552
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    NA                0.0042064   0.0010934   0.0073194
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                    NA                0.0043134   0.0002338   0.0083930
0-6 months (no birth wast)    Keneba           GAMBIA                         0                    NA                0.0365249   0.0286610   0.0443888
0-6 months (no birth wast)    Keneba           GAMBIA                         1                    NA                0.0635107   0.0312650   0.0957563
0-6 months (no birth wast)    ResPak           PAKISTAN                       0                    NA                0.0481319   0.0182224   0.0780414
0-6 months (no birth wast)    ResPak           PAKISTAN                       1                    NA                0.1661863   0.0811298   0.2512429
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    NA                0.0319066   0.0189500   0.0448632
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                    NA                0.0299301   0.0176740   0.0421862
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    NA                0.0100262   0.0082469   0.0118054
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                    NA                0.0088916   0.0037556   0.0140276
6-24 months                   CMC-V-BCS-2002   INDIA                          0                    NA                0.0709459   0.0416593   0.1002326
6-24 months                   CMC-V-BCS-2002   INDIA                          1                    NA                0.1168831   0.0450259   0.1887404
6-24 months                   CMIN             BANGLADESH                     0                    NA                0.0886166   0.0440076   0.1332255
6-24 months                   CMIN             BANGLADESH                     1                    NA                0.1676320   0.0886912   0.2465728
6-24 months                   COHORTS          GUATEMALA                      0                    NA                0.0133318   0.0058291   0.0208345
6-24 months                   COHORTS          GUATEMALA                      1                    NA                0.0570512   0.0307468   0.0833556
6-24 months                   COHORTS          INDIA                          0                    NA                0.0315538   0.0271768   0.0359307
6-24 months                   COHORTS          INDIA                          1                    NA                0.0724028   0.0545081   0.0902976
6-24 months                   COHORTS          PHILIPPINES                    0                    NA                0.0642004   0.0548572   0.0735436
6-24 months                   COHORTS          PHILIPPINES                    1                    NA                0.1116196   0.0622082   0.1610310
6-24 months                   EE               PAKISTAN                       0                    NA                0.1188285   0.0757244   0.1619327
6-24 months                   EE               PAKISTAN                       1                    NA                0.1674583   0.1112185   0.2236980
6-24 months                   GMS-Nepal        NEPAL                          0                    NA                0.1915178   0.1567843   0.2262513
6-24 months                   GMS-Nepal        NEPAL                          1                    NA                0.1825754   0.1025977   0.2625531
6-24 months                   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0277486   0.0166791   0.0388181
6-24 months                   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1236771   0.0782415   0.1691128
6-24 months                   IRC              INDIA                          0                    NA                0.0558659   0.0320467   0.0796851
6-24 months                   IRC              INDIA                          1                    NA                0.1153846   0.0284430   0.2023263
6-24 months                   JiVitA-3         BANGLADESH                     0                    NA                0.0262825   0.0232099   0.0293551
6-24 months                   JiVitA-3         BANGLADESH                     1                    NA                0.0448888   0.0383620   0.0514156
6-24 months                   JiVitA-4         BANGLADESH                     0                    NA                0.0343264   0.0277960   0.0408569
6-24 months                   JiVitA-4         BANGLADESH                     1                    NA                0.0669355   0.0536699   0.0802011
6-24 months                   Keneba           GAMBIA                         0                    NA                0.1132064   0.1005953   0.1258175
6-24 months                   Keneba           GAMBIA                         1                    NA                0.1486992   0.1086141   0.1887843
6-24 months                   NIH-Birth        BANGLADESH                     0                    NA                0.0804257   0.0553452   0.1055063
6-24 months                   NIH-Birth        BANGLADESH                     1                    NA                0.1065233   0.0352797   0.1777668
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                0.0191388   0.0084070   0.0298706
6-24 months                   NIH-Crypto       BANGLADESH                     1                    NA                0.0776699   0.0259454   0.1293945
6-24 months                   ResPak           PAKISTAN                       0                    NA                0.1281515   0.0776059   0.1786971
6-24 months                   ResPak           PAKISTAN                       1                    NA                0.1435408   0.0650596   0.2220220
6-24 months                   SAS-CompFeed     INDIA                          0                    NA                0.0728228   0.0476189   0.0980267
6-24 months                   SAS-CompFeed     INDIA                          1                    NA                0.1559855   0.1190107   0.1929602
6-24 months                   SAS-FoodSuppl    INDIA                          0                    NA                0.1022284   0.0639430   0.1405138
6-24 months                   SAS-FoodSuppl    INDIA                          1                    NA                0.1621998   0.1039618   0.2204378
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0371929   0.0286311   0.0457547
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0862130   0.0367577   0.1356683
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                0.0311789   0.0277070   0.0346509
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    NA                0.0474621   0.0349519   0.0599722


### Parameter: E(Y)


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1494565   0.1129794   0.1859337
0-24 months (no birth wast)   CMIN             BANGLADESH                     NA                   NA                0.1380597   0.0966822   0.1794372
0-24 months (no birth wast)   COHORTS          GUATEMALA                      NA                   NA                0.0202703   0.0126995   0.0278411
0-24 months (no birth wast)   COHORTS          INDIA                          NA                   NA                0.0472320   0.0423094   0.0521545
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    NA                   NA                0.0824776   0.0726632   0.0922921
0-24 months (no birth wast)   EE               PAKISTAN                       NA                   NA                0.1750663   0.1366545   0.2134781
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          NA                   NA                0.1984848   0.1680322   0.2289375
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0080880   0.0040249   0.0121511
0-24 months (no birth wast)   IRC              INDIA                          NA                   NA                0.1882641   0.1503318   0.2261964
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     NA                   NA                0.0357345   0.0331597   0.0383093
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     NA                   NA                0.0429948   0.0372768   0.0487128
0-24 months (no birth wast)   Keneba           GAMBIA                         NA                   NA                0.1335425   0.1210912   0.1459939
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     NA                   NA                0.0897010   0.0668555   0.1125465
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     NA                   NA                0.0265252   0.0150478   0.0380026
0-24 months (no birth wast)   ResPak           PAKISTAN                       NA                   NA                0.1857143   0.1400836   0.2313450
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          NA                   NA                0.1145140   0.0913579   0.1376700
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          NA                   NA                0.1007557   0.0711091   0.1304022
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0507550   0.0419422   0.0595679
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0350517   0.0319649   0.0381385
0-6 months (no birth wast)    COHORTS          INDIA                          NA                   NA                0.0181260   0.0148850   0.0213669
0-6 months (no birth wast)    EE               PAKISTAN                       NA                   NA                0.0533333   0.0305609   0.0761058
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     NA                   NA                0.0165815   0.0147663   0.0183968
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     NA                   NA                0.0042364   0.0017272   0.0067456
0-6 months (no birth wast)    Keneba           GAMBIA                         NA                   NA                0.0391914   0.0314649   0.0469180
0-6 months (no birth wast)    ResPak           PAKISTAN                       NA                   NA                0.0797101   0.0476990   0.1117213
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          NA                   NA                0.0312288   0.0186884   0.0437692
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0098684   0.0081932   0.0115436
6-24 months                   CMC-V-BCS-2002   INDIA                          NA                   NA                0.0804290   0.0527929   0.1080650
6-24 months                   CMIN             BANGLADESH                     NA                   NA                0.1150794   0.0756007   0.1545580
6-24 months                   COHORTS          GUATEMALA                      NA                   NA                0.0245902   0.0158961   0.0332842
6-24 months                   COHORTS          INDIA                          NA                   NA                0.0367382   0.0323123   0.0411641
6-24 months                   COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months                   EE               PAKISTAN                       NA                   NA                0.1363636   0.1015372   0.1711900
6-24 months                   GMS-Nepal        NEPAL                          NA                   NA                0.1898305   0.1581595   0.2215015
6-24 months                   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0505205   0.0383088   0.0627322
6-24 months                   IRC              INDIA                          NA                   NA                0.0634146   0.0397960   0.0870333
6-24 months                   JiVitA-3         BANGLADESH                     NA                   NA                0.0319690   0.0290813   0.0348568
6-24 months                   JiVitA-4         BANGLADESH                     NA                   NA                0.0440147   0.0381801   0.0498493
6-24 months                   Keneba           GAMBIA                         NA                   NA                0.1172389   0.1051866   0.1292911
6-24 months                   NIH-Birth        BANGLADESH                     NA                   NA                0.0885609   0.0646203   0.1125014
6-24 months                   NIH-Crypto       BANGLADESH                     NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months                   ResPak           PAKISTAN                       NA                   NA                0.1398305   0.0954893   0.1841717
6-24 months                   SAS-CompFeed     INDIA                          NA                   NA                0.0964723   0.0729872   0.1199573
6-24 months                   SAS-FoodSuppl    INDIA                          NA                   NA                0.1268657   0.0942904   0.1594410
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0411298   0.0324631   0.0497965
6-24 months                   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0329172   0.0295545   0.0362800


### Parameter: RR


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    0                 0.9382117   0.4893498    1.798797
0-24 months (no birth wast)   CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   CMIN             BANGLADESH                     1                    0                 1.8993424   1.0464040    3.447523
0-24 months (no birth wast)   COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   COHORTS          GUATEMALA                      1                    0                 5.4020057   2.4841628   11.747083
0-24 months (no birth wast)   COHORTS          INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   COHORTS          INDIA                          1                    0                 1.6321852   1.2444583    2.140713
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    1                    0                 1.4727941   0.9606470    2.257981
0-24 months (no birth wast)   EE               PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   EE               PAKISTAN                       1                    0                 1.7008258   1.0980661    2.634457
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                    0                 0.8836373   0.5607305    1.392496
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   1                    0                 4.0998971   1.7094353    9.833163
0-24 months (no birth wast)   IRC              INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   IRC              INDIA                          1                    0                 0.7959866   0.4062748    1.559522
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                    0                 1.2112003   1.0435312    1.405809
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                    0                 1.7960105   1.3579002    2.375472
0-24 months (no birth wast)   Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   Keneba           GAMBIA                         1                    0                 1.2948573   0.9884695    1.696213
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     1                    0                 1.3925133   0.7446060    2.604187
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    0                 4.1206349   1.7244576    9.846361
0-24 months (no birth wast)   ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ResPak           PAKISTAN                       1                    0                 1.7958179   1.1063660    2.914914
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                    0                 1.7401881   1.4226673    2.128576
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                    0                 1.9246832   1.0497574    3.528821
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.9270731   1.1653271    3.186754
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    0                 1.3107367   1.0083379    1.703824
0-6 months (no birth wast)    COHORTS          INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    COHORTS          INDIA                          1                    0                 1.0174168   0.5773294    1.792974
0-6 months (no birth wast)    EE               PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    EE               PAKISTAN                       1                    0                 2.3636364   0.9637413    5.796967
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                    0                 0.8081171   0.6408605    1.019026
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                    0                 1.0254493   0.3075485    3.419124
0-6 months (no birth wast)    Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    Keneba           GAMBIA                         1                    0                 1.7388320   1.0018814    3.017859
0-6 months (no birth wast)    ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ResPak           PAKISTAN                       1                    0                 3.4527284   1.5465292    7.708443
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                    0                 0.9380540   0.7933179    1.109196
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                    0                 0.8868414   0.4846768    1.622706
6-24 months                   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   CMC-V-BCS-2002   INDIA                          1                    0                 1.6474954   0.7856403    3.454814
6-24 months                   CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   CMIN             BANGLADESH                     1                    0                 1.8916548   0.9494403    3.768913
6-24 months                   COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   COHORTS          GUATEMALA                      1                    0                 4.2793387   2.0670490    8.859364
6-24 months                   COHORTS          INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   COHORTS          INDIA                          1                    0                 2.2945868   1.7285890    3.045911
6-24 months                   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   COHORTS          PHILIPPINES                    1                    0                 1.7386129   1.0909708    2.770720
6-24 months                   EE               PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   EE               PAKISTAN                       1                    0                 1.4092426   0.8597208    2.310011
6-24 months                   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   GMS-Nepal        NEPAL                          1                    0                 0.9533079   0.5933806    1.531556
6-24 months                   iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   iLiNS-Zinc       BURKINA FASO                   1                    0                 4.4570603   2.6358051    7.536744
6-24 months                   IRC              INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   IRC              INDIA                          1                    0                 2.0653846   0.8689731    4.909028
6-24 months                   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   JiVitA-3         BANGLADESH                     1                    0                 1.7079317   1.4222495    2.050998
6-24 months                   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   JiVitA-4         BANGLADESH                     1                    0                 1.9499689   1.4716524    2.583748
6-24 months                   Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   Keneba           GAMBIA                         1                    0                 1.3135227   0.9813875    1.758064
6-24 months                   NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   NIH-Birth        BANGLADESH                     1                    0                 1.3244925   0.6340494    2.766788
6-24 months                   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   NIH-Crypto       BANGLADESH                     1                    0                 4.0582524   1.6992154    9.692363
6-24 months                   ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ResPak           PAKISTAN                       1                    0                 1.1200865   0.5693767    2.203451
6-24 months                   SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   SAS-CompFeed     INDIA                          1                    0                 2.1419866   1.5111374    3.036194
6-24 months                   SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   SAS-FoodSuppl    INDIA                          1                    0                 1.5866410   0.9450048    2.663933
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.3179959   1.2491435    4.301431
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000    1.000000
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    0                 1.5222467   1.1434277    2.026569


### Parameter: PAR


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0005299   -0.0190415   0.0179817
0-24 months (no birth wast)   CMIN             BANGLADESH                     0                    NA                 0.0342411   -0.0003875   0.0688696
0-24 months (no birth wast)   COHORTS          GUATEMALA                      0                    NA                 0.0103892    0.0042145   0.0165639
0-24 months (no birth wast)   COHORTS          INDIA                          0                    NA                 0.0034753    0.0012797   0.0056710
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    0                    NA                 0.0023521   -0.0005183   0.0052225
0-24 months (no birth wast)   EE               PAKISTAN                       0                    NA                 0.0393851    0.0044295   0.0743408
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    NA                -0.0038335   -0.0168701   0.0092031
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0031929    0.0013412   0.0050445
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                -0.0050133   -0.0186015   0.0085750
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    NA                 0.0023231    0.0005445   0.0041016
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    NA                 0.0082214    0.0040889   0.0123540
0-24 months (no birth wast)   Keneba           GAMBIA                         0                    NA                 0.0033897   -0.0013255   0.0081049
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     0                    NA                 0.0045510   -0.0063185   0.0154206
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                 0.0080352    0.0006782   0.0153922
0-24 months (no birth wast)   ResPak           PAKISTAN                       0                    NA                 0.0346377    0.0042324   0.0650430
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    NA                 0.0200859    0.0116053   0.0285666
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    NA                 0.0281914    0.0029662   0.0534166
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0034638    0.0002349   0.0066927
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0011498   -0.0000260   0.0023255
0-6 months (no birth wast)    COHORTS          INDIA                          0                    NA                 0.0000447   -0.0010959   0.0011852
0-6 months (no birth wast)    EE               PAKISTAN                       0                    NA                 0.0200000   -0.0011581   0.0411581
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    NA                -0.0010821   -0.0022310   0.0000669
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    NA                 0.0000300   -0.0014141   0.0014742
0-6 months (no birth wast)    Keneba           GAMBIA                         0                    NA                 0.0026665   -0.0004745   0.0058075
0-6 months (no birth wast)    ResPak           PAKISTAN                       0                    NA                 0.0315783    0.0069224   0.0562341
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    NA                -0.0006778   -0.0023836   0.0010279
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0001577   -0.0006727   0.0003573
6-24 months                   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0094830   -0.0066466   0.0256126
6-24 months                   CMIN             BANGLADESH                     0                    NA                 0.0264628   -0.0063592   0.0592848
6-24 months                   COHORTS          GUATEMALA                      0                    NA                 0.0112584    0.0042579   0.0182589
6-24 months                   COHORTS          INDIA                          0                    NA                 0.0051845    0.0029253   0.0074437
6-24 months                   COHORTS          PHILIPPINES                    0                    NA                 0.0027274   -0.0001507   0.0056054
6-24 months                   EE               PAKISTAN                       0                    NA                 0.0175351   -0.0138303   0.0489005
6-24 months                   GMS-Nepal        NEPAL                          0                    NA                -0.0016873   -0.0157082   0.0123337
6-24 months                   iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0227719    0.0138978   0.0316461
6-24 months                   IRC              INDIA                          0                    NA                 0.0075487   -0.0040444   0.0191418
6-24 months                   JiVitA-3         BANGLADESH                     0                    NA                 0.0056865    0.0035176   0.0078553
6-24 months                   JiVitA-4         BANGLADESH                     0                    NA                 0.0096883    0.0053460   0.0140306
6-24 months                   Keneba           GAMBIA                         0                    NA                 0.0040325   -0.0007224   0.0087873
6-24 months                   NIH-Birth        BANGLADESH                     0                    NA                 0.0081351   -0.0038777   0.0201480
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                 0.0082585    0.0006596   0.0158574
6-24 months                   ResPak           PAKISTAN                       0                    NA                 0.0116790   -0.0179379   0.0412959
6-24 months                   SAS-CompFeed     INDIA                          0                    NA                 0.0236495    0.0133640   0.0339349
6-24 months                   SAS-FoodSuppl    INDIA                          0                    NA                 0.0246373   -0.0027969   0.0520714
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0039369    0.0004866   0.0073873
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0017383    0.0003541   0.0031225


### Parameter: PAF


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                -0.0035452   -0.1353613   0.1129669
0-24 months (no birth wast)   CMIN             BANGLADESH                     0                    NA                 0.2480163   -0.0367872   0.4545849
0-24 months (no birth wast)   COHORTS          GUATEMALA                      0                    NA                 0.5125330    0.2048383   0.7011626
0-24 months (no birth wast)   COHORTS          INDIA                          0                    NA                 0.0735797    0.0265876   0.1183031
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    0                    NA                 0.0285179   -0.0067811   0.0625793
0-24 months (no birth wast)   EE               PAKISTAN                       0                    NA                 0.2249726    0.0040411   0.3968953
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    NA                -0.0193138   -0.0871080   0.0442526
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.3947650    0.1469716   0.5705778
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                -0.0266288   -0.1012912   0.0429717
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    NA                 0.0650097    0.0140520   0.1133336
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    NA                 0.1912194    0.0884635   0.2823919
0-24 months (no birth wast)   Keneba           GAMBIA                         0                    NA                 0.0253832   -0.0105177   0.0600086
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     0                    NA                 0.0507357   -0.0777098   0.1638725
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                 0.3029276    0.0082660   0.5100400
0-24 months (no birth wast)   ResPak           PAKISTAN                       0                    NA                 0.1865109    0.0077575   0.3330616
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    NA                 0.1754015    0.1064929   0.2389958
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    NA                 0.2797999   -0.0053812   0.4840881
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0682452    0.0034944   0.1287887
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0328017   -0.0012084   0.0656564
0-6 months (no birth wast)    COHORTS          INDIA                          0                    NA                 0.0024640   -0.0624881   0.0634453
0-6 months (no birth wast)    EE               PAKISTAN                       0                    NA                 0.3750000   -0.1215451   0.6517082
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    NA                -0.0652583   -0.1362963   0.0013387
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    NA                 0.0070908   -0.4007295   0.2961748
0-6 months (no birth wast)    Keneba           GAMBIA                         0                    NA                 0.0680382   -0.0145451   0.1438994
0-6 months (no birth wast)    ResPak           PAKISTAN                       0                    NA                 0.3961637    0.0497226   0.6163033
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    NA                -0.0217055   -0.0768843   0.0306459
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0159834   -0.0694537   0.0348134
6-24 months                   CMC-V-BCS-2002   INDIA                          0                    NA                 0.1179054   -0.1028925   0.2944998
6-24 months                   CMIN             BANGLADESH                     0                    NA                 0.2299526   -0.1024494   0.4621313
6-24 months                   COHORTS          GUATEMALA                      0                    NA                 0.4578410    0.1626674   0.6489611
6-24 months                   COHORTS          INDIA                          0                    NA                 0.1411191    0.0799463   0.1982246
6-24 months                   COHORTS          PHILIPPINES                    0                    NA                 0.0407508   -0.0029043   0.0825057
6-24 months                   EE               PAKISTAN                       0                    NA                 0.1285907   -0.1310428   0.3286247
6-24 months                   GMS-Nepal        NEPAL                          0                    NA                -0.0088884   -0.0855234   0.0623364
6-24 months                   iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.4507461    0.2712513   0.5860304
6-24 months                   IRC              INDIA                          0                    NA                 0.1190374   -0.0782406   0.2802208
6-24 months                   JiVitA-3         BANGLADESH                     0                    NA                 0.1778745    0.1101633   0.2404332
6-24 months                   JiVitA-4         BANGLADESH                     0                    NA                 0.2201146    0.1167627   0.3113728
6-24 months                   Keneba           GAMBIA                         0                    NA                 0.0343952   -0.0069023   0.0739989
6-24 months                   NIH-Birth        BANGLADESH                     0                    NA                 0.0918593   -0.0526376   0.2165210
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                 0.3014354    0.0063132   0.5089071
6-24 months                   ResPak           PAKISTAN                       0                    NA                 0.0835225   -0.1531762   0.2716369
6-24 months                   SAS-CompFeed     INDIA                          0                    NA                 0.2451427    0.1153418   0.3558987
6-24 months                   SAS-FoodSuppl    INDIA                          0                    NA                 0.1941995   -0.0486272   0.3807958
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0957198    0.0102582   0.1738020
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0528081    0.0101591   0.0936194
