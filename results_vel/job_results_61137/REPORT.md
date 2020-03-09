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

**Outcome Variable:** y_rate_wtkg

## Predictor Variables

**Intervention Variable:** birthwt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid          country                        birthwt                       n_cell       n
-------------  ---------------  -----------------------------  ---------------------------  -------  ------
0-3 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight       290     331
0-3 months     CMC-V-BCS-2002   INDIA                          Low birthweight                   41     331
0-3 months     CMIN             BANGLADESH                     Normal or high birthweight         8      11
0-3 months     CMIN             BANGLADESH                     Low birthweight                    3      11
0-3 months     COHORTS          GUATEMALA                      Normal or high birthweight       731     798
0-3 months     COHORTS          GUATEMALA                      Low birthweight                   67     798
0-3 months     COHORTS          INDIA                          Normal or high birthweight      5310    6667
0-3 months     COHORTS          INDIA                          Low birthweight                 1357    6667
0-3 months     CONTENT          PERU                           Normal or high birthweight         2       2
0-3 months     CONTENT          PERU                           Low birthweight                    0       2
0-3 months     EE               PAKISTAN                       Normal or high birthweight       200     319
0-3 months     EE               PAKISTAN                       Low birthweight                  119     319
0-3 months     GMS-Nepal        NEPAL                          Normal or high birthweight       355     509
0-3 months     GMS-Nepal        NEPAL                          Low birthweight                  154     509
0-3 months     IRC              INDIA                          Normal or high birthweight       330     394
0-3 months     IRC              INDIA                          Low birthweight                   64     394
0-3 months     JiVitA-3         BANGLADESH                     Normal or high birthweight     11315   19401
0-3 months     JiVitA-3         BANGLADESH                     Low birthweight                 8086   19401
0-3 months     JiVitA-4         BANGLADESH                     Normal or high birthweight      1182    1795
0-3 months     JiVitA-4         BANGLADESH                     Low birthweight                  613    1795
0-3 months     Keneba           GAMBIA                         Normal or high birthweight      1065    1249
0-3 months     Keneba           GAMBIA                         Low birthweight                  184    1249
0-3 months     MAL-ED           BANGLADESH                     Normal or high birthweight       193     244
0-3 months     MAL-ED           BANGLADESH                     Low birthweight                   51     244
0-3 months     MAL-ED           BRAZIL                         Normal or high birthweight       208     218
0-3 months     MAL-ED           BRAZIL                         Low birthweight                   10     218
0-3 months     MAL-ED           INDIA                          Normal or high birthweight       194     228
0-3 months     MAL-ED           INDIA                          Low birthweight                   34     228
0-3 months     MAL-ED           NEPAL                          Normal or high birthweight       209     228
0-3 months     MAL-ED           NEPAL                          Low birthweight                   19     228
0-3 months     MAL-ED           PERU                           Normal or high birthweight       262     279
0-3 months     MAL-ED           PERU                           Low birthweight                   17     279
0-3 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight       254     271
0-3 months     MAL-ED           SOUTH AFRICA                   Low birthweight                   17     271
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       177     187
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                   10     187
0-3 months     NIH-Birth        BANGLADESH                     Normal or high birthweight       386     549
0-3 months     NIH-Birth        BANGLADESH                     Low birthweight                  163     549
0-3 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight       552     725
0-3 months     NIH-Crypto       BANGLADESH                     Low birthweight                  173     725
0-3 months     PROBIT           BELARUS                        Normal or high birthweight     15327   15327
0-3 months     PROBIT           BELARUS                        Low birthweight                    0   15327
0-3 months     PROVIDE          BANGLADESH                     Normal or high birthweight       485     640
0-3 months     PROVIDE          BANGLADESH                     Low birthweight                  155     640
0-3 months     ResPak           PAKISTAN                       Normal or high birthweight        27      32
0-3 months     ResPak           PAKISTAN                       Low birthweight                    5      32
0-3 months     SAS-CompFeed     INDIA                          Normal or high birthweight       962    1265
0-3 months     SAS-CompFeed     INDIA                          Low birthweight                  303    1265
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1951    2019
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   68    2019
0-3 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7123    8172
0-3 months     ZVITAMBO         ZIMBABWE                       Low birthweight                 1049    8172
3-6 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight       274     314
3-6 months     CMC-V-BCS-2002   INDIA                          Low birthweight                   40     314
3-6 months     CMIN             BANGLADESH                     Normal or high birthweight         7       9
3-6 months     CMIN             BANGLADESH                     Low birthweight                    2       9
3-6 months     COHORTS          GUATEMALA                      Normal or high birthweight       623     684
3-6 months     COHORTS          GUATEMALA                      Low birthweight                   61     684
3-6 months     COHORTS          INDIA                          Normal or high birthweight      4949    6174
3-6 months     COHORTS          INDIA                          Low birthweight                 1225    6174
3-6 months     CONTENT          PERU                           Normal or high birthweight         2       2
3-6 months     CONTENT          PERU                           Low birthweight                    0       2
3-6 months     EE               PAKISTAN                       Normal or high birthweight       175     274
3-6 months     EE               PAKISTAN                       Low birthweight                   99     274
3-6 months     GMS-Nepal        NEPAL                          Normal or high birthweight       330     469
3-6 months     GMS-Nepal        NEPAL                          Low birthweight                  139     469
3-6 months     IRC              INDIA                          Normal or high birthweight       330     394
3-6 months     IRC              INDIA                          Low birthweight                   64     394
3-6 months     JiVitA-3         BANGLADESH                     Normal or high birthweight      6510   10870
3-6 months     JiVitA-3         BANGLADESH                     Low birthweight                 4360   10870
3-6 months     JiVitA-4         BANGLADESH                     Normal or high birthweight      1303    1736
3-6 months     JiVitA-4         BANGLADESH                     Low birthweight                  433    1736
3-6 months     Keneba           GAMBIA                         Normal or high birthweight       814     951
3-6 months     Keneba           GAMBIA                         Low birthweight                  137     951
3-6 months     MAL-ED           BANGLADESH                     Normal or high birthweight       181     230
3-6 months     MAL-ED           BANGLADESH                     Low birthweight                   49     230
3-6 months     MAL-ED           BRAZIL                         Normal or high birthweight       198     208
3-6 months     MAL-ED           BRAZIL                         Low birthweight                   10     208
3-6 months     MAL-ED           INDIA                          Normal or high birthweight       190     222
3-6 months     MAL-ED           INDIA                          Low birthweight                   32     222
3-6 months     MAL-ED           NEPAL                          Normal or high birthweight       207     226
3-6 months     MAL-ED           NEPAL                          Low birthweight                   19     226
3-6 months     MAL-ED           PERU                           Normal or high birthweight       248     264
3-6 months     MAL-ED           PERU                           Low birthweight                   16     264
3-6 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight       229     242
3-6 months     MAL-ED           SOUTH AFRICA                   Low birthweight                   13     242
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       171     180
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    9     180
3-6 months     NIH-Birth        BANGLADESH                     Normal or high birthweight       358     504
3-6 months     NIH-Birth        BANGLADESH                     Low birthweight                  146     504
3-6 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight       533     702
3-6 months     NIH-Crypto       BANGLADESH                     Low birthweight                  169     702
3-6 months     PROBIT           BELARUS                        Normal or high birthweight     13317   13317
3-6 months     PROBIT           BELARUS                        Low birthweight                    0   13317
3-6 months     PROVIDE          BANGLADESH                     Normal or high birthweight       457     601
3-6 months     PROVIDE          BANGLADESH                     Low birthweight                  144     601
3-6 months     ResPak           PAKISTAN                       Normal or high birthweight        22      23
3-6 months     ResPak           PAKISTAN                       Low birthweight                    1      23
3-6 months     SAS-CompFeed     INDIA                          Normal or high birthweight       852    1108
3-6 months     SAS-CompFeed     INDIA                          Low birthweight                  256    1108
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1593    1648
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   55    1648
3-6 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight      5342    6117
3-6 months     ZVITAMBO         ZIMBABWE                       Low birthweight                  775    6117
6-9 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight       278     317
6-9 months     CMC-V-BCS-2002   INDIA                          Low birthweight                   39     317
6-9 months     CMIN             BANGLADESH                     Normal or high birthweight         6       8
6-9 months     CMIN             BANGLADESH                     Low birthweight                    2       8
6-9 months     COHORTS          GUATEMALA                      Normal or high birthweight       608     672
6-9 months     COHORTS          GUATEMALA                      Low birthweight                   64     672
6-9 months     COHORTS          INDIA                          Normal or high birthweight      4354    5415
6-9 months     COHORTS          INDIA                          Low birthweight                 1061    5415
6-9 months     CONTENT          PERU                           Normal or high birthweight         2       2
6-9 months     CONTENT          PERU                           Low birthweight                    0       2
6-9 months     EE               PAKISTAN                       Normal or high birthweight       201     300
6-9 months     EE               PAKISTAN                       Low birthweight                   99     300
6-9 months     GMS-Nepal        NEPAL                          Normal or high birthweight       341     476
6-9 months     GMS-Nepal        NEPAL                          Low birthweight                  135     476
6-9 months     IRC              INDIA                          Normal or high birthweight       335     404
6-9 months     IRC              INDIA                          Low birthweight                   69     404
6-9 months     JiVitA-4         BANGLADESH                     Normal or high birthweight      2020    2706
6-9 months     JiVitA-4         BANGLADESH                     Low birthweight                  686    2706
6-9 months     Keneba           GAMBIA                         Normal or high birthweight       496     572
6-9 months     Keneba           GAMBIA                         Low birthweight                   76     572
6-9 months     MAL-ED           BANGLADESH                     Normal or high birthweight       177     222
6-9 months     MAL-ED           BANGLADESH                     Low birthweight                   45     222
6-9 months     MAL-ED           BRAZIL                         Normal or high birthweight       188     198
6-9 months     MAL-ED           BRAZIL                         Low birthweight                   10     198
6-9 months     MAL-ED           INDIA                          Normal or high birthweight       189     222
6-9 months     MAL-ED           INDIA                          Low birthweight                   33     222
6-9 months     MAL-ED           NEPAL                          Normal or high birthweight       205     223
6-9 months     MAL-ED           NEPAL                          Low birthweight                   18     223
6-9 months     MAL-ED           PERU                           Normal or high birthweight       227     242
6-9 months     MAL-ED           PERU                           Low birthweight                   15     242
6-9 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight       218     230
6-9 months     MAL-ED           SOUTH AFRICA                   Low birthweight                   12     230
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       163     171
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     171
6-9 months     NIH-Birth        BANGLADESH                     Normal or high birthweight       337     480
6-9 months     NIH-Birth        BANGLADESH                     Low birthweight                  143     480
6-9 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight       534     693
6-9 months     NIH-Crypto       BANGLADESH                     Low birthweight                  159     693
6-9 months     PROBIT           BELARUS                        Normal or high birthweight     12436   12436
6-9 months     PROBIT           BELARUS                        Low birthweight                    0   12436
6-9 months     PROVIDE          BANGLADESH                     Normal or high birthweight       438     576
6-9 months     PROVIDE          BANGLADESH                     Low birthweight                  138     576
6-9 months     ResPak           PAKISTAN                       Normal or high birthweight        20      20
6-9 months     ResPak           PAKISTAN                       Low birthweight                    0      20
6-9 months     SAS-CompFeed     INDIA                          Normal or high birthweight       871    1129
6-9 months     SAS-CompFeed     INDIA                          Low birthweight                  258    1129
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1441    1482
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   41    1482
6-9 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight      4833    5553
6-9 months     ZVITAMBO         ZIMBABWE                       Low birthweight                  720    5553
9-12 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight       282     319
9-12 months    CMC-V-BCS-2002   INDIA                          Low birthweight                   37     319
9-12 months    CMIN             BANGLADESH                     Normal or high birthweight         5       7
9-12 months    CMIN             BANGLADESH                     Low birthweight                    2       7
9-12 months    COHORTS          GUATEMALA                      Normal or high birthweight       657     721
9-12 months    COHORTS          GUATEMALA                      Low birthweight                   64     721
9-12 months    COHORTS          INDIA                          Normal or high birthweight      3770    4659
9-12 months    COHORTS          INDIA                          Low birthweight                  889    4659
9-12 months    CONTENT          PERU                           Normal or high birthweight         2       2
9-12 months    CONTENT          PERU                           Low birthweight                    0       2
9-12 months    EE               PAKISTAN                       Normal or high birthweight       217     324
9-12 months    EE               PAKISTAN                       Low birthweight                  107     324
9-12 months    GMS-Nepal        NEPAL                          Normal or high birthweight       319     453
9-12 months    GMS-Nepal        NEPAL                          Low birthweight                  134     453
9-12 months    IRC              INDIA                          Normal or high birthweight       329     397
9-12 months    IRC              INDIA                          Low birthweight                   68     397
9-12 months    JiVitA-4         BANGLADESH                     Normal or high birthweight      2224    2993
9-12 months    JiVitA-4         BANGLADESH                     Low birthweight                  769    2993
9-12 months    Keneba           GAMBIA                         Normal or high birthweight       496     567
9-12 months    Keneba           GAMBIA                         Low birthweight                   71     567
9-12 months    MAL-ED           BANGLADESH                     Normal or high birthweight       176     223
9-12 months    MAL-ED           BANGLADESH                     Low birthweight                   47     223
9-12 months    MAL-ED           BRAZIL                         Normal or high birthweight       184     194
9-12 months    MAL-ED           BRAZIL                         Low birthweight                   10     194
9-12 months    MAL-ED           INDIA                          Normal or high birthweight       186     218
9-12 months    MAL-ED           INDIA                          Low birthweight                   32     218
9-12 months    MAL-ED           NEPAL                          Normal or high birthweight       205     223
9-12 months    MAL-ED           NEPAL                          Low birthweight                   18     223
9-12 months    MAL-ED           PERU                           Normal or high birthweight       218     232
9-12 months    MAL-ED           PERU                           Low birthweight                   14     232
9-12 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight       218     232
9-12 months    MAL-ED           SOUTH AFRICA                   Low birthweight                   14     232
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       161     169
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     169
9-12 months    NIH-Birth        BANGLADESH                     Normal or high birthweight       324     465
9-12 months    NIH-Birth        BANGLADESH                     Low birthweight                  141     465
9-12 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight       524     683
9-12 months    NIH-Crypto       BANGLADESH                     Low birthweight                  159     683
9-12 months    PROBIT           BELARUS                        Normal or high birthweight     12687   12687
9-12 months    PROBIT           BELARUS                        Low birthweight                    0   12687
9-12 months    PROVIDE          BANGLADESH                     Normal or high birthweight       433     569
9-12 months    PROVIDE          BANGLADESH                     Low birthweight                  136     569
9-12 months    ResPak           PAKISTAN                       Normal or high birthweight        19      21
9-12 months    ResPak           PAKISTAN                       Low birthweight                    2      21
9-12 months    SAS-CompFeed     INDIA                          Normal or high birthweight       871    1132
9-12 months    SAS-CompFeed     INDIA                          Low birthweight                  261    1132
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1043    1073
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   30    1073
9-12 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight      4340    5038
9-12 months    ZVITAMBO         ZIMBABWE                       Low birthweight                  698    5038
12-15 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight       287     326
12-15 months   CMC-V-BCS-2002   INDIA                          Low birthweight                   39     326
12-15 months   CMIN             BANGLADESH                     Normal or high birthweight         6       7
12-15 months   CMIN             BANGLADESH                     Low birthweight                    1       7
12-15 months   COHORTS          GUATEMALA                      Normal or high birthweight       583     637
12-15 months   COHORTS          GUATEMALA                      Low birthweight                   54     637
12-15 months   CONTENT          PERU                           Normal or high birthweight         2       2
12-15 months   CONTENT          PERU                           Low birthweight                    0       2
12-15 months   EE               PAKISTAN                       Normal or high birthweight       196     297
12-15 months   EE               PAKISTAN                       Low birthweight                  101     297
12-15 months   GMS-Nepal        NEPAL                          Normal or high birthweight       311     451
12-15 months   GMS-Nepal        NEPAL                          Low birthweight                  140     451
12-15 months   IRC              INDIA                          Normal or high birthweight       320     386
12-15 months   IRC              INDIA                          Low birthweight                   66     386
12-15 months   JiVitA-4         BANGLADESH                     Normal or high birthweight      2211    3010
12-15 months   JiVitA-4         BANGLADESH                     Low birthweight                  799    3010
12-15 months   Keneba           GAMBIA                         Normal or high birthweight       764     884
12-15 months   Keneba           GAMBIA                         Low birthweight                  120     884
12-15 months   MAL-ED           BANGLADESH                     Normal or high birthweight       164     210
12-15 months   MAL-ED           BANGLADESH                     Low birthweight                   46     210
12-15 months   MAL-ED           BRAZIL                         Normal or high birthweight       174     184
12-15 months   MAL-ED           BRAZIL                         Low birthweight                   10     184
12-15 months   MAL-ED           INDIA                          Normal or high birthweight       185     217
12-15 months   MAL-ED           INDIA                          Low birthweight                   32     217
12-15 months   MAL-ED           NEPAL                          Normal or high birthweight       206     224
12-15 months   MAL-ED           NEPAL                          Low birthweight                   18     224
12-15 months   MAL-ED           PERU                           Normal or high birthweight       209     222
12-15 months   MAL-ED           PERU                           Low birthweight                   13     222
12-15 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight       215     227
12-15 months   MAL-ED           SOUTH AFRICA                   Low birthweight                   12     227
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       161     169
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     169
12-15 months   NIH-Birth        BANGLADESH                     Normal or high birthweight       312     445
12-15 months   NIH-Birth        BANGLADESH                     Low birthweight                  133     445
12-15 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight       510     666
12-15 months   NIH-Crypto       BANGLADESH                     Low birthweight                  156     666
12-15 months   PROBIT           BELARUS                        Normal or high birthweight      1001    1001
12-15 months   PROBIT           BELARUS                        Low birthweight                    0    1001
12-15 months   PROVIDE          BANGLADESH                     Normal or high birthweight       417     537
12-15 months   PROVIDE          BANGLADESH                     Low birthweight                  120     537
12-15 months   ResPak           PAKISTAN                       Normal or high birthweight        12      14
12-15 months   ResPak           PAKISTAN                       Low birthweight                    2      14
12-15 months   SAS-CompFeed     INDIA                          Normal or high birthweight       887    1155
12-15 months   SAS-CompFeed     INDIA                          Low birthweight                  268    1155
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       763     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   23     786
12-15 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight      1558    1850
12-15 months   ZVITAMBO         ZIMBABWE                       Low birthweight                  292    1850
15-18 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight       279     318
15-18 months   CMC-V-BCS-2002   INDIA                          Low birthweight                   39     318
15-18 months   CMIN             BANGLADESH                     Normal or high birthweight         5       6
15-18 months   CMIN             BANGLADESH                     Low birthweight                    1       6
15-18 months   COHORTS          GUATEMALA                      Normal or high birthweight       531     585
15-18 months   COHORTS          GUATEMALA                      Low birthweight                   54     585
15-18 months   CONTENT          PERU                           Normal or high birthweight         2       2
15-18 months   CONTENT          PERU                           Low birthweight                    0       2
15-18 months   EE               PAKISTAN                       Normal or high birthweight       183     277
15-18 months   EE               PAKISTAN                       Low birthweight                   94     277
15-18 months   GMS-Nepal        NEPAL                          Normal or high birthweight       333     477
15-18 months   GMS-Nepal        NEPAL                          Low birthweight                  144     477
15-18 months   IRC              INDIA                          Normal or high birthweight       315     377
15-18 months   IRC              INDIA                          Low birthweight                   62     377
15-18 months   JiVitA-4         BANGLADESH                     Normal or high birthweight      2208    2979
15-18 months   JiVitA-4         BANGLADESH                     Low birthweight                  771    2979
15-18 months   Keneba           GAMBIA                         Normal or high birthweight       767     883
15-18 months   Keneba           GAMBIA                         Low birthweight                  116     883
15-18 months   MAL-ED           BANGLADESH                     Normal or high birthweight       163     210
15-18 months   MAL-ED           BANGLADESH                     Low birthweight                   47     210
15-18 months   MAL-ED           BRAZIL                         Normal or high birthweight       168     175
15-18 months   MAL-ED           BRAZIL                         Low birthweight                    7     175
15-18 months   MAL-ED           INDIA                          Normal or high birthweight       184     217
15-18 months   MAL-ED           INDIA                          Low birthweight                   33     217
15-18 months   MAL-ED           NEPAL                          Normal or high birthweight       202     220
15-18 months   MAL-ED           NEPAL                          Low birthweight                   18     220
15-18 months   MAL-ED           PERU                           Normal or high birthweight       198     212
15-18 months   MAL-ED           PERU                           Low birthweight                   14     212
15-18 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight       213     224
15-18 months   MAL-ED           SOUTH AFRICA                   Low birthweight                   11     224
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       158     166
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     166
15-18 months   NIH-Birth        BANGLADESH                     Normal or high birthweight       302     432
15-18 months   NIH-Birth        BANGLADESH                     Low birthweight                  130     432
15-18 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight       460     605
15-18 months   NIH-Crypto       BANGLADESH                     Low birthweight                  145     605
15-18 months   PROBIT           BELARUS                        Normal or high birthweight       279     279
15-18 months   PROBIT           BELARUS                        Low birthweight                    0     279
15-18 months   PROVIDE          BANGLADESH                     Normal or high birthweight       412     533
15-18 months   PROVIDE          BANGLADESH                     Low birthweight                  121     533
15-18 months   SAS-CompFeed     INDIA                          Normal or high birthweight       889    1162
15-18 months   SAS-CompFeed     INDIA                          Low birthweight                  273    1162
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       640     658
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   18     658
15-18 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight       981    1196
15-18 months   ZVITAMBO         ZIMBABWE                       Low birthweight                  215    1196
18-21 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight       265     303
18-21 months   CMC-V-BCS-2002   INDIA                          Low birthweight                   38     303
18-21 months   CMIN             BANGLADESH                     Normal or high birthweight         6       7
18-21 months   CMIN             BANGLADESH                     Low birthweight                    1       7
18-21 months   COHORTS          GUATEMALA                      Normal or high birthweight       518     569
18-21 months   COHORTS          GUATEMALA                      Low birthweight                   51     569
18-21 months   CONTENT          PERU                           Normal or high birthweight         2       2
18-21 months   CONTENT          PERU                           Low birthweight                    0       2
18-21 months   EE               PAKISTAN                       Normal or high birthweight       179     255
18-21 months   EE               PAKISTAN                       Low birthweight                   76     255
18-21 months   GMS-Nepal        NEPAL                          Normal or high birthweight       316     447
18-21 months   GMS-Nepal        NEPAL                          Low birthweight                  131     447
18-21 months   IRC              INDIA                          Normal or high birthweight       312     375
18-21 months   IRC              INDIA                          Low birthweight                   63     375
18-21 months   Keneba           GAMBIA                         Normal or high birthweight       749     865
18-21 months   Keneba           GAMBIA                         Low birthweight                  116     865
18-21 months   MAL-ED           BANGLADESH                     Normal or high birthweight       162     207
18-21 months   MAL-ED           BANGLADESH                     Low birthweight                   45     207
18-21 months   MAL-ED           BRAZIL                         Normal or high birthweight       160     167
18-21 months   MAL-ED           BRAZIL                         Low birthweight                    7     167
18-21 months   MAL-ED           INDIA                          Normal or high birthweight       184     217
18-21 months   MAL-ED           INDIA                          Low birthweight                   33     217
18-21 months   MAL-ED           NEPAL                          Normal or high birthweight       202     220
18-21 months   MAL-ED           NEPAL                          Low birthweight                   18     220
18-21 months   MAL-ED           PERU                           Normal or high birthweight       188     200
18-21 months   MAL-ED           PERU                           Low birthweight                   12     200
18-21 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight       219     232
18-21 months   MAL-ED           SOUTH AFRICA                   Low birthweight                   13     232
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       151     159
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     159
18-21 months   NIH-Birth        BANGLADESH                     Normal or high birthweight       283     407
18-21 months   NIH-Birth        BANGLADESH                     Low birthweight                  124     407
18-21 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight       411     547
18-21 months   NIH-Crypto       BANGLADESH                     Low birthweight                  136     547
18-21 months   PROBIT           BELARUS                        Normal or high birthweight       214     214
18-21 months   PROBIT           BELARUS                        Low birthweight                    0     214
18-21 months   PROVIDE          BANGLADESH                     Normal or high birthweight       412     542
18-21 months   PROVIDE          BANGLADESH                     Low birthweight                  130     542
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight        11      11
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0      11
18-21 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight       530     656
18-21 months   ZVITAMBO         ZIMBABWE                       Low birthweight                  126     656
21-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight       267     303
21-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                   36     303
21-24 months   CMIN             BANGLADESH                     Normal or high birthweight         1       1
21-24 months   CMIN             BANGLADESH                     Low birthweight                    0       1
21-24 months   COHORTS          GUATEMALA                      Normal or high birthweight       549     601
21-24 months   COHORTS          GUATEMALA                      Low birthweight                   52     601
21-24 months   EE               PAKISTAN                       Normal or high birthweight        68     106
21-24 months   EE               PAKISTAN                       Low birthweight                   38     106
21-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight       254     342
21-24 months   GMS-Nepal        NEPAL                          Low birthweight                   88     342
21-24 months   IRC              INDIA                          Normal or high birthweight       318     384
21-24 months   IRC              INDIA                          Low birthweight                   66     384
21-24 months   Keneba           GAMBIA                         Normal or high birthweight       671     782
21-24 months   Keneba           GAMBIA                         Low birthweight                  111     782
21-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight       160     205
21-24 months   MAL-ED           BANGLADESH                     Low birthweight                   45     205
21-24 months   MAL-ED           BRAZIL                         Normal or high birthweight       157     165
21-24 months   MAL-ED           BRAZIL                         Low birthweight                    8     165
21-24 months   MAL-ED           INDIA                          Normal or high birthweight       184     217
21-24 months   MAL-ED           INDIA                          Low birthweight                   33     217
21-24 months   MAL-ED           NEPAL                          Normal or high birthweight       202     220
21-24 months   MAL-ED           NEPAL                          Low birthweight                   18     220
21-24 months   MAL-ED           PERU                           Normal or high birthweight       177     187
21-24 months   MAL-ED           PERU                           Low birthweight                   10     187
21-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight       221     234
21-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight                   13     234
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       149     157
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     157
21-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight       276     396
21-24 months   NIH-Birth        BANGLADESH                     Low birthweight                  120     396
21-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight       371     493
21-24 months   NIH-Crypto       BANGLADESH                     Low birthweight                  122     493
21-24 months   PROBIT           BELARUS                        Normal or high birthweight       210     210
21-24 months   PROBIT           BELARUS                        Low birthweight                    0     210
21-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight       366     485
21-24 months   PROVIDE          BANGLADESH                     Low birthweight                  119     485
21-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight       233     301
21-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                   68     301


The following strata were considered:

* agecat: 0-3 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: COHORTS, country: INDIA
* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: EE, country: PAKISTAN
* agecat: 0-3 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-3 months, studyid: IRC, country: INDIA
* agecat: 0-3 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-3 months, studyid: Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: MAL-ED, country: PERU
* agecat: 0-3 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 12-15 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 12-15 months, studyid: CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: COHORTS, country: GUATEMALA
* agecat: 12-15 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: EE, country: PAKISTAN
* agecat: 12-15 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 12-15 months, studyid: IRC, country: INDIA
* agecat: 12-15 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 12-15 months, studyid: Keneba, country: GAMBIA
* agecat: 12-15 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 12-15 months, studyid: MAL-ED, country: BRAZIL
* agecat: 12-15 months, studyid: MAL-ED, country: INDIA
* agecat: 12-15 months, studyid: MAL-ED, country: NEPAL
* agecat: 12-15 months, studyid: MAL-ED, country: PERU
* agecat: 12-15 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 12-15 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 12-15 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 12-15 months, studyid: PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 12-15 months, studyid: ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 12-15 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-15 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 15-18 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 15-18 months, studyid: CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: COHORTS, country: GUATEMALA
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: EE, country: PAKISTAN
* agecat: 15-18 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 15-18 months, studyid: IRC, country: INDIA
* agecat: 15-18 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 15-18 months, studyid: Keneba, country: GAMBIA
* agecat: 15-18 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 15-18 months, studyid: MAL-ED, country: BRAZIL
* agecat: 15-18 months, studyid: MAL-ED, country: INDIA
* agecat: 15-18 months, studyid: MAL-ED, country: NEPAL
* agecat: 15-18 months, studyid: MAL-ED, country: PERU
* agecat: 15-18 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 15-18 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 15-18 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 15-18 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 15-18 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 15-18 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 15-18 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 18-21 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 18-21 months, studyid: CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: COHORTS, country: GUATEMALA
* agecat: 18-21 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: EE, country: PAKISTAN
* agecat: 18-21 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 18-21 months, studyid: IRC, country: INDIA
* agecat: 18-21 months, studyid: Keneba, country: GAMBIA
* agecat: 18-21 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 18-21 months, studyid: MAL-ED, country: BRAZIL
* agecat: 18-21 months, studyid: MAL-ED, country: INDIA
* agecat: 18-21 months, studyid: MAL-ED, country: NEPAL
* agecat: 18-21 months, studyid: MAL-ED, country: PERU
* agecat: 18-21 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 18-21 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 18-21 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18-21 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 21-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 21-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 21-24 months, studyid: EE, country: PAKISTAN
* agecat: 21-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 21-24 months, studyid: IRC, country: INDIA
* agecat: 21-24 months, studyid: Keneba, country: GAMBIA
* agecat: 21-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 21-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 21-24 months, studyid: MAL-ED, country: INDIA
* agecat: 21-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 21-24 months, studyid: MAL-ED, country: PERU
* agecat: 21-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 21-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 21-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS
* agecat: 21-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 21-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: COHORTS, country: INDIA
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: EE, country: PAKISTAN
* agecat: 3-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 3-6 months, studyid: IRC, country: INDIA
* agecat: 3-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: MAL-ED, country: PERU
* agecat: 3-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-9 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-9 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-9 months, studyid: COHORTS, country: INDIA
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: EE, country: PAKISTAN
* agecat: 6-9 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-9 months, studyid: IRC, country: INDIA
* agecat: 6-9 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-9 months, studyid: Keneba, country: GAMBIA
* agecat: 6-9 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-9 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-9 months, studyid: MAL-ED, country: INDIA
* agecat: 6-9 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-9 months, studyid: MAL-ED, country: PERU
* agecat: 6-9 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-9 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6-9 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-9 months, studyid: PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-9 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-9 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-9 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 9-12 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 9-12 months, studyid: CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: COHORTS, country: GUATEMALA
* agecat: 9-12 months, studyid: COHORTS, country: INDIA
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: EE, country: PAKISTAN
* agecat: 9-12 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 9-12 months, studyid: IRC, country: INDIA
* agecat: 9-12 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 9-12 months, studyid: Keneba, country: GAMBIA
* agecat: 9-12 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 9-12 months, studyid: MAL-ED, country: BRAZIL
* agecat: 9-12 months, studyid: MAL-ED, country: INDIA
* agecat: 9-12 months, studyid: MAL-ED, country: NEPAL
* agecat: 9-12 months, studyid: MAL-ED, country: PERU
* agecat: 9-12 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 9-12 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 9-12 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 9-12 months, studyid: PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 9-12 months, studyid: ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 9-12 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9-12 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: CMIN, country: BANGLADESH
* agecat: 0-3 months, studyid: CONTENT, country: PERU
* agecat: 0-3 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: CMIN, country: BANGLADESH
* agecat: 3-6 months, studyid: CONTENT, country: PERU
* agecat: 3-6 months, studyid: PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ResPak, country: PAKISTAN
* agecat: 6-9 months, studyid: CMIN, country: BANGLADESH
* agecat: 6-9 months, studyid: CONTENT, country: PERU
* agecat: 6-9 months, studyid: PROBIT, country: BELARUS
* agecat: 6-9 months, studyid: ResPak, country: PAKISTAN
* agecat: 9-12 months, studyid: CMIN, country: BANGLADESH
* agecat: 9-12 months, studyid: CONTENT, country: PERU
* agecat: 9-12 months, studyid: PROBIT, country: BELARUS
* agecat: 9-12 months, studyid: ResPak, country: PAKISTAN
* agecat: 12-15 months, studyid: CMIN, country: BANGLADESH
* agecat: 12-15 months, studyid: CONTENT, country: PERU
* agecat: 12-15 months, studyid: PROBIT, country: BELARUS
* agecat: 12-15 months, studyid: ResPak, country: PAKISTAN
* agecat: 15-18 months, studyid: CMIN, country: BANGLADESH
* agecat: 15-18 months, studyid: CONTENT, country: PERU
* agecat: 15-18 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: CMIN, country: BANGLADESH
* agecat: 18-21 months, studyid: CONTENT, country: PERU
* agecat: 18-21 months, studyid: PROBIT, country: BELARUS
* agecat: 18-21 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 21-24 months, studyid: CMIN, country: BANGLADESH
* agecat: 21-24 months, studyid: PROBIT, country: BELARUS

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




# Results Detail

## Results Plots
![](/tmp/6a704f83-7b57-43ff-8471-a3109fae2ee7/2da685f9-8444-4b81-a73e-36aa4affa89b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6a704f83-7b57-43ff-8471-a3109fae2ee7/2da685f9-8444-4b81-a73e-36aa4affa89b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6a704f83-7b57-43ff-8471-a3109fae2ee7/2da685f9-8444-4b81-a73e-36aa4affa89b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level           baseline_level      estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.7489231    0.7235591   0.7742872
0-3 months     CMC-V-BCS-2002   INDIA                          Low birthweight              NA                 0.7047338    0.6376262   0.7718414
0-3 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.7981679    0.7805923   0.8157436
0-3 months     COHORTS          GUATEMALA                      Low birthweight              NA                 0.7989949    0.7411760   0.8568138
0-3 months     COHORTS          INDIA                          Normal or high birthweight   NA                 0.8191772    0.8140897   0.8242647
0-3 months     COHORTS          INDIA                          Low birthweight              NA                 0.7737228    0.7631231   0.7843224
0-3 months     EE               PAKISTAN                       Normal or high birthweight   NA                 0.6680047    0.6405503   0.6954590
0-3 months     EE               PAKISTAN                       Low birthweight              NA                 0.7349647    0.6922385   0.7776909
0-3 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.8289848    0.8088424   0.8491273
0-3 months     GMS-Nepal        NEPAL                          Low birthweight              NA                 0.8221281    0.7902155   0.8540407
0-3 months     IRC              INDIA                          Normal or high birthweight   NA                 0.7726752    0.7512153   0.7941351
0-3 months     IRC              INDIA                          Low birthweight              NA                 0.7461914    0.7015697   0.7908130
0-3 months     JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.8773635    0.8735170   0.8812101
0-3 months     JiVitA-3         BANGLADESH                     Low birthweight              NA                 0.8592259    0.8548515   0.8636002
0-3 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.8912988    0.8783633   0.9042343
0-3 months     JiVitA-4         BANGLADESH                     Low birthweight              NA                 0.8869384    0.8694561   0.9044208
0-3 months     Keneba           GAMBIA                         Normal or high birthweight   NA                 0.9373937    0.9242311   0.9505564
0-3 months     Keneba           GAMBIA                         Low birthweight              NA                 0.9132338    0.8752221   0.9512454
0-3 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.8850199    0.8587900   0.9112498
0-3 months     MAL-ED           BANGLADESH                     Low birthweight              NA                 0.8597177    0.8084383   0.9109972
0-3 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                 1.0595083    1.0241794   1.0948372
0-3 months     MAL-ED           BRAZIL                         Low birthweight              NA                 1.1293325    0.9882661   1.2703989
0-3 months     MAL-ED           INDIA                          Normal or high birthweight   NA                 0.7516238    0.7267191   0.7765285
0-3 months     MAL-ED           INDIA                          Low birthweight              NA                 0.7917583    0.7351026   0.8484140
0-3 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.9612094    0.9328124   0.9896064
0-3 months     MAL-ED           NEPAL                          Low birthweight              NA                 0.8750885    0.7855694   0.9646076
0-3 months     MAL-ED           PERU                           Normal or high birthweight   NA                 0.9728609    0.9464600   0.9992619
0-3 months     MAL-ED           PERU                           Low birthweight              NA                 0.9211333    0.8298167   1.0124500
0-3 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.9314532    0.9040539   0.9588526
0-3 months     MAL-ED           SOUTH AFRICA                   Low birthweight              NA                 1.0600459    0.9424136   1.1776782
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.8875901    0.8523968   0.9227834
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.8853274    0.7261827   1.0444720
0-3 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.8142379    0.7952536   0.8332222
0-3 months     NIH-Birth        BANGLADESH                     Low birthweight              NA                 0.8203372    0.7860007   0.8546737
0-3 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.8867636    0.8701467   0.9033804
0-3 months     NIH-Crypto       BANGLADESH                     Low birthweight              NA                 0.8779948    0.8478563   0.9081332
0-3 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.9101310    0.8928412   0.9274208
0-3 months     PROVIDE          BANGLADESH                     Low birthweight              NA                 0.8744151    0.8465774   0.9022529
0-3 months     ResPak           PAKISTAN                       Normal or high birthweight   NA                 0.7541024    0.6711404   0.8370643
0-3 months     ResPak           PAKISTAN                       Low birthweight              NA                 0.6604174    0.4239730   0.8968617
0-3 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.7922564    0.7693532   0.8151596
0-3 months     SAS-CompFeed     INDIA                          Low birthweight              NA                 0.7858659    0.7712147   0.8005171
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.9209303    0.9105918   0.9312687
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.9635405    0.9091865   1.0178945
0-3 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.9512636    0.9458444   0.9566827
0-3 months     ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.9385860    0.9237953   0.9533766
3-6 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.4709594    0.4505886   0.4913302
3-6 months     CMC-V-BCS-2002   INDIA                          Low birthweight              NA                 0.5217825    0.4626237   0.5809414
3-6 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.4633919    0.4512147   0.4755690
3-6 months     COHORTS          GUATEMALA                      Low birthweight              NA                 0.4346368    0.3959248   0.4733488
3-6 months     COHORTS          INDIA                          Normal or high birthweight   NA                 0.4828369    0.4783438   0.4873299
3-6 months     COHORTS          INDIA                          Low birthweight              NA                 0.4807724    0.4717238   0.4898210
3-6 months     EE               PAKISTAN                       Normal or high birthweight   NA                 0.4740136    0.4488019   0.4992252
3-6 months     EE               PAKISTAN                       Low birthweight              NA                 0.4708890    0.4404403   0.5013377
3-6 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.4981330    0.4811820   0.5150839
3-6 months     GMS-Nepal        NEPAL                          Low birthweight              NA                 0.4927947    0.4691414   0.5164479
3-6 months     IRC              INDIA                          Normal or high birthweight   NA                 0.4676037    0.4484318   0.4867756
3-6 months     IRC              INDIA                          Low birthweight              NA                 0.4873093    0.4491586   0.5254600
3-6 months     JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.4336340    0.4296595   0.4376085
3-6 months     JiVitA-3         BANGLADESH                     Low birthweight              NA                 0.4458652    0.4409586   0.4507719
3-6 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.4419122    0.4311716   0.4526528
3-6 months     JiVitA-4         BANGLADESH                     Low birthweight              NA                 0.4315409    0.4159725   0.4471093
3-6 months     Keneba           GAMBIA                         Normal or high birthweight   NA                 0.4392266    0.4273706   0.4510826
3-6 months     Keneba           GAMBIA                         Low birthweight              NA                 0.4557619    0.4270876   0.4844361
3-6 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.4735172    0.4539830   0.4930514
3-6 months     MAL-ED           BANGLADESH                     Low birthweight              NA                 0.4957651    0.4600665   0.5314637
3-6 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.5798410    0.5474289   0.6122530
3-6 months     MAL-ED           BRAZIL                         Low birthweight              NA                 0.4550118    0.3039896   0.6060339
3-6 months     MAL-ED           INDIA                          Normal or high birthweight   NA                 0.4378593    0.4180921   0.4576264
3-6 months     MAL-ED           INDIA                          Low birthweight              NA                 0.4729511    0.4286445   0.5172577
3-6 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.5157783    0.4950904   0.5364662
3-6 months     MAL-ED           NEPAL                          Low birthweight              NA                 0.6046419    0.5084376   0.7008462
3-6 months     MAL-ED           PERU                           Normal or high birthweight   NA                 0.4994976    0.4796877   0.5193075
3-6 months     MAL-ED           PERU                           Low birthweight              NA                 0.4757145    0.3979835   0.5534455
3-6 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.4645511    0.4387447   0.4903576
3-6 months     MAL-ED           SOUTH AFRICA                   Low birthweight              NA                 0.4184581    0.2385444   0.5983719
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.4712659    0.4411969   0.5013348
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.4541128    0.3593947   0.5488309
3-6 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.4590957    0.4402631   0.4779283
3-6 months     NIH-Birth        BANGLADESH                     Low birthweight              NA                 0.4429366    0.4054944   0.4803787
3-6 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.4988945    0.4864094   0.5113796
3-6 months     NIH-Crypto       BANGLADESH                     Low birthweight              NA                 0.4959843    0.4705606   0.5214079
3-6 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.4856431    0.4719742   0.4993120
3-6 months     PROVIDE          BANGLADESH                     Low birthweight              NA                 0.4974614    0.4618909   0.5330319
3-6 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.4480766    0.4323248   0.4638283
3-6 months     SAS-CompFeed     INDIA                          Low birthweight              NA                 0.4635011    0.4436054   0.4833968
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.4182257    0.4093315   0.4271199
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.4538347    0.4112991   0.4963703
3-6 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.4728640    0.4680719   0.4776560
3-6 months     ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.5174014    0.5042456   0.5305572
6-9 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.2580492    0.2402424   0.2758559
6-9 months     CMC-V-BCS-2002   INDIA                          Low birthweight              NA                 0.2624830    0.2135174   0.3114487
6-9 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2128168    0.2018330   0.2238007
6-9 months     COHORTS          GUATEMALA                      Low birthweight              NA                 0.2315551    0.1950772   0.2680331
6-9 months     COHORTS          INDIA                          Normal or high birthweight   NA                 0.2833201    0.2786097   0.2880305
6-9 months     COHORTS          INDIA                          Low birthweight              NA                 0.2721902    0.2632677   0.2811127
6-9 months     EE               PAKISTAN                       Normal or high birthweight   NA                 0.2512915    0.2331722   0.2694109
6-9 months     EE               PAKISTAN                       Low birthweight              NA                 0.2562042    0.2298855   0.2825228
6-9 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.1793562    0.1666925   0.1920198
6-9 months     GMS-Nepal        NEPAL                          Low birthweight              NA                 0.2081756    0.1763099   0.2400413
6-9 months     IRC              INDIA                          Normal or high birthweight   NA                 0.2614348    0.2464915   0.2763782
6-9 months     IRC              INDIA                          Low birthweight              NA                 0.2542700    0.2219283   0.2866116
6-9 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.2361056    0.2302461   0.2419651
6-9 months     JiVitA-4         BANGLADESH                     Low birthweight              NA                 0.2508876    0.2382365   0.2635387
6-9 months     Keneba           GAMBIA                         Normal or high birthweight   NA                 0.2056247    0.1894925   0.2217570
6-9 months     Keneba           GAMBIA                         Low birthweight              NA                 0.2006832    0.1563022   0.2450642
6-9 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.2459686    0.2294292   0.2625081
6-9 months     MAL-ED           BANGLADESH                     Low birthweight              NA                 0.2340340    0.2009280   0.2671399
6-9 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.3811962    0.3549730   0.4074194
6-9 months     MAL-ED           BRAZIL                         Low birthweight              NA                 0.4982514    0.3202365   0.6762663
6-9 months     MAL-ED           INDIA                          Normal or high birthweight   NA                 0.2366828    0.2207136   0.2526519
6-9 months     MAL-ED           INDIA                          Low birthweight              NA                 0.2033295    0.1495292   0.2571297
6-9 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.2725195    0.2581283   0.2869107
6-9 months     MAL-ED           NEPAL                          Low birthweight              NA                 0.2631165    0.1964219   0.3298110
6-9 months     MAL-ED           PERU                           Normal or high birthweight   NA                 0.2646210    0.2485169   0.2807251
6-9 months     MAL-ED           PERU                           Low birthweight              NA                 0.2376727    0.1807138   0.2946315
6-9 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.2620271    0.2404676   0.2835866
6-9 months     MAL-ED           SOUTH AFRICA                   Low birthweight              NA                 0.2420727    0.1422222   0.3419232
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.2346782    0.2046594   0.2646971
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.2533572    0.1824539   0.3242604
6-9 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.2431465    0.2258327   0.2604603
6-9 months     NIH-Birth        BANGLADESH                     Low birthweight              NA                 0.2278038    0.2049054   0.2507021
6-9 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.2694536    0.2569820   0.2819252
6-9 months     NIH-Crypto       BANGLADESH                     Low birthweight              NA                 0.2642573    0.2455802   0.2829344
6-9 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.2514724    0.2400548   0.2628901
6-9 months     PROVIDE          BANGLADESH                     Low birthweight              NA                 0.2453732    0.2099388   0.2808075
6-9 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.2085890    0.1936491   0.2235289
6-9 months     SAS-CompFeed     INDIA                          Low birthweight              NA                 0.2149457    0.1971999   0.2326916
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.2565389    0.2475885   0.2654892
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.3068141    0.2397283   0.3738999
6-9 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.2580595    0.2531949   0.2629242
6-9 months     ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.2594928    0.2474863   0.2714992
9-12 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.2152669    0.1958437   0.2346900
9-12 months    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                 0.2085019    0.1674662   0.2495376
9-12 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.1523556    0.1421798   0.1625313
9-12 months    COHORTS          GUATEMALA                      Low birthweight              NA                 0.1698991    0.1374356   0.2023626
9-12 months    COHORTS          INDIA                          Normal or high birthweight   NA                 0.2215560    0.2166520   0.2264599
9-12 months    COHORTS          INDIA                          Low birthweight              NA                 0.2150932    0.2053288   0.2248577
9-12 months    EE               PAKISTAN                       Normal or high birthweight   NA                 0.2527978    0.2331271   0.2724685
9-12 months    EE               PAKISTAN                       Low birthweight              NA                 0.2383765    0.2082360   0.2685169
9-12 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.1423577    0.1280038   0.1567117
9-12 months    GMS-Nepal        NEPAL                          Low birthweight              NA                 0.1437532    0.1143659   0.1731404
9-12 months    IRC              INDIA                          Normal or high birthweight   NA                 0.2152168    0.1997197   0.2307138
9-12 months    IRC              INDIA                          Low birthweight              NA                 0.2147782    0.1795679   0.2499886
9-12 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.1516662    0.1466398   0.1566926
9-12 months    JiVitA-4         BANGLADESH                     Low birthweight              NA                 0.1501182    0.1411804   0.1590561
9-12 months    Keneba           GAMBIA                         Normal or high birthweight   NA                 0.1648272    0.1504336   0.1792207
9-12 months    Keneba           GAMBIA                         Low birthweight              NA                 0.1804971    0.1453744   0.2156197
9-12 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.1740085    0.1583650   0.1896519
9-12 months    MAL-ED           BANGLADESH                     Low birthweight              NA                 0.1705683    0.1409795   0.2001570
9-12 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.2828251    0.2501689   0.3154812
9-12 months    MAL-ED           BRAZIL                         Low birthweight              NA                 0.3009866    0.1878847   0.4140885
9-12 months    MAL-ED           INDIA                          Normal or high birthweight   NA                 0.1724126    0.1567260   0.1880992
9-12 months    MAL-ED           INDIA                          Low birthweight              NA                 0.2137876    0.1789379   0.2486372
9-12 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.1870586    0.1729897   0.2011274
9-12 months    MAL-ED           NEPAL                          Low birthweight              NA                 0.2084575    0.1702054   0.2467097
9-12 months    MAL-ED           PERU                           Normal or high birthweight   NA                 0.1893987    0.1732706   0.2055267
9-12 months    MAL-ED           PERU                           Low birthweight              NA                 0.2553107    0.2030399   0.3075815
9-12 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.2150107    0.1918290   0.2381925
9-12 months    MAL-ED           SOUTH AFRICA                   Low birthweight              NA                 0.2194946    0.1403550   0.2986343
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1693588    0.1458754   0.1928422
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.1742499    0.0432102   0.3052897
9-12 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1557448    0.1387822   0.1727073
9-12 months    NIH-Birth        BANGLADESH                     Low birthweight              NA                 0.1690027    0.1485626   0.1894428
9-12 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.1974366    0.1852058   0.2096673
9-12 months    NIH-Crypto       BANGLADESH                     Low birthweight              NA                 0.1999297    0.1806047   0.2192546
9-12 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.1796433    0.1691204   0.1901663
9-12 months    PROVIDE          BANGLADESH                     Low birthweight              NA                 0.1712613    0.1513042   0.1912184
9-12 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.1983409    0.1905366   0.2061452
9-12 months    SAS-CompFeed     INDIA                          Low birthweight              NA                 0.1813419    0.1643427   0.1983411
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.2061067    0.1959342   0.2162791
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.2210111    0.1441295   0.2978926
9-12 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.1788384    0.1739230   0.1837538
9-12 months    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.1874009    0.1756906   0.1991111
12-15 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.1485175    0.1337313   0.1633037
12-15 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                 0.1627351    0.1222568   0.2032133
12-15 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.1529973    0.1419341   0.1640605
12-15 months   COHORTS          GUATEMALA                      Low birthweight              NA                 0.1632068    0.1194821   0.2069315
12-15 months   EE               PAKISTAN                       Normal or high birthweight   NA                 0.1334424    0.1110182   0.1558667
12-15 months   EE               PAKISTAN                       Low birthweight              NA                 0.1410652    0.1112555   0.1708749
12-15 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.1701096    0.1536705   0.1865488
12-15 months   GMS-Nepal        NEPAL                          Low birthweight              NA                 0.1821527    0.1585095   0.2057959
12-15 months   IRC              INDIA                          Normal or high birthweight   NA                 0.1865249    0.1727513   0.2002985
12-15 months   IRC              INDIA                          Low birthweight              NA                 0.1570334    0.1192022   0.1948646
12-15 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.1337059    0.1283103   0.1391015
12-15 months   JiVitA-4         BANGLADESH                     Low birthweight              NA                 0.1279628    0.1206754   0.1352502
12-15 months   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.1812002    0.1687169   0.1936836
12-15 months   Keneba           GAMBIA                         Low birthweight              NA                 0.1950195    0.1625204   0.2275187
12-15 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.1330623    0.1151104   0.1510141
12-15 months   MAL-ED           BANGLADESH                     Low birthweight              NA                 0.1456649    0.1111786   0.1801513
12-15 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.2089008    0.1832054   0.2345962
12-15 months   MAL-ED           BRAZIL                         Low birthweight              NA                 0.2357546    0.1195064   0.3520029
12-15 months   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.1750814    0.1570538   0.1931089
12-15 months   MAL-ED           INDIA                          Low birthweight              NA                 0.1622086    0.1245465   0.1998707
12-15 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.1511856    0.1346505   0.1677206
12-15 months   MAL-ED           NEPAL                          Low birthweight              NA                 0.1496970    0.1241155   0.1752786
12-15 months   MAL-ED           PERU                           Normal or high birthweight   NA                 0.1384971    0.1210646   0.1559296
12-15 months   MAL-ED           PERU                           Low birthweight              NA                 0.1312295    0.0882381   0.1742210
12-15 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.1890520    0.1630278   0.2150761
12-15 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                 0.1666580    0.0579916   0.2753244
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1497145    0.1205443   0.1788846
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.1581712    0.0245778   0.2917646
12-15 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1325522    0.1178941   0.1472104
12-15 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                 0.1287005    0.1063305   0.1510705
12-15 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.1717282    0.1594851   0.1839714
12-15 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                 0.1409520    0.1189315   0.1629726
12-15 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.1783687    0.1650894   0.1916479
12-15 months   PROVIDE          BANGLADESH                     Low birthweight              NA                 0.1954191    0.1708401   0.2199980
12-15 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.1851965    0.1755145   0.1948784
12-15 months   SAS-CompFeed     INDIA                          Low birthweight              NA                 0.1811806    0.1435215   0.2188397
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1729992    0.1617008   0.1842975
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.2009206    0.0976877   0.3041535
12-15 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.1522687    0.1434940   0.1610433
12-15 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.1362209    0.1170156   0.1554263
15-18 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.1497230    0.1362689   0.1631771
15-18 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                 0.1669600    0.0990513   0.2348687
15-18 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.1402248    0.1266682   0.1537813
15-18 months   COHORTS          GUATEMALA                      Low birthweight              NA                 0.1552897    0.1124842   0.1980952
15-18 months   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0919750    0.0731673   0.1107827
15-18 months   EE               PAKISTAN                       Low birthweight              NA                 0.0888364    0.0677805   0.1098923
15-18 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.2432672    0.2243822   0.2621522
15-18 months   GMS-Nepal        NEPAL                          Low birthweight              NA                 0.2153776    0.1906855   0.2400697
15-18 months   IRC              INDIA                          Normal or high birthweight   NA                 0.1591104    0.1443841   0.1738366
15-18 months   IRC              INDIA                          Low birthweight              NA                 0.1676652    0.1296006   0.2057298
15-18 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.1616690    0.1558070   0.1675311
15-18 months   JiVitA-4         BANGLADESH                     Low birthweight              NA                 0.1545236    0.1440166   0.1650306
15-18 months   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.1604817    0.1470880   0.1738753
15-18 months   Keneba           GAMBIA                         Low birthweight              NA                 0.1580742    0.1286327   0.1875156
15-18 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.1418802    0.1237571   0.1600032
15-18 months   MAL-ED           BANGLADESH                     Low birthweight              NA                 0.1439787    0.1130586   0.1748987
15-18 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.2033143    0.1759439   0.2306847
15-18 months   MAL-ED           BRAZIL                         Low birthweight              NA                 0.2059451    0.0974859   0.3144042
15-18 months   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.1640178    0.1481880   0.1798475
15-18 months   MAL-ED           INDIA                          Low birthweight              NA                 0.1559638    0.1089008   0.2030268
15-18 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.1747421    0.1585174   0.1909669
15-18 months   MAL-ED           NEPAL                          Low birthweight              NA                 0.1375940    0.0916169   0.1835711
15-18 months   MAL-ED           PERU                           Normal or high birthweight   NA                 0.1489976    0.1288684   0.1691268
15-18 months   MAL-ED           PERU                           Low birthweight              NA                 0.1439073    0.1040488   0.1837658
15-18 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.2165483    0.1880970   0.2449996
15-18 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                 0.3269950    0.2091100   0.4448800
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1490420    0.1203521   0.1777320
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.1222320    0.0070208   0.2374433
15-18 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1576431    0.1388188   0.1764673
15-18 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                 0.1448387    0.1203332   0.1693442
15-18 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.1634343    0.1507712   0.1760974
15-18 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                 0.1550369    0.1365052   0.1735686
15-18 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.1597561    0.1462337   0.1732785
15-18 months   PROVIDE          BANGLADESH                     Low birthweight              NA                 0.1427039    0.1178824   0.1675253
15-18 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.1724671    0.1567628   0.1881714
15-18 months   SAS-CompFeed     INDIA                          Low birthweight              NA                 0.1948864    0.1699943   0.2197784
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1674753    0.1529479   0.1820028
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.1850821    0.1214508   0.2487133
15-18 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.1309931    0.1193509   0.1426353
15-18 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.1444224    0.1169559   0.1718890
18-21 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.1407216    0.1262043   0.1552389
18-21 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                 0.1224008    0.0508968   0.1939048
18-21 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.1627248    0.1498137   0.1756359
18-21 months   COHORTS          GUATEMALA                      Low birthweight              NA                 0.1440365    0.1082304   0.1798425
18-21 months   EE               PAKISTAN                       Normal or high birthweight   NA                 0.1388518    0.1201382   0.1575654
18-21 months   EE               PAKISTAN                       Low birthweight              NA                 0.1045988    0.0754973   0.1337003
18-21 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.1510800    0.1323018   0.1698581
18-21 months   GMS-Nepal        NEPAL                          Low birthweight              NA                 0.1245468    0.0982943   0.1507994
18-21 months   IRC              INDIA                          Normal or high birthweight   NA                 0.1597850    0.1443928   0.1751773
18-21 months   IRC              INDIA                          Low birthweight              NA                 0.1542975    0.1267308   0.1818642
18-21 months   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.1542921    0.1407582   0.1678260
18-21 months   Keneba           GAMBIA                         Low birthweight              NA                 0.1662210    0.1315430   0.2008989
18-21 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.1438682    0.1240158   0.1637206
18-21 months   MAL-ED           BANGLADESH                     Low birthweight              NA                 0.1335976    0.1031724   0.1640228
18-21 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.1636181    0.1389944   0.1882418
18-21 months   MAL-ED           BRAZIL                         Low birthweight              NA                 0.0927869   -0.0159952   0.2015690
18-21 months   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.1751306    0.1583780   0.1918831
18-21 months   MAL-ED           INDIA                          Low birthweight              NA                 0.1758139    0.1398956   0.2117322
18-21 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.1458864    0.1270444   0.1647284
18-21 months   MAL-ED           NEPAL                          Low birthweight              NA                 0.1498466    0.0822757   0.2174174
18-21 months   MAL-ED           PERU                           Normal or high birthweight   NA                 0.1636769    0.1437301   0.1836238
18-21 months   MAL-ED           PERU                           Low birthweight              NA                 0.1111818    0.0534289   0.1689348
18-21 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.1806360    0.1538599   0.2074121
18-21 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                 0.1622213    0.0252512   0.2991913
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1500533    0.1192859   0.1808207
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.1318538    0.0553950   0.2083127
18-21 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1769457    0.1560240   0.1978674
18-21 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                 0.1652437    0.1390215   0.1914659
18-21 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.1458968    0.1337103   0.1580833
18-21 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                 0.1286909    0.1039135   0.1534682
18-21 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.1345990    0.1212353   0.1479628
18-21 months   PROVIDE          BANGLADESH                     Low birthweight              NA                 0.1279100    0.1071622   0.1486578
18-21 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.1165725    0.0968912   0.1362539
18-21 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.1351840    0.0983678   0.1720002
21-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.1511414    0.1362129   0.1660699
21-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                 0.1281946    0.0805792   0.1758100
21-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.1920172    0.1799145   0.2041199
21-24 months   COHORTS          GUATEMALA                      Low birthweight              NA                 0.1489568    0.1101843   0.1877294
21-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                 0.2081819    0.1795736   0.2367902
21-24 months   EE               PAKISTAN                       Low birthweight              NA                 0.1611522    0.1269743   0.1953302
21-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.1621882    0.1335536   0.1908227
21-24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                 0.2308699    0.1792125   0.2825274
21-24 months   IRC              INDIA                          Normal or high birthweight   NA                 0.1791994    0.1636037   0.1947952
21-24 months   IRC              INDIA                          Low birthweight              NA                 0.1646198    0.1332594   0.1959801
21-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.1741402    0.1602427   0.1880377
21-24 months   Keneba           GAMBIA                         Low birthweight              NA                 0.1430337    0.1102539   0.1758136
21-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.1509818    0.1333682   0.1685955
21-24 months   MAL-ED           BANGLADESH                     Low birthweight              NA                 0.1538948    0.1227378   0.1850518
21-24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.1424216    0.1181183   0.1667249
21-24 months   MAL-ED           BRAZIL                         Low birthweight              NA                 0.1644582    0.0993632   0.2295532
21-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.1589370    0.1439681   0.1739059
21-24 months   MAL-ED           INDIA                          Low birthweight              NA                 0.1586824    0.1298529   0.1875119
21-24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.1684795    0.1488370   0.1881221
21-24 months   MAL-ED           NEPAL                          Low birthweight              NA                 0.1438483    0.0770904   0.2106063
21-24 months   MAL-ED           PERU                           Normal or high birthweight   NA                 0.1782373    0.1577546   0.1987200
21-24 months   MAL-ED           PERU                           Low birthweight              NA                 0.2527692    0.1634037   0.3421348
21-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.1876491    0.1633372   0.2119610
21-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -0.0105390   -0.1138035   0.0927255
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1421298    0.1123071   0.1719524
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.2583732    0.1393378   0.3774086
21-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.1392242    0.1205484   0.1579000
21-24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                 0.1470887    0.1185302   0.1756471
21-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.1749838    0.1604393   0.1895283
21-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                 0.1800778    0.1533942   0.2067615
21-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.1479201    0.1347015   0.1611387
21-24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                 0.1206484    0.1002262   0.1410707
21-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.1058799    0.0735483   0.1382114
21-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.1252585    0.0694833   0.1810337


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.7467559   0.7230662   0.7704455
0-3 months     COHORTS          GUATEMALA                      NA                   NA                0.7980090   0.7812054   0.8148126
0-3 months     COHORTS          INDIA                          NA                   NA                0.8098118   0.8052049   0.8144186
0-3 months     EE               PAKISTAN                       NA                   NA                0.6927615   0.6697463   0.7157767
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                0.8270122   0.8100415   0.8439828
0-3 months     IRC              INDIA                          NA                   NA                0.7679906   0.7485485   0.7874326
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                0.8692588   0.8661142   0.8724034
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                0.8895446   0.8790300   0.9000593
0-3 months     Keneba           GAMBIA                         NA                   NA                0.9338086   0.9213719   0.9462452
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                0.8797984   0.8565879   0.9030090
0-3 months     MAL-ED           BRAZIL                         NA                   NA                1.0647180   1.0304826   1.0989534
0-3 months     MAL-ED           INDIA                          NA                   NA                0.7574332   0.7346343   0.7802322
0-3 months     MAL-ED           NEPAL                          NA                   NA                0.9575933   0.9305710   0.9846155
0-3 months     MAL-ED           PERU                           NA                   NA                0.9696425   0.9444017   0.9948833
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.9402738   0.9137375   0.9668100
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8889411   0.8547941   0.9230881
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                0.8154665   0.7984471   0.8324859
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.8845220   0.8699746   0.8990694
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                0.9016472   0.8868914   0.9164029
0-3 months     ResPak           PAKISTAN                       NA                   NA                0.7394641   0.6594131   0.8195151
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                0.7908355   0.7705160   0.8111550
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9224848   0.9123284   0.9326411
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.9496947   0.9445678   0.9548217
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.4760129   0.4570439   0.4949820
3-6 months     COHORTS          GUATEMALA                      NA                   NA                0.4612551   0.4496963   0.4728139
3-6 months     COHORTS          INDIA                          NA                   NA                0.4823605   0.4783270   0.4863939
3-6 months     EE               PAKISTAN                       NA                   NA                0.4729699   0.4540570   0.4918828
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                0.4976117   0.4838029   0.5114205
3-6 months     IRC              INDIA                          NA                   NA                0.4677504   0.4504662   0.4850346
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                0.4386301   0.4354785   0.4417818
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                0.4394625   0.4306717   0.4482533
3-6 months     Keneba           GAMBIA                         NA                   NA                0.4433116   0.4322608   0.4543624
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                0.4752476   0.4584089   0.4920863
3-6 months     MAL-ED           BRAZIL                         NA                   NA                0.5781976   0.5469697   0.6094254
3-6 months     MAL-ED           INDIA                          NA                   NA                0.4447673   0.4267925   0.4627422
3-6 months     MAL-ED           NEPAL                          NA                   NA                0.5230308   0.5024653   0.5435963
3-6 months     MAL-ED           PERU                           NA                   NA                0.4972772   0.4781464   0.5164080
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.4655525   0.4396062   0.4914987
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4704082   0.4414476   0.4993688
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                0.4543307   0.4371718   0.4714896
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.4980544   0.4869892   0.5091196
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                0.4890611   0.4760060   0.5021163
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                0.4517646   0.4385634   0.4649658
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4195400   0.4108160   0.4282639
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.4784042   0.4738739   0.4829346
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.2589533   0.2425426   0.2753641
6-9 months     COHORTS          GUATEMALA                      NA                   NA                0.2142312   0.2037313   0.2247312
6-9 months     COHORTS          INDIA                          NA                   NA                0.2814401   0.2772484   0.2856319
6-9 months     EE               PAKISTAN                       NA                   NA                0.2526631   0.2378002   0.2675260
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                0.1879225   0.1758605   0.1999845
6-9 months     IRC              INDIA                          NA                   NA                0.2612677   0.2477581   0.2747773
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                0.2390681   0.2338512   0.2442849
6-9 months     Keneba           GAMBIA                         NA                   NA                0.2053304   0.1903540   0.2203067
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                0.2437740   0.2291890   0.2583590
6-9 months     MAL-ED           BRAZIL                         NA                   NA                0.3831499   0.3570859   0.4092138
6-9 months     MAL-ED           INDIA                          NA                   NA                0.2319441   0.2167458   0.2471424
6-9 months     MAL-ED           NEPAL                          NA                   NA                0.2717319   0.2573187   0.2861451
6-9 months     MAL-ED           PERU                           NA                   NA                0.2624126   0.2468740   0.2779512
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                0.2596104   0.2384684   0.2807524
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2355521   0.2067399   0.2643643
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                0.2392374   0.2254253   0.2530495
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                0.2675097   0.2569518   0.2780676
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                0.2491653   0.2371134   0.2612172
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                0.2094896   0.1946085   0.2243707
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2567079   0.2478001   0.2656156
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                0.2583079   0.2538050   0.2628108
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.2139475   0.1960987   0.2317962
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.1536805   0.1439613   0.1633996
9-12 months    COHORTS          INDIA                          NA                   NA                0.2204550   0.2160776   0.2248323
9-12 months    EE               PAKISTAN                       NA                   NA                0.2472268   0.2305732   0.2638804
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.1439867   0.1312614   0.1567119
9-12 months    IRC              INDIA                          NA                   NA                0.2145332   0.2004359   0.2286306
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                0.1508971   0.1464837   0.1553106
9-12 months    Keneba           GAMBIA                         NA                   NA                0.1666278   0.1532497   0.1800059
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.1729651   0.1592042   0.1867261
9-12 months    MAL-ED           BRAZIL                         NA                   NA                0.2845923   0.2527896   0.3163950
9-12 months    MAL-ED           INDIA                          NA                   NA                0.1772215   0.1628754   0.1915677
9-12 months    MAL-ED           NEPAL                          NA                   NA                0.1884027   0.1752581   0.2015473
9-12 months    MAL-ED           PERU                           NA                   NA                0.1871010   0.1715991   0.2026029
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.2153147   0.1931793   0.2374501
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1695903   0.1463740   0.1928067
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                0.1597918   0.1465056   0.1730780
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.1978449   0.1874487   0.2082411
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                0.1775316   0.1681968   0.1868664
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                0.1942469   0.1874175   0.2010763
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2063331   0.1962080   0.2164581
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1800077   0.1754721   0.1845433
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1499624   0.1359993   0.1639256
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.1533737   0.1426494   0.1640980
12-15 months   EE               PAKISTAN                       NA                   NA                0.1352175   0.1173436   0.1530913
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.1720672   0.1589120   0.1852223
12-15 months   IRC              INDIA                          NA                   NA                0.1817789   0.1688651   0.1946927
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1321699   0.1277224   0.1366174
12-15 months   Keneba           GAMBIA                         NA                   NA                0.1836031   0.1720874   0.1951187
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.1357013   0.1197899   0.1516128
12-15 months   MAL-ED           BRAZIL                         NA                   NA                0.2101946   0.1853699   0.2350192
12-15 months   MAL-ED           INDIA                          NA                   NA                0.1730640   0.1566960   0.1894320
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.1518926   0.1365752   0.1672100
12-15 months   MAL-ED           PERU                           NA                   NA                0.1401312   0.1235206   0.1567418
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1879898   0.1627929   0.2131868
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1501148   0.1216136   0.1786159
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1312281   0.1188263   0.1436299
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1640603   0.1535198   0.1746008
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.1800324   0.1683272   0.1917375
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.1844376   0.1766800   0.1921952
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1741243   0.1627901   0.1854585
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1496602   0.1416971   0.1576232
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1516953   0.1372622   0.1661285
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.1405213   0.1277098   0.1533328
15-18 months   EE               PAKISTAN                       NA                   NA                0.0889396   0.0746678   0.1032114
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.2347736   0.2195239   0.2500233
15-18 months   IRC              INDIA                          NA                   NA                0.1602425   0.1464995   0.1739855
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1600610   0.1549496   0.1651724
15-18 months   Keneba           GAMBIA                         NA                   NA                0.1597995   0.1475686   0.1720304
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.1428338   0.1271384   0.1585293
15-18 months   MAL-ED           BRAZIL                         NA                   NA                0.2034195   0.1767881   0.2300509
15-18 months   MAL-ED           INDIA                          NA                   NA                0.1631968   0.1479600   0.1784335
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.1716820   0.1562577   0.1871064
15-18 months   MAL-ED           PERU                           NA                   NA                0.1465356   0.1275499   0.1655214
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2227120   0.1942678   0.2511562
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1477500   0.1198702   0.1756298
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1534742   0.1384078   0.1685405
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1611973   0.1506617   0.1717329
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.1563514   0.1445823   0.1681205
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.1778904   0.1645794   0.1912014
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1680204   0.1538057   0.1822350
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1336195   0.1229907   0.1442483
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1360900   0.1206830   0.1514971
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.1606509   0.1484608   0.1728410
18-21 months   EE               PAKISTAN                       NA                   NA                0.1296202   0.1137821   0.1454583
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.1423948   0.1268654   0.1579242
18-21 months   IRC              INDIA                          NA                   NA                0.1591517   0.1455946   0.1727088
18-21 months   Keneba           GAMBIA                         NA                   NA                0.1549513   0.1422792   0.1676234
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.1418704   0.1248998   0.1588411
18-21 months   MAL-ED           BRAZIL                         NA                   NA                0.1606491   0.1365241   0.1847741
18-21 months   MAL-ED           INDIA                          NA                   NA                0.1751792   0.1599697   0.1903887
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.1453165   0.1273552   0.1632779
18-21 months   MAL-ED           PERU                           NA                   NA                0.1605735   0.1414833   0.1796637
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1755205   0.1490254   0.2020155
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1491376   0.1196596   0.1786157
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1734865   0.1569855   0.1899874
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1426609   0.1319333   0.1533885
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.1324882   0.1210438   0.1439326
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1213512   0.1043097   0.1383927
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1483495   0.1341018   0.1625973
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1889768   0.1774858   0.2004678
21-24 months   EE               PAKISTAN                       NA                   NA                0.1933736   0.1711433   0.2156039
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1770981   0.1526133   0.2015829
21-24 months   IRC              INDIA                          NA                   NA                0.1784799   0.1645322   0.1924277
21-24 months   Keneba           GAMBIA                         NA                   NA                0.1702342   0.1574124   0.1830560
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1527258   0.1374782   0.1679734
21-24 months   MAL-ED           BRAZIL                         NA                   NA                0.1434900   0.1201394   0.1668407
21-24 months   MAL-ED           INDIA                          NA                   NA                0.1570073   0.1437285   0.1702861
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.1657172   0.1469649   0.1844694
21-24 months   MAL-ED           PERU                           NA                   NA                0.1820121   0.1620908   0.2019334
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1878453   0.1639966   0.2116939
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1480530   0.1188307   0.1772753
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.1414362   0.1257895   0.1570829
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1750500   0.1624914   0.1876087
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1419705   0.1305335   0.1534075
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1095786   0.0814997   0.1376575


### Parameter: ATE


agecat         studyid          country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.0441893   -0.1161846    0.0278060
0-3 months     COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0008269   -0.0595879    0.0612417
0-3 months     COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.0454544   -0.0571973   -0.0337115
0-3 months     EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0669601    0.0161551    0.1177650
0-3 months     GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0068567   -0.0444654    0.0307520
0-3 months     IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0264838   -0.0759353    0.0229676
0-3 months     JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0181377   -0.0234327   -0.0128426
0-3 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0043604   -0.0256970    0.0169763
0-3 months     Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0241599   -0.0643801    0.0160602
0-3 months     MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0253022   -0.0829839    0.0323796
0-3 months     MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0698242   -0.0758017    0.2154500
0-3 months     MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0401345   -0.0217909    0.1020599
0-3 months     MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.0861209   -0.1800158    0.0077741
0-3 months     MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0517276   -0.1465987    0.0431435
0-3 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.1285927    0.0076888    0.2494966
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0022628   -0.1653632    0.1608377
0-3 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0060993   -0.0326150    0.0448137
0-3 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0087688   -0.0424961    0.0249585
0-3 months     PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0357159   -0.0685726   -0.0028592
0-3 months     ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0936850   -0.3442616    0.1568916
0-3 months     SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.0063906   -0.0213022    0.0085211
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0426102   -0.0127253    0.0979457
0-3 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0126776   -0.0283300    0.0029748
3-6 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0508231   -0.0122381    0.1138843
3-6 months     COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0287551   -0.0692644    0.0117543
3-6 months     COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.0020645   -0.0120701    0.0079411
3-6 months     EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0031246   -0.0426209    0.0363717
3-6 months     GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0053383   -0.0345195    0.0238430
3-6 months     IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0197057   -0.0230152    0.0624265
3-6 months     JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0122313    0.0060488    0.0184137
3-6 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0103713   -0.0292601    0.0085175
3-6 months     Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0165352   -0.0142550    0.0473255
3-6 months     MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0222479   -0.0188096    0.0633053
3-6 months     MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.1248292   -0.2798990    0.0302406
3-6 months     MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0350918   -0.0132469    0.0834306
3-6 months     MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.0888636   -0.0096145    0.1873417
3-6 months     MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0237831   -0.1040453    0.0564791
3-6 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0460930   -0.2278437    0.1356577
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0171531   -0.1165294    0.0822232
3-6 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0161592   -0.0578856    0.0255673
3-6 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0029102   -0.0313337    0.0255133
3-6 months     PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0118183   -0.0265471    0.0501838
3-6 months     SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     0.0154246   -0.0094379    0.0402870
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0356090   -0.0078073    0.0790253
3-6 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0445374    0.0305606    0.0585143
6-9 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0044339   -0.0479819    0.0568496
6-9 months     COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0187383   -0.0194066    0.0568833
6-9 months     COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.0111299   -0.0211685   -0.0010913
6-9 months     EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0049126   -0.0270786    0.0369039
6-9 months     GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0288194   -0.0054864    0.0631253
6-9 months     IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0071649   -0.0427960    0.0284662
6-9 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0147820    0.0007930    0.0287710
6-9 months     Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0049415   -0.0525365    0.0426535
6-9 months     MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0119347   -0.0491834    0.0253140
6-9 months     MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.1170552   -0.0628948    0.2970052
6-9 months     MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.0333533   -0.0902957    0.0235891
6-9 months     MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.0094030   -0.0774485    0.0586424
6-9 months     MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0269484   -0.0865567    0.0326600
6-9 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0199544   -0.1222227    0.0823139
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0186789   -0.0583172    0.0956751
6-9 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0153428   -0.0440914    0.0134058
6-9 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0051963   -0.0274966    0.0171041
6-9 months     PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0060993   -0.0430908    0.0308922
6-9 months     SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     0.0063568   -0.0038124    0.0165259
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0502752   -0.0173601    0.1179105
6-9 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0014332   -0.0115282    0.0143946
9-12 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.0067650   -0.0521071    0.0385772
9-12 months    COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0175435   -0.0165025    0.0515895
9-12 months    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.0064627   -0.0173726    0.0044471
9-12 months    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0144213   -0.0501509    0.0213084
9-12 months    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0013954   -0.0312610    0.0340518
9-12 months    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0004385   -0.0391146    0.0382375
9-12 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0015480   -0.0115880    0.0084920
9-12 months    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0156699   -0.0220503    0.0533901
9-12 months    MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0034402   -0.0368622    0.0299819
9-12 months    MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0181615   -0.0995067    0.1358298
9-12 months    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0413750    0.0030569    0.0796930
9-12 months    MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.0213989   -0.0195637    0.0623615
9-12 months    MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           Low birthweight              Normal or high birthweight     0.0659120    0.0107279    0.1210962
9-12 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0044839   -0.0781537    0.0871215
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0048911   -0.1282362    0.1380184
9-12 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0132579   -0.0132224    0.0397383
9-12 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     0.0024931   -0.0201673    0.0251535
9-12 months    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0083820   -0.0308890    0.0141249
9-12 months    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.0169990   -0.0349285    0.0009304
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0149044   -0.0624692    0.0922780
9-12 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0085625   -0.0041267    0.0212517
12-15 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0142176   -0.0286781    0.0571132
12-15 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0102094   -0.0349202    0.0553390
12-15 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0076228   -0.0297165    0.0449621
12-15 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0120431   -0.0168808    0.0409670
12-15 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0294915   -0.0700417    0.0110588
12-15 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0057431   -0.0146814    0.0031952
12-15 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0138193   -0.0209967    0.0486353
12-15 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0126027   -0.0261772    0.0513825
12-15 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0268538   -0.0922027    0.1459104
12-15 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.0128728   -0.0546010    0.0288554
12-15 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.0014885   -0.0322324    0.0292553
12-15 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0072676   -0.0539121    0.0393769
12-15 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0223939   -0.1341029    0.0893150
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0084567   -0.1282842    0.1451977
12-15 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0038517   -0.0302350    0.0225316
12-15 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0307762   -0.0559946   -0.0055578
12-15 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0170504   -0.0109546    0.0450554
12-15 months   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.0040158   -0.0474795    0.0394479
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0279214   -0.0758659    0.1317087
12-15 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0160477   -0.0371960    0.0051005
15-18 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0172370   -0.0516122    0.0860861
15-18 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0150650   -0.0299251    0.0600550
15-18 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0031386   -0.0316343    0.0253571
15-18 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0278896   -0.0590017    0.0032224
15-18 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0085549   -0.0322485    0.0493583
15-18 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0071455   -0.0189425    0.0046515
15-18 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0024075   -0.0347597    0.0299446
15-18 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0020985   -0.0338408    0.0380378
15-18 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0026308   -0.1092286    0.1144902
15-18 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.0080540   -0.0572574    0.0411495
15-18 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.0371481   -0.0859433    0.0116471
15-18 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0050903   -0.0498645    0.0396840
15-18 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.1104467   -0.0108875    0.2317810
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0268100   -0.1455397    0.0919197
15-18 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0128044   -0.0437144    0.0181057
15-18 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0083974   -0.0307700    0.0139752
15-18 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0170522   -0.0453414    0.0112369
15-18 months   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     0.0224192   -0.0068437    0.0516822
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0176067   -0.0476295    0.0828430
15-18 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0134293   -0.0164289    0.0432875
18-21 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.0183208   -0.0913713    0.0547297
18-21 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0186883   -0.0568952    0.0195186
18-21 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0342530   -0.0688950    0.0003889
18-21 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0265331   -0.0585399    0.0054737
18-21 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0054875   -0.0369803    0.0260053
18-21 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0119289   -0.0247677    0.0486255
18-21 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0102706   -0.0460608    0.0255197
18-21 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.0708312   -0.1823654    0.0407030
18-21 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0006833   -0.0388820    0.0402486
18-21 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.0039602   -0.0660784    0.0739988
18-21 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0524951   -0.1136362    0.0086460
18-21 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0184148   -0.1571700    0.1203405
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0181995   -0.1006166    0.0642177
18-21 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0117020   -0.0450950    0.0216911
18-21 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0172059   -0.0447856    0.0103738
18-21 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0066890   -0.0313844    0.0180063
18-21 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0186115   -0.0232235    0.0604464
21-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.0229468   -0.0728561    0.0269625
21-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0430604   -0.0837131   -0.0024077
21-24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0470297   -0.0918308   -0.0022286
21-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0686818    0.0095120    0.1278515
21-24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0145796   -0.0496876    0.0205283
21-24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0311064   -0.0668891    0.0046762
21-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0029129   -0.0329208    0.0387467
21-24 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0220366   -0.0474473    0.0915205
21-24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.0002546   -0.0331405    0.0326314
21-24 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.0246312   -0.0944979    0.0452356
21-24 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight     0.0745319   -0.0171745    0.1662384
21-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.1981881   -0.3048539   -0.0915223
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1162434   -0.0064709    0.2389578
21-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0078645   -0.0260362    0.0417652
21-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     0.0050941   -0.0252352    0.0354233
21-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0272717   -0.0510184   -0.0035249
21-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0193787   -0.0443643    0.0831217


### Parameter: PAR


agecat         studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0021672   -0.0109650    0.0066306
0-3 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0001589   -0.0053154    0.0049975
0-3 months     COHORTS          INDIA                          Normal or high birthweight   NA                -0.0093654   -0.0118150   -0.0069157
0-3 months     EE               PAKISTAN                       Normal or high birthweight   NA                 0.0247569    0.0060966    0.0434171
0-3 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0019727   -0.0130402    0.0090949
0-3 months     IRC              INDIA                          Normal or high birthweight   NA                -0.0046846   -0.0127925    0.0034232
0-3 months     JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.0081047   -0.0102787   -0.0059307
0-3 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0017542   -0.0090009    0.0054926
0-3 months     Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0035851   -0.0093569    0.0021866
0-3 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0052214   -0.0168299    0.0063870
0-3 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0052097   -0.0012728    0.0116923
0-3 months     MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0058095   -0.0034534    0.0150723
0-3 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0036161   -0.0112315    0.0039992
0-3 months     MAL-ED           PERU                           Normal or high birthweight   NA                -0.0032184   -0.0081311    0.0016944
0-3 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0088205    0.0016715    0.0159695
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0013510   -0.0065714    0.0092734
0-3 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0012286   -0.0102579    0.0127152
0-3 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0022416   -0.0098166    0.0053333
0-3 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0084839   -0.0164093   -0.0005584
0-3 months     ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.0146383   -0.0555811    0.0263045
0-3 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0014209   -0.0051864    0.0023445
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0015545   -0.0003183    0.0034273
0-3 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0015688   -0.0035816    0.0004439
3-6 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0050535   -0.0027140    0.0128210
3-6 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0021368   -0.0055502    0.0012767
3-6 months     COHORTS          INDIA                          Normal or high birthweight   NA                -0.0004764   -0.0024136    0.0014608
3-6 months     EE               PAKISTAN                       Normal or high birthweight   NA                -0.0010437   -0.0155062    0.0134189
3-6 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0005212   -0.0091351    0.0080926
3-6 months     IRC              INDIA                          Normal or high birthweight   NA                 0.0001467   -0.0070861    0.0073796
3-6 months     JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.0049961    0.0024618    0.0075304
3-6 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0024497   -0.0069990    0.0020996
3-6 months     Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0040849   -0.0003680    0.0085379
3-6 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0017303   -0.0069642    0.0104249
3-6 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0016434   -0.0076232    0.0043364
3-6 months     MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0069081    0.0002174    0.0135988
3-6 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0072525   -0.0009025    0.0154076
3-6 months     MAL-ED           PERU                           Normal or high birthweight   NA                -0.0022204   -0.0069442    0.0025033
3-6 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0010013   -0.0080775    0.0100801
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0008577   -0.0058566    0.0041413
3-6 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0047650   -0.0167615    0.0072315
3-6 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0008401   -0.0074259    0.0057457
3-6 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0034180   -0.0054070    0.0122430
3-6 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0036880   -0.0015646    0.0089406
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0013143   -0.0001494    0.0027780
3-6 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0055403    0.0037192    0.0073613
6-9 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0009042   -0.0049851    0.0067934
6-9 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0014144   -0.0022214    0.0050502
6-9 months     COHORTS          INDIA                          Normal or high birthweight   NA                -0.0018800   -0.0038452    0.0000853
6-9 months     EE               PAKISTAN                       Normal or high birthweight   NA                 0.0013716   -0.0091768    0.0119200
6-9 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0085664   -0.0002673    0.0174000
6-9 months     IRC              INDIA                          Normal or high birthweight   NA                -0.0001671   -0.0061372    0.0058029
6-9 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0029624   -0.0003572    0.0062821
6-9 months     Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0002944   -0.0064813    0.0058926
6-9 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0021946   -0.0095515    0.0051622
6-9 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0019537   -0.0060424    0.0099497
6-9 months     MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0047387   -0.0125534    0.0030760
6-9 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0007876   -0.0065712    0.0049961
6-9 months     MAL-ED           PERU                           Normal or high birthweight   NA                -0.0022085   -0.0064354    0.0020185
6-9 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0024167   -0.0080967    0.0032633
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0008739   -0.0027768    0.0045245
6-9 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0039091   -0.0124324    0.0046141
6-9 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0019439   -0.0071118    0.0032240
6-9 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0023071   -0.0109490    0.0063348
6-9 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0009006   -0.0018583    0.0036596
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0001690   -0.0017379    0.0020759
6-9 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0002483   -0.0014213    0.0019179
9-12 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0013194   -0.0068258    0.0041869
9-12 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0013249   -0.0016835    0.0043333
9-12 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.0011010   -0.0031682    0.0009663
9-12 months    EE               PAKISTAN                       Normal or high birthweight   NA                -0.0055710   -0.0174221    0.0062802
9-12 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0016289   -0.0079692    0.0112271
9-12 months    IRC              INDIA                          Normal or high birthweight   NA                -0.0006835   -0.0073138    0.0059467
9-12 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0007691   -0.0032794    0.0017412
9-12 months    Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0018006   -0.0029547    0.0065560
9-12 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0010433   -0.0079746    0.0058880
9-12 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0017672   -0.0057025    0.0092369
9-12 months    MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0048089   -0.0009452    0.0105630
9-12 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0013441   -0.0014369    0.0041252
9-12 months    MAL-ED           PERU                           Normal or high birthweight   NA                -0.0022977   -0.0056869    0.0010916
9-12 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0003040   -0.0041005    0.0047084
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0002315   -0.0060723    0.0065354
9-12 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0040470   -0.0040260    0.0121201
9-12 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0004083   -0.0048282    0.0056448
9-12 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0021118   -0.0074566    0.0032331
9-12 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0040940   -0.0081037   -0.0000844
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0002264   -0.0017923    0.0022451
9-12 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0011694   -0.0005852    0.0029239
12-15 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0014449   -0.0037411    0.0066309
12-15 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0003764   -0.0033055    0.0040582
12-15 months   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0017750   -0.0109586    0.0145087
12-15 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0019576   -0.0071170    0.0110322
12-15 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0047460   -0.0115908    0.0020988
12-15 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0015360   -0.0038810    0.0008091
12-15 months   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0024028   -0.0022488    0.0070544
12-15 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0026391   -0.0057759    0.0110541
12-15 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0012938   -0.0044381    0.0070256
12-15 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0020174   -0.0080625    0.0040277
12-15 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0007070   -0.0016496    0.0030636
12-15 months   MAL-ED           PERU                           Normal or high birthweight   NA                 0.0016341   -0.0014176    0.0046857
12-15 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0010621   -0.0059428    0.0038186
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0004003   -0.0060783    0.0068790
12-15 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0013241   -0.0091857    0.0065375
12-15 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0076680   -0.0134190   -0.0019170
12-15 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0016637   -0.0046746    0.0080019
12-15 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0007589   -0.0108823    0.0093645
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0011251   -0.0016800    0.0039303
12-15 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0026085   -0.0059355    0.0007186
15-18 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0019723   -0.0061219    0.0100665
15-18 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0002965   -0.0037017    0.0042947
15-18 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0030353   -0.0127337    0.0066630
15-18 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0084936   -0.0184488    0.0014615
15-18 months   IRC              INDIA                          Normal or high birthweight   NA                 0.0011322   -0.0054839    0.0077483
15-18 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0016081   -0.0045425    0.0013264
15-18 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0006822   -0.0048575    0.0034931
15-18 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0009537   -0.0071070    0.0090143
15-18 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0001052   -0.0043698    0.0045803
15-18 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0008210   -0.0080325    0.0063904
15-18 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0030601   -0.0072520    0.0011318
15-18 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0024619   -0.0054708    0.0005470
15-18 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0061637   -0.0029932    0.0153206
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0012920   -0.0070806    0.0044966
15-18 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0041689   -0.0134789    0.0051411
15-18 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0022370   -0.0074840    0.0030100
15-18 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0034047   -0.0098229    0.0030136
15-18 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0054233   -0.0015357    0.0123823
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0005450   -0.0012884    0.0023785
15-18 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0026264   -0.0025850    0.0078378
18-21 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0046316   -0.0137031    0.0044399
18-21 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0020739   -0.0057229    0.0015751
18-21 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0092316   -0.0198048    0.0013415
18-21 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0086852   -0.0183785    0.0010081
18-21 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0006333   -0.0059900    0.0047234
18-21 months   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0006592   -0.0041613    0.0054798
18-21 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0019977   -0.0096519    0.0056564
18-21 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0029690   -0.0081186    0.0021807
18-21 months   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0000486   -0.0057557    0.0058530
18-21 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0005698   -0.0057050    0.0045654
18-21 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0031034   -0.0068580    0.0006511
18-21 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0051156   -0.0124252    0.0021941
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0009157   -0.0051086    0.0032772
18-21 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0034592   -0.0138081    0.0068897
18-21 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0032359   -0.0098247    0.0033530
18-21 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0021109   -0.0081644    0.0039427
18-21 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0047787   -0.0039382    0.0134955
21-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0027919   -0.0085524    0.0029686
21-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0030405   -0.0064818    0.0004009
21-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0148084   -0.0314493    0.0018326
21-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0149099    0.0001593    0.0296606
21-24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0007195   -0.0067659    0.0053269
21-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0039060   -0.0089788    0.0011668
21-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0017440   -0.0060583    0.0095462
21-24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0010684   -0.0023775    0.0045144
21-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0019297   -0.0070739    0.0032146
21-24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0027624   -0.0085061    0.0029813
21-24 months   MAL-ED           PERU                           Normal or high birthweight   NA                 0.0037748   -0.0012437    0.0087933
21-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0001962   -0.0068417    0.0072341
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0059232   -0.0015058    0.0133523
21-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0022120   -0.0081472    0.0125713
21-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0000663   -0.0072604    0.0073929
21-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0059496   -0.0118582   -0.0000410
21-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0036987   -0.0105995    0.0179970
