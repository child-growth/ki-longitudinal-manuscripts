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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/3d8aca97-844f-4782-af20-2854c94ecbb0/cdfdafb8-a03a-4187-8400-1814bd079807/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3d8aca97-844f-4782-af20-2854c94ecbb0/cdfdafb8-a03a-4187-8400-1814bd079807/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3d8aca97-844f-4782-af20-2854c94ecbb0/cdfdafb8-a03a-4187-8400-1814bd079807/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3d8aca97-844f-4782-af20-2854c94ecbb0/cdfdafb8-a03a-4187-8400-1814bd079807/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                0.4334471   0.3766281   0.4902661
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    NA                0.5200000   0.4067781   0.6332219
0-24 months (no birth wast)   CMIN             BANGLADESH                     0                    NA                0.3795181   0.3055598   0.4534763
0-24 months (no birth wast)   CMIN             BANGLADESH                     1                    NA                0.5098039   0.4126084   0.6069994
0-24 months (no birth wast)   COHORTS          GUATEMALA                      0                    NA                0.1016782   0.0830600   0.1202963
0-24 months (no birth wast)   COHORTS          GUATEMALA                      1                    NA                0.1755486   0.1337851   0.2173121
0-24 months (no birth wast)   COHORTS          INDIA                          0                    NA                0.1747774   0.1653898   0.1841649
0-24 months (no birth wast)   COHORTS          INDIA                          1                    NA                0.2491145   0.2199857   0.2782434
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    0                    NA                0.2956063   0.2788359   0.3123767
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    1                    NA                0.4310345   0.3574401   0.5046288
0-24 months (no birth wast)   EE               PAKISTAN                       0                    NA                0.4739336   0.4064711   0.5413962
0-24 months (no birth wast)   EE               PAKISTAN                       1                    NA                0.6204819   0.5465637   0.6944002
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    NA                0.5027125   0.4610084   0.5444165
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                    NA                0.4953271   0.4005210   0.5901333
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      0                    NA                0.0627615   0.0319640   0.0935590
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      1                    NA                0.1486486   0.0674662   0.2298311
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.0682747   0.0535502   0.0829992
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1488372   0.0941917   0.2034827
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                0.5070028   0.4550782   0.5589274
0-24 months (no birth wast)   IRC              INDIA                          1                    NA                0.6153846   0.4829917   0.7477775
0-24 months (no birth wast)   Keneba           GAMBIA                         0                    NA                0.3345098   0.3161939   0.3528257
0-24 months (no birth wast)   Keneba           GAMBIA                         1                    NA                0.3773585   0.3240733   0.4306437
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                    NA                0.0339623   0.0185323   0.0493922
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                    NA                0.1237785   0.0869174   0.1606396
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                    NA                0.1981567   0.1450200   0.2512934
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                    NA                0.3260870   0.1903603   0.4618136
0-24 months (no birth wast)   MAL-ED           INDIA                          0                    NA                0.3495146   0.2842691   0.4147600
0-24 months (no birth wast)   MAL-ED           INDIA                          1                    NA                0.4750000   0.3199295   0.6300705
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                    NA                0.1761905   0.1245544   0.2278266
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                    NA                0.3103448   0.1416127   0.4790770
0-24 months (no birth wast)   MAL-ED           PERU                           0                    NA                0.0563910   0.0286240   0.0841579
0-24 months (no birth wast)   MAL-ED           PERU                           1                    NA                0.1666667   0.0447254   0.2886080
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                    NA                0.1481481   0.1057055   0.1905908
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                    NA                0.1315789   0.0239273   0.2392306
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1187215   0.0757994   0.1616435
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1904762   0.0714912   0.3094612
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     0                    NA                0.2913386   0.2517932   0.3308840
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     1                    NA                0.3191489   0.2248367   0.4134611
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                0.1309707   0.1049980   0.1569435
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    NA                0.2190476   0.1398845   0.2982108
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    NA                0.0680122   0.0559751   0.0800492
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    NA                0.0681818   0.0482569   0.0881068
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    NA                0.1578100   0.1291160   0.1865040
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                    NA                0.3636364   0.2474972   0.4797755
0-24 months (no birth wast)   ResPak           PAKISTAN                       0                    NA                0.4321608   0.3632109   0.5011107
0-24 months (no birth wast)   ResPak           PAKISTAN                       1                    NA                0.5061728   0.3970993   0.6152464
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    NA                0.3351801   0.2890618   0.3812983
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                    NA                0.4295943   0.3549592   0.5042294
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    NA                0.2991803   0.2416535   0.3567072
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                    NA                0.4575163   0.3784764   0.5365563
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1917192   0.1753480   0.2080904
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2962963   0.2259664   0.3666262
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                0.0988320   0.0935454   0.1041185
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    NA                0.1298422   0.1121965   0.1474879
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    NA                0.3142857   0.2598324   0.3687390
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                    NA                0.2857143   0.1797347   0.3916939
0-6 months (no birth wast)    CMIN             BANGLADESH                     0                    NA                0.1144578   0.0659361   0.1629796
0-6 months (no birth wast)    CMIN             BANGLADESH                     1                    NA                0.1188119   0.0555901   0.1820336
0-6 months (no birth wast)    COHORTS          INDIA                          0                    NA                0.0853785   0.0781776   0.0925794
0-6 months (no birth wast)    COHORTS          INDIA                          1                    NA                0.0552486   0.0386056   0.0718916
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    0                    NA                0.0966030   0.0857094   0.1074965
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    1                    NA                0.0639535   0.0273825   0.1005245
0-6 months (no birth wast)    EE               PAKISTAN                       0                    NA                0.2285714   0.1717022   0.2854406
0-6 months (no birth wast)    EE               PAKISTAN                       1                    NA                0.2000000   0.1388853   0.2611147
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                    NA                0.2067039   0.1724278   0.2409800
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                    NA                0.1142857   0.0533833   0.1751882
0-6 months (no birth wast)    IRC              INDIA                          0                    NA                0.3451327   0.2944599   0.3958056
0-6 months (no birth wast)    IRC              INDIA                          1                    NA                0.3137255   0.1862155   0.4412355
0-6 months (no birth wast)    Keneba           GAMBIA                         0                    NA                0.1109589   0.0978019   0.1241159
0-6 months (no birth wast)    Keneba           GAMBIA                         1                    NA                0.1196581   0.0780645   0.1612517
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                    NA                0.0648148   0.0319192   0.0977104
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                    NA                0.1086957   0.0185762   0.1988151
0-6 months (no birth wast)    MAL-ED           INDIA                          0                    NA                0.1658537   0.1148329   0.2168744
0-6 months (no birth wast)    MAL-ED           INDIA                          1                    NA                0.1282051   0.0230653   0.2333450
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     0                    NA                0.0727273   0.0498307   0.0956238
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     1                    NA                0.1123596   0.0466923   0.1780268
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    NA                0.0612208   0.0499574   0.0724842
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    NA                0.0615385   0.0474554   0.0756216
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    NA                0.0501618   0.0329398   0.0673838
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                    NA                0.0923077   0.0218874   0.1627280
0-6 months (no birth wast)    ResPak           PAKISTAN                       0                    NA                0.1969697   0.1414727   0.2524667
0-6 months (no birth wast)    ResPak           PAKISTAN                       1                    NA                0.3076923   0.2050806   0.4103040
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    NA                0.1269841   0.0963910   0.1575772
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                    NA                0.1218905   0.0872093   0.1565718
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0849142   0.0733005   0.0965279
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0987654   0.0528135   0.1447173
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    NA                0.0323490   0.0291907   0.0355073
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                    NA                0.0287879   0.0197672   0.0378086
6-24 months                   CMC-V-BCS-2002   INDIA                          0                    NA                0.2364865   0.1880138   0.2849591
6-24 months                   CMC-V-BCS-2002   INDIA                          1                    NA                0.3766234   0.2682520   0.4849947
6-24 months                   CMIN             BANGLADESH                     0                    NA                0.3291139   0.2556997   0.4025282
6-24 months                   CMIN             BANGLADESH                     1                    NA                0.4787234   0.3775366   0.5799102
6-24 months                   COHORTS          GUATEMALA                      0                    NA                0.1021978   0.0825091   0.1218865
6-24 months                   COHORTS          GUATEMALA                      1                    NA                0.1967742   0.1525003   0.2410481
6-24 months                   COHORTS          INDIA                          0                    NA                0.1093263   0.1014956   0.1171570
6-24 months                   COHORTS          INDIA                          1                    NA                0.2190476   0.1910758   0.2470195
6-24 months                   COHORTS          PHILIPPINES                    0                    NA                0.2566138   0.2399690   0.2732585
6-24 months                   COHORTS          PHILIPPINES                    1                    NA                0.4294479   0.3534442   0.5054515
6-24 months                   EE               PAKISTAN                       0                    NA                0.3827751   0.3167894   0.4487608
6-24 months                   EE               PAKISTAN                       1                    NA                0.4909091   0.4145280   0.5672902
6-24 months                   GMS-Nepal        NEPAL                          0                    NA                0.4676113   0.4235751   0.5116475
6-24 months                   GMS-Nepal        NEPAL                          1                    NA                0.5000000   0.3998961   0.6001039
6-24 months                   Guatemala BSC    GUATEMALA                      0                    NA                0.0616114   0.0291091   0.0941137
6-24 months                   Guatemala BSC    GUATEMALA                      1                    NA                0.1515152   0.0648566   0.2381737
6-24 months                   iLiNS-Zinc       BURKINA FASO                   0                    NA                0.1748914   0.1501328   0.1996501
6-24 months                   iLiNS-Zinc       BURKINA FASO                   1                    NA                0.4283765   0.3094392   0.5473138
6-24 months                   IRC              INDIA                          0                    NA                0.2960894   0.2487408   0.3434380
6-24 months                   IRC              INDIA                          1                    NA                0.4038462   0.2703208   0.5373715
6-24 months                   Keneba           GAMBIA                         0                    NA                0.3065844   0.2882487   0.3249200
6-24 months                   Keneba           GAMBIA                         1                    NA                0.3961039   0.3414731   0.4507347
6-24 months                   LCNI-5           MALAWI                         0                    NA                0.0405405   0.0235462   0.0575349
6-24 months                   LCNI-5           MALAWI                         1                    NA                0.1396104   0.1008809   0.1783399
6-24 months                   MAL-ED           BANGLADESH                     0                    NA                0.1641791   0.1128608   0.2154974
6-24 months                   MAL-ED           BANGLADESH                     1                    NA                0.2564103   0.1190830   0.3937375
6-24 months                   MAL-ED           INDIA                          0                    NA                0.2487310   0.1882382   0.3092238
6-24 months                   MAL-ED           INDIA                          1                    NA                0.3947368   0.2389939   0.5504797
6-24 months                   MAL-ED           NEPAL                          0                    NA                0.1352657   0.0885757   0.1819557
6-24 months                   MAL-ED           NEPAL                          1                    NA                0.2857143   0.1180282   0.4534004
6-24 months                   MAL-ED           PERU                           0                    NA                0.0550847   0.0259232   0.0842463
6-24 months                   MAL-ED           PERU                           1                    NA                0.1470588   0.0277921   0.2663256
6-24 months                   MAL-ED           SOUTH AFRICA                   0                    NA                0.1385281   0.0938935   0.1831627
6-24 months                   MAL-ED           SOUTH AFRICA                   1                    NA                0.1785714   0.0364368   0.3207061
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1019417   0.0605388   0.1433447
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1794872   0.0587994   0.3001750
6-24 months                   NIH-Birth        BANGLADESH                     0                    NA                0.2850877   0.2436131   0.3265623
6-24 months                   NIH-Birth        BANGLADESH                     1                    NA                0.3372093   0.2372006   0.4372180
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                0.1164274   0.0913051   0.1415498
6-24 months                   NIH-Crypto       BANGLADESH                     1                    NA                0.2233010   0.1428190   0.3037830
6-24 months                   PROVIDE          BANGLADESH                     0                    NA                0.1410488   0.1120148   0.1700829
6-24 months                   PROVIDE          BANGLADESH                     1                    NA                0.3387097   0.2208092   0.4566101
6-24 months                   ResPak           PAKISTAN                       0                    NA                0.3668639   0.2940477   0.4396801
6-24 months                   ResPak           PAKISTAN                       1                    NA                0.3582090   0.2431560   0.4732619
6-24 months                   SAS-CompFeed     INDIA                          0                    NA                0.2743539   0.2355197   0.3131880
6-24 months                   SAS-CompFeed     INDIA                          1                    NA                0.3890339   0.3197132   0.4583547
6-24 months                   SAS-FoodSuppl    INDIA                          0                    NA                0.2991803   0.2416544   0.3567063
6-24 months                   SAS-FoodSuppl    INDIA                          1                    NA                0.4430380   0.3654859   0.5205901
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1526596   0.1363978   0.1689213
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2681159   0.1941897   0.3420422
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                0.0913039   0.0855629   0.0970449
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    NA                0.1346154   0.1148363   0.1543945


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
0-6 months (no birth wast)    COHORTS          INDIA                          NA                   NA                0.0820276   0.0753613   0.0886940
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    NA                   NA                0.0947298   0.0842456   0.1052141
0-6 months (no birth wast)    EE               PAKISTAN                       NA                   NA                0.2160000   0.1742941   0.2577059
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          NA                   NA                0.1915888   0.1611224   0.2220551
0-6 months (no birth wast)    IRC              INDIA                          NA                   NA                0.3410256   0.2939169   0.3881343
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
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          1                    0                 1.1996850   0.9304468   1.5468313
0-24 months (no birth wast)   CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   CMIN             BANGLADESH                     1                    0                 1.3432929   1.0227540   1.7642911
0-24 months (no birth wast)   COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   COHORTS          GUATEMALA                      1                    0                 1.7265119   1.2787619   2.3310385
0-24 months (no birth wast)   COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   COHORTS          INDIA                          1                    0                 1.4253249   1.2532300   1.6210522
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    1                    0                 1.4581369   1.2180388   1.7455627
0-24 months (no birth wast)   EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   EE               PAKISTAN                       1                    0                 1.3092169   1.0874224   1.5762493
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          1                    0                 0.9853089   0.7997901   1.2138606
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      1                    0                 2.3684685   1.1365957   4.9354777
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   1                    0                 2.1799749   1.4888153   3.1919948
0-24 months (no birth wast)   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   IRC              INDIA                          1                    0                 1.2137697   0.9564368   1.5403389
0-24 months (no birth wast)   Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   Keneba           GAMBIA                         1                    0                 1.1280940   0.9695526   1.3125601
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   LCNI-5           MALAWI                         1                    0                 3.6445892   2.1170324   6.2743633
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     1                    0                 1.6456016   1.0029811   2.6999558
0-24 months (no birth wast)   MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED           INDIA                          1                    0                 1.3590278   0.9330493   1.9794843
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED           NEPAL                          1                    0                 1.7614166   0.9497737   3.2666607
0-24 months (no birth wast)   MAL-ED           PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED           PERU                           1                    0                 2.9555556   1.2235735   7.1391780
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   1                    0                 0.8881579   0.3732647   2.1133113
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 1.6043956   0.7795781   3.3018954
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     1                    0                 1.0954572   0.7913437   1.5164415
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     1                    0                 1.6724930   1.1074766   2.5257715
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   PROBIT           BELARUS                        1                    0                 1.0024942   0.7243081   1.3875236
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     1                    0                 2.3042672   1.5955991   3.3276824
0-24 months (no birth wast)   ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ResPak           PAKISTAN                       1                    0                 1.1712604   0.8957963   1.5314318
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          1                    0                 1.2816821   1.1536904   1.4238733
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          1                    0                 1.5292327   1.1808976   1.9803179
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.5454704   1.2009013   1.9889050
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       1                    0                 1.3137668   1.1352458   1.5203608
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          1                    0                 0.9090909   0.6036813   1.3690109
0-6 months (no birth wast)    CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    CMIN             BANGLADESH                     1                    0                 1.0380406   0.5257106   2.0496607
0-6 months (no birth wast)    COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    COHORTS          INDIA                          1                    0                 0.6471022   0.4732774   0.8847692
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    1                    0                 0.6620240   0.3696111   1.1857756
0-6 months (no birth wast)    EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    EE               PAKISTAN                       1                    0                 0.8750000   0.5900283   1.2976073
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          1                    0                 0.5528958   0.3164197   0.9661020
0-6 months (no birth wast)    IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    IRC              INDIA                          1                    0                 0.9089995   0.5900460   1.4003657
0-6 months (no birth wast)    Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    Keneba           GAMBIA                         1                    0                 1.0784003   0.7469232   1.5569838
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     1                    0                 1.6770186   0.6343906   4.4332175
0-6 months (no birth wast)    MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    MAL-ED           INDIA                          1                    0                 0.7730015   0.3219485   1.8559842
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     1                    0                 1.5449438   0.7954452   3.0006484
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    PROBIT           BELARUS                        1                    0                 1.0051889   0.7484287   1.3500346
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     1                    0                 1.8401985   0.7971526   4.2480332
0-6 months (no birth wast)    ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ResPak           PAKISTAN                       1                    0                 1.5621302   1.0095183   2.4172425
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          1                    0                 0.9598881   0.7996121   1.1522901
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1631206   0.7161665   1.8890153
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       1                    0                 0.8899145   0.6409285   1.2356259
6-24 months                   CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   CMC-V-BCS-2002   INDIA                          1                    0                 1.5925788   1.1185916   2.2674113
6-24 months                   CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   CMIN             BANGLADESH                     1                    0                 1.4545827   1.0697405   1.9778728
6-24 months                   COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   COHORTS          GUATEMALA                      1                    0                 1.9254249   1.4318083   2.5892161
6-24 months                   COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   COHORTS          INDIA                          1                    0                 2.0036125   1.7307204   2.3195330
6-24 months                   COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   COHORTS          PHILIPPINES                    1                    0                 1.6735184   1.3860203   2.0206515
6-24 months                   EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   EE               PAKISTAN                       1                    0                 1.2825000   1.0167298   1.6177418
6-24 months                   GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   GMS-Nepal        NEPAL                          1                    0                 1.0692641   0.8570324   1.3340518
6-24 months                   Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   Guatemala BSC    GUATEMALA                      1                    0                 2.4592075   1.1294748   5.3544368
6-24 months                   iLiNS-Zinc       BURKINA FASO                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   iLiNS-Zinc       BURKINA FASO                   1                    0                 2.4493855   1.7855136   3.3600915
6-24 months                   IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   IRC              INDIA                          1                    0                 1.3639332   0.9446859   1.9692407
6-24 months                   Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   Keneba           GAMBIA                         1                    0                 1.2919899   1.1116601   1.5015721
6-24 months                   LCNI-5           MALAWI                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   LCNI-5           MALAWI                         1                    0                 3.4437229   2.0831470   5.6929385
6-24 months                   MAL-ED           BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED           BANGLADESH                     1                    0                 1.5617716   0.8400479   2.9035612
6-24 months                   MAL-ED           INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED           INDIA                          1                    0                 1.5870032   0.9983645   2.5227050
6-24 months                   MAL-ED           NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED           NEPAL                          1                    0                 2.1122449   1.0691581   4.1729830
6-24 months                   MAL-ED           PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED           PERU                           1                    0                 2.6696833   1.0135461   7.0319529
6-24 months                   MAL-ED           SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED           SOUTH AFRICA                   1                    0                 1.2890625   0.5461939   3.0422936
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0                 1.7606838   0.8026463   3.8622332
6-24 months                   NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   NIH-Birth        BANGLADESH                     1                    0                 1.1828265   0.8500752   1.6458290
6-24 months                   NIH-Crypto       BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   NIH-Crypto       BANGLADESH                     1                    0                 1.9179412   1.2600842   2.9192481
6-24 months                   PROVIDE          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   PROVIDE          BANGLADESH                     1                    0                 2.4013648   1.6026218   3.5981995
6-24 months                   ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ResPak           PAKISTAN                       1                    0                 0.9764083   0.6693534   1.4243196
6-24 months                   SAS-CompFeed     INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   SAS-CompFeed     INDIA                          1                    0                 1.4180005   1.2129836   1.6576691
6-24 months                   SAS-FoodSuppl    INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   SAS-FoodSuppl    INDIA                          1                    0                 1.4808393   1.1417767   1.9205900
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.7562996   1.3068538   2.3603162
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ZVITAMBO         ZIMBABWE                       1                    0                 1.4743662   1.2565990   1.7298723


### Parameter: PAR


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0176399   -0.0084232    0.0437029
0-24 months (no birth wast)   CMIN             BANGLADESH                     0                    NA                 0.0495864    0.0024872    0.0966856
0-24 months (no birth wast)   COHORTS          GUATEMALA                      0                    NA                 0.0176912    0.0066102    0.0287722
0-24 months (no birth wast)   COHORTS          INDIA                          0                    NA                 0.0088246    0.0051490    0.0125002
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    0                    NA                 0.0078054    0.0033117    0.0122991
0-24 months (no birth wast)   EE               PAKISTAN                       0                    NA                 0.0645279    0.0198535    0.1092023
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    NA                -0.0011973   -0.0179900    0.0155954
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      0                    NA                 0.0203056   -0.0006179    0.0412291
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0168110    0.0082533    0.0253687
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                 0.0137796   -0.0046373    0.0321965
0-24 months (no birth wast)   Keneba           GAMBIA                         0                    NA                 0.0047510   -0.0015159    0.0110179
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                    NA                 0.0329434    0.0179957    0.0478910
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                    NA                 0.0223756   -0.0037884    0.0485397
0-24 months (no birth wast)   MAL-ED           INDIA                          0                    NA                 0.0204041   -0.0075593    0.0483675
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                    NA                 0.0162781   -0.0058443    0.0384006
0-24 months (no birth wast)   MAL-ED           PERU                           0                    NA                 0.0131454   -0.0022995    0.0285904
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0020443   -0.0163339    0.0122454
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0115467   -0.0090588    0.0321522
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     0                    NA                 0.0043425   -0.0116466    0.0203315
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                 0.0122654    0.0004605    0.0240702
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    NA                 0.0000013   -0.0005524    0.0005550
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    NA                 0.0197737    0.0074169    0.0321305
0-24 months (no birth wast)   ResPak           PAKISTAN                       0                    NA                 0.0214106   -0.0161257    0.0589470
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    NA                 0.0263379    0.0132715    0.0394044
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    NA                 0.0610212    0.0225892    0.0994531
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0071063    0.0020869    0.0121257
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0031699    0.0012803    0.0050595
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0057143   -0.0295745    0.0181460
0-6 months (no birth wast)    CMIN             BANGLADESH                     0                    NA                 0.0016470   -0.0285010    0.0317950
0-6 months (no birth wast)    COHORTS          INDIA                          0                    NA                -0.0033509   -0.0053807   -0.0013210
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    0                    NA                -0.0018732   -0.0040792    0.0003329
0-6 months (no birth wast)    EE               PAKISTAN                       0                    NA                -0.0125714   -0.0493313    0.0241884
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                    NA                -0.0151151   -0.0268473   -0.0033830
0-6 months (no birth wast)    IRC              INDIA                          0                    NA                -0.0041071   -0.0220808    0.0138666
0-6 months (no birth wast)    Keneba           GAMBIA                         0                    NA                 0.0008398   -0.0033728    0.0050523
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                    NA                 0.0077043   -0.0092607    0.0246693
0-6 months (no birth wast)    MAL-ED           INDIA                          0                    NA                -0.0060176   -0.0247773    0.0127421
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     0                    NA                 0.0060399   -0.0046214    0.0167011
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    NA                 0.0000025   -0.0004502    0.0004551
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    NA                 0.0040110   -0.0029505    0.0109724
0-6 months (no birth wast)    ResPak           PAKISTAN                       0                    NA                 0.0312912   -0.0021998    0.0647821
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    NA                -0.0013901   -0.0075732    0.0047930
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0009444   -0.0022902    0.0041791
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0003514   -0.0012948    0.0005919
6-24 months                   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0289291    0.0037529    0.0541052
6-24 months                   CMIN             BANGLADESH                     0                    NA                 0.0558067    0.0083233    0.1032901
6-24 months                   COHORTS          GUATEMALA                      0                    NA                 0.0240317    0.0115044    0.0365590
6-24 months                   COHORTS          INDIA                          0                    NA                 0.0132785    0.0096638    0.0168932
6-24 months                   COHORTS          PHILIPPINES                    0                    NA                 0.0100292    0.0052734    0.0147850
6-24 months                   EE               PAKISTAN                       0                    NA                 0.0477062    0.0028432    0.0925691
6-24 months                   GMS-Nepal        NEPAL                          0                    NA                 0.0052700   -0.0125506    0.0230906
6-24 months                   Guatemala BSC    GUATEMALA                      0                    NA                 0.0214211   -0.0010895    0.0439317
6-24 months                   iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.0568906    0.0368467    0.0769344
6-24 months                   IRC              INDIA                          0                    NA                 0.0136667   -0.0046344    0.0319678
6-24 months                   Keneba           GAMBIA                         0                    NA                 0.0100701    0.0035017    0.0166385
6-24 months                   LCNI-5           MALAWI                         0                    NA                 0.0369413    0.0208354    0.0530472
6-24 months                   MAL-ED           BANGLADESH                     0                    NA                 0.0149876   -0.0092228    0.0391979
6-24 months                   MAL-ED           INDIA                          0                    NA                 0.0236095   -0.0042716    0.0514905
6-24 months                   MAL-ED           NEPAL                          0                    NA                 0.0179258   -0.0037337    0.0395852
6-24 months                   MAL-ED           PERU                           0                    NA                 0.0115819   -0.0043035    0.0274673
6-24 months                   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0043290   -0.0118481    0.0205061
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0123440   -0.0082762    0.0329641
6-24 months                   NIH-Birth        BANGLADESH                     0                    NA                 0.0082702   -0.0089836    0.0255240
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                 0.0150794    0.0028806    0.0272782
6-24 months                   PROVIDE          BANGLADESH                     0                    NA                 0.0199268    0.0068119    0.0330417
6-24 months                   ResPak           PAKISTAN                       0                    NA                -0.0024571   -0.0411158    0.0362015
6-24 months                   SAS-CompFeed     INDIA                          0                    NA                 0.0316216    0.0148192    0.0484241
6-24 months                   SAS-FoodSuppl    INDIA                          0                    NA                 0.0565411    0.0179721    0.0951100
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0078954    0.0025652    0.0132257
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0045814    0.0023885    0.0067744


### Parameter: PAF


agecat                        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   CMC-V-BCS-2002   INDIA                          0                    NA                 0.0391052   -0.0205491    0.0952726
0-24 months (no birth wast)   CMIN             BANGLADESH                     0                    NA                 0.1155579   -0.0017390    0.2191201
0-24 months (no birth wast)   COHORTS          GUATEMALA                      0                    NA                 0.1482054    0.0523097    0.2343975
0-24 months (no birth wast)   COHORTS          INDIA                          0                    NA                 0.0480638    0.0279131    0.0677968
0-24 months (no birth wast)   COHORTS          PHILIPPINES                    0                    NA                 0.0257254    0.0108117    0.0404143
0-24 months (no birth wast)   EE               PAKISTAN                       0                    NA                 0.1198375    0.0319608    0.1997369
0-24 months (no birth wast)   GMS-Nepal        NEPAL                          0                    NA                -0.0023874   -0.0364374    0.0305440
0-24 months (no birth wast)   Guatemala BSC    GUATEMALA                      0                    NA                 0.2444480   -0.0347093    0.4482906
0-24 months (no birth wast)   iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.1975772    0.1070725    0.2789085
0-24 months (no birth wast)   IRC              INDIA                          0                    NA                 0.0264594   -0.0096538    0.0612809
0-24 months (no birth wast)   Keneba           GAMBIA                         0                    NA                 0.0140040   -0.0046424    0.0323043
0-24 months (no birth wast)   LCNI-5           MALAWI                         0                    NA                 0.4923854    0.2642126    0.6498003
0-24 months (no birth wast)   MAL-ED           BANGLADESH                     0                    NA                 0.1014619   -0.0241011    0.2116299
0-24 months (no birth wast)   MAL-ED           INDIA                          0                    NA                 0.0551584   -0.0236048    0.1278611
0-24 months (no birth wast)   MAL-ED           NEPAL                          0                    NA                 0.0845756   -0.0365399    0.1915392
0-24 months (no birth wast)   MAL-ED           PERU                           0                    NA                 0.1890440   -0.0502559    0.3738197
0-24 months (no birth wast)   MAL-ED           SOUTH AFRICA                   0                    NA                -0.0139918   -0.1166164    0.0792010
0-24 months (no birth wast)   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0886382   -0.0819673    0.2323425
0-24 months (no birth wast)   NIH-Birth        BANGLADESH                     0                    NA                 0.0146864   -0.0408948    0.0672997
0-24 months (no birth wast)   NIH-Crypto       BANGLADESH                     0                    NA                 0.0856303    0.0004231    0.1635742
0-24 months (no birth wast)   PROBIT           BELARUS                        0                    NA                 0.0000195   -0.0081559    0.0081286
0-24 months (no birth wast)   PROVIDE          BANGLADESH                     0                    NA                 0.1113487    0.0405238    0.1769456
0-24 months (no birth wast)   ResPak           PAKISTAN                       0                    NA                 0.0472045   -0.0393948    0.1265886
0-24 months (no birth wast)   SAS-CompFeed     INDIA                          0                    NA                 0.0728537    0.0396683    0.1048923
0-24 months (no birth wast)   SAS-FoodSuppl    INDIA                          0                    NA                 0.1694085    0.0557275    0.2694034
0-24 months (no birth wast)   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0357415    0.0102511    0.0605755
0-24 months (no birth wast)   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0310771    0.0124254    0.0493765
0-6 months (no birth wast)    CMC-V-BCS-2002   INDIA                          0                    NA                -0.0185185   -0.0988489    0.0559394
0-6 months (no birth wast)    CMIN             BANGLADESH                     0                    NA                 0.0141858   -0.2828432    0.2424408
0-6 months (no birth wast)    COHORTS          INDIA                          0                    NA                -0.0408503   -0.0657062   -0.0165740
0-6 months (no birth wast)    COHORTS          PHILIPPINES                    0                    NA                -0.0197736   -0.0432465    0.0031711
0-6 months (no birth wast)    EE               PAKISTAN                       0                    NA                -0.0582011   -0.2426528    0.0988718
0-6 months (no birth wast)    GMS-Nepal        NEPAL                          0                    NA                -0.0788936   -0.1412331   -0.0199593
0-6 months (no birth wast)    IRC              INDIA                          0                    NA                -0.0120434   -0.0661459    0.0393137
0-6 months (no birth wast)    Keneba           GAMBIA                         0                    NA                 0.0075115   -0.0308854    0.0444783
0-6 months (no birth wast)    MAL-ED           BANGLADESH                     0                    NA                 0.1062378   -0.1560655    0.3090263
0-6 months (no birth wast)    MAL-ED           INDIA                          0                    NA                -0.0376485   -0.1615715    0.0730537
0-6 months (no birth wast)    NIH-Birth        BANGLADESH                     0                    NA                 0.0766798   -0.0674564    0.2013537
0-6 months (no birth wast)    PROBIT           BELARUS                        0                    NA                 0.0000404   -0.0073852    0.0074113
0-6 months (no birth wast)    PROVIDE          BANGLADESH                     0                    NA                 0.0740401   -0.0616406    0.1923804
0-6 months (no birth wast)    ResPak           PAKISTAN                       0                    NA                 0.1370851   -0.0210865    0.2707551
0-6 months (no birth wast)    SAS-CompFeed     INDIA                          0                    NA                -0.0110682   -0.0616953    0.0371448
0-6 months (no birth wast)    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0109995   -0.0273780    0.0479434
0-6 months (no birth wast)    ZVITAMBO         ZIMBABWE                       0                    NA                -0.0109830   -0.0408821    0.0180572
6-24 months                   CMC-V-BCS-2002   INDIA                          0                    NA                 0.1089954    0.0096178    0.1984011
6-24 months                   CMIN             BANGLADESH                     0                    NA                 0.1449824    0.0121120    0.2599818
6-24 months                   COHORTS          GUATEMALA                      0                    NA                 0.1903810    0.0882979    0.2810340
6-24 months                   COHORTS          INDIA                          0                    NA                 0.1083030    0.0789451    0.1367252
6-24 months                   COHORTS          PHILIPPINES                    0                    NA                 0.0376128    0.0196563    0.0552403
6-24 months                   EE               PAKISTAN                       0                    NA                 0.1108205   -0.0000586    0.2094062
6-24 months                   GMS-Nepal        NEPAL                          0                    NA                 0.0111445   -0.0272776    0.0481295
6-24 months                   Guatemala BSC    GUATEMALA                      0                    NA                 0.2579848   -0.0452562    0.4732520
6-24 months                   iLiNS-Zinc       BURKINA FASO                   0                    NA                 0.2454486    0.1655907    0.3176636
6-24 months                   IRC              INDIA                          0                    NA                 0.0441209   -0.0167735    0.1013683
6-24 months                   Keneba           GAMBIA                         0                    NA                 0.0318016    0.0108424    0.0523167
6-24 months                   LCNI-5           MALAWI                         0                    NA                 0.4767736    0.2646305    0.6277166
6-24 months                   MAL-ED           BANGLADESH                     0                    NA                 0.0836515   -0.0606169    0.2082961
6-24 months                   MAL-ED           INDIA                          0                    NA                 0.0866910   -0.0210722    0.1830809
6-24 months                   MAL-ED           NEPAL                          0                    NA                 0.1170156   -0.0327800    0.2450846
6-24 months                   MAL-ED           PERU                           0                    NA                 0.1737288   -0.0873034    0.3720943
6-24 months                   MAL-ED           SOUTH AFRICA                   0                    NA                 0.0303030   -0.0895376    0.1369622
6-24 months                   MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1080097   -0.0882169    0.2688528
6-24 months                   NIH-Birth        BANGLADESH                     0                    NA                 0.0281915   -0.0324158    0.0852409
6-24 months                   NIH-Crypto       BANGLADESH                     0                    NA                 0.1146664    0.0188933    0.2010904
6-24 months                   PROVIDE          BANGLADESH                     0                    NA                 0.1237876    0.0406684    0.1997051
6-24 months                   ResPak           PAKISTAN                       0                    NA                -0.0067428   -0.1186215    0.0939463
6-24 months                   SAS-CompFeed     INDIA                          0                    NA                 0.1033470    0.0507910    0.1529930
6-24 months                   SAS-FoodSuppl    INDIA                          0                    NA                 0.1589476    0.0433879    0.2605476
6-24 months                   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0491759    0.0156305    0.0815780
6-24 months                   ZVITAMBO         ZIMBABWE                       0                    NA                 0.0477805    0.0247697    0.0702483
