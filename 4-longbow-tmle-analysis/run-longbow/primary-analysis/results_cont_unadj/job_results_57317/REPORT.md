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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/589a4832-c823-4386-bc83-5aa3e4f23f6e/5caeee18-a225-4ec5-b3bf-886dd4919931/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/589a4832-c823-4386-bc83-5aa3e4f23f6e/5caeee18-a225-4ec5-b3bf-886dd4919931/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/589a4832-c823-4386-bc83-5aa3e4f23f6e/5caeee18-a225-4ec5-b3bf-886dd4919931/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level           baseline_level     estimate     ci_lower    ci_upper
-------------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  -----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.7490843    0.7237050   0.7744637
0-3 months     CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.7302863    0.6645374   0.7960352
0-3 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7985773    0.7810351   0.8161195
0-3 months     COHORTS          GUATEMALA                      Low birthweight              NA                0.7918085    0.7333135   0.8503035
0-3 months     COHORTS          INDIA                          Normal or high birthweight   NA                0.8206533    0.8155747   0.8257320
0-3 months     COHORTS          INDIA                          Low birthweight              NA                0.7673882    0.7568544   0.7779221
0-3 months     EE               PAKISTAN                       Normal or high birthweight   NA                0.6735075    0.6459751   0.7010400
0-3 months     EE               PAKISTAN                       Low birthweight              NA                0.7251212    0.6849821   0.7652602
0-3 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.8295453    0.8091932   0.8498975
0-3 months     GMS-Nepal        NEPAL                          Low birthweight              NA                0.8211727    0.7904491   0.8518963
0-3 months     IRC              INDIA                          Normal or high birthweight   NA                0.7730677    0.7515863   0.7945491
0-3 months     IRC              INDIA                          Low birthweight              NA                0.7418116    0.6970024   0.7866208
0-3 months     Keneba           GAMBIA                         Normal or high birthweight   NA                0.9380979    0.9249602   0.9512357
0-3 months     Keneba           GAMBIA                         Low birthweight              NA                0.9089815    0.8725214   0.9454416
0-3 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.8852324    0.8588997   0.9115651
0-3 months     MAL-ED           BANGLADESH                     Low birthweight              NA                0.8592348    0.8106498   0.9078198
0-3 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                1.0597000    1.0243598   1.0950402
0-3 months     MAL-ED           BRAZIL                         Low birthweight              NA                1.1690927    1.0583270   1.2798585
0-3 months     MAL-ED           INDIA                          Normal or high birthweight   NA                0.7513435    0.7264712   0.7762158
0-3 months     MAL-ED           INDIA                          Low birthweight              NA                0.7921808    0.7367492   0.8476125
0-3 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                0.9617437    0.9333797   0.9901076
0-3 months     MAL-ED           NEPAL                          Low birthweight              NA                0.9119388    0.8262588   0.9976189
0-3 months     MAL-ED           PERU                           Normal or high birthweight   NA                0.9724135    0.9459852   0.9988418
0-3 months     MAL-ED           PERU                           Low birthweight              NA                0.9269373    0.8544044   0.9994701
0-3 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.9320645    0.9046488   0.9594802
0-3 months     MAL-ED           SOUTH AFRICA                   Low birthweight              NA                1.0629300    0.9762477   1.1496122
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.8879784    0.8528016   0.9231553
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.9059805    0.7647044   1.0472566
0-3 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.8158111    0.7965914   0.8350308
0-3 months     NIH-Birth        BANGLADESH                     Low birthweight              NA                0.8146505    0.7798026   0.8494985
0-3 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.8856169    0.8686884   0.9025453
0-3 months     NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.8810283    0.8527661   0.9092905
0-3 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.9104575    0.8930962   0.9278187
0-3 months     PROVIDE          BANGLADESH                     Low birthweight              NA                0.8740795    0.8469482   0.9012109
0-3 months     ResPak           PAKISTAN                       Normal or high birthweight   NA                0.7541024    0.6711404   0.8370643
0-3 months     ResPak           PAKISTAN                       Low birthweight              NA                0.6604174    0.4239730   0.8968617
0-3 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.7928722    0.7702136   0.8155308
0-3 months     SAS-CompFeed     INDIA                          Low birthweight              NA                0.7843692    0.7689404   0.7997980
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.9209546    0.9106177   0.9312914
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.9663884    0.9128674   1.0199093
0-3 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.9522433    0.9468030   0.9576837
0-3 months     ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.9323891    0.9172466   0.9475317
3-6 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.4705585    0.4503785   0.4907385
3-6 months     CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.5133754    0.4594237   0.5673271
3-6 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.4636670    0.4515052   0.4758288
3-6 months     COHORTS          GUATEMALA                      Low birthweight              NA                0.4366219    0.4001696   0.4730742
3-6 months     COHORTS          INDIA                          Normal or high birthweight   NA                0.4842732    0.4797576   0.4887887
3-6 months     COHORTS          INDIA                          Low birthweight              NA                0.4746330    0.4656761   0.4835899
3-6 months     EE               PAKISTAN                       Normal or high birthweight   NA                0.4755250    0.4512310   0.4998189
3-6 months     EE               PAKISTAN                       Low birthweight              NA                0.4684534    0.4385443   0.4983624
3-6 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.5007642    0.4837626   0.5177658
3-6 months     GMS-Nepal        NEPAL                          Low birthweight              NA                0.4901274    0.4669022   0.5133525
3-6 months     IRC              INDIA                          Normal or high birthweight   NA                0.4681737    0.4490130   0.4873345
3-6 months     IRC              INDIA                          Low birthweight              NA                0.4655677    0.4260597   0.5050757
3-6 months     Keneba           GAMBIA                         Normal or high birthweight   NA                0.4381821    0.4262411   0.4501232
3-6 months     Keneba           GAMBIA                         Low birthweight              NA                0.4737888    0.4451484   0.5024291
3-6 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.4736898    0.4543862   0.4929934
3-6 months     MAL-ED           BANGLADESH                     Low birthweight              NA                0.4810017    0.4469522   0.5150513
3-6 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                0.5797704    0.5474451   0.6120957
3-6 months     MAL-ED           BRAZIL                         Low birthweight              NA                0.5470554    0.4381680   0.6559428
3-6 months     MAL-ED           INDIA                          Normal or high birthweight   NA                0.4374185    0.4178428   0.4569943
3-6 months     MAL-ED           INDIA                          Low birthweight              NA                0.4884008    0.4463013   0.5305002
3-6 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                0.5163506    0.4955974   0.5371038
3-6 months     MAL-ED           NEPAL                          Low birthweight              NA                0.5958094    0.5089534   0.6826655
3-6 months     MAL-ED           PERU                           Normal or high birthweight   NA                0.4995186    0.4797221   0.5193152
3-6 months     MAL-ED           PERU                           Low birthweight              NA                0.4625345    0.3905926   0.5344764
3-6 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.4648050    0.4390158   0.4905942
3-6 months     MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.4787192    0.3148334   0.6426051
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.4712659    0.4411969   0.5013348
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.4541128    0.3593947   0.5488309
3-6 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.4590955    0.4402879   0.4779031
3-6 months     NIH-Birth        BANGLADESH                     Low birthweight              NA                0.4426471    0.4055426   0.4797517
3-6 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.4989963    0.4865182   0.5114745
3-6 months     NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.4950836    0.4713436   0.5188236
3-6 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.4857545    0.4721610   0.4993480
3-6 months     PROVIDE          BANGLADESH                     Low birthweight              NA                0.4995550    0.4663304   0.5327795
3-6 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.4477666    0.4321856   0.4633477
3-6 months     SAS-CompFeed     INDIA                          Low birthweight              NA                0.4650703    0.4462803   0.4838603
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.4180452    0.4091501   0.4269402
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.4628351    0.4201656   0.5055047
3-6 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.4730974    0.4683020   0.4778928
3-6 months     ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.5149836    0.5016255   0.5283418
6-9 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2590671    0.2413088   0.2768255
6-9 months     CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.2581420    0.2160827   0.3002013
6-9 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.2130611    0.2020853   0.2240369
6-9 months     COHORTS          GUATEMALA                      Low birthweight              NA                0.2253472    0.1896478   0.2610466
6-9 months     COHORTS          INDIA                          Normal or high birthweight   NA                0.2842662    0.2795381   0.2889942
6-9 months     COHORTS          INDIA                          Low birthweight              NA                0.2698430    0.2608639   0.2788220
6-9 months     EE               PAKISTAN                       Normal or high birthweight   NA                0.2510611    0.2330066   0.2691156
6-9 months     EE               PAKISTAN                       Low birthweight              NA                0.2559156    0.2297578   0.2820735
6-9 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1791627    0.1666436   0.1916818
6-9 months     GMS-Nepal        NEPAL                          Low birthweight              NA                0.2100493    0.1819544   0.2381441
6-9 months     IRC              INDIA                          Normal or high birthweight   NA                0.2615699    0.2466215   0.2765184
6-9 months     IRC              INDIA                          Low birthweight              NA                0.2598002    0.2283460   0.2912545
6-9 months     Keneba           GAMBIA                         Normal or high birthweight   NA                0.2066766    0.1905908   0.2227623
6-9 months     Keneba           GAMBIA                         Low birthweight              NA                0.1965446    0.1555615   0.2375277
6-9 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.2473224    0.2308861   0.2637587
6-9 months     MAL-ED           BANGLADESH                     Low birthweight              NA                0.2298170    0.1985654   0.2610686
6-9 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                0.3808182    0.3546438   0.4069926
6-9 months     MAL-ED           BRAZIL                         Low birthweight              NA                0.4269851    0.2740092   0.5799609
6-9 months     MAL-ED           INDIA                          Normal or high birthweight   NA                0.2364165    0.2204222   0.2524108
6-9 months     MAL-ED           INDIA                          Low birthweight              NA                0.2063292    0.1619186   0.2507398
6-9 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                0.2716402    0.2572718   0.2860085
6-9 months     MAL-ED           NEPAL                          Low birthweight              NA                0.2727768    0.2013154   0.3442383
6-9 months     MAL-ED           PERU                           Normal or high birthweight   NA                0.2652274    0.2491567   0.2812982
6-9 months     MAL-ED           PERU                           Low birthweight              NA                0.2198146    0.1632503   0.2763790
6-9 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.2622935    0.2407318   0.2838553
6-9 months     MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.2108666    0.1110391   0.3106940
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2346782    0.2046594   0.2646971
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2533572    0.1824539   0.3242604
6-9 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.2428349    0.2256590   0.2600107
6-9 months     NIH-Birth        BANGLADESH                     Low birthweight              NA                0.2307594    0.2082139   0.2533048
6-9 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.2694349    0.2568832   0.2819867
6-9 months     NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.2610437    0.2426273   0.2794601
6-9 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.2530563    0.2415403   0.2645722
6-9 months     PROVIDE          BANGLADESH                     Low birthweight              NA                0.2368159    0.2023354   0.2712963
6-9 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.2095939    0.1944998   0.2246879
6-9 months     SAS-CompFeed     INDIA                          Low birthweight              NA                0.2091378    0.1837173   0.2345582
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2565201    0.2475639   0.2654763
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2633074    0.1956011   0.3310137
6-9 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.2580350    0.2531721   0.2628980
6-9 months     ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.2601393    0.2482863   0.2719923
9-12 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.2149761    0.1955755   0.2343767
9-12 months    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.2061075    0.1635679   0.2486471
9-12 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1523600    0.1421615   0.1625586
9-12 months    COHORTS          GUATEMALA                      Low birthweight              NA                0.1672357    0.1353702   0.1991012
9-12 months    COHORTS          INDIA                          Normal or high birthweight   NA                0.2219447    0.2170392   0.2268503
9-12 months    COHORTS          INDIA                          Low birthweight              NA                0.2141373    0.2044791   0.2237956
9-12 months    EE               PAKISTAN                       Normal or high birthweight   NA                0.2553003    0.2356356   0.2749649
9-12 months    EE               PAKISTAN                       Low birthweight              NA                0.2308535    0.2002253   0.2614817
9-12 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1429644    0.1290789   0.1568498
9-12 months    GMS-Nepal        NEPAL                          Low birthweight              NA                0.1464203    0.1188937   0.1739469
9-12 months    IRC              INDIA                          Normal or high birthweight   NA                0.2147033    0.1991740   0.2302326
9-12 months    IRC              INDIA                          Low birthweight              NA                0.2137105    0.1801147   0.2473063
9-12 months    Keneba           GAMBIA                         Normal or high birthweight   NA                0.1647443    0.1503513   0.1791373
9-12 months    Keneba           GAMBIA                         Low birthweight              NA                0.1797861    0.1438241   0.2157481
9-12 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.1737113    0.1580799   0.1893426
9-12 months    MAL-ED           BANGLADESH                     Low birthweight              NA                0.1701712    0.1412600   0.1990824
9-12 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                0.2827735    0.2500933   0.3154536
9-12 months    MAL-ED           BRAZIL                         Low birthweight              NA                0.3180587    0.1816061   0.4545113
9-12 months    MAL-ED           INDIA                          Normal or high birthweight   NA                0.1721540    0.1564861   0.1878218
9-12 months    MAL-ED           INDIA                          Low birthweight              NA                0.2066766    0.1729796   0.2403737
9-12 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                0.1876447    0.1735831   0.2017062
9-12 months    MAL-ED           NEPAL                          Low birthweight              NA                0.1970359    0.1677940   0.2262778
9-12 months    MAL-ED           PERU                           Normal or high birthweight   NA                0.1892222    0.1730941   0.2053502
9-12 months    MAL-ED           PERU                           Low birthweight              NA                0.1540719    0.1030621   0.2050816
9-12 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.2151000    0.1919405   0.2382595
9-12 months    MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.2186576    0.1515859   0.2857293
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1693588    0.1458754   0.1928422
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1742499    0.0432102   0.3052897
9-12 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1565476    0.1396343   0.1734608
9-12 months    NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1672466    0.1470665   0.1874268
9-12 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.1975490    0.1853019   0.2097961
9-12 months    NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.1988201    0.1797091   0.2179311
9-12 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.1799057    0.1693433   0.1904682
9-12 months    PROVIDE          BANGLADESH                     Low birthweight              NA                0.1699727    0.1501666   0.1897788
9-12 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.1993505    0.1912473   0.2074538
9-12 months    SAS-CompFeed     INDIA                          Low birthweight              NA                0.1772150    0.1612855   0.1931445
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.2062120    0.1960285   0.2163954
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2105432    0.1344138   0.2866726
9-12 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1786478    0.1737320   0.1835636
9-12 months    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.1884638    0.1767589   0.2001686
12-15 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1480430    0.1332193   0.1628666
12-15 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1640878    0.1228473   0.2053284
12-15 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1531347    0.1420611   0.1642083
12-15 months   COHORTS          GUATEMALA                      Low birthweight              NA                0.1559541    0.1145993   0.1973089
12-15 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.1328903    0.1105590   0.1552216
12-15 months   EE               PAKISTAN                       Low birthweight              NA                0.1397335    0.1100125   0.1694545
12-15 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1686285    0.1524540   0.1848031
12-15 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.1797059    0.1572874   0.2021244
12-15 months   IRC              INDIA                          Normal or high birthweight   NA                0.1861556    0.1724785   0.1998326
12-15 months   IRC              INDIA                          Low birthweight              NA                0.1605587    0.1248502   0.1962672
12-15 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.1808067    0.1684147   0.1931988
12-15 months   Keneba           GAMBIA                         Low birthweight              NA                0.2014064    0.1704203   0.2323924
12-15 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.1330224    0.1150369   0.1510080
12-15 months   MAL-ED           BANGLADESH                     Low birthweight              NA                0.1452522    0.1112677   0.1792367
12-15 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                0.2087317    0.1831431   0.2343202
12-15 months   MAL-ED           BRAZIL                         Low birthweight              NA                0.2356490    0.1349635   0.3363345
12-15 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.1756057    0.1575374   0.1936741
12-15 months   MAL-ED           INDIA                          Low birthweight              NA                0.1583698    0.1212485   0.1954911
12-15 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.1511739    0.1346407   0.1677071
12-15 months   MAL-ED           NEPAL                          Low birthweight              NA                0.1601176    0.1373731   0.1828622
12-15 months   MAL-ED           PERU                           Normal or high birthweight   NA                0.1387473    0.1213446   0.1561500
12-15 months   MAL-ED           PERU                           Low birthweight              NA                0.1623795    0.1173478   0.2074112
12-15 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.1889427    0.1628124   0.2150731
12-15 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.1709170    0.0820019   0.2598322
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1497145    0.1205443   0.1788846
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1581712    0.0245778   0.2917646
12-15 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1326630    0.1178963   0.1474297
12-15 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1278620    0.1050284   0.1506957
12-15 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.1721601    0.1599575   0.1843626
12-15 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.1375801    0.1173079   0.1578522
12-15 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.1777825    0.1645042   0.1910609
12-15 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.1878505    0.1631100   0.2125910
12-15 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.1852765    0.1774232   0.1931298
12-15 months   SAS-CompFeed     INDIA                          Low birthweight              NA                0.1816612    0.1456737   0.2176487
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1729001    0.1615961   0.1842042
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2147351    0.1192371   0.3102331
12-15 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1518539    0.1430955   0.1606124
12-15 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.1379550    0.1189999   0.1569100
15-18 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1499682    0.1364637   0.1634727
15-18 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1640506    0.0969732   0.2311279
15-18 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1403474    0.1268097   0.1538851
15-18 months   COHORTS          GUATEMALA                      Low birthweight              NA                0.1422309    0.1029653   0.1814966
15-18 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.0918472    0.0731010   0.1105934
15-18 months   EE               PAKISTAN                       Low birthweight              NA                0.0832791    0.0624264   0.1041319
15-18 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.2450410    0.2262234   0.2638585
15-18 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.2110303    0.1858007   0.2362598
15-18 months   IRC              INDIA                          Normal or high birthweight   NA                0.1591133    0.1444305   0.1737961
15-18 months   IRC              INDIA                          Low birthweight              NA                0.1659797    0.1283497   0.2036098
15-18 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.1604745    0.1470758   0.1738733
15-18 months   Keneba           GAMBIA                         Low birthweight              NA                0.1553361    0.1267273   0.1839449
15-18 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.1418051    0.1236031   0.1600071
15-18 months   MAL-ED           BANGLADESH                     Low birthweight              NA                0.1464015    0.1158767   0.1769264
15-18 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                0.2033143    0.1759439   0.2306847
15-18 months   MAL-ED           BRAZIL                         Low birthweight              NA                0.2059451    0.0974859   0.3144042
15-18 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.1633034    0.1474976   0.1791093
15-18 months   MAL-ED           INDIA                          Low birthweight              NA                0.1626019    0.1149382   0.2102657
15-18 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.1747220    0.1584790   0.1909651
15-18 months   MAL-ED           NEPAL                          Low birthweight              NA                0.1375664    0.0923912   0.1827417
15-18 months   MAL-ED           PERU                           Normal or high birthweight   NA                0.1493941    0.1292824   0.1695058
15-18 months   MAL-ED           PERU                           Low birthweight              NA                0.1061089    0.0704987   0.1417191
15-18 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.2160267    0.1876151   0.2444384
15-18 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.3521632    0.1889046   0.5154218
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1490420    0.1203521   0.1777320
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1222320    0.0070208   0.2374433
15-18 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1573733    0.1385690   0.1761775
15-18 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1444163    0.1200252   0.1688074
15-18 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.1629228    0.1502866   0.1755590
15-18 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.1557232    0.1377138   0.1737326
15-18 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.1596059    0.1461603   0.1730515
15-18 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.1452701    0.1210503   0.1694900
15-18 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.1704268    0.1546569   0.1861966
15-18 months   SAS-CompFeed     INDIA                          Low birthweight              NA                0.2021952    0.1722785   0.2321119
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1670353    0.1525271   0.1815436
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2030436    0.1427186   0.2633686
15-18 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1319401    0.1203459   0.1435342
15-18 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.1412824    0.1149007   0.1676642
18-21 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1403571    0.1258760   0.1548381
18-21 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1063329    0.0371127   0.1755532
18-21 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1628089    0.1499205   0.1756972
18-21 months   COHORTS          GUATEMALA                      Low birthweight              NA                0.1387325    0.1023898   0.1750753
18-21 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.1394119    0.1207631   0.1580607
18-21 months   EE               PAKISTAN                       Low birthweight              NA                0.1065580    0.0772952   0.1358209
18-21 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1480854    0.1291085   0.1670622
18-21 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.1286679    0.1021237   0.1552121
18-21 months   IRC              INDIA                          Normal or high birthweight   NA                0.1597526    0.1443649   0.1751403
18-21 months   IRC              INDIA                          Low birthweight              NA                0.1561758    0.1296418   0.1827098
18-21 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.1559631    0.1424040   0.1695223
18-21 months   Keneba           GAMBIA                         Low birthweight              NA                0.1484178    0.1128851   0.1839505
18-21 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.1442864    0.1243428   0.1642300
18-21 months   MAL-ED           BANGLADESH                     Low birthweight              NA                0.1331730    0.1026599   0.1636862
18-21 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                0.1636181    0.1389944   0.1882418
18-21 months   MAL-ED           BRAZIL                         Low birthweight              NA                0.0927869   -0.0159952   0.2015690
18-21 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.1753387    0.1585247   0.1921527
18-21 months   MAL-ED           INDIA                          Low birthweight              NA                0.1742898    0.1394543   0.2091254
18-21 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.1450206    0.1261847   0.1638565
18-21 months   MAL-ED           NEPAL                          Low birthweight              NA                0.1486375    0.0894077   0.2078673
18-21 months   MAL-ED           PERU                           Normal or high birthweight   NA                0.1638800    0.1439359   0.1838241
18-21 months   MAL-ED           PERU                           Low birthweight              NA                0.1087713    0.0569644   0.1605782
18-21 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.1815052    0.1547033   0.2083071
18-21 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.0747012   -0.0538160   0.2032185
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1500533    0.1192859   0.1808207
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.1318538    0.0553950   0.2083127
18-21 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1775493    0.1567763   0.1983224
18-21 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1642140    0.1381017   0.1903262
18-21 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.1445214    0.1324723   0.1565704
18-21 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.1370386    0.1139177   0.1601595
18-21 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.1344954    0.1210193   0.1479715
18-21 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.1261268    0.1048895   0.1473641
18-21 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1170918    0.0979736   0.1362100
18-21 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.1392679    0.1019473   0.1765885
21-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.1510015    0.1360695   0.1659334
21-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.1286810    0.0831952   0.1741668
21-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.1921665    0.1800880   0.2042450
21-24 months   COHORTS          GUATEMALA                      Low birthweight              NA                0.1553004    0.1194570   0.1911438
21-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.2092056    0.1809093   0.2375019
21-24 months   EE               PAKISTAN                       Low birthweight              NA                0.1650426    0.1310764   0.1990088
21-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.1623655    0.1338632   0.1908678
21-24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.2196219    0.1729290   0.2663148
21-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.1795947    0.1639915   0.1951980
21-24 months   IRC              INDIA                          Low birthweight              NA                0.1731087    0.1425885   0.2036288
21-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.1745129    0.1605891   0.1884368
21-24 months   Keneba           GAMBIA                         Low birthweight              NA                0.1443690    0.1119978   0.1767402
21-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.1512635    0.1337102   0.1688169
21-24 months   MAL-ED           BANGLADESH                     Low birthweight              NA                0.1579250    0.1274841   0.1883658
21-24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                0.1424216    0.1181183   0.1667249
21-24 months   MAL-ED           BRAZIL                         Low birthweight              NA                0.1644582    0.0993632   0.2295532
21-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.1582382    0.1433682   0.1731082
21-24 months   MAL-ED           INDIA                          Low birthweight              NA                0.1501443    0.1228739   0.1774147
21-24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.1681549    0.1485425   0.1877673
21-24 months   MAL-ED           NEPAL                          Low birthweight              NA                0.1383605    0.0758031   0.2009180
21-24 months   MAL-ED           PERU                           Normal or high birthweight   NA                0.1788218    0.1583636   0.1992801
21-24 months   MAL-ED           PERU                           Low birthweight              NA                0.2384798    0.1587807   0.3181788
21-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.1884571    0.1641883   0.2127258
21-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.1774448    0.0589935   0.2958962
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.1421298    0.1123071   0.1719524
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.2583732    0.1393378   0.3774086
21-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.1385078    0.1199202   0.1570953
21-24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.1481715    0.1192523   0.1770907
21-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.1740884    0.1596245   0.1885523
21-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.1779744    0.1526659   0.2032829
21-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.1493449    0.1359941   0.1626956
21-24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.1192895    0.0977339   0.1408451
21-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.1068464    0.0747132   0.1389797
21-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.1189403    0.0613305   0.1765501


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                0.7467559   0.7230662   0.7704455
0-3 months     COHORTS          GUATEMALA                      NA                   NA                0.7980090   0.7812054   0.8148126
0-3 months     COHORTS          INDIA                          NA                   NA                0.8098118   0.8052049   0.8144186
0-3 months     EE               PAKISTAN                       NA                   NA                0.6927615   0.6697463   0.7157767
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                0.8270122   0.8100415   0.8439828
0-3 months     IRC              INDIA                          NA                   NA                0.7679906   0.7485485   0.7874326
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
0-3 months     CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.0187980   -0.0892752    0.0516791
0-3 months     COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0067688   -0.0678376    0.0543000
0-3 months     COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.0532651   -0.0649593   -0.0415709
0-3 months     EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0516136    0.0029394    0.1002879
0-3 months     GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0083726   -0.0452257    0.0284804
0-3 months     IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0312561   -0.0809483    0.0184362
0-3 months     Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0291164   -0.0678713    0.0096384
0-3 months     MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0259976   -0.0812598    0.0292647
0-3 months     MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.1093927   -0.0068741    0.2256596
0-3 months     MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0408374   -0.0199187    0.1015934
0-3 months     MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.0498048   -0.1400577    0.0404481
0-3 months     MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0454762   -0.1226738    0.0317214
0-3 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.1308655    0.0399511    0.2217799
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0180021   -0.1275876    0.1635918
0-3 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0011605   -0.0409572    0.0386362
0-3 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0045886   -0.0375328    0.0283557
0-3 months     PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0363779   -0.0685885   -0.0041673
0-3 months     ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0936850   -0.3442616    0.1568916
0-3 months     SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.0085030   -0.0223617    0.0053557
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0454338   -0.0090762    0.0999438
0-3 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0198542   -0.0359443   -0.0037640
3-6 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0428169   -0.0147854    0.1004191
3-6 months     COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0270451   -0.0654727    0.0113825
3-6 months     COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.0096402   -0.0196709    0.0003906
3-6 months     EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0070716   -0.0456040    0.0314608
3-6 months     GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0106369   -0.0394198    0.0181461
3-6 months     IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0026060   -0.0465152    0.0413031
3-6 months     Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0356066    0.0045767    0.0666366
3-6 months     MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0073119   -0.0318289    0.0464527
3-6 months     MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.0327150   -0.1462992    0.0808693
3-6 months     MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0509822    0.0045541    0.0974104
3-6 months     MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.0794588   -0.0098422    0.1687598
3-6 months     MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0369841   -0.1116001    0.0376319
3-6 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0139142   -0.1519883    0.1798168
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0171531   -0.1165294    0.0822232
3-6 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0164483   -0.0580473    0.0251506
3-6 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0039128   -0.0307324    0.0229069
3-6 months     PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0138005   -0.0220974    0.0496983
3-6 months     SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     0.0173036   -0.0063587    0.0409660
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0447899    0.0012031    0.0883768
3-6 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0418862    0.0276934    0.0560790
6-9 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.0009251   -0.0465797    0.0447295
6-9 months     COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0122861   -0.0250625    0.0496347
6-9 months     COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.0144232   -0.0245710   -0.0042754
6-9 months     EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0048545   -0.0269291    0.0366382
6-9 months     GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0308866    0.0001287    0.0616444
6-9 months     IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0017697   -0.0365954    0.0330559
6-9 months     Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0101320   -0.0541589    0.0338950
6-9 months     MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0175054   -0.0528157    0.0178049
6-9 months     MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0461669   -0.1090321    0.2013658
6-9 months     MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.0300874   -0.0772903    0.0171156
6-9 months     MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.0011366   -0.0717550    0.0740283
6-9 months     MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0454128   -0.1042158    0.0133903
6-9 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0514269   -0.1535564    0.0507025
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0186789   -0.0583172    0.0956751
6-9 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0120755   -0.0404182    0.0162672
6-9 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0083912   -0.0306782    0.0138958
6-9 months     PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0162404   -0.0525931    0.0201123
6-9 months     SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.0004561   -0.0245229    0.0236107
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0067873   -0.0615087    0.0750834
6-9 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0021043   -0.0107076    0.0149161
9-12 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.0088686   -0.0556233    0.0378861
9-12 months    COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0148757   -0.0185820    0.0483334
9-12 months    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.0078074   -0.0186401    0.0030253
9-12 months    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0244467   -0.0608443    0.0119508
9-12 months    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0034560   -0.0273745    0.0342864
9-12 months    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0009928   -0.0380041    0.0360185
9-12 months    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0150418   -0.0236935    0.0537771
9-12 months    MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0035401   -0.0364064    0.0293263
9-12 months    MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0352852   -0.1050263    0.1755967
9-12 months    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0345227   -0.0026388    0.0716842
9-12 months    MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.0093912   -0.0230559    0.0418384
9-12 months    MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0351503   -0.0886490    0.0183484
9-12 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0035576   -0.0673999    0.0745152
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0048911   -0.1282362    0.1380184
9-12 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0106991   -0.0156315    0.0370296
9-12 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     0.0012711   -0.0214274    0.0239697
9-12 months    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0099330   -0.0323796    0.0125135
9-12 months    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.0221355   -0.0403789   -0.0038922
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0043313   -0.0724762    0.0811387
9-12 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0098160   -0.0028792    0.0225112
12-15 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0160449   -0.0277789    0.0598686
12-15 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0028194   -0.0399924    0.0456311
12-15 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0068432   -0.0303324    0.0440188
12-15 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0110773   -0.0165669    0.0387216
12-15 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0255969   -0.0638351    0.0126413
12-15 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0205996   -0.0127725    0.0539718
12-15 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0122298   -0.0262206    0.0506801
12-15 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0269173   -0.0769689    0.1308036
12-15 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.0172359   -0.0585209    0.0240491
12-15 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.0089438   -0.0191749    0.0370624
12-15 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight     0.0236322   -0.0246452    0.0719096
12-15 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0180257   -0.1107010    0.0746495
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0084567   -0.1282842    0.1451977
12-15 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0048010   -0.0319934    0.0223915
12-15 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0345800   -0.0582414   -0.0109186
12-15 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0100680   -0.0180106    0.0381466
12-15 months   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.0036153   -0.0437801    0.0365495
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0418350   -0.0543297    0.1379997
12-15 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0138990   -0.0347797    0.0069817
15-18 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0140823   -0.0543410    0.0825056
15-18 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0018835   -0.0396503    0.0434174
15-18 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0085680   -0.0366083    0.0194722
15-18 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0340107   -0.0654850   -0.0025364
15-18 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0068664   -0.0335267    0.0472595
15-18 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0051384   -0.0367294    0.0264525
15-18 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0045964   -0.0309434    0.0401362
15-18 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0026308   -0.1092286    0.1144902
15-18 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.0007015   -0.0509176    0.0495146
15-18 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.0371556   -0.0851622    0.0108511
15-18 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0432852   -0.0841822   -0.0023881
15-18 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.1361365   -0.0295760    0.3018489
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0268100   -0.1455397    0.0919197
15-18 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0129570   -0.0437552    0.0178412
15-18 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0071996   -0.0291999    0.0148007
15-18 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0143358   -0.0420375    0.0133660
15-18 months   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     0.0317684   -0.0037389    0.0672758
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0360083   -0.0260368    0.0980534
15-18 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0093424   -0.0194746    0.0381594
18-21 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.0340241   -0.1047429    0.0366946
18-21 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0240763   -0.0626368    0.0144841
18-21 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0328539   -0.0675540    0.0018461
18-21 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0194175   -0.0520475    0.0132125
18-21 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0035768   -0.0342498    0.0270962
18-21 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0075454   -0.0455772    0.0304865
18-21 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0111134   -0.0475661    0.0253393
18-21 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.0708312   -0.1823654    0.0407030
18-21 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.0010489   -0.0397300    0.0376322
18-21 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.0036169   -0.0585358    0.0657697
18-21 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0551087   -0.1106220    0.0004046
18-21 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.1068039   -0.2380861    0.0244783
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0181995   -0.1006166    0.0642177
18-21 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0133354   -0.0467025    0.0200318
18-21 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0074828   -0.0335549    0.0185893
18-21 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0083685   -0.0335207    0.0167836
18-21 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0221761   -0.0197563    0.0641086
21-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.0223205   -0.0701945    0.0255535
21-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0368661   -0.0746899    0.0009577
21-24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0441630   -0.0883714    0.0000455
21-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0572564    0.0025517    0.1119611
21-24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0064861   -0.0407635    0.0277913
21-24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0301439   -0.0653827    0.0050948
21-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0066614   -0.0284778    0.0418006
21-24 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0220366   -0.0474473    0.0915205
21-24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.0080939   -0.0391550    0.0229672
21-24 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.0297944   -0.0953541    0.0357654
21-24 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight     0.0596579   -0.0226250    0.1419408
21-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0110122   -0.1319241    0.1098997
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1162434   -0.0064709    0.2389578
21-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0096637   -0.0247138    0.0440413
21-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     0.0038860   -0.0252641    0.0330360
21-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0300554   -0.0554106   -0.0047002
21-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0120938   -0.0538716    0.0780593


### Parameter: PAR


agecat         studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0023285   -0.0110838    0.0064269
0-3 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0005683   -0.0056973    0.0045607
0-3 months     COHORTS          INDIA                          Normal or high birthweight   NA                -0.0108416   -0.0132769   -0.0084063
0-3 months     EE               PAKISTAN                       Normal or high birthweight   NA                 0.0192540    0.0008904    0.0376175
0-3 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0025332   -0.0136882    0.0086219
0-3 months     IRC              INDIA                          Normal or high birthweight   NA                -0.0050771   -0.0132290    0.0030748
0-3 months     Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0042894   -0.0100273    0.0014485
0-3 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0054339   -0.0170608    0.0061930
0-3 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0050180   -0.0011233    0.0111594
0-3 months     MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0060898   -0.0031658    0.0153454
0-3 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0041504   -0.0118817    0.0035809
0-3 months     MAL-ED           PERU                           Normal or high birthweight   NA                -0.0027710   -0.0076455    0.0021036
0-3 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0082093    0.0013644    0.0150541
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0009627   -0.0068446    0.0087699
0-3 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0003446   -0.0121604    0.0114713
0-3 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0010949   -0.0089574    0.0067675
0-3 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0088103   -0.0167043   -0.0009162
0-3 months     ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.0146383   -0.0555811    0.0263045
0-3 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0020367   -0.0054439    0.0013705
0-3 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0015302   -0.0003402    0.0034006
0-3 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0025486   -0.0046190   -0.0004782
3-6 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0054544   -0.0020520    0.0129607
3-6 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0024119   -0.0058874    0.0010635
3-6 months     COHORTS          INDIA                          Normal or high birthweight   NA                -0.0019127   -0.0039053    0.0000798
3-6 months     EE               PAKISTAN                       Normal or high birthweight   NA                -0.0025551   -0.0164832    0.0113731
3-6 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0031525   -0.0116944    0.0053894
3-6 months     IRC              INDIA                          Normal or high birthweight   NA                -0.0004233   -0.0075564    0.0067098
3-6 months     Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0051295    0.0005892    0.0096698
3-6 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0015578   -0.0067899    0.0099055
3-6 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0015728   -0.0071162    0.0039705
3-6 months     MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0073488    0.0002522    0.0144453
3-6 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0066802   -0.0013613    0.0147216
3-6 months     MAL-ED           PERU                           Normal or high birthweight   NA                -0.0022415   -0.0068877    0.0024048
3-6 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0007475   -0.0081735    0.0096684
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0008577   -0.0058566    0.0041413
3-6 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0047648   -0.0168329    0.0073033
3-6 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0009420   -0.0073997    0.0055158
3-6 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0033066   -0.0053074    0.0119206
3-6 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0039979   -0.0011888    0.0091847
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0014948   -0.0000108    0.0030005
3-6 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0053068    0.0034751    0.0071386
6-9 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0001138   -0.0057307    0.0055031
6-9 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0011701   -0.0023974    0.0047376
6-9 months     COHORTS          INDIA                          Normal or high birthweight   NA                -0.0028260   -0.0048202   -0.0008319
6-9 months     EE               PAKISTAN                       Normal or high birthweight   NA                 0.0016020   -0.0088898    0.0120938
6-9 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0087598   -0.0000529    0.0175726
6-9 months     IRC              INDIA                          Normal or high birthweight   NA                -0.0003023   -0.0062506    0.0056460
6-9 months     Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0013462   -0.0072027    0.0045103
6-9 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0035484   -0.0107658    0.0036690
6-9 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0023317   -0.0056328    0.0102961
6-9 months     MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0044724   -0.0116296    0.0026847
6-9 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0000917   -0.0057920    0.0059755
6-9 months     MAL-ED           PERU                           Normal or high birthweight   NA                -0.0028148   -0.0067130    0.0010834
6-9 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0026831   -0.0082137    0.0028474
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0008739   -0.0027768    0.0045245
6-9 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0035975   -0.0120557    0.0048607
6-9 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0019253   -0.0070455    0.0031950
6-9 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0038909   -0.0126188    0.0048370
6-9 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0001042   -0.0056051    0.0053966
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0001878   -0.0017025    0.0020781
6-9 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0002728   -0.0013884    0.0019341
9-12 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0010286   -0.0064606    0.0044033
9-12 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0013204   -0.0016655    0.0043064
9-12 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.0014898   -0.0035586    0.0005791
9-12 months    EE               PAKISTAN                       Normal or high birthweight   NA                -0.0080735   -0.0201589    0.0040119
9-12 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0010223   -0.0080987    0.0101433
9-12 months    IRC              INDIA                          Normal or high birthweight   NA                -0.0001701   -0.0065096    0.0061695
9-12 months    Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0018835   -0.0029842    0.0067513
9-12 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0007461   -0.0076757    0.0061835
9-12 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0018188   -0.0054970    0.0091347
9-12 months    MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0050676   -0.0006244    0.0107595
9-12 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0007580   -0.0018825    0.0033986
9-12 months    MAL-ED           PERU                           Normal or high birthweight   NA                -0.0021211   -0.0055252    0.0012829
9-12 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0002147   -0.0040686    0.0044980
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0002315   -0.0060723    0.0065354
9-12 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0032442   -0.0047524    0.0112409
9-12 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0002959   -0.0049884    0.0055802
9-12 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0023742   -0.0077505    0.0030022
9-12 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0051037   -0.0091487   -0.0010587
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0001211   -0.0020268    0.0022690
9-12 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0013600   -0.0004014    0.0031214
12-15 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0019195   -0.0033537    0.0071927
12-15 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0002390   -0.0033908    0.0038688
12-15 months   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0023272   -0.0103205    0.0149748
12-15 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0034386   -0.0051558    0.0120331
12-15 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0043767   -0.0109853    0.0022320
12-15 months   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0027963   -0.0017577    0.0073503
12-15 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0026789   -0.0057714    0.0111292
12-15 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0014629   -0.0042519    0.0071777
12-15 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0025417   -0.0086841    0.0036007
12-15 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0007187   -0.0015633    0.0030007
12-15 months   MAL-ED           PERU                           Normal or high birthweight   NA                 0.0013839   -0.0015363    0.0043040
12-15 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0009529   -0.0058802    0.0039744
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0004003   -0.0060783    0.0068790
12-15 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0014349   -0.0095646    0.0066948
12-15 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0080998   -0.0137528   -0.0024468
12-15 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0022498   -0.0040347    0.0085344
12-15 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0008389   -0.0101146    0.0084368
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0012242   -0.0016327    0.0040811
12-15 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0021938   -0.0054976    0.0011101
15-18 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0017271   -0.0066799    0.0101340
15-18 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0001739   -0.0036603    0.0040080
15-18 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0029076   -0.0124351    0.0066199
15-18 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0102674   -0.0198720   -0.0006627
15-18 months   IRC              INDIA                          Normal or high birthweight   NA                 0.0011292   -0.0055187    0.0077771
15-18 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0006750   -0.0048267    0.0034767
15-18 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0010287   -0.0069297    0.0089871
15-18 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0001052   -0.0043698    0.0045803
15-18 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0001067   -0.0077433    0.0075300
15-18 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0030400   -0.0071929    0.0011129
15-18 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0028585   -0.0059241    0.0002071
15-18 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0066853   -0.0023219    0.0156925
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0012920   -0.0070806    0.0044966
15-18 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0038991   -0.0131840    0.0053858
15-18 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0017255   -0.0070040    0.0035530
15-18 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0032545   -0.0095639    0.0030550
15-18 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0074637   -0.0007290    0.0156564
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0009850   -0.0007707    0.0027407
15-18 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0016794   -0.0035049    0.0068637
18-21 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0042671   -0.0132267    0.0046926
18-21 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0021580   -0.0056602    0.0013442
18-21 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0097918   -0.0202976    0.0007140
18-21 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0056906   -0.0152884    0.0039072
18-21 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0006009   -0.0057557    0.0045539
18-21 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0010119   -0.0061150    0.0040912
18-21 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0024160   -0.0103651    0.0055332
18-21 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0029690   -0.0081186    0.0021807
18-21 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0001595   -0.0060421    0.0057231
18-21 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0002959   -0.0047910    0.0053828
18-21 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0033065   -0.0071013    0.0004883
18-21 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0059847   -0.0139940    0.0020246
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0009157   -0.0051086    0.0032772
18-21 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0040629   -0.0142463    0.0061206
18-21 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0018604   -0.0083484    0.0046275
18-21 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0020072   -0.0080475    0.0040331
18-21 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0042594   -0.0038224    0.0123413
21-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0026519   -0.0083980    0.0030941
21-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0031897   -0.0065658    0.0001863
21-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0158320   -0.0321898    0.0005258
21-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0147326    0.0004081    0.0290572
21-24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0011148   -0.0070113    0.0047817
21-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0042787   -0.0093348    0.0007773
21-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0014623   -0.0062605    0.0091850
21-24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0010684   -0.0023775    0.0045144
21-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0012309   -0.0059703    0.0035086
21-24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0024377   -0.0079096    0.0030342
21-24 months   MAL-ED           PERU                           Normal or high birthweight   NA                 0.0031903   -0.0016141    0.0079946
21-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0006118   -0.0073369    0.0061133
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0059232   -0.0015058    0.0133523
21-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0029284   -0.0074982    0.0133550
21-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0009616   -0.0062535    0.0081768
21-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0073744   -0.0137014   -0.0010475
21-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0027322   -0.0121813    0.0176456
