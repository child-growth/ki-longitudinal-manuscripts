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

**Outcome Variable:** ever_wasted

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

agecat                        studyid          country                        enstunt    ever_wasted   n_cell       n
----------------------------  ---------------  -----------------------------  --------  ------------  -------  ------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    0      166     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    1      127     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    0       36     368
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    1       39     368
0-24 months (no birth wast)   CMIN             BANGLADESH                     0                    0      103     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     0                    1       63     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     1                    0       50     268
0-24 months (no birth wast)   CMIN             BANGLADESH                     1                    1       52     268
0-24 months (no birth wast)   COHORTS          GUATEMALA                      0                    0      910    1332
0-24 months (no birth wast)   COHORTS          GUATEMALA                      0                    1      103    1332
0-24 months (no birth wast)   COHORTS          GUATEMALA                      1                    0      263    1332
0-24 months (no birth wast)   COHORTS          GUATEMALA                      1                    1       56    1332
0-24 months (no birth wast)   COHORTS          INDIA                          0                    0     5189    7135
0-24 months (no birth wast)   COHORTS          INDIA                          0                    1     1099    7135
0-24 months (no birth wast)   COHORTS          INDIA                          1                    0      636    7135
0-24 months (no birth wast)   COHORTS          INDIA                          1                    1      211    7135
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    0                    0     2004    3019
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    0                    1      841    3019
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    1                    0       99    3019
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    1                    1       75    3019
0-24 months (no birth wast)   CONTENT          PERU                           0                    0      192     215
0-24 months (no birth wast)   CONTENT          PERU                           0                    1        3     215
0-24 months (no birth wast)   CONTENT          PERU                           1                    0       19     215
0-24 months (no birth wast)   CONTENT          PERU                           1                    1        1     215
0-24 months (no birth wast)   EE               PAKISTAN                       0                    0      111     377
0-24 months (no birth wast)   EE               PAKISTAN                       0                    1      100     377
0-24 months (no birth wast)   EE               PAKISTAN                       1                    0       63     377
0-24 months (no birth wast)   EE               PAKISTAN                       1                    1      103     377
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    0      275     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    1      278     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                    0       54     660
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                    1       53     660
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      0                    0      224     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      0                    1       15     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      1                    0       63     313
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      1                    1       11     313
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   0                    0     2279    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   0                    1      167    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   1                    0      549    3091
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   1                    1       96    3091
0-24 months (no birth wast)   IRC              INDIA                          0                    0      176     409
0-24 months (no birth wast)   IRC              INDIA                          0                    1      181     409
0-24 months (no birth wast)   IRC              INDIA                          1                    0       20     409
0-24 months (no birth wast)   IRC              INDIA                          1                    1       32     409
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    0    15104   26529
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    1     2981   26529
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                    0     6931   26529
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                    1     1513   26529
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    0     3000    5396
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    1      859    5396
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                    0     1005    5396
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                    1      532    5396
0-24 months (no birth wast)   Keneba           GAMBIA                         0                    0     1697    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         0                    1      853    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         1                    0      198    2868
0-24 months (no birth wast)   Keneba           GAMBIA                         1                    1      120    2868
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                    0      512     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                    1       18     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                    0      269     837
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                    1       38     837
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                    0      174     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                    1       43     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                    0       31     263
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                    1       15     263
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                    0      191     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         0                    1       11     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                    0       29     233
0-24 months (no birth wast)   MAL-ED           BRAZIL                         1                    1        2     233
0-24 months (no birth wast)   MAL-ED           INDIA                          0                    0      134     246
0-24 months (no birth wast)   MAL-ED           INDIA                          0                    1       72     246
0-24 months (no birth wast)   MAL-ED           INDIA                          1                    0       21     246
0-24 months (no birth wast)   MAL-ED           INDIA                          1                    1       19     246
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                    0      173     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                    1       37     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                    0       20     239
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                    1        9     239
0-24 months (no birth wast)   MAL-ED           PERU                           0                    0      251     302
0-24 months (no birth wast)   MAL-ED           PERU                           0                    1       15     302
0-24 months (no birth wast)   MAL-ED           PERU                           1                    0       30     302
0-24 months (no birth wast)   MAL-ED           PERU                           1                    1        6     302
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                    0      230     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                    1       40     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                    0       33     308
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                    1        5     308
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      193     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1       26     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0       34     261
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        8     261
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     0                    0      360     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     0                    1      148     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     1                    0       64     602
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     1                    1       30     602
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    0      564     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    1       85     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    0       82     754
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    1       23     754
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    0    15608   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    1     1139   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    0      123   16879
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    1        9   16879
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    0      523     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    1       98     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                    0       42     687
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                    1       24     687
0-24 months (no birth wast)   ResPak           PAKISTAN                       0                    0      113     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       0                    1       86     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       1                    0       40     280
0-24 months (no birth wast)   ResPak           PAKISTAN                       1                    1       41     280
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    0      720    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    1      363    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                    0      239    1502
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                    1      180    1502
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    0      171     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    1       73     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                    0       83     397
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                    1       70     397
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1796    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      426    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      114    2384
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       48    2384
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    0    11033   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    1     1210   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    0     1213   13637
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    1      181   13637
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    0      192     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    1       88     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                    0       50     350
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                    1       20     350
0-6 months (no birth wast)    CMIN             BANGLADESH                     0                    0      147     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     0                    1       19     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     1                    0       89     267
0-6 months (no birth wast)    CMIN             BANGLADESH                     1                    1       12     267
0-6 months (no birth wast)    COHORTS          GUATEMALA                      0                    0      875    1030
0-6 months (no birth wast)    COHORTS          GUATEMALA                      0                    1       17    1030
0-6 months (no birth wast)    COHORTS          GUATEMALA                      1                    0      137    1030
0-6 months (no birth wast)    COHORTS          GUATEMALA                      1                    1        1    1030
0-6 months (no birth wast)    COHORTS          INDIA                          0                    0     5292    6510
0-6 months (no birth wast)    COHORTS          INDIA                          0                    1      494    6510
0-6 months (no birth wast)    COHORTS          INDIA                          1                    0      684    6510
0-6 months (no birth wast)    COHORTS          INDIA                          1                    1       40    6510
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    0                    0     2553    2998
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    0                    1      273    2998
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    1                    0      161    2998
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    1                    1       11    2998
0-6 months (no birth wast)    CONTENT          PERU                           0                    0      192     215
0-6 months (no birth wast)    CONTENT          PERU                           0                    1        3     215
0-6 months (no birth wast)    CONTENT          PERU                           1                    0       20     215
0-6 months (no birth wast)    CONTENT          PERU                           1                    1        0     215
0-6 months (no birth wast)    EE               PAKISTAN                       0                    0      162     375
0-6 months (no birth wast)    EE               PAKISTAN                       0                    1       48     375
0-6 months (no birth wast)    EE               PAKISTAN                       1                    0      132     375
0-6 months (no birth wast)    EE               PAKISTAN                       1                    1       33     375
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                    0      426     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                    1      111     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                    0       93     642
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                    1       12     642
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      0                    0      219     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      0                    1        4     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      1                    0       66     290
0-6 months (no birth wast)    Guatemala BSC    GUATEMALA                      1                    1        1     290
0-6 months (no birth wast)    IRC              INDIA                          0                    0      222     390
0-6 months (no birth wast)    IRC              INDIA                          0                    1      117     390
0-6 months (no birth wast)    IRC              INDIA                          1                    0       35     390
0-6 months (no birth wast)    IRC              INDIA                          1                    1       16     390
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    0    16461   26234
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    1     1429   26234
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                    0     7892   26234
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                    1      452   26234
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    0     3465    4957
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    1      101    4957
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                    0     1365    4957
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                    1       26    4957
0-6 months (no birth wast)    Keneba           GAMBIA                         0                    0     1947    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         0                    1      243    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         1                    0      206    2424
0-6 months (no birth wast)    Keneba           GAMBIA                         1                    1       28    2424
0-6 months (no birth wast)    LCNI-5           MALAWI                         0                    0      171     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         0                    1        0     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         1                    0       97     268
0-6 months (no birth wast)    LCNI-5           MALAWI                         1                    1        0     268
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                    0      202     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                    1       14     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                    0       41     262
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                    1        5     262
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                    0      194     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         0                    1        8     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                    0       31     233
0-6 months (no birth wast)    MAL-ED           BRAZIL                         1                    1        0     233
0-6 months (no birth wast)    MAL-ED           INDIA                          0                    0      171     244
0-6 months (no birth wast)    MAL-ED           INDIA                          0                    1       34     244
0-6 months (no birth wast)    MAL-ED           INDIA                          1                    0       34     244
0-6 months (no birth wast)    MAL-ED           INDIA                          1                    1        5     244
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                    0      196     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          0                    1       12     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                    0       25     237
0-6 months (no birth wast)    MAL-ED           NEPAL                          1                    1        4     237
0-6 months (no birth wast)    MAL-ED           PERU                           0                    0      263     302
0-6 months (no birth wast)    MAL-ED           PERU                           0                    1        3     302
0-6 months (no birth wast)    MAL-ED           PERU                           1                    0       34     302
0-6 months (no birth wast)    MAL-ED           PERU                           1                    1        2     302
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                    0      257     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   0                    1       12     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                    0       36     307
0-6 months (no birth wast)    MAL-ED           SOUTH AFRICA                   1                    1        2     307
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      210     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        9     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0       41     261
0-6 months (no birth wast)    MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        1     261
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     0                    0      459     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     0                    1       36     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     1                    0       79     584
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     1                    1       10     584
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                    0      626     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     0                    1       19     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                    0      103     749
0-6 months (no birth wast)    NIH-Crypto       BANGLADESH                     1                    1        1     749
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    0    15549   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    1     1014   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    0      122   16693
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    1        8   16693
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    0      587     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    1       31     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                    0       59     683
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                    1        6     683
0-6 months (no birth wast)    ResPak           PAKISTAN                       0                    0      159     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       0                    1       39     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       1                    0       54     276
0-6 months (no birth wast)    ResPak           PAKISTAN                       1                    1       24     276
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    0      935    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    1      136    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                    0      353    1473
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                    1       49    1473
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          0                    0      211     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          0                    1        0     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          1                    0      130     341
0-6 months (no birth wast)    SAS-FoodSuppl    INDIA                          1                    1        0     341
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2026    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      188    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      146    2376
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       16    2376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    0    11666   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    1      390   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                    0     1282   13376
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                    1       38   13376
6-24 months                   CMC-V-BCS-2002   INDIA                          0                    0      226     373
6-24 months                   CMC-V-BCS-2002   INDIA                          0                    1       70     373
6-24 months                   CMC-V-BCS-2002   INDIA                          1                    0       48     373
6-24 months                   CMC-V-BCS-2002   INDIA                          1                    1       29     373
6-24 months                   CMIN             BANGLADESH                     0                    0      106     252
6-24 months                   CMIN             BANGLADESH                     0                    1       52     252
6-24 months                   CMIN             BANGLADESH                     1                    0       49     252
6-24 months                   CMIN             BANGLADESH                     1                    1       45     252
6-24 months                   COHORTS          GUATEMALA                      0                    0      817    1220
6-24 months                   COHORTS          GUATEMALA                      0                    1       93    1220
6-24 months                   COHORTS          GUATEMALA                      1                    0      249    1220
6-24 months                   COHORTS          GUATEMALA                      1                    1       61    1220
6-24 months                   COHORTS          INDIA                          0                    0     5434    6941
6-24 months                   COHORTS          INDIA                          0                    1      667    6941
6-24 months                   COHORTS          INDIA                          1                    0      656    6941
6-24 months                   COHORTS          INDIA                          1                    1      184    6941
6-24 months                   COHORTS          PHILIPPINES                    0                    0     1967    2809
6-24 months                   COHORTS          PHILIPPINES                    0                    1      679    2809
6-24 months                   COHORTS          PHILIPPINES                    1                    0       93    2809
6-24 months                   COHORTS          PHILIPPINES                    1                    1       70    2809
6-24 months                   CONTENT          PERU                           0                    0      194     215
6-24 months                   CONTENT          PERU                           0                    1        1     215
6-24 months                   CONTENT          PERU                           1                    0       19     215
6-24 months                   CONTENT          PERU                           1                    1        1     215
6-24 months                   EE               PAKISTAN                       0                    0      129     374
6-24 months                   EE               PAKISTAN                       0                    1       80     374
6-24 months                   EE               PAKISTAN                       1                    0       84     374
6-24 months                   EE               PAKISTAN                       1                    1       81     374
6-24 months                   GMS-Nepal        NEPAL                          0                    0      263     590
6-24 months                   GMS-Nepal        NEPAL                          0                    1      231     590
6-24 months                   GMS-Nepal        NEPAL                          1                    0       48     590
6-24 months                   GMS-Nepal        NEPAL                          1                    1       48     590
6-24 months                   Guatemala BSC    GUATEMALA                      0                    0      198     277
6-24 months                   Guatemala BSC    GUATEMALA                      0                    1       13     277
6-24 months                   Guatemala BSC    GUATEMALA                      1                    0       56     277
6-24 months                   Guatemala BSC    GUATEMALA                      1                    1       10     277
6-24 months                   iLiNS-Zinc       BURKINA FASO                   0                    0     2090    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   0                    1      443    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   1                    0      419    3266
6-24 months                   iLiNS-Zinc       BURKINA FASO                   1                    1      314    3266
6-24 months                   IRC              INDIA                          0                    0      252     410
6-24 months                   IRC              INDIA                          0                    1      106     410
6-24 months                   IRC              INDIA                          1                    0       31     410
6-24 months                   IRC              INDIA                          1                    1       21     410
6-24 months                   JiVitA-3         BANGLADESH                     0                    0    10285   17298
6-24 months                   JiVitA-3         BANGLADESH                     0                    1     1716   17298
6-24 months                   JiVitA-3         BANGLADESH                     1                    0     4176   17298
6-24 months                   JiVitA-3         BANGLADESH                     1                    1     1121   17298
6-24 months                   JiVitA-4         BANGLADESH                     0                    0     3061    5430
6-24 months                   JiVitA-4         BANGLADESH                     0                    1      815    5430
6-24 months                   JiVitA-4         BANGLADESH                     1                    0     1026    5430
6-24 months                   JiVitA-4         BANGLADESH                     1                    1      528    5430
6-24 months                   Keneba           GAMBIA                         0                    0     1685    2738
6-24 months                   Keneba           GAMBIA                         0                    1      745    2738
6-24 months                   Keneba           GAMBIA                         1                    0      186    2738
6-24 months                   Keneba           GAMBIA                         1                    1      122    2738
6-24 months                   LCNI-5           MALAWI                         0                    0      497     826
6-24 months                   LCNI-5           MALAWI                         0                    1       21     826
6-24 months                   LCNI-5           MALAWI                         1                    0      265     826
6-24 months                   LCNI-5           MALAWI                         1                    1       43     826
6-24 months                   MAL-ED           BANGLADESH                     0                    0      168     240
6-24 months                   MAL-ED           BANGLADESH                     0                    1       33     240
6-24 months                   MAL-ED           BANGLADESH                     1                    0       29     240
6-24 months                   MAL-ED           BANGLADESH                     1                    1       10     240
6-24 months                   MAL-ED           BRAZIL                         0                    0      178     207
6-24 months                   MAL-ED           BRAZIL                         0                    1        4     207
6-24 months                   MAL-ED           BRAZIL                         1                    0       23     207
6-24 months                   MAL-ED           BRAZIL                         1                    1        2     207
6-24 months                   MAL-ED           INDIA                          0                    0      148     235
6-24 months                   MAL-ED           INDIA                          0                    1       49     235
6-24 months                   MAL-ED           INDIA                          1                    0       23     235
6-24 months                   MAL-ED           INDIA                          1                    1       15     235
6-24 months                   MAL-ED           NEPAL                          0                    0      179     235
6-24 months                   MAL-ED           NEPAL                          0                    1       28     235
6-24 months                   MAL-ED           NEPAL                          1                    0       20     235
6-24 months                   MAL-ED           NEPAL                          1                    1        8     235
6-24 months                   MAL-ED           PERU                           0                    0      223     270
6-24 months                   MAL-ED           PERU                           0                    1       13     270
6-24 months                   MAL-ED           PERU                           1                    0       29     270
6-24 months                   MAL-ED           PERU                           1                    1        5     270
6-24 months                   MAL-ED           SOUTH AFRICA                   0                    0      199     259
6-24 months                   MAL-ED           SOUTH AFRICA                   0                    1       32     259
6-24 months                   MAL-ED           SOUTH AFRICA                   1                    0       23     259
6-24 months                   MAL-ED           SOUTH AFRICA                   1                    1        5     259
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      185     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1       21     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0       32     245
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        7     245
6-24 months                   NIH-Birth        BANGLADESH                     0                    0      326     542
6-24 months                   NIH-Birth        BANGLADESH                     0                    1      130     542
6-24 months                   NIH-Birth        BANGLADESH                     1                    0       57     542
6-24 months                   NIH-Birth        BANGLADESH                     1                    1       29     542
6-24 months                   NIH-Crypto       BANGLADESH                     0                    0      554     730
6-24 months                   NIH-Crypto       BANGLADESH                     0                    1       73     730
6-24 months                   NIH-Crypto       BANGLADESH                     1                    0       80     730
6-24 months                   NIH-Crypto       BANGLADESH                     1                    1       23     730
6-24 months                   PROBIT           BELARUS                        0                    0    16340   16598
6-24 months                   PROBIT           BELARUS                        0                    1      138   16598
6-24 months                   PROBIT           BELARUS                        1                    0      119   16598
6-24 months                   PROBIT           BELARUS                        1                    1        1   16598
6-24 months                   PROVIDE          BANGLADESH                     0                    0      475     615
6-24 months                   PROVIDE          BANGLADESH                     0                    1       78     615
6-24 months                   PROVIDE          BANGLADESH                     1                    0       41     615
6-24 months                   PROVIDE          BANGLADESH                     1                    1       21     615
6-24 months                   ResPak           PAKISTAN                       0                    0      107     236
6-24 months                   ResPak           PAKISTAN                       0                    1       62     236
6-24 months                   ResPak           PAKISTAN                       1                    0       43     236
6-24 months                   ResPak           PAKISTAN                       1                    1       24     236
6-24 months                   SAS-CompFeed     INDIA                          0                    0      730    1389
6-24 months                   SAS-CompFeed     INDIA                          0                    1      276    1389
6-24 months                   SAS-CompFeed     INDIA                          1                    0      234    1389
6-24 months                   SAS-CompFeed     INDIA                          1                    1      149    1389
6-24 months                   SAS-FoodSuppl    INDIA                          0                    0      171     402
6-24 months                   SAS-FoodSuppl    INDIA                          0                    1       73     402
6-24 months                   SAS-FoodSuppl    INDIA                          1                    0       88     402
6-24 months                   SAS-FoodSuppl    INDIA                          1                    1       70     402
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1593    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      287    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      101    2018
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       37    2018
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    0     8788   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    1      883   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    0      990   10815
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    1      154   10815


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
* agecat: 0-24 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: CONTENT, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/341ca368-2562-4f54-bdd8-8029e75683a2/bf53da18-ab27-46d7-8abc-52f3567190da/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/341ca368-2562-4f54-bdd8-8029e75683a2/bf53da18-ab27-46d7-8abc-52f3567190da/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/341ca368-2562-4f54-bdd8-8029e75683a2/bf53da18-ab27-46d7-8abc-52f3567190da/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/341ca368-2562-4f54-bdd8-8029e75683a2/bf53da18-ab27-46d7-8abc-52f3567190da/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                0.4351269   0.3781234   0.4921304
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    NA                0.5155229   0.3983026   0.6327432
0-24 months (no birth wast)   CMIN             BANGLADESH                     0                    NA                0.3757153   0.3016348   0.4497958
0-24 months (no birth wast)   CMIN             BANGLADESH                     1                    NA                0.5161472   0.4184787   0.6138157
0-24 months (no birth wast)   COHORTS          GUATEMALA                      0                    NA                0.1011073   0.0825361   0.1196785
0-24 months (no birth wast)   COHORTS          GUATEMALA                      1                    NA                0.1743881   0.1326905   0.2160857
0-24 months (no birth wast)   COHORTS          INDIA                          0                    NA                0.1751021   0.1657210   0.1844832
0-24 months (no birth wast)   COHORTS          INDIA                          1                    NA                0.2462039   0.2170228   0.2753851
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    0                    NA                0.2964766   0.2797060   0.3132471
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    1                    NA                0.4146150   0.3423892   0.4868409
0-24 months (no birth wast)   EE               PAKISTAN                       0                    NA                0.4807446   0.4127545   0.5487347
0-24 months (no birth wast)   EE               PAKISTAN                       1                    NA                0.6103242   0.5367943   0.6838542
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    NA                0.5027305   0.4609873   0.5444736
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                    NA                0.4938049   0.3984786   0.5891312
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      0                    NA                0.0632294   0.0324091   0.0940497
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      1                    NA                0.1331906   0.0503469   0.2160344
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0689724   0.0541004   0.0838444
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1437332   0.0876747   0.1997917
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                0.5064920   0.4545164   0.5584677
0-24 months (no birth wast)   IRC              INDIA                          1                    NA                0.6140219   0.4771232   0.7509207
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    NA                0.1653323   0.1590504   0.1716141
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                    NA                0.1805106   0.1710867   0.1899345
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    NA                0.2244064   0.2091230   0.2396899
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                    NA                0.3390026   0.3121013   0.3659038
0-24 months (no birth wast)   Keneba           GAMBIA                         0                    NA                0.3328979   0.3146169   0.3511788
0-24 months (no birth wast)   Keneba           GAMBIA                         1                    NA                0.3858203   0.3317022   0.4399384
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                    NA                0.0329593   0.0176219   0.0482966
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                    NA                0.1263412   0.0894024   0.1632800
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                    NA                0.2025072   0.1494634   0.2555510
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                    NA                0.3854061   0.2528196   0.5179927
0-24 months (no birth wast)   MAL-ED           INDIA                          0                    NA                0.3473383   0.2820566   0.4126200
0-24 months (no birth wast)   MAL-ED           INDIA                          1                    NA                0.4257462   0.2692589   0.5822334
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                    NA                0.1761905   0.1245544   0.2278266
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                    NA                0.3103448   0.1416127   0.4790770
0-24 months (no birth wast)   MAL-ED           PERU                           0                    NA                0.0563910   0.0286240   0.0841579
0-24 months (no birth wast)   MAL-ED           PERU                           1                    NA                0.1666667   0.0447254   0.2886080
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                    NA                0.1481481   0.1057055   0.1905908
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                    NA                0.1315789   0.0239273   0.2392306
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1187215   0.0757994   0.1616435
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1904762   0.0714912   0.3094612
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     0                    NA                0.2924490   0.2528663   0.3320316
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     1                    NA                0.3340609   0.2418000   0.4263219
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                0.1315847   0.1056039   0.1575655
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    NA                0.2422090   0.1667629   0.3176550
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    NA                0.0680122   0.0559751   0.0800492
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    NA                0.0681818   0.0482569   0.0881068
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    NA                0.1578645   0.1291601   0.1865690
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                    NA                0.3709800   0.2531187   0.4888412
0-24 months (no birth wast)   ResPak           PAKISTAN                       0                    NA                0.4319156   0.3627695   0.5010617
0-24 months (no birth wast)   ResPak           PAKISTAN                       1                    NA                0.5055633   0.3948339   0.6162927
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    NA                0.3354470   0.2894121   0.3814819
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                    NA                0.4289136   0.3540743   0.5037529
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    NA                0.3000672   0.2426240   0.3575104
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                    NA                0.4504017   0.3705372   0.5302663
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1916445   0.1752743   0.2080148
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3092705   0.2383000   0.3802410
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                0.0990966   0.0937989   0.1043943
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    NA                0.1269912   0.1093179   0.1446645
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    NA                0.3149288   0.2604095   0.3694481
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                    NA                0.2845342   0.1787286   0.3903398
0-6 months (no birth wast)    CMIN             BANGLADESH                     0                    NA                0.1130946   0.0650179   0.1611713
0-6 months (no birth wast)    CMIN             BANGLADESH                     1                    NA                0.1187247   0.0554622   0.1819873
0-6 months (no birth wast)    COHORTS          INDIA                          0                    NA                0.0852852   0.0780846   0.0924858
0-6 months (no birth wast)    COHORTS          INDIA                          1                    NA                0.0563627   0.0394079   0.0733175
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    0                    NA                0.0966128   0.0857129   0.1075126
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    1                    NA                0.0596975   0.0242801   0.0951149
0-6 months (no birth wast)    EE               PAKISTAN                       0                    NA                0.2316942   0.1749359   0.2884526
0-6 months (no birth wast)    EE               PAKISTAN                       1                    NA                0.2005015   0.1388677   0.2621353
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                    NA                0.2066612   0.1723221   0.2410002
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                    NA                0.1019280   0.0388279   0.1650281
0-6 months (no birth wast)    IRC              INDIA                          0                    NA                0.3437353   0.2930017   0.3944689
0-6 months (no birth wast)    IRC              INDIA                          1                    NA                0.3424276   0.2108513   0.4740039
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    NA                0.0801755   0.0754193   0.0849317
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                    NA                0.0536208   0.0481655   0.0590760
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    NA                0.0282317   0.0223031   0.0341603
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                    NA                0.0192216   0.0116299   0.0268134
0-6 months (no birth wast)    Keneba           GAMBIA                         0                    NA                0.1108831   0.0976977   0.1240686
0-6 months (no birth wast)    Keneba           GAMBIA                         1                    NA                0.1224105   0.0796431   0.1651778
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                    NA                0.0648148   0.0319192   0.0977104
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                    NA                0.1086957   0.0185762   0.1988151
0-6 months (no birth wast)    MAL-ED           INDIA                          0                    NA                0.1658537   0.1148329   0.2168744
0-6 months (no birth wast)    MAL-ED           INDIA                          1                    NA                0.1282051   0.0230653   0.2333450
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     0                    NA                0.0727411   0.0497830   0.0956991
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     1                    NA                0.1100601   0.0399587   0.1801615
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    NA                0.0612208   0.0499574   0.0724842
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    NA                0.0615385   0.0474554   0.0756216
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    NA                0.0501618   0.0329398   0.0673838
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                    NA                0.0923077   0.0218874   0.1627280
0-6 months (no birth wast)    ResPak           PAKISTAN                       0                    NA                0.1983628   0.1424485   0.2542771
0-6 months (no birth wast)    ResPak           PAKISTAN                       1                    NA                0.3188046   0.2117753   0.4258340
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    NA                0.1261272   0.0957030   0.1565514
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                    NA                0.1160655   0.0843418   0.1477893
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0848742   0.0732619   0.0964865
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1090141   0.0631472   0.1548810
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    NA                0.0323818   0.0292192   0.0355443
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                    NA                0.0284945   0.0191169   0.0378721
6-24 months                   CMC-V-BCS-2002   INDIA                          0                    NA                0.2382154   0.1896363   0.2867945
6-24 months                   CMC-V-BCS-2002   INDIA                          1                    NA                0.3700443   0.2595479   0.4805407
6-24 months                   CMIN             BANGLADESH                     0                    NA                0.3226704   0.2494463   0.3958945
6-24 months                   CMIN             BANGLADESH                     1                    NA                0.4912687   0.3882709   0.5942664
6-24 months                   COHORTS          GUATEMALA                      0                    NA                0.1025047   0.0828269   0.1221824
6-24 months                   COHORTS          GUATEMALA                      1                    NA                0.1948244   0.1505620   0.2390869
6-24 months                   COHORTS          INDIA                          0                    NA                0.1097991   0.1019701   0.1176281
6-24 months                   COHORTS          INDIA                          1                    NA                0.2127063   0.1847662   0.2406464
6-24 months                   COHORTS          PHILIPPINES                    0                    NA                0.2578092   0.2411494   0.2744690
6-24 months                   COHORTS          PHILIPPINES                    1                    NA                0.4122062   0.3374825   0.4869299
6-24 months                   EE               PAKISTAN                       0                    NA                0.3934833   0.3269956   0.4599709
6-24 months                   EE               PAKISTAN                       1                    NA                0.4863659   0.4106756   0.5620561
6-24 months                   GMS-Nepal        NEPAL                          0                    NA                0.4694128   0.4252966   0.5135291
6-24 months                   GMS-Nepal        NEPAL                          1                    NA                0.4936331   0.3908557   0.5964105
6-24 months                   Guatemala BSC    GUATEMALA                      0                    NA                0.0622450   0.0296621   0.0948279
6-24 months                   Guatemala BSC    GUATEMALA                      1                    NA                0.1452016   0.0559359   0.2344674
6-24 months                   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1762449   0.1513770   0.2011129
6-24 months                   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.4195489   0.3223663   0.5167316
6-24 months                   IRC              INDIA                          0                    NA                0.2942934   0.2469719   0.3416150
6-24 months                   IRC              INDIA                          1                    NA                0.3976229   0.2641993   0.5310466
6-24 months                   JiVitA-3         BANGLADESH                     0                    NA                0.1443608   0.1376293   0.1510922
6-24 months                   JiVitA-3         BANGLADESH                     1                    NA                0.2108934   0.1984999   0.2232869
6-24 months                   JiVitA-4         BANGLADESH                     0                    NA                0.2123621   0.1973283   0.2273960
6-24 months                   JiVitA-4         BANGLADESH                     1                    NA                0.3322335   0.3054332   0.3590337
6-24 months                   Keneba           GAMBIA                         0                    NA                0.3057816   0.2874793   0.3240839
6-24 months                   Keneba           GAMBIA                         1                    NA                0.3966526   0.3401874   0.4531179
6-24 months                   LCNI-5           MALAWI                         0                    NA                0.0411857   0.0242003   0.0581710
6-24 months                   LCNI-5           MALAWI                         1                    NA                0.1409450   0.1020284   0.1798617
6-24 months                   MAL-ED           BANGLADESH                     0                    NA                0.1659610   0.1145424   0.2173796
6-24 months                   MAL-ED           BANGLADESH                     1                    NA                0.2458502   0.1137768   0.3779236
6-24 months                   MAL-ED           INDIA                          0                    NA                0.2501250   0.1894352   0.3108148
6-24 months                   MAL-ED           INDIA                          1                    NA                0.4114421   0.2528588   0.5700254
6-24 months                   MAL-ED           NEPAL                          0                    NA                0.1352657   0.0885757   0.1819557
6-24 months                   MAL-ED           NEPAL                          1                    NA                0.2857143   0.1180282   0.4534004
6-24 months                   MAL-ED           PERU                           0                    NA                0.0550847   0.0259232   0.0842463
6-24 months                   MAL-ED           PERU                           1                    NA                0.1470588   0.0277921   0.2663256
6-24 months                   MAL-ED           SOUTH AFRICA                   0                    NA                0.1385281   0.0938935   0.1831627
6-24 months                   MAL-ED           SOUTH AFRICA                   1                    NA                0.1785714   0.0364368   0.3207061
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1019417   0.0605388   0.1433447
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1794872   0.0587994   0.3001750
6-24 months                   NIH-Birth        BANGLADESH                     0                    NA                0.2840609   0.2427019   0.3254198
6-24 months                   NIH-Birth        BANGLADESH                     1                    NA                0.3435088   0.2449822   0.4420354
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                0.1169095   0.0917848   0.1420341
6-24 months                   NIH-Crypto       BANGLADESH                     1                    NA                0.2217752   0.1409389   0.3026115
6-24 months                   PROVIDE          BANGLADESH                     0                    NA                0.1423805   0.1131660   0.1715950
6-24 months                   PROVIDE          BANGLADESH                     1                    NA                0.3308078   0.2079440   0.4536717
6-24 months                   ResPak           PAKISTAN                       0                    NA                0.3658461   0.2922548   0.4394375
6-24 months                   ResPak           PAKISTAN                       1                    NA                0.3317343   0.2171225   0.4463462
6-24 months                   SAS-CompFeed     INDIA                          0                    NA                0.2735212   0.2351427   0.3118997
6-24 months                   SAS-CompFeed     INDIA                          1                    NA                0.3945435   0.3205690   0.4685181
6-24 months                   SAS-FoodSuppl    INDIA                          0                    NA                0.2992858   0.2414412   0.3571304
6-24 months                   SAS-FoodSuppl    INDIA                          1                    NA                0.4402596   0.3619544   0.5185649
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1526047   0.1363397   0.1688697
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2647243   0.1900578   0.3393907
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                0.0916634   0.0859020   0.0974249
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    NA                0.1305696   0.1107233   0.1504160


### Parameter: E(Y)


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          NA                   NA                0.4510870   0.4001777   0.5019962
0-24 months (no birth wast)   CMIN             BANGLADESH                     NA                   NA                0.4291045   0.3697365   0.4884725
0-24 months (no birth wast)   COHORTS          GUATEMALA                      NA                   NA                0.1193694   0.1019512   0.1367875
0-24 months (no birth wast)   COHORTS          INDIA                          NA                   NA                0.1836020   0.1746179   0.1925860
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    NA                   NA                0.3034117   0.2870099   0.3198136
0-24 months (no birth wast)   EE               PAKISTAN                       NA                   NA                0.5384615   0.4880726   0.5888505
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          NA                   NA                0.5015152   0.4633406   0.5396897
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      NA                   NA                0.0830671   0.0524436   0.1136905
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0850857   0.0676201   0.1025513
0-24 months (no birth wast)   IRC              INDIA                          NA                   NA                0.5207824   0.4723080   0.5692568
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     NA                   NA                0.1693995   0.1641138   0.1746853
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     NA                   NA                0.2577835   0.2441424   0.2714247
0-24 months (no birth wast)   Keneba           GAMBIA                         NA                   NA                0.3392608   0.3219301   0.3565915
0-24 months (no birth wast)   LCNI-5           MALAWI                         NA                   NA                0.0669056   0.0499685   0.0838427
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     NA                   NA                0.2205323   0.1703290   0.2707357
0-24 months (no birth wast)   MAL-ED           INDIA                          NA                   NA                0.3699187   0.3094659   0.4303715
0-24 months (no birth wast)   MAL-ED           NEPAL                          NA                   NA                0.1924686   0.1423823   0.2425550
0-24 months (no birth wast)   MAL-ED           PERU                           NA                   NA                0.0695364   0.0408008   0.0982721
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1461039   0.1065934   0.1856144
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1302682   0.0893541   0.1711823
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     NA                   NA                0.2956811   0.2591967   0.3321655
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   PROBIT           BELARUS                        NA                   NA                0.0680135   0.0562135   0.0798135
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ResPak           PAKISTAN                       NA                   NA                0.4535714   0.3951549   0.5119879
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          NA                   NA                0.3615180   0.3107193   0.4123167
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          NA                   NA                0.3602015   0.3129196   0.4074834
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1988255   0.1828010   0.2148500
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1020019   0.0969221   0.1070817
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3085714   0.2601110   0.3570318
0-6 months (no birth wast)    CMIN             BANGLADESH                     NA                   NA                0.1161049   0.0776073   0.1546024
0-6 months (no birth wast)    COHORTS          INDIA                          NA                   NA                0.0820277   0.0753613   0.0886940
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    NA                   NA                0.0947298   0.0842456   0.1052141
0-6 months (no birth wast)    EE               PAKISTAN                       NA                   NA                0.2160000   0.1742941   0.2577059
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          NA                   NA                0.1915888   0.1611224   0.2220551
0-6 months (no birth wast)    IRC              INDIA                          NA                   NA                0.3410256   0.2939169   0.3881343
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     NA                   NA                0.0717008   0.0680635   0.0753382
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     NA                   NA                0.0256203   0.0209093   0.0303314
0-6 months (no birth wast)    Keneba           GAMBIA                         NA                   NA                0.1117987   0.0992515   0.1243458
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     NA                   NA                0.0725191   0.0410556   0.1039825
0-6 months (no birth wast)    MAL-ED           INDIA                          NA                   NA                0.1598361   0.1137612   0.2059110
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     NA                   NA                0.0787671   0.0569010   0.1006332
0-6 months (no birth wast)    PROBIT           BELARUS                        NA                   NA                0.0612233   0.0502388   0.0722078
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     NA                   NA                0.0541728   0.0371844   0.0711612
0-6 months (no birth wast)    ResPak           PAKISTAN                       NA                   NA                0.2282609   0.1786550   0.2778667
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          NA                   NA                0.1255940   0.0954030   0.1557851
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0858586   0.0745914   0.0971258
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0319976   0.0290150   0.0349802
6-24 months                   CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months                   CMIN             BANGLADESH                     NA                   NA                0.3849206   0.3247254   0.4451159
6-24 months                   COHORTS          GUATEMALA                      NA                   NA                0.1262295   0.1075861   0.1448729
6-24 months                   COHORTS          INDIA                          NA                   NA                0.1226048   0.1148883   0.1303213
6-24 months                   COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months                   EE               PAKISTAN                       NA                   NA                0.4304813   0.3802326   0.4807300
6-24 months                   GMS-Nepal        NEPAL                          NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months                   Guatemala BSC    GUATEMALA                      NA                   NA                0.0830325   0.0504792   0.1155858
6-24 months                   iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2317820   0.2038933   0.2596707
6-24 months                   IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months                   JiVitA-3         BANGLADESH                     NA                   NA                0.1640074   0.1578946   0.1701202
6-24 months                   JiVitA-4         BANGLADESH                     NA                   NA                0.2473297   0.2337864   0.2608729
6-24 months                   Keneba           GAMBIA                         NA                   NA                0.3166545   0.2992274   0.3340815
6-24 months                   LCNI-5           MALAWI                         NA                   NA                0.0774818   0.0592383   0.0957254
6-24 months                   MAL-ED           BANGLADESH                     NA                   NA                0.1791667   0.1305478   0.2277856
6-24 months                   MAL-ED           INDIA                          NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months                   MAL-ED           NEPAL                          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months                   MAL-ED           PERU                           NA                   NA                0.0666667   0.0368579   0.0964755
6-24 months                   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1428571   0.1001583   0.1855560
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1142857   0.0743652   0.1542062
6-24 months                   NIH-Birth        BANGLADESH                     NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months                   NIH-Crypto       BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   PROVIDE          BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ResPak           PAKISTAN                       NA                   NA                0.3644068   0.3028753   0.4259382
6-24 months                   SAS-CompFeed     INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months                   SAS-FoodSuppl    INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1605550   0.1445335   0.1765765
6-24 months                   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0958853   0.0903360   0.1014347


### Parameter: RR


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    0                 1.1847645   0.9112743   1.5403343
0-24 months (no birth wast)   CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   CMIN             BANGLADESH                     1                    0                 1.3737723   1.0451767   1.8056758
0-24 months (no birth wast)   COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   COHORTS          GUATEMALA                      1                    0                 1.7247819   1.2755832   2.3321667
0-24 months (no birth wast)   COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   COHORTS          INDIA                          1                    0                 1.4060592   1.2347501   1.6011357
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    1                    0                 1.3984749   1.1649465   1.6788171
0-24 months (no birth wast)   EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   EE               PAKISTAN                       1                    0                 1.2695395   1.0547359   1.5280893
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                    0                 0.9822459   0.7962363   1.2117093
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      1                    0                 2.1064669   0.9547757   4.6473772
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   1                    0                 2.0839230   1.3873179   3.1303102
0-24 months (no birth wast)   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   IRC              INDIA                          1                    0                 1.2123032   0.9484135   1.5496186
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     1                    0                 1.0918051   1.0251660   1.1627759
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     1                    0                 1.5106632   1.3642973   1.6727316
0-24 months (no birth wast)   Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   Keneba           GAMBIA                         1                    0                 1.1589750   0.9970905   1.3471427
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                    0                 3.8332511   2.2091093   6.6514651
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                    0                 1.9031727   1.2397825   2.9215337
0-24 months (no birth wast)   MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED           INDIA                          1                    0                 1.2257392   0.8103039   1.8541644
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                    0                 1.7614166   0.9497737   3.2666607
0-24 months (no birth wast)   MAL-ED           PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED           PERU                           1                    0                 2.9555556   1.2235735   7.1391780
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                    0                 0.8881579   0.3732647   2.1133113
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 1.6043956   0.7795781   3.3018954
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     1                    0                 1.1422880   0.8398325   1.5536691
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    0                 1.8407078   1.2726838   2.6622520
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    0                 1.0024942   0.7243081   1.3875236
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                    0                 2.3499893   1.6295858   3.3888672
0-24 months (no birth wast)   ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ResPak           PAKISTAN                       1                    0                 1.1705141   0.8920521   1.5359003
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                    0                 1.2786332   1.1416186   1.4320920
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                    0                 1.5010029   1.1566150   1.9479340
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.6137715   1.2631309   2.0617486
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    0                 1.2814885   1.1040539   1.4874390
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                    0                 0.9034874   0.5994611   1.3617057
0-6 months (no birth wast)    CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    CMIN             BANGLADESH                     1                    0                 1.0497823   0.5320249   2.0714122
0-6 months (no birth wast)    COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    COHORTS          INDIA                          1                    0                 0.6608735   0.4835248   0.9032708
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    1                    0                 0.6179047   0.3377674   1.1303821
0-6 months (no birth wast)    EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    EE               PAKISTAN                       1                    0                 0.8653713   0.5845322   1.2811397
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                    0                 0.4932133   0.2596236   0.9369693
0-6 months (no birth wast)    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    IRC              INDIA                          1                    0                 0.9961956   0.6602047   1.5031787
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     1                    0                 0.6687923   0.5945990   0.7522433
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     1                    0                 0.6808526   0.4331314   1.0702534
0-6 months (no birth wast)    Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    Keneba           GAMBIA                         1                    0                 1.1039596   0.7633139   1.5966259
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                    0                 1.6770186   0.6343906   4.4332175
0-6 months (no birth wast)    MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    MAL-ED           INDIA                          1                    0                 0.7730015   0.3219485   1.8559842
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     1                    0                 1.5130394   0.7426881   3.0824355
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    0                 1.0051889   0.7484287   1.3500346
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                    0                 1.8401985   0.7971526   4.2480332
0-6 months (no birth wast)    ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ResPak           PAKISTAN                       1                    0                 1.6071795   1.0356526   2.4941048
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                    0                 0.9202262   0.7801207   1.0854938
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2844194   0.8250154   1.9996392
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                    0                 0.8799550   0.6243043   1.2402939
6-24 months                   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   CMC-V-BCS-2002   INDIA                          1                    0                 1.5534022   1.0831965   2.2277198
6-24 months                   CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   CMIN             BANGLADESH                     1                    0                 1.5225092   1.1175604   2.0741914
6-24 months                   COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   COHORTS          GUATEMALA                      1                    0                 1.9006396   1.4126542   2.5571942
6-24 months                   COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   COHORTS          INDIA                          1                    0                 1.9372320   1.6689329   2.2486631
6-24 months                   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   COHORTS          PHILIPPINES                    1                    0                 1.5988809   1.3196914   1.9371347
6-24 months                   EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   EE               PAKISTAN                       1                    0                 1.2360522   0.9833102   1.5537569
6-24 months                   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   GMS-Nepal        NEPAL                          1                    0                 1.0515970   0.8367262   1.3216465
6-24 months                   Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   Guatemala BSC    GUATEMALA                      1                    0                 2.3327434   1.0379186   5.2428884
6-24 months                   iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   iLiNS-Zinc       BURKINA FASO                   1                    0                 2.3804878   1.8109034   3.1292238
6-24 months                   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   IRC              INDIA                          1                    0                 1.3511105   0.9319153   1.9588685
6-24 months                   JiVitA-3         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   JiVitA-3         BANGLADESH                     1                    0                 1.4608776   1.3582722   1.5712339
6-24 months                   JiVitA-4         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   JiVitA-4         BANGLADESH                     1                    0                 1.5644666   1.4096499   1.7362862
6-24 months                   Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   Keneba           GAMBIA                         1                    0                 1.2971762   1.1116089   1.5137214
6-24 months                   LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   LCNI-5           MALAWI                         1                    0                 3.4221872   2.0820832   5.6248304
6-24 months                   MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED           BANGLADESH                     1                    0                 1.4813732   0.8054138   2.7246445
6-24 months                   MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED           INDIA                          1                    0                 1.6449461   1.0423481   2.5959155
6-24 months                   MAL-ED           NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED           NEPAL                          1                    0                 2.1122449   1.0691581   4.1729830
6-24 months                   MAL-ED           PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED           PERU                           1                    0                 2.6696833   1.0135461   7.0319529
6-24 months                   MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED           SOUTH AFRICA                   1                    0                 1.2890625   0.5461939   3.0422936
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 1.7606838   0.8026463   3.8622332
6-24 months                   NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   NIH-Birth        BANGLADESH                     1                    0                 1.2092787   0.8781134   1.6653373
6-24 months                   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   NIH-Crypto       BANGLADESH                     1                    0                 1.8969824   1.2432758   2.8944039
6-24 months                   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   PROVIDE          BANGLADESH                     1                    0                 2.3234071   1.5206889   3.5498519
6-24 months                   ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ResPak           PAKISTAN                       1                    0                 0.9067592   0.6070755   1.3543820
6-24 months                   SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   SAS-CompFeed     INDIA                          1                    0                 1.4424605   1.2221002   1.7025546
6-24 months                   SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   SAS-FoodSuppl    INDIA                          1                    0                 1.4710342   1.1305874   1.9139977
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.7347061   1.2831149   2.3452344
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    0                 1.4244462   1.2084663   1.6790264


### Parameter: PAR


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0159601   -0.0102542    0.0421743
0-24 months (no birth wast)   CMIN             BANGLADESH                     0                    NA                 0.0533892    0.0058785    0.1008999
0-24 months (no birth wast)   COHORTS          GUATEMALA                      0                    NA                 0.0182620    0.0071587    0.0293653
0-24 months (no birth wast)   COHORTS          INDIA                          0                    NA                 0.0084999    0.0048301    0.0121697
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    0                    NA                 0.0069352    0.0025733    0.0112970
0-24 months (no birth wast)   EE               PAKISTAN                       0                    NA                 0.0577170    0.0131653    0.1022686
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    NA                -0.0012153   -0.0179493    0.0155187
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      0                    NA                 0.0198377   -0.0011937    0.0408691
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0161133    0.0073795    0.0248472
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                 0.0142903   -0.0041699    0.0327506
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    NA                 0.0040673    0.0005527    0.0075819
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    NA                 0.0333771    0.0247201    0.0420341
0-24 months (no birth wast)   Keneba           GAMBIA                         0                    NA                 0.0063629    0.0000920    0.0126339
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                    NA                 0.0339463    0.0189762    0.0489165
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                    NA                 0.0180251   -0.0072964    0.0433466
0-24 months (no birth wast)   MAL-ED           INDIA                          0                    NA                 0.0225804   -0.0060490    0.0512098
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                    NA                 0.0162781   -0.0058443    0.0384006
0-24 months (no birth wast)   MAL-ED           PERU                           0                    NA                 0.0131454   -0.0022995    0.0285904
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0020443   -0.0163339    0.0122454
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0115467   -0.0090588    0.0321522
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     0                    NA                 0.0032321   -0.0129898    0.0194540
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                 0.0116514   -0.0002612    0.0235640
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    NA                 0.0000013   -0.0005524    0.0005550
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    NA                 0.0197192    0.0073828    0.0320555
0-24 months (no birth wast)   ResPak           PAKISTAN                       0                    NA                 0.0216558   -0.0162360    0.0595476
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    NA                 0.0260710    0.0123371    0.0398049
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    NA                 0.0601343    0.0216578    0.0986108
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0071810    0.0021447    0.0122173
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0029053    0.0010125    0.0047981
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0063574   -0.0303532    0.0176385
0-6 months (no birth wast)    CMIN             BANGLADESH                     0                    NA                 0.0030102   -0.0269399    0.0329604
0-6 months (no birth wast)    COHORTS          INDIA                          0                    NA                -0.0032575   -0.0052900   -0.0012251
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    0                    NA                -0.0018829   -0.0041094    0.0003436
0-6 months (no birth wast)    EE               PAKISTAN                       0                    NA                -0.0156942   -0.0525101    0.0211216
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                    NA                -0.0150724   -0.0269573   -0.0031875
0-6 months (no birth wast)    IRC              INDIA                          0                    NA                -0.0027097   -0.0209213    0.0155020
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    NA                -0.0084747   -0.0107902   -0.0061591
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    NA                -0.0026114   -0.0053317    0.0001090
0-6 months (no birth wast)    Keneba           GAMBIA                         0                    NA                 0.0009156   -0.0033221    0.0051532
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                    NA                 0.0077043   -0.0092607    0.0246693
0-6 months (no birth wast)    MAL-ED           INDIA                          0                    NA                -0.0060176   -0.0247773    0.0127421
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     0                    NA                 0.0060260   -0.0047246    0.0167766
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    NA                 0.0000025   -0.0004502    0.0004551
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    NA                 0.0040110   -0.0029505    0.0109724
0-6 months (no birth wast)    ResPak           PAKISTAN                       0                    NA                 0.0298981   -0.0043716    0.0641678
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    NA                -0.0005332   -0.0063999    0.0053336
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0009844   -0.0022594    0.0042281
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0003842   -0.0013287    0.0005603
6-24 months                   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0272001    0.0021349    0.0522654
6-24 months                   CMIN             BANGLADESH                     0                    NA                 0.0622502    0.0144504    0.1100501
6-24 months                   COHORTS          GUATEMALA                      0                    NA                 0.0237248    0.0112409    0.0362088
6-24 months                   COHORTS          INDIA                          0                    NA                 0.0128057    0.0092126    0.0163988
6-24 months                   COHORTS          PHILIPPINES                    0                    NA                 0.0088337    0.0042309    0.0134366
6-24 months                   EE               PAKISTAN                       0                    NA                 0.0369980   -0.0075458    0.0815418
6-24 months                   GMS-Nepal        NEPAL                          0                    NA                 0.0034685   -0.0144396    0.0213766
6-24 months                   Guatemala BSC    GUATEMALA                      0                    NA                 0.0207875   -0.0018885    0.0434635
6-24 months                   iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0555371    0.0361162    0.0749579
6-24 months                   IRC              INDIA                          0                    NA                 0.0154627   -0.0027317    0.0336570
6-24 months                   JiVitA-3         BANGLADESH                     0                    NA                 0.0196466    0.0154306    0.0238627
6-24 months                   JiVitA-4         BANGLADESH                     0                    NA                 0.0349675    0.0263252    0.0436098
6-24 months                   Keneba           GAMBIA                         0                    NA                 0.0108729    0.0042608    0.0174850
6-24 months                   LCNI-5           MALAWI                         0                    NA                 0.0362962    0.0201533    0.0524391
6-24 months                   MAL-ED           BANGLADESH                     0                    NA                 0.0132057   -0.0097594    0.0361708
6-24 months                   MAL-ED           INDIA                          0                    NA                 0.0222154   -0.0059667    0.0503975
6-24 months                   MAL-ED           NEPAL                          0                    NA                 0.0179258   -0.0037337    0.0395852
6-24 months                   MAL-ED           PERU                           0                    NA                 0.0115819   -0.0043035    0.0274673
6-24 months                   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0043290   -0.0118481    0.0205061
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0123440   -0.0082762    0.0329641
6-24 months                   NIH-Birth        BANGLADESH                     0                    NA                 0.0092970   -0.0075826    0.0261767
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                 0.0145974    0.0025047    0.0266901
6-24 months                   PROVIDE          BANGLADESH                     0                    NA                 0.0185951    0.0055983    0.0315919
6-24 months                   ResPak           PAKISTAN                       0                    NA                -0.0014393   -0.0419330    0.0390543
6-24 months                   SAS-CompFeed     INDIA                          0                    NA                 0.0324543    0.0149374    0.0499712
6-24 months                   SAS-FoodSuppl    INDIA                          0                    NA                 0.0564356    0.0175848    0.0952864
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0079503    0.0026181    0.0132825
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0042219    0.0020167    0.0064271


### Parameter: PAF


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0353813   -0.0246171    0.0918665
0-24 months (no birth wast)   CMIN             BANGLADESH                     0                    NA                 0.1244200    0.0058942    0.2288142
0-24 months (no birth wast)   COHORTS          GUATEMALA                      0                    NA                 0.1529876    0.0569726    0.2392267
0-24 months (no birth wast)   COHORTS          INDIA                          0                    NA                 0.0462951    0.0261821    0.0659926
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    0                    NA                 0.0228573    0.0083808    0.0371225
0-24 months (no birth wast)   EE               PAKISTAN                       0                    NA                 0.1071886    0.0195898    0.1869606
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    NA                -0.0024233   -0.0363515    0.0303943
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      0                    NA                 0.2388154   -0.0415118    0.4436914
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.1893776    0.0957011    0.2733500
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                 0.0274401   -0.0087723    0.0623527
0-24 months (no birth wast)   JiVitA-3         BANGLADESH                     0                    NA                 0.0240099    0.0030437    0.0445351
0-24 months (no birth wast)   JiVitA-4         BANGLADESH                     0                    NA                 0.1294772    0.0953396    0.1623266
0-24 months (no birth wast)   Keneba           GAMBIA                         0                    NA                 0.0187553    0.0000952    0.0370672
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                    NA                 0.5073766    0.2786091    0.6635973
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                    NA                 0.0817347   -0.0393910    0.1887450
0-24 months (no birth wast)   MAL-ED           INDIA                          0                    NA                 0.0610415   -0.0196644    0.1353596
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                    NA                 0.0845756   -0.0365399    0.1915392
0-24 months (no birth wast)   MAL-ED           PERU                           0                    NA                 0.1890440   -0.0502559    0.3738197
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0139918   -0.1166164    0.0792010
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0886382   -0.0819673    0.2323425
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     0                    NA                 0.0109311   -0.0454664    0.0642862
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                 0.0813440   -0.0046014    0.1599365
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    NA                 0.0000195   -0.0081559    0.0081286
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    NA                 0.1110415    0.0403160    0.1765548
0-24 months (no birth wast)   ResPak           PAKISTAN                       0                    NA                 0.0477452   -0.0397151    0.1278483
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    NA                 0.0721154    0.0370108    0.1059403
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    NA                 0.1669463    0.0532713    0.2669723
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0361170    0.0105417    0.0610312
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0284828    0.0097924    0.0468203
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0206026   -0.1014065    0.0542732
0-6 months (no birth wast)    CMIN             BANGLADESH                     0                    NA                 0.0259269   -0.2692712    0.2524699
0-6 months (no birth wast)    COHORTS          INDIA                          0                    NA                -0.0397125   -0.0646025   -0.0154044
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    0                    NA                -0.0198769   -0.0435692    0.0032775
0-6 months (no birth wast)    EE               PAKISTAN                       0                    NA                -0.0726585   -0.2573885    0.0849318
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                    NA                -0.0786704   -0.1418475   -0.0189888
0-6 months (no birth wast)    IRC              INDIA                          0                    NA                -0.0079456   -0.0627847    0.0440638
0-6 months (no birth wast)    JiVitA-3         BANGLADESH                     0                    NA                -0.1181947   -0.1500447   -0.0872267
0-6 months (no birth wast)    JiVitA-4         BANGLADESH                     0                    NA                -0.1019266   -0.2107118   -0.0029159
0-6 months (no birth wast)    Keneba           GAMBIA                         0                    NA                 0.0081893   -0.0304469    0.0453768
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                    NA                 0.1062378   -0.1560655    0.3090263
0-6 months (no birth wast)    MAL-ED           INDIA                          0                    NA                -0.0376485   -0.1615715    0.0730537
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     0                    NA                 0.0765044   -0.0690025    0.2022057
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    NA                 0.0000404   -0.0073852    0.0074113
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    NA                 0.0740401   -0.0616406    0.1923804
0-6 months (no birth wast)    ResPak           PAKISTAN                       0                    NA                 0.1309821   -0.0310376    0.2675416
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    NA                -0.0042451   -0.0521336    0.0414637
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0114650   -0.0270214    0.0485092
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0120062   -0.0419368    0.0170646
6-24 months                   CMC-V-BCS-2002   INDIA                          0                    NA                 0.1024814    0.0035429    0.1915962
6-24 months                   CMIN             BANGLADESH                     0                    NA                 0.1617222    0.0276707    0.2772926
6-24 months                   COHORTS          GUATEMALA                      0                    NA                 0.1879500    0.0862519    0.2783293
6-24 months                   COHORTS          INDIA                          0                    NA                 0.1044470    0.0752675    0.1327059
6-24 months                   COHORTS          PHILIPPINES                    0                    NA                 0.0331295    0.0157438    0.0502081
6-24 months                   EE               PAKISTAN                       0                    NA                 0.0859457   -0.0239351    0.1840350
6-24 months                   GMS-Nepal        NEPAL                          0                    NA                 0.0073348   -0.0312722    0.0444966
6-24 months                   Guatemala BSC    GUATEMALA                      0                    NA                 0.2503537   -0.0550046    0.4673297
6-24 months                   iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.2396090    0.1620166    0.3100169
6-24 months                   IRC              INDIA                          0                    NA                 0.0499188   -0.0106743    0.1068793
6-24 months                   JiVitA-3         BANGLADESH                     0                    NA                 0.1197911    0.0941874    0.1446711
6-24 months                   JiVitA-4         BANGLADESH                     0                    NA                 0.1413802    0.1059298    0.1754251
6-24 months                   Keneba           GAMBIA                         0                    NA                 0.0343368    0.0132453    0.0549774
6-24 months                   LCNI-5           MALAWI                         0                    NA                 0.4684476    0.2566413    0.6199036
6-24 months                   MAL-ED           BANGLADESH                     0                    NA                 0.0737061   -0.0630097    0.1928385
6-24 months                   MAL-ED           INDIA                          0                    NA                 0.0815723   -0.0273743    0.1789659
6-24 months                   MAL-ED           NEPAL                          0                    NA                 0.1170156   -0.0327800    0.2450846
6-24 months                   MAL-ED           PERU                           0                    NA                 0.1737288   -0.0873034    0.3720943
6-24 months                   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0303030   -0.0895376    0.1369622
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1080097   -0.0882169    0.2688528
6-24 months                   NIH-Birth        BANGLADESH                     0                    NA                 0.0316918   -0.0275926    0.0875559
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                 0.1110010    0.0160746    0.1967692
6-24 months                   PROVIDE          BANGLADESH                     0                    NA                 0.1155152    0.0328970    0.1910754
6-24 months                   ResPak           PAKISTAN                       0                    NA                -0.0039498   -0.1214587    0.1012463
6-24 months                   SAS-CompFeed     INDIA                          0                    NA                 0.1060683    0.0515807    0.1574256
6-24 months                   SAS-FoodSuppl    INDIA                          0                    NA                 0.1586511    0.0420977    0.2610229
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0495178    0.0159560    0.0819349
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0440307    0.0208719    0.0666417
