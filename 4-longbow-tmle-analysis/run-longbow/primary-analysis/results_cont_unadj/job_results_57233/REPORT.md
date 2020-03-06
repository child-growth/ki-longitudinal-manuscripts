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

**Outcome Variable:** y_rate_len

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
0-3 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight        77      88
0-3 months     CMC-V-BCS-2002   INDIA                          Low birthweight                   11      88
0-3 months     CMIN             BANGLADESH                     Normal or high birthweight         8      11
0-3 months     CMIN             BANGLADESH                     Low birthweight                    3      11
0-3 months     COHORTS          GUATEMALA                      Normal or high birthweight       631     683
0-3 months     COHORTS          GUATEMALA                      Low birthweight                   52     683
0-3 months     COHORTS          INDIA                          Normal or high birthweight      5126    6463
0-3 months     COHORTS          INDIA                          Low birthweight                 1337    6463
0-3 months     CONTENT          PERU                           Normal or high birthweight         2       2
0-3 months     CONTENT          PERU                           Low birthweight                    0       2
0-3 months     EE               PAKISTAN                       Normal or high birthweight       191     302
0-3 months     EE               PAKISTAN                       Low birthweight                  111     302
0-3 months     GMS-Nepal        NEPAL                          Normal or high birthweight       354     509
0-3 months     GMS-Nepal        NEPAL                          Low birthweight                  155     509
0-3 months     IRC              INDIA                          Normal or high birthweight       311     373
0-3 months     IRC              INDIA                          Low birthweight                   62     373
0-3 months     Keneba           GAMBIA                         Normal or high birthweight      1058    1242
0-3 months     Keneba           GAMBIA                         Low birthweight                  184    1242
0-3 months     MAL-ED           BANGLADESH                     Normal or high birthweight       190     241
0-3 months     MAL-ED           BANGLADESH                     Low birthweight                   51     241
0-3 months     MAL-ED           BRAZIL                         Normal or high birthweight       161     168
0-3 months     MAL-ED           BRAZIL                         Low birthweight                    7     168
0-3 months     MAL-ED           INDIA                          Normal or high birthweight       152     176
0-3 months     MAL-ED           INDIA                          Low birthweight                   24     176
0-3 months     MAL-ED           NEPAL                          Normal or high birthweight       138     152
0-3 months     MAL-ED           NEPAL                          Low birthweight                   14     152
0-3 months     MAL-ED           PERU                           Normal or high birthweight       248     264
0-3 months     MAL-ED           PERU                           Low birthweight                   16     264
0-3 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight       201     210
0-3 months     MAL-ED           SOUTH AFRICA                   Low birthweight                    9     210
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       168     178
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                   10     178
0-3 months     NIH-Birth        BANGLADESH                     Normal or high birthweight       386     550
0-3 months     NIH-Birth        BANGLADESH                     Low birthweight                  164     550
0-3 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight       549     721
0-3 months     NIH-Crypto       BANGLADESH                     Low birthweight                  172     721
0-3 months     PROBIT           BELARUS                        Normal or high birthweight     15323   15323
0-3 months     PROBIT           BELARUS                        Low birthweight                    0   15323
0-3 months     PROVIDE          BANGLADESH                     Normal or high birthweight       485     640
0-3 months     PROVIDE          BANGLADESH                     Low birthweight                  155     640
0-3 months     ResPak           PAKISTAN                       Normal or high birthweight        27      32
0-3 months     ResPak           PAKISTAN                       Low birthweight                    5      32
0-3 months     SAS-CompFeed     INDIA                          Normal or high birthweight       959    1261
0-3 months     SAS-CompFeed     INDIA                          Low birthweight                  302    1261
0-3 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight      6936    7951
0-3 months     ZVITAMBO         ZIMBABWE                       Low birthweight                 1015    7951
3-6 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight       262     300
3-6 months     CMC-V-BCS-2002   INDIA                          Low birthweight                   38     300
3-6 months     CMIN             BANGLADESH                     Normal or high birthweight         7       9
3-6 months     CMIN             BANGLADESH                     Low birthweight                    2       9
3-6 months     COHORTS          GUATEMALA                      Normal or high birthweight       623     680
3-6 months     COHORTS          GUATEMALA                      Low birthweight                   57     680
3-6 months     COHORTS          INDIA                          Normal or high birthweight      4767    5975
3-6 months     COHORTS          INDIA                          Low birthweight                 1208    5975
3-6 months     CONTENT          PERU                           Normal or high birthweight         2       2
3-6 months     CONTENT          PERU                           Low birthweight                    0       2
3-6 months     EE               PAKISTAN                       Normal or high birthweight       178     279
3-6 months     EE               PAKISTAN                       Low birthweight                  101     279
3-6 months     GMS-Nepal        NEPAL                          Normal or high birthweight       330     469
3-6 months     GMS-Nepal        NEPAL                          Low birthweight                  139     469
3-6 months     IRC              INDIA                          Normal or high birthweight       329     392
3-6 months     IRC              INDIA                          Low birthweight                   63     392
3-6 months     Keneba           GAMBIA                         Normal or high birthweight       813     950
3-6 months     Keneba           GAMBIA                         Low birthweight                  137     950
3-6 months     MAL-ED           BANGLADESH                     Normal or high birthweight       179     228
3-6 months     MAL-ED           BANGLADESH                     Low birthweight                   49     228
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
3-6 months     NIH-Birth        BANGLADESH                     Normal or high birthweight       359     505
3-6 months     NIH-Birth        BANGLADESH                     Low birthweight                  146     505
3-6 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight       527     695
3-6 months     NIH-Crypto       BANGLADESH                     Low birthweight                  168     695
3-6 months     PROBIT           BELARUS                        Normal or high birthweight     13308   13308
3-6 months     PROBIT           BELARUS                        Low birthweight                    0   13308
3-6 months     PROVIDE          BANGLADESH                     Normal or high birthweight       457     598
3-6 months     PROVIDE          BANGLADESH                     Low birthweight                  141     598
3-6 months     ResPak           PAKISTAN                       Normal or high birthweight        22      23
3-6 months     ResPak           PAKISTAN                       Low birthweight                    1      23
3-6 months     SAS-CompFeed     INDIA                          Normal or high birthweight       854    1115
3-6 months     SAS-CompFeed     INDIA                          Low birthweight                  261    1115
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1591    1646
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   55    1646
3-6 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight      5389    6157
3-6 months     ZVITAMBO         ZIMBABWE                       Low birthweight                  768    6157
6-9 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight       267     306
6-9 months     CMC-V-BCS-2002   INDIA                          Low birthweight                   39     306
6-9 months     CMIN             BANGLADESH                     Normal or high birthweight         6       8
6-9 months     CMIN             BANGLADESH                     Low birthweight                    2       8
6-9 months     COHORTS          GUATEMALA                      Normal or high birthweight       609     671
6-9 months     COHORTS          GUATEMALA                      Low birthweight                   62     671
6-9 months     COHORTS          INDIA                          Normal or high birthweight      4327    5388
6-9 months     COHORTS          INDIA                          Low birthweight                 1061    5388
6-9 months     CONTENT          PERU                           Normal or high birthweight         2       2
6-9 months     CONTENT          PERU                           Low birthweight                    0       2
6-9 months     EE               PAKISTAN                       Normal or high birthweight       202     303
6-9 months     EE               PAKISTAN                       Low birthweight                  101     303
6-9 months     GMS-Nepal        NEPAL                          Normal or high birthweight       343     480
6-9 months     GMS-Nepal        NEPAL                          Low birthweight                  137     480
6-9 months     IRC              INDIA                          Normal or high birthweight       335     401
6-9 months     IRC              INDIA                          Low birthweight                   66     401
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
6-9 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight       529     688
6-9 months     NIH-Crypto       BANGLADESH                     Low birthweight                  159     688
6-9 months     PROBIT           BELARUS                        Normal or high birthweight     12426   12426
6-9 months     PROBIT           BELARUS                        Low birthweight                    0   12426
6-9 months     PROVIDE          BANGLADESH                     Normal or high birthweight       433     565
6-9 months     PROVIDE          BANGLADESH                     Low birthweight                  132     565
6-9 months     ResPak           PAKISTAN                       Normal or high birthweight        20      20
6-9 months     ResPak           PAKISTAN                       Low birthweight                    0      20
6-9 months     SAS-CompFeed     INDIA                          Normal or high birthweight       873    1135
6-9 months     SAS-CompFeed     INDIA                          Low birthweight                  262    1135
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1433    1474
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   41    1474
6-9 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight      5192    5910
6-9 months     ZVITAMBO         ZIMBABWE                       Low birthweight                  718    5910
9-12 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight       272     309
9-12 months    CMC-V-BCS-2002   INDIA                          Low birthweight                   37     309
9-12 months    CMIN             BANGLADESH                     Normal or high birthweight         5       7
9-12 months    CMIN             BANGLADESH                     Low birthweight                    2       7
9-12 months    COHORTS          GUATEMALA                      Normal or high birthweight       656     720
9-12 months    COHORTS          GUATEMALA                      Low birthweight                   64     720
9-12 months    COHORTS          INDIA                          Normal or high birthweight      3737    4624
9-12 months    COHORTS          INDIA                          Low birthweight                  887    4624
9-12 months    CONTENT          PERU                           Normal or high birthweight         2       2
9-12 months    CONTENT          PERU                           Low birthweight                    0       2
9-12 months    EE               PAKISTAN                       Normal or high birthweight       217     325
9-12 months    EE               PAKISTAN                       Low birthweight                  108     325
9-12 months    GMS-Nepal        NEPAL                          Normal or high birthweight       330     468
9-12 months    GMS-Nepal        NEPAL                          Low birthweight                  138     468
9-12 months    IRC              INDIA                          Normal or high birthweight       329     394
9-12 months    IRC              INDIA                          Low birthweight                   65     394
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
9-12 months    NIH-Birth        BANGLADESH                     Normal or high birthweight       324     466
9-12 months    NIH-Birth        BANGLADESH                     Low birthweight                  142     466
9-12 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight       515     674
9-12 months    NIH-Crypto       BANGLADESH                     Low birthweight                  159     674
9-12 months    PROBIT           BELARUS                        Normal or high birthweight     12681   12681
9-12 months    PROBIT           BELARUS                        Low birthweight                    0   12681
9-12 months    PROVIDE          BANGLADESH                     Normal or high birthweight       430     566
9-12 months    PROVIDE          BANGLADESH                     Low birthweight                  136     566
9-12 months    ResPak           PAKISTAN                       Normal or high birthweight        19      21
9-12 months    ResPak           PAKISTAN                       Low birthweight                    2      21
9-12 months    SAS-CompFeed     INDIA                          Normal or high birthweight       872    1138
9-12 months    SAS-CompFeed     INDIA                          Low birthweight                  266    1138
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1041    1071
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   30    1071
9-12 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight      5197    5914
9-12 months    ZVITAMBO         ZIMBABWE                       Low birthweight                  717    5914
12-15 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight       282     321
12-15 months   CMC-V-BCS-2002   INDIA                          Low birthweight                   39     321
12-15 months   CMIN             BANGLADESH                     Normal or high birthweight         6       7
12-15 months   CMIN             BANGLADESH                     Low birthweight                    1       7
12-15 months   COHORTS          GUATEMALA                      Normal or high birthweight       579     634
12-15 months   COHORTS          GUATEMALA                      Low birthweight                   55     634
12-15 months   CONTENT          PERU                           Normal or high birthweight         2       2
12-15 months   CONTENT          PERU                           Low birthweight                    0       2
12-15 months   EE               PAKISTAN                       Normal or high birthweight       195     296
12-15 months   EE               PAKISTAN                       Low birthweight                  101     296
12-15 months   GMS-Nepal        NEPAL                          Normal or high birthweight       324     468
12-15 months   GMS-Nepal        NEPAL                          Low birthweight                  144     468
12-15 months   IRC              INDIA                          Normal or high birthweight       320     384
12-15 months   IRC              INDIA                          Low birthweight                   64     384
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
12-15 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight       504     660
12-15 months   NIH-Crypto       BANGLADESH                     Low birthweight                  156     660
12-15 months   PROBIT           BELARUS                        Normal or high birthweight      1001    1001
12-15 months   PROBIT           BELARUS                        Low birthweight                    0    1001
12-15 months   PROVIDE          BANGLADESH                     Normal or high birthweight       412     532
12-15 months   PROVIDE          BANGLADESH                     Low birthweight                  120     532
12-15 months   ResPak           PAKISTAN                       Normal or high birthweight        12      14
12-15 months   ResPak           PAKISTAN                       Low birthweight                    2      14
12-15 months   SAS-CompFeed     INDIA                          Normal or high birthweight       887    1159
12-15 months   SAS-CompFeed     INDIA                          Low birthweight                  272    1159
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       763     786
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   23     786
12-15 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight      2205    2538
12-15 months   ZVITAMBO         ZIMBABWE                       Low birthweight                  333    2538
15-18 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight       275     314
15-18 months   CMC-V-BCS-2002   INDIA                          Low birthweight                   39     314
15-18 months   CMIN             BANGLADESH                     Normal or high birthweight         5       6
15-18 months   CMIN             BANGLADESH                     Low birthweight                    1       6
15-18 months   COHORTS          GUATEMALA                      Normal or high birthweight       525     580
15-18 months   COHORTS          GUATEMALA                      Low birthweight                   55     580
15-18 months   CONTENT          PERU                           Normal or high birthweight         2       2
15-18 months   CONTENT          PERU                           Low birthweight                    0       2
15-18 months   EE               PAKISTAN                       Normal or high birthweight       184     278
15-18 months   EE               PAKISTAN                       Low birthweight                   94     278
15-18 months   GMS-Nepal        NEPAL                          Normal or high birthweight       336     480
15-18 months   GMS-Nepal        NEPAL                          Low birthweight                  144     480
15-18 months   IRC              INDIA                          Normal or high birthweight       315     376
15-18 months   IRC              INDIA                          Low birthweight                   61     376
15-18 months   Keneba           GAMBIA                         Normal or high birthweight       766     881
15-18 months   Keneba           GAMBIA                         Low birthweight                  115     881
15-18 months   MAL-ED           BANGLADESH                     Normal or high birthweight       163     210
15-18 months   MAL-ED           BANGLADESH                     Low birthweight                   47     210
15-18 months   MAL-ED           BRAZIL                         Normal or high birthweight       168     175
15-18 months   MAL-ED           BRAZIL                         Low birthweight                    7     175
15-18 months   MAL-ED           INDIA                          Normal or high birthweight       184     217
15-18 months   MAL-ED           INDIA                          Low birthweight                   33     217
15-18 months   MAL-ED           NEPAL                          Normal or high birthweight       202     220
15-18 months   MAL-ED           NEPAL                          Low birthweight                   18     220
15-18 months   MAL-ED           PERU                           Normal or high birthweight       197     211
15-18 months   MAL-ED           PERU                           Low birthweight                   14     211
15-18 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight       213     224
15-18 months   MAL-ED           SOUTH AFRICA                   Low birthweight                   11     224
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       155     163
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     163
15-18 months   NIH-Birth        BANGLADESH                     Normal or high birthweight       302     432
15-18 months   NIH-Birth        BANGLADESH                     Low birthweight                  130     432
15-18 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight       459     604
15-18 months   NIH-Crypto       BANGLADESH                     Low birthweight                  145     604
15-18 months   PROBIT           BELARUS                        Normal or high birthweight       275     275
15-18 months   PROBIT           BELARUS                        Low birthweight                    0     275
15-18 months   PROVIDE          BANGLADESH                     Normal or high birthweight       407     528
15-18 months   PROVIDE          BANGLADESH                     Low birthweight                  121     528
15-18 months   SAS-CompFeed     INDIA                          Normal or high birthweight       888    1162
15-18 months   SAS-CompFeed     INDIA                          Low birthweight                  274    1162
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       640     658
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   18     658
15-18 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight      1763    2031
15-18 months   ZVITAMBO         ZIMBABWE                       Low birthweight                  268    2031
18-21 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight       260     298
18-21 months   CMC-V-BCS-2002   INDIA                          Low birthweight                   38     298
18-21 months   CMIN             BANGLADESH                     Normal or high birthweight         6       7
18-21 months   CMIN             BANGLADESH                     Low birthweight                    1       7
18-21 months   COHORTS          GUATEMALA                      Normal or high birthweight       507     558
18-21 months   COHORTS          GUATEMALA                      Low birthweight                   51     558
18-21 months   CONTENT          PERU                           Normal or high birthweight         2       2
18-21 months   CONTENT          PERU                           Low birthweight                    0       2
18-21 months   EE               PAKISTAN                       Normal or high birthweight       179     254
18-21 months   EE               PAKISTAN                       Low birthweight                   75     254
18-21 months   GMS-Nepal        NEPAL                          Normal or high birthweight       315     445
18-21 months   GMS-Nepal        NEPAL                          Low birthweight                  130     445
18-21 months   IRC              INDIA                          Normal or high birthweight       312     374
18-21 months   IRC              INDIA                          Low birthweight                   62     374
18-21 months   Keneba           GAMBIA                         Normal or high birthweight       748     864
18-21 months   Keneba           GAMBIA                         Low birthweight                  116     864
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
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       147     155
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     155
18-21 months   NIH-Birth        BANGLADESH                     Normal or high birthweight       283     407
18-21 months   NIH-Birth        BANGLADESH                     Low birthweight                  124     407
18-21 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight       411     546
18-21 months   NIH-Crypto       BANGLADESH                     Low birthweight                  135     546
18-21 months   PROBIT           BELARUS                        Normal or high birthweight       218     218
18-21 months   PROBIT           BELARUS                        Low birthweight                    0     218
18-21 months   PROVIDE          BANGLADESH                     Normal or high birthweight       411     541
18-21 months   PROVIDE          BANGLADESH                     Low birthweight                  130     541
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         9       9
18-21 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0       9
18-21 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight      1404    1591
18-21 months   ZVITAMBO         ZIMBABWE                       Low birthweight                  187    1591
21-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight       264     300
21-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight                   36     300
21-24 months   CMIN             BANGLADESH                     Normal or high birthweight         1       1
21-24 months   CMIN             BANGLADESH                     Low birthweight                    0       1
21-24 months   COHORTS          GUATEMALA                      Normal or high birthweight       538     590
21-24 months   COHORTS          GUATEMALA                      Low birthweight                   52     590
21-24 months   EE               PAKISTAN                       Normal or high birthweight        68     106
21-24 months   EE               PAKISTAN                       Low birthweight                   38     106
21-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight       252     341
21-24 months   GMS-Nepal        NEPAL                          Low birthweight                   89     341
21-24 months   IRC              INDIA                          Normal or high birthweight       318     384
21-24 months   IRC              INDIA                          Low birthweight                   66     384
21-24 months   Keneba           GAMBIA                         Normal or high birthweight       671     781
21-24 months   Keneba           GAMBIA                         Low birthweight                  110     781
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
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       147     155
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     155
21-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight       276     396
21-24 months   NIH-Birth        BANGLADESH                     Low birthweight                  120     396
21-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight       368     490
21-24 months   NIH-Crypto       BANGLADESH                     Low birthweight                  122     490
21-24 months   PROBIT           BELARUS                        Normal or high birthweight       209     209
21-24 months   PROBIT           BELARUS                        Low birthweight                    0     209
21-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight       355     471
21-24 months   PROVIDE          BANGLADESH                     Low birthweight                  116     471
21-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight      1024    1164
21-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight                  140    1164


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
![](/tmp/aceb2441-aacb-4498-9f3c-bf52f894a165/86a311f0-9304-4f12-bb7c-5001c2480927/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/aceb2441-aacb-4498-9f3c-bf52f894a165/86a311f0-9304-4f12-bb7c-5001c2480927/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/aceb2441-aacb-4498-9f3c-bf52f894a165/86a311f0-9304-4f12-bb7c-5001c2480927/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                3.4949549   3.2687783   3.7211315
0-3 months     CMC-V-BCS-2002   INDIA                          Low birthweight              NA                3.2168161   2.5399717   3.8936604
0-3 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                2.5787135   2.5327025   2.6247246
0-3 months     COHORTS          GUATEMALA                      Low birthweight              NA                2.7253263   2.5622957   2.8883569
0-3 months     COHORTS          INDIA                          Normal or high birthweight   NA                3.4916222   3.4761169   3.5071274
0-3 months     COHORTS          INDIA                          Low birthweight              NA                3.5750441   3.5420824   3.6080059
0-3 months     EE               PAKISTAN                       Normal or high birthweight   NA                3.0655401   2.9583746   3.1727055
0-3 months     EE               PAKISTAN                       Low birthweight              NA                3.0926217   2.9630297   3.2222137
0-3 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                3.5898507   3.5308731   3.6488283
0-3 months     GMS-Nepal        NEPAL                          Low birthweight              NA                3.6197918   3.5200034   3.7195801
0-3 months     IRC              INDIA                          Normal or high birthweight   NA                3.2368291   3.1160829   3.3575752
0-3 months     IRC              INDIA                          Low birthweight              NA                2.6872399   2.4446139   2.9298659
0-3 months     Keneba           GAMBIA                         Normal or high birthweight   NA                3.1068037   3.0568253   3.1567820
0-3 months     Keneba           GAMBIA                         Low birthweight              NA                3.1207328   2.9930489   3.2484168
0-3 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                3.3104793   3.2364770   3.3844815
0-3 months     MAL-ED           BANGLADESH                     Low birthweight              NA                3.4454301   3.3013804   3.5894798
0-3 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                3.7756828   3.6622452   3.8891203
0-3 months     MAL-ED           BRAZIL                         Low birthweight              NA                4.3281292   4.0899732   4.5662852
0-3 months     MAL-ED           INDIA                          Normal or high birthweight   NA                3.3403245   3.2319341   3.4487149
0-3 months     MAL-ED           INDIA                          Low birthweight              NA                3.4859122   3.2237837   3.7480407
0-3 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                3.5713879   3.4757041   3.6670717
0-3 months     MAL-ED           NEPAL                          Low birthweight              NA                3.9960420   3.7179006   4.2741835
0-3 months     MAL-ED           PERU                           Normal or high birthweight   NA                3.0403531   2.9718564   3.1088498
0-3 months     MAL-ED           PERU                           Low birthweight              NA                3.1971999   2.9241490   3.4702508
0-3 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                3.1783826   3.0796643   3.2771010
0-3 months     MAL-ED           SOUTH AFRICA                   Low birthweight              NA                3.2180963   2.6689922   3.7672004
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                3.2514494   3.1628897   3.3400090
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                3.3840511   3.1697333   3.5983689
0-3 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                3.0623400   2.9980953   3.1265847
0-3 months     NIH-Birth        BANGLADESH                     Low birthweight              NA                3.2037568   3.1047612   3.3027523
0-3 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                3.1303220   3.0884376   3.1722065
0-3 months     NIH-Crypto       BANGLADESH                     Low birthweight              NA                3.1258067   3.0523118   3.1993016
0-3 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                3.2413401   3.1983809   3.2842993
0-3 months     PROVIDE          BANGLADESH                     Low birthweight              NA                3.3088123   3.2367737   3.3808510
0-3 months     ResPak           PAKISTAN                       Normal or high birthweight   NA                2.6745628   2.1459187   3.2032070
0-3 months     ResPak           PAKISTAN                       Low birthweight              NA                2.9865176   2.3064198   3.6666155
0-3 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                3.3278108   3.2670523   3.3885693
0-3 months     SAS-CompFeed     INDIA                          Low birthweight              NA                3.4269781   3.3461840   3.5077722
0-3 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                3.3603301   3.3384921   3.3821681
0-3 months     ZVITAMBO         ZIMBABWE                       Low birthweight              NA                3.1860899   3.1259114   3.2462683
3-6 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                1.7588204   1.6488209   1.8688200
3-6 months     CMC-V-BCS-2002   INDIA                          Low birthweight              NA                2.1213047   1.8524531   2.3901564
3-6 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                1.7373642   1.7042344   1.7704939
3-6 months     COHORTS          GUATEMALA                      Low birthweight              NA                1.8544335   1.7485069   1.9603602
3-6 months     COHORTS          INDIA                          Normal or high birthweight   NA                1.8647952   1.8506129   1.8789776
3-6 months     COHORTS          INDIA                          Low birthweight              NA                1.9160419   1.8872648   1.9448190
3-6 months     EE               PAKISTAN                       Normal or high birthweight   NA                2.0600472   1.9859863   2.1341081
3-6 months     EE               PAKISTAN                       Low birthweight              NA                2.1516852   2.0588381   2.2445323
3-6 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                1.6708610   1.6253696   1.7163523
3-6 months     GMS-Nepal        NEPAL                          Low birthweight              NA                1.8014641   1.7265709   1.8763574
3-6 months     IRC              INDIA                          Normal or high birthweight   NA                1.8462737   1.7771109   1.9154365
3-6 months     IRC              INDIA                          Low birthweight              NA                2.0744127   1.9095742   2.2392513
3-6 months     Keneba           GAMBIA                         Normal or high birthweight   NA                1.9277568   1.8784845   1.9770291
3-6 months     Keneba           GAMBIA                         Low birthweight              NA                2.0737785   1.9639371   2.1836198
3-6 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                1.9088972   1.8528820   1.9649124
3-6 months     MAL-ED           BANGLADESH                     Low birthweight              NA                1.9993609   1.8833766   2.1153452
3-6 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                2.1309406   2.0489857   2.2128955
3-6 months     MAL-ED           BRAZIL                         Low birthweight              NA                2.4458721   2.2334944   2.6582498
3-6 months     MAL-ED           INDIA                          Normal or high birthweight   NA                1.8810212   1.8079720   1.9540704
3-6 months     MAL-ED           INDIA                          Low birthweight              NA                1.8929882   1.7655551   2.0204213
3-6 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                1.9441532   1.8866212   2.0016851
3-6 months     MAL-ED           NEPAL                          Low birthweight              NA                2.2197119   2.0137296   2.4256942
3-6 months     MAL-ED           PERU                           Normal or high birthweight   NA                2.0004817   1.9318157   2.0691478
3-6 months     MAL-ED           PERU                           Low birthweight              NA                2.1577139   1.9323739   2.3830538
3-6 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                1.9661934   1.8833587   2.0490282
3-6 months     MAL-ED           SOUTH AFRICA                   Low birthweight              NA                1.9838544   1.6229099   2.3447988
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.8100282   1.7314328   1.8886236
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                2.1341755   1.8031232   2.4652279
3-6 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                1.8298838   1.7733492   1.8864183
3-6 months     NIH-Birth        BANGLADESH                     Low birthweight              NA                1.8250807   1.7284337   1.9217276
3-6 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                1.9877577   1.9466999   2.0288155
3-6 months     NIH-Crypto       BANGLADESH                     Low birthweight              NA                2.0623856   1.9848275   2.1399438
3-6 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                1.9406669   1.9031504   1.9781834
3-6 months     PROVIDE          BANGLADESH                     Low birthweight              NA                2.0470297   1.9720307   2.1220286
3-6 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                1.9253278   1.8761054   1.9745502
3-6 months     SAS-CompFeed     INDIA                          Low birthweight              NA                2.0170066   1.9491694   2.0848439
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.7890814   1.7523922   1.8257705
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                1.9877718   1.8023582   2.1731855
3-6 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                1.9502631   1.9293295   1.9711968
3-6 months     ZVITAMBO         ZIMBABWE                       Low birthweight              NA                2.1543068   2.0982068   2.2104068
6-9 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                1.2229216   1.1388255   1.3070177
6-9 months     CMC-V-BCS-2002   INDIA                          Low birthweight              NA                1.2123317   0.9889553   1.4357080
6-9 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                1.1066935   1.0758890   1.1374979
6-9 months     COHORTS          GUATEMALA                      Low birthweight              NA                1.0961750   0.9970502   1.1952999
6-9 months     COHORTS          INDIA                          Normal or high birthweight   NA                1.1862650   1.1732843   1.1992456
6-9 months     COHORTS          INDIA                          Low birthweight              NA                1.2305483   1.2041195   1.2569771
6-9 months     EE               PAKISTAN                       Normal or high birthweight   NA                1.1544914   1.0976658   1.2113171
6-9 months     EE               PAKISTAN                       Low birthweight              NA                1.2182938   1.1356539   1.3009337
6-9 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                1.3007152   1.2623869   1.3390434
6-9 months     GMS-Nepal        NEPAL                          Low birthweight              NA                1.3611258   1.2558186   1.4664329
6-9 months     IRC              INDIA                          Normal or high birthweight   NA                1.3655170   1.3102120   1.4208219
6-9 months     IRC              INDIA                          Low birthweight              NA                1.4108291   1.3093346   1.5123235
6-9 months     Keneba           GAMBIA                         Normal or high birthweight   NA                1.4362001   1.3660530   1.5063472
6-9 months     Keneba           GAMBIA                         Low birthweight              NA                1.3238350   1.2121291   1.4355410
6-9 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                1.2479325   1.2049367   1.2909282
6-9 months     MAL-ED           BANGLADESH                     Low birthweight              NA                1.2354436   1.1359075   1.3349797
6-9 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                1.4827110   1.3995162   1.5659058
6-9 months     MAL-ED           BRAZIL                         Low birthweight              NA                1.4907286   1.1881642   1.7932930
6-9 months     MAL-ED           INDIA                          Normal or high birthweight   NA                1.2235053   1.1641651   1.2828454
6-9 months     MAL-ED           INDIA                          Low birthweight              NA                1.3415977   1.2398678   1.4433276
6-9 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                1.3592312   1.3132123   1.4052501
6-9 months     MAL-ED           NEPAL                          Low birthweight              NA                1.3268743   1.1303733   1.5233754
6-9 months     MAL-ED           PERU                           Normal or high birthweight   NA                1.3267934   1.2709730   1.3826138
6-9 months     MAL-ED           PERU                           Low birthweight              NA                1.1303064   0.9151491   1.3454636
6-9 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                1.3589667   1.2952196   1.4227139
6-9 months     MAL-ED           SOUTH AFRICA                   Low birthweight              NA                1.7034546   1.3216524   2.0852567
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.1588626   1.0609577   1.2567675
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                1.3143037   1.0895312   1.5390762
6-9 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                1.2532748   1.2040789   1.3024707
6-9 months     NIH-Birth        BANGLADESH                     Low birthweight              NA                1.2371188   1.1614302   1.3128073
6-9 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                1.3426440   1.3095163   1.3757718
6-9 months     NIH-Crypto       BANGLADESH                     Low birthweight              NA                1.2804448   1.2171343   1.3437552
6-9 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                1.2851566   1.2560692   1.3142439
6-9 months     PROVIDE          BANGLADESH                     Low birthweight              NA                1.2734368   1.2228362   1.3240374
6-9 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                1.2153064   1.1832273   1.2473854
6-9 months     SAS-CompFeed     INDIA                          Low birthweight              NA                1.2130045   1.1537058   1.2723033
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.3228609   1.2860239   1.3596980
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                1.3159482   1.0393206   1.5925758
6-9 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                1.3358592   1.3154581   1.3562602
6-9 months     ZVITAMBO         ZIMBABWE                       Low birthweight              NA                1.4224206   1.3690508   1.4757905
9-12 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.8969275   0.8223532   0.9715019
9-12 months    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.9453016   0.7647086   1.1258947
9-12 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.9373577   0.9090026   0.9657128
9-12 months    COHORTS          GUATEMALA                      Low birthweight              NA                0.9921917   0.9084136   1.0759697
9-12 months    COHORTS          INDIA                          Normal or high birthweight   NA                1.0098680   0.9959404   1.0237957
9-12 months    COHORTS          INDIA                          Low birthweight              NA                0.9522153   0.9234077   0.9810228
9-12 months    EE               PAKISTAN                       Normal or high birthweight   NA                0.9242821   0.8822877   0.9662765
9-12 months    EE               PAKISTAN                       Low birthweight              NA                0.8952876   0.8307232   0.9598520
9-12 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                1.0124794   0.9813942   1.0435646
9-12 months    GMS-Nepal        NEPAL                          Low birthweight              NA                0.9634233   0.8821156   1.0447311
9-12 months    IRC              INDIA                          Normal or high birthweight   NA                1.1172234   1.0753005   1.1591462
9-12 months    IRC              INDIA                          Low birthweight              NA                1.1580620   1.0422443   1.2738797
9-12 months    Keneba           GAMBIA                         Normal or high birthweight   NA                0.9632050   0.9055461   1.0208640
9-12 months    Keneba           GAMBIA                         Low birthweight              NA                0.9751188   0.8960209   1.0542167
9-12 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.9847233   0.9412890   1.0281576
9-12 months    MAL-ED           BANGLADESH                     Low birthweight              NA                1.0134650   0.9275753   1.0993547
9-12 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                1.2858280   1.2087502   1.3629058
9-12 months    MAL-ED           BRAZIL                         Low birthweight              NA                1.5269303   1.3302540   1.7236065
9-12 months    MAL-ED           INDIA                          Normal or high birthweight   NA                0.9792053   0.9347494   1.0236611
9-12 months    MAL-ED           INDIA                          Low birthweight              NA                1.0201955   0.9637964   1.0765946
9-12 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                1.0889432   1.0471807   1.1307057
9-12 months    MAL-ED           NEPAL                          Low birthweight              NA                1.1508184   0.9880734   1.3135635
9-12 months    MAL-ED           PERU                           Normal or high birthweight   NA                1.1121395   1.0588553   1.1654237
9-12 months    MAL-ED           PERU                           Low birthweight              NA                0.9200784   0.7641294   1.0760275
9-12 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                1.0138221   0.9471272   1.0805169
9-12 months    MAL-ED           SOUTH AFRICA                   Low birthweight              NA                1.0277721   0.7356189   1.3199253
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.8357490   0.7349738   0.9365243
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.9614607   0.8095239   1.1133974
9-12 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                1.0848468   1.0432359   1.1264578
9-12 months    NIH-Birth        BANGLADESH                     Low birthweight              NA                1.0959532   1.0273827   1.1645236
9-12 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                1.1118968   1.0829563   1.1408373
9-12 months    NIH-Crypto       BANGLADESH                     Low birthweight              NA                1.1609746   1.1014122   1.2205370
9-12 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                1.0436814   1.0121667   1.0751962
9-12 months    PROVIDE          BANGLADESH                     Low birthweight              NA                1.0698737   1.0184183   1.1213290
9-12 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.9903005   0.9629563   1.0176448
9-12 months    SAS-CompFeed     INDIA                          Low birthweight              NA                1.0389804   0.9767002   1.1012606
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.0855374   1.0509717   1.1201031
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                1.1608791   0.9108064   1.4109518
9-12 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                1.0738318   1.0546846   1.0929790
9-12 months    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                1.1326214   1.0822455   1.1829974
12-15 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.8348315   0.7595472   0.9101158
12-15 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                1.0103166   0.8055819   1.2150513
12-15 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7659361   0.7321093   0.7997629
12-15 months   COHORTS          GUATEMALA                      Low birthweight              NA                0.7834631   0.6836167   0.8833094
12-15 months   EE               PAKISTAN                       Normal or high birthweight   NA                1.0050081   0.9658090   1.0442071
12-15 months   EE               PAKISTAN                       Low birthweight              NA                1.0165471   0.9577881   1.0753061
12-15 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.8724785   0.8423557   0.9026013
12-15 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.8978971   0.8326842   0.9631099
12-15 months   IRC              INDIA                          Normal or high birthweight   NA                0.9686279   0.9219413   1.0153146
12-15 months   IRC              INDIA                          Low birthweight              NA                0.8849007   0.7887728   0.9810286
12-15 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.9493558   0.9123307   0.9863810
12-15 months   Keneba           GAMBIA                         Low birthweight              NA                0.9177406   0.8286356   1.0068456
12-15 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.9175868   0.8720113   0.9631622
12-15 months   MAL-ED           BANGLADESH                     Low birthweight              NA                0.9052417   0.8163357   0.9941478
12-15 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                1.1575167   1.0968853   1.2181482
12-15 months   MAL-ED           BRAZIL                         Low birthweight              NA                0.8752728   0.6810139   1.0695317
12-15 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.9199292   0.8779734   0.9618850
12-15 months   MAL-ED           INDIA                          Low birthweight              NA                0.8567396   0.7314902   0.9819891
12-15 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.9582112   0.9158914   1.0005309
12-15 months   MAL-ED           NEPAL                          Low birthweight              NA                0.9509601   0.8399443   1.0619760
12-15 months   MAL-ED           PERU                           Normal or high birthweight   NA                0.8894553   0.8419628   0.9369479
12-15 months   MAL-ED           PERU                           Low birthweight              NA                0.8718769   0.6573012   1.0864526
12-15 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.9170985   0.8570080   0.9771890
12-15 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.9203845   0.7396693   1.1010997
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.8854245   0.8123206   0.9585284
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.5731887   0.1836907   0.9626867
12-15 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7130529   0.6722536   0.7538521
12-15 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.7507909   0.6318083   0.8697736
12-15 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.9764760   0.9483665   1.0045854
12-15 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.9538985   0.9035106   1.0042864
12-15 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.9758385   0.9460897   1.0055872
12-15 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.9045132   0.8507342   0.9582921
12-15 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.8434981   0.7878055   0.8991907
12-15 months   SAS-CompFeed     INDIA                          Low birthweight              NA                0.7890805   0.7143773   0.8637837
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.9208515   0.8850107   0.9566923
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                1.2251083   0.8454217   1.6047950
12-15 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.9250196   0.8963477   0.9536914
12-15 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.8880736   0.8094433   0.9667038
15-18 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.7363459   0.6737386   0.7989531
15-18 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.7215085   0.4562034   0.9868136
15-18 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7446090   0.7085149   0.7807031
15-18 months   COHORTS          GUATEMALA                      Low birthweight              NA                0.7384549   0.5997593   0.8771506
15-18 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.8471123   0.8077172   0.8865074
15-18 months   EE               PAKISTAN                       Low birthweight              NA                0.8191386   0.7633321   0.8749450
15-18 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.7292399   0.6903859   0.7680939
15-18 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.8149467   0.7438540   0.8860395
15-18 months   IRC              INDIA                          Normal or high birthweight   NA                0.8644033   0.8219808   0.9068259
15-18 months   IRC              INDIA                          Low birthweight              NA                0.8603717   0.7501939   0.9705495
15-18 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.8869314   0.8450464   0.9288164
15-18 months   Keneba           GAMBIA                         Low birthweight              NA                0.8916079   0.8172084   0.9660073
15-18 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.8255389   0.7865145   0.8645633
15-18 months   MAL-ED           BANGLADESH                     Low birthweight              NA                0.8082290   0.7145348   0.9019232
15-18 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                0.9998146   0.9395542   1.0600750
15-18 months   MAL-ED           BRAZIL                         Low birthweight              NA                1.0572335   0.7564092   1.3580579
15-18 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.8369860   0.7973413   0.8766307
15-18 months   MAL-ED           INDIA                          Low birthweight              NA                0.8741229   0.7666477   0.9815981
15-18 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.8426871   0.7973907   0.8879835
15-18 months   MAL-ED           NEPAL                          Low birthweight              NA                0.8089216   0.7061936   0.9116495
15-18 months   MAL-ED           PERU                           Normal or high birthweight   NA                0.8487492   0.8047034   0.8927951
15-18 months   MAL-ED           PERU                           Low birthweight              NA                0.9400084   0.7859886   1.0940283
15-18 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.8856417   0.8306264   0.9406569
15-18 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.9205286   0.7627951   1.0782621
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.6698128   0.5976435   0.7419822
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.9717881   0.7417462   1.2018299
15-18 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7648805   0.7175127   0.8122483
15-18 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.8008420   0.7219862   0.8796977
15-18 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.9164038   0.8895613   0.9432463
15-18 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.9218730   0.8780624   0.9656836
15-18 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.8544866   0.8274305   0.8815427
15-18 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.8615261   0.8089669   0.9140854
15-18 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.9180606   0.8841650   0.9519562
15-18 months   SAS-CompFeed     INDIA                          Low birthweight              NA                0.8771401   0.7934083   0.9608719
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.9347265   0.8919942   0.9774588
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                1.0435562   0.7522106   1.3349019
15-18 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.8051502   0.7729716   0.8373287
15-18 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.7636995   0.6810634   0.8463356
18-21 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6972545   0.6277991   0.7667099
18-21 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.7442763   0.5659000   0.9226526
18-21 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7463408   0.7135870   0.7790947
18-21 months   COHORTS          GUATEMALA                      Low birthweight              NA                0.7122436   0.5660955   0.8583918
18-21 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.7345131   0.7003259   0.7687003
18-21 months   EE               PAKISTAN                       Low birthweight              NA                0.6796425   0.5977487   0.7615363
18-21 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.9212016   0.8762740   0.9661293
18-21 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.8619616   0.8222047   0.9017185
18-21 months   IRC              INDIA                          Normal or high birthweight   NA                0.7628671   0.7203729   0.8053614
18-21 months   IRC              INDIA                          Low birthweight              NA                0.7395682   0.6459210   0.8332154
18-21 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.8430283   0.7975110   0.8885456
18-21 months   Keneba           GAMBIA                         Low birthweight              NA                0.7884577   0.7051883   0.8717272
18-21 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.8191307   0.7831461   0.8551153
18-21 months   MAL-ED           BANGLADESH                     Low birthweight              NA                0.7940016   0.7017990   0.8862042
18-21 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                0.9173515   0.8445898   0.9901132
18-21 months   MAL-ED           BRAZIL                         Low birthweight              NA                0.8869185   0.5913371   1.1824998
18-21 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.8824074   0.8440524   0.9207625
18-21 months   MAL-ED           INDIA                          Low birthweight              NA                0.8845097   0.7905202   0.9784993
18-21 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.8192069   0.7786233   0.8597904
18-21 months   MAL-ED           NEPAL                          Low birthweight              NA                0.8263511   0.7020670   0.9506352
18-21 months   MAL-ED           PERU                           Normal or high birthweight   NA                0.8492913   0.8035442   0.8950384
18-21 months   MAL-ED           PERU                           Low birthweight              NA                0.7517196   0.5380118   0.9654274
18-21 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.7812497   0.7241772   0.8383222
18-21 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.7782733   0.5224095   1.0341371
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.7458999   0.6679178   0.8238819
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.7248911   0.4350413   1.0147408
18-21 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7575910   0.7143999   0.8007821
18-21 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.6813334   0.6122792   0.7503876
18-21 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.7944419   0.7689135   0.8199703
18-21 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.8079247   0.7543824   0.8614670
18-21 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.8305564   0.8029875   0.8581254
18-21 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.8670999   0.8187321   0.9154678
18-21 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.6792001   0.6429427   0.7154575
18-21 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.6848000   0.5860930   0.7835070
21-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6948274   0.6331125   0.7565423
21-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.7898868   0.5390052   1.0407685
21-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.6853924   0.6567510   0.7140338
21-24 months   COHORTS          GUATEMALA                      Low birthweight              NA                0.6816609   0.5986441   0.7646776
21-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.6579035   0.6140258   0.7017813
21-24 months   EE               PAKISTAN                       Low birthweight              NA                0.6340185   0.5628628   0.7051742
21-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.7784866   0.7248300   0.8321432
21-24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.8541725   0.7700869   0.9382581
21-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.7110731   0.6662094   0.7559369
21-24 months   IRC              INDIA                          Low birthweight              NA                0.7049014   0.5991247   0.8106781
21-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.7234588   0.6804016   0.7665161
21-24 months   Keneba           GAMBIA                         Low birthweight              NA                0.6982559   0.6163768   0.7801350
21-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.7630133   0.7253267   0.8007000
21-24 months   MAL-ED           BANGLADESH                     Low birthweight              NA                0.8066703   0.7167182   0.8966223
21-24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                0.7949626   0.7495609   0.8403642
21-24 months   MAL-ED           BRAZIL                         Low birthweight              NA                0.8194924   0.6429312   0.9960536
21-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.8298458   0.7949101   0.8647815
21-24 months   MAL-ED           INDIA                          Low birthweight              NA                0.8343772   0.7576439   0.9111105
21-24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.7628295   0.7238663   0.8017928
21-24 months   MAL-ED           NEPAL                          Low birthweight              NA                0.8606364   0.7386247   0.9826481
21-24 months   MAL-ED           PERU                           Normal or high birthweight   NA                0.7669918   0.7176466   0.8163370
21-24 months   MAL-ED           PERU                           Low birthweight              NA                0.6384312   0.5231537   0.7537086
21-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.8402799   0.7877291   0.8928307
21-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.8264490   0.5660702   1.0868277
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.7433977   0.6686331   0.8181624
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.6960984   0.4384482   0.9537486
21-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7241634   0.6808018   0.7675251
21-24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.6852015   0.6211611   0.7492418
21-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.8044300   0.7758632   0.8329969
21-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.7839677   0.7362835   0.8316519
21-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.7701407   0.7413230   0.7989584
21-24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.7417117   0.6884848   0.7949385
21-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.6993970   0.6587454   0.7400486
21-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.6420092   0.5313198   0.7526985


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                3.4601875   3.2440906   3.6762845
0-3 months     COHORTS          GUATEMALA                      NA                   NA                2.5898758   2.5454966   2.6342550
0-3 months     COHORTS          INDIA                          NA                   NA                3.5088797   3.4947939   3.5229654
0-3 months     EE               PAKISTAN                       NA                   NA                3.0754939   2.9926408   3.1583470
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     IRC              INDIA                          NA                   NA                3.1454764   3.0350485   3.2559044
0-3 months     Keneba           GAMBIA                         NA                   NA                3.1088673   3.0622791   3.1554554
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                3.3390373   3.2728432   3.4052315
0-3 months     MAL-ED           BRAZIL                         NA                   NA                3.7987014   3.6882619   3.9091408
0-3 months     MAL-ED           INDIA                          NA                   NA                3.3601774   3.2597020   3.4606528
0-3 months     MAL-ED           NEPAL                          NA                   NA                3.6105008   3.5178376   3.7031640
0-3 months     MAL-ED           PERU                           NA                   NA                3.0498590   2.9832659   3.1164521
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                3.1800847   3.0827045   3.2774648
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.2588989   3.1743320   3.3434658
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                3.1045079   3.0503454   3.1586704
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                3.1292449   3.0928504   3.1656393
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                3.2576810   3.2206777   3.2946843
0-3 months     ResPak           PAKISTAN                       NA                   NA                2.7233058   2.2630483   3.1835633
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                3.3515606   3.2984055   3.4047158
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                3.3380871   3.3175065   3.3586677
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.8047351   1.7018994   1.9075708
3-6 months     COHORTS          GUATEMALA                      NA                   NA                1.7471774   1.7154586   1.7788961
3-6 months     COHORTS          INDIA                          NA                   NA                1.8751561   1.8624222   1.8878899
3-6 months     EE               PAKISTAN                       NA                   NA                2.0932208   2.0350047   2.1514369
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                1.7095685   1.6702436   1.7488934
3-6 months     IRC              INDIA                          NA                   NA                1.8829389   1.8185938   1.9472840
3-6 months     Keneba           GAMBIA                         NA                   NA                1.9488147   1.9036527   1.9939766
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                1.9283390   1.8775585   1.9791194
3-6 months     MAL-ED           BRAZIL                         NA                   NA                2.1460815   2.0668679   2.2252951
3-6 months     MAL-ED           INDIA                          NA                   NA                1.8827462   1.8175816   1.9479107
3-6 months     MAL-ED           NEPAL                          NA                   NA                1.9673196   1.9109592   2.0236800
3-6 months     MAL-ED           PERU                           NA                   NA                2.0100110   1.9439209   2.0761010
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.9671422   1.8863932   2.0478912
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8262356   1.7490601   1.9034111
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                1.8284951   1.7795462   1.8774440
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                1.9657457   1.9318660   1.9996254
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                1.9467880   1.9003915   1.9931846
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7957205   1.7596788   1.8317621
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.9757147   1.9560293   1.9954002
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                1.2215719   1.1428636   1.3002802
6-9 months     COHORTS          GUATEMALA                      NA                   NA                1.1057216   1.0763005   1.1351427
6-9 months     COHORTS          INDIA                          NA                   NA                1.1949852   1.1833243   1.2066461
6-9 months     EE               PAKISTAN                       NA                   NA                1.1757589   1.1287961   1.2227217
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                1.3179573   1.2772204   1.3586943
6-9 months     IRC              INDIA                          NA                   NA                1.3729748   1.3238177   1.4221319
6-9 months     Keneba           GAMBIA                         NA                   NA                1.4212704   1.3585809   1.4839600
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                1.2454009   1.2056182   1.2851837
6-9 months     MAL-ED           BRAZIL                         NA                   NA                1.4831159   1.4026580   1.5635738
6-9 months     MAL-ED           INDIA                          NA                   NA                1.2410596   1.1880355   1.2940836
6-9 months     MAL-ED           NEPAL                          NA                   NA                1.3566194   1.3114246   1.4018143
6-9 months     MAL-ED           PERU                           NA                   NA                1.3146145   1.2602523   1.3689766
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                1.3769400   1.3125507   1.4413293
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1661347   1.0720900   1.2601794
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                1.2484616   1.2072078   1.2897155
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                1.3282695   1.2988292   1.3577098
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                1.2824185   1.2571827   1.3076542
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                1.2147750   1.1953379   1.2342122
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.3226687   1.2860389   1.3592984
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                1.3463754   1.3273025   1.3654484
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.9027199   0.8335829   0.9718569
9-12 months    COHORTS          GUATEMALA                      NA                   NA                0.9422318   0.9153211   0.9691426
9-12 months    COHORTS          INDIA                          NA                   NA                0.9988088   0.9862524   1.0113652
9-12 months    EE               PAKISTAN                       NA                   NA                0.9146470   0.8793095   0.9499846
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                0.9980141   0.9654660   1.0305622
9-12 months    IRC              INDIA                          NA                   NA                1.1239607   1.0840510   1.1638704
9-12 months    Keneba           GAMBIA                         NA                   NA                0.9646969   0.9132937   1.0161001
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                0.9907809   0.9519842   1.0295777
9-12 months    MAL-ED           BRAZIL                         NA                   NA                1.2982559   1.2240694   1.3724425
9-12 months    MAL-ED           INDIA                          NA                   NA                0.9852222   0.9463510   1.0240933
9-12 months    MAL-ED           NEPAL                          NA                   NA                1.0939376   1.0533004   1.1345749
9-12 months    MAL-ED           PERU                           NA                   NA                1.1005496   1.0492639   1.1518354
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                1.0146639   0.9495597   1.0797680
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8416999   0.7453414   0.9380583
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                1.0882312   1.0525404   1.1239219
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                1.1234745   1.0972274   1.1497215
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                1.0499750   1.0230130   1.0769370
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                1.0016791   0.9726077   1.0307506
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0876478   1.0533198   1.1219759
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                1.0809593   1.0630526   1.0988660
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.8561521   0.7852129   0.9270913
12-15 months   COHORTS          GUATEMALA                      NA                   NA                0.7674566   0.7353706   0.7995425
12-15 months   EE               PAKISTAN                       NA                   NA                1.0089454   0.9762462   1.0416446
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                0.8802996   0.8513400   0.9092592
12-15 months   IRC              INDIA                          NA                   NA                0.9546734   0.9124823   0.9968645
12-15 months   Keneba           GAMBIA                         NA                   NA                0.9450642   0.9108478   0.9792806
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                0.9148826   0.8743049   0.9554603
12-15 months   MAL-ED           BRAZIL                         NA                   NA                1.1421774   1.0831447   1.2012100
12-15 months   MAL-ED           INDIA                          NA                   NA                0.9106109   0.8702442   0.9509776
12-15 months   MAL-ED           NEPAL                          NA                   NA                0.9576285   0.9176992   0.9975577
12-15 months   MAL-ED           PERU                           NA                   NA                0.8884260   0.8419793   0.9348727
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.9172722   0.8595621   0.9749824
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8706441   0.7979070   0.9433811
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7243319   0.6786653   0.7699985
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9711395   0.9465805   0.9956985
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                0.9597501   0.9335899   0.9859102
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                0.8307271   0.7924733   0.8689808
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9297547   0.8930560   0.9664534
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.9201721   0.8932058   0.9471383
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7345030   0.6705297   0.7984763
15-18 months   COHORTS          GUATEMALA                      NA                   NA                0.7440254   0.7088058   0.7792450
15-18 months   EE               PAKISTAN                       NA                   NA                0.8376536   0.8054297   0.8698774
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                0.7549520   0.7202105   0.7896934
15-18 months   IRC              INDIA                          NA                   NA                0.8637493   0.8239670   0.9035315
15-18 months   Keneba           GAMBIA                         NA                   NA                0.8875418   0.8498514   0.9252322
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                0.8216648   0.7848112   0.8585184
15-18 months   MAL-ED           BRAZIL                         NA                   NA                1.0021114   0.9429996   1.0612232
15-18 months   MAL-ED           INDIA                          NA                   NA                0.8426336   0.8052128   0.8800544
15-18 months   MAL-ED           NEPAL                          NA                   NA                0.8399245   0.7974756   0.8823733
15-18 months   MAL-ED           PERU                           NA                   NA                0.8548043   0.8123190   0.8972897
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8873549   0.8344616   0.9402481
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6846337   0.6143621   0.7549053
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7757022   0.7349342   0.8164703
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.9177168   0.8947657   0.9406678
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                0.8560998   0.8320145   0.8801852
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                0.9084115   0.8843011   0.9325219
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.9377036   0.8953613   0.9800459
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.7996806   0.7696890   0.8296721
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7032506   0.6384991   0.7680021
18-21 months   COHORTS          GUATEMALA                      NA                   NA                0.7432244   0.7105937   0.7758552
18-21 months   EE               PAKISTAN                       NA                   NA                0.7183112   0.6840373   0.7525850
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                0.9038955   0.8699458   0.9378453
18-21 months   IRC              INDIA                          NA                   NA                0.7590047   0.7202948   0.7977147
18-21 months   Keneba           GAMBIA                         NA                   NA                0.8357017   0.7947215   0.8766819
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                0.8136679   0.7790722   0.8482635
18-21 months   MAL-ED           BRAZIL                         NA                   NA                0.9160758   0.8452655   0.9868862
18-21 months   MAL-ED           INDIA                          NA                   NA                0.8827271   0.8472024   0.9182519
18-21 months   MAL-ED           NEPAL                          NA                   NA                0.8197914   0.7811649   0.8584179
18-21 months   MAL-ED           PERU                           NA                   NA                0.8434370   0.7984484   0.8884256
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.7810829   0.7253333   0.8368325
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7448156   0.6693569   0.8202742
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7343577   0.6975310   0.7711845
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7977755   0.7744353   0.8211158
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                0.8393377   0.8153485   0.8633269
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6798583   0.6458239   0.7138927
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7062345   0.6440405   0.7684285
21-24 months   COHORTS          GUATEMALA                      NA                   NA                0.6850635   0.6579407   0.7121863
21-24 months   EE               PAKISTAN                       NA                   NA                0.6493410   0.6112910   0.6873909
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.7982404   0.7527824   0.8436984
21-24 months   IRC              INDIA                          NA                   NA                0.7100124   0.6686492   0.7513756
21-24 months   Keneba           GAMBIA                         NA                   NA                0.7199091   0.6811555   0.7586627
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.7725966   0.7370830   0.8081102
21-24 months   MAL-ED           BRAZIL                         NA                   NA                0.7961519   0.7521041   0.8401997
21-24 months   MAL-ED           INDIA                          NA                   NA                0.8305349   0.7986957   0.8623740
21-24 months   MAL-ED           NEPAL                          NA                   NA                0.7708319   0.7335205   0.8081433
21-24 months   MAL-ED           PERU                           NA                   NA                0.7601169   0.7128224   0.8074114
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.8395115   0.7878135   0.8912095
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7409565   0.6687955   0.8131175
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.7123568   0.6763975   0.7483161
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.7993353   0.7748026   0.8238681
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.7631391   0.7377453   0.7885328
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.6924947   0.6543197   0.7306696


### Parameter: ATE


agecat         studyid          country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.2781388   -0.9917733    0.4354956
0-3 months     COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.1466128   -0.0227861    0.3160117
0-3 months     COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          Low birthweight              Normal or high birthweight     0.0834219    0.0469954    0.1198484
0-3 months     EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0270816   -0.1410806    0.1952438
0-3 months     GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0299410   -0.0859731    0.1458551
0-3 months     IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.5495891   -0.8206002   -0.2785780
0-3 months     Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0139292   -0.1231877    0.1510460
0-3 months     MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.1349508   -0.0269956    0.2968972
0-3 months     MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.5524465    0.2886542    0.8162387
0-3 months     MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.1455877   -0.1380667    0.4292420
0-3 months     MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.4246541    0.1305146    0.7187936
0-3 months     MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           Low birthweight              Normal or high birthweight     0.1568468   -0.1246645    0.4383580
0-3 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0397137   -0.5181937    0.5976210
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1326017   -0.0992925    0.3644959
0-3 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.1414168    0.0234020    0.2594317
0-3 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0045153   -0.0891073    0.0800767
0-3 months     PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0674722   -0.0164030    0.1513475
0-3 months     ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight     0.3119548   -0.5494381    1.1733477
0-3 months     SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     0.0991673    0.0085204    0.1898141
0-3 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.1742402   -0.2382585   -0.1102219
3-6 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.3624843    0.0720000    0.6529686
3-6 months     COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.1170694    0.0060827    0.2280560
3-6 months     COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          Low birthweight              Normal or high birthweight     0.0512467    0.0191646    0.0833288
3-6 months     EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0916379   -0.0271291    0.2104049
3-6 months     GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.1306032    0.0429763    0.2182300
3-6 months     IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          Low birthweight              Normal or high birthweight     0.2281390    0.0493788    0.4068993
3-6 months     Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.1460217    0.0256353    0.2664081
3-6 months     MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0904637   -0.0383387    0.2192661
3-6 months     MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.3149315    0.0872895    0.5425735
3-6 months     MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0119670   -0.1349186    0.1588526
3-6 months     MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.2755587    0.0616928    0.4894247
3-6 months     MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           Low birthweight              Normal or high birthweight     0.1572321   -0.0783377    0.3928019
3-6 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0176610   -0.3526666    0.3879885
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.3241473   -0.0161069    0.6644015
3-6 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0048031   -0.1167709    0.1071647
3-6 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     0.0746279   -0.0131275    0.1623833
3-6 months     PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.1063628    0.0225038    0.1902218
3-6 months     SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     0.0916789    0.0207631    0.1625947
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1986905    0.0096817    0.3876993
3-6 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.2040436    0.1441652    0.2639221
6-9 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.0105899   -0.2492720    0.2280922
6-9 months     COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0105184   -0.1143194    0.0932826
6-9 months     COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          Low birthweight              Normal or high birthweight     0.0442834    0.0148388    0.0737279
6-9 months     EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0638024   -0.0364897    0.1640945
6-9 months     GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0604106   -0.0516548    0.1724760
6-9 months     IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0453121   -0.0702723    0.1608965
6-9 months     Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.1123651   -0.2442697    0.0195396
6-9 months     MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0124889   -0.1209143    0.0959365
6-9 months     MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0080176   -0.3057763    0.3218114
6-9 months     MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.1180924    0.0003205    0.2358643
6-9 months     MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.0323569   -0.2341747    0.1694608
6-9 months     MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.1964870   -0.4187674    0.0257933
6-9 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.3444879   -0.0425994    0.7315751
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1554411   -0.0897283    0.4006105
6-9 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0161560   -0.1064278    0.0741158
6-9 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0621993   -0.1336532    0.0092546
6-9 months     PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0117198   -0.0700850    0.0466454
6-9 months     SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.0023019   -0.0854082    0.0808045
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0069127   -0.2859823    0.2721568
6-9 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0865615    0.0294253    0.1436976
9-12 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0483741   -0.1470106    0.2437588
9-12 months    COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0548340   -0.0336125    0.1432804
9-12 months    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.0576528   -0.0896505   -0.0256550
9-12 months    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0289945   -0.1060145    0.0480256
9-12 months    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0490560   -0.1361034    0.0379913
9-12 months    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0408387   -0.0823330    0.1640103
9-12 months    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0119138   -0.0859689    0.1097966
9-12 months    MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0287417   -0.0675058    0.1249892
9-12 months    MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.2411023    0.0298619    0.4523427
9-12 months    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0409902   -0.0308233    0.1128037
9-12 months    MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.0618752   -0.1061428    0.2298933
9-12 months    MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.1920611   -0.3568619   -0.0272602
9-12 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0139501   -0.2857192    0.3136193
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1257116   -0.0566080    0.3080312
9-12 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0111063   -0.0691021    0.0913147
9-12 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     0.0490778   -0.0171433    0.1152989
9-12 months    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0261922   -0.0341471    0.0865316
9-12 months    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     0.0486799   -0.0124975    0.1098573
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0753417   -0.1771085    0.3277920
9-12 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0587896    0.0048976    0.1126817
12-15 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.1754851   -0.0426525    0.3936227
12-15 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0175269   -0.0878939    0.1229478
12-15 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0115390   -0.0590952    0.0821731
12-15 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0254185   -0.0464153    0.0972524
12-15 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0837272   -0.1905926    0.0231381
12-15 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0316152   -0.1281065    0.0648760
12-15 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0123450   -0.1122521    0.0875620
12-15 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.2822439   -0.4857451   -0.0787428
12-15 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.0631895   -0.1952793    0.0689003
12-15 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.0072510   -0.1260596    0.1115575
12-15 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0175784   -0.2373471    0.2021902
12-15 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0032860   -0.1871578    0.1937298
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.3122358   -0.7085347    0.0840632
12-15 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0377381   -0.0880453    0.1635214
12-15 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0225774   -0.0802756    0.0351208
12-15 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0713253   -0.1327840   -0.0098666
12-15 months   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.0544176   -0.1675882    0.0587530
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.3042568   -0.0771177    0.6856313
12-15 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0369460   -0.1206406    0.0467486
15-18 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.0148374   -0.2874295    0.2577547
15-18 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0061540   -0.1494693    0.1371612
15-18 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0279737   -0.0962843    0.0403368
15-18 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0857068    0.0046895    0.1667242
15-18 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0040316   -0.1220944    0.1140311
15-18 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0046765   -0.0807028    0.0900558
15-18 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0173098   -0.1188062    0.0841865
15-18 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0574189   -0.2493817    0.3642195
15-18 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0371369   -0.0774171    0.1516909
15-18 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.0337655   -0.1460366    0.0785056
15-18 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight     0.0912592   -0.0689349    0.2514533
15-18 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0348869   -0.1321655    0.2019394
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.3019752    0.0608784    0.5430721
15-18 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0359615   -0.0560273    0.1279502
15-18 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     0.0054692   -0.0459106    0.0568491
15-18 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0070396   -0.0520748    0.0661539
15-18 months   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.0409205   -0.1447615    0.0629205
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1088298   -0.1856330    0.4032926
15-18 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0414506   -0.1301309    0.0472296
18-21 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0470218   -0.1443996    0.2384432
18-21 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0340972   -0.1838707    0.1156763
18-21 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0548706   -0.1436138    0.0338726
18-21 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0592400   -0.1192326    0.0007525
18-21 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0232989   -0.1261365    0.0795386
18-21 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0545706   -0.1494685    0.0403274
18-21 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0251291   -0.1241049    0.0738467
18-21 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.0304330   -0.3348383    0.2739723
18-21 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0021023   -0.0994120    0.1036166
18-21 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.0071442   -0.1235982    0.1378865
18-21 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0975717   -0.3161211    0.1209777
18-21 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0029764   -0.2651281    0.2591754
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0210088   -0.3211656    0.2791479
18-21 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0762576   -0.1577067    0.0051915
18-21 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     0.0134828   -0.0458339    0.0727995
18-21 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0365435   -0.0191296    0.0922166
18-21 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0055999   -0.0995555    0.1107554
21-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0950594   -0.1633014    0.3534203
21-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0037315   -0.0915502    0.0840871
21-24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0238850   -0.1074816    0.0597116
21-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0756859   -0.0240609    0.1754327
21-24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0061717   -0.1210694    0.1087259
21-24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0252029   -0.1177130    0.0673071
21-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0436569   -0.0538708    0.1411846
21-24 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0245298   -0.1577753    0.2068350
21-24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0045315   -0.0797805    0.0888434
21-24 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.0978068   -0.0302751    0.2258888
21-24 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.1285606   -0.2539554   -0.0031659
21-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0138309   -0.2794598    0.2517979
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0472993   -0.3155779    0.2209792
21-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0389619   -0.1163015    0.0383776
21-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0204623   -0.0760487    0.0351241
21-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0284290   -0.0889563    0.0320983
21-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0573878   -0.1753059    0.0605303


### Parameter: PAR


agecat         studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0347674   -0.1260418    0.0565071
0-3 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0111623   -0.0020609    0.0243855
0-3 months     COHORTS          INDIA                          Normal or high birthweight   NA                 0.0172575    0.0096770    0.0248379
0-3 months     EE               PAKISTAN                       Normal or high birthweight   NA                 0.0099538   -0.0518717    0.0717794
0-3 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0091176   -0.0262007    0.0444359
0-3 months     IRC              INDIA                          Normal or high birthweight   NA                -0.0913526   -0.1409666   -0.0417386
0-3 months     Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0020636   -0.0182519    0.0223791
0-3 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0285581   -0.0064151    0.0635312
0-3 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0230186    0.0029902    0.0430470
0-3 months     MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0198529   -0.0195292    0.0592349
0-3 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0391129    0.0056825    0.0725433
0-3 months     MAL-ED           PERU                           Normal or high birthweight   NA                 0.0095059   -0.0081448    0.0271565
0-3 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0017020   -0.0222332    0.0256372
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0074495   -0.0063330    0.0212320
0-3 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0421679    0.0065644    0.0777715
0-3 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0010772   -0.0212577    0.0191034
0-3 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0163409   -0.0040959    0.0367777
0-3 months     ResPak           PAKISTAN                       Normal or high birthweight   NA                 0.0487429   -0.0916316    0.1891175
0-3 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0237498    0.0027696    0.0447300
0-3 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0222430   -0.0305147   -0.0139712
3-6 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0459147    0.0066643    0.0851650
3-6 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0098132    0.0001952    0.0194312
3-6 months     COHORTS          INDIA                          Normal or high birthweight   NA                 0.0103608    0.0038536    0.0168680
3-6 months     EE               PAKISTAN                       Normal or high birthweight   NA                 0.0331736   -0.0101315    0.0764786
3-6 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0387075    0.0121810    0.0652341
3-6 months     IRC              INDIA                          Normal or high birthweight   NA                 0.0366652    0.0067596    0.0665709
3-6 months     Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0210579    0.0033928    0.0387230
3-6 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0194418   -0.0086584    0.0475419
3-6 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0151409    0.0008576    0.0294243
3-6 months     MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0017250   -0.0194550    0.0229049
3-6 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0231664    0.0025970    0.0437359
3-6 months     MAL-ED           PERU                           Normal or high birthweight   NA                 0.0095292   -0.0054504    0.0245089
3-6 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0009487   -0.0189513    0.0208487
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0162074   -0.0037060    0.0361207
3-6 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0013886   -0.0337601    0.0309828
3-6 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0180395   -0.0033060    0.0393851
3-6 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0250789    0.0049771    0.0451806
3-6 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0214603    0.0053800    0.0375405
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0066391    0.0000920    0.0131862
3-6 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0254516    0.0177951    0.0331081
6-9 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0013497   -0.0317725    0.0290732
6-9 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0009719   -0.0105658    0.0086220
6-9 months     COHORTS          INDIA                          Normal or high birthweight   NA                 0.0087202    0.0029030    0.0145375
6-9 months     EE               PAKISTAN                       Normal or high birthweight   NA                 0.0212675   -0.0123349    0.0548698
6-9 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0172422   -0.0148363    0.0493207
6-9 months     IRC              INDIA                          Normal or high birthweight   NA                 0.0074579   -0.0116371    0.0265528
6-9 months     Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0149296   -0.0327324    0.0028732
6-9 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0025315   -0.0245196    0.0194566
6-9 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0004049   -0.0154451    0.0162550
6-9 months     MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0175543   -0.0008076    0.0359162
6-9 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0026118   -0.0189432    0.0137197
6-9 months     MAL-ED           PERU                           Normal or high birthweight   NA                -0.0121789   -0.0271991    0.0028412
6-9 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0179733   -0.0045282    0.0404748
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0072721   -0.0052142    0.0197584
6-9 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0048131   -0.0317148    0.0220885
6-9 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0143745   -0.0310039    0.0022548
6-9 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0027381   -0.0163800    0.0109038
6-9 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0005314   -0.0197271    0.0186644
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0001923   -0.0079549    0.0075704
6-9 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0105163    0.0035375    0.0174950
9-12 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0057924   -0.0176689    0.0292536
9-12 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0048741   -0.0030701    0.0128183
9-12 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.0110593   -0.0172320   -0.0048865
9-12 months    EE               PAKISTAN                       Normal or high birthweight   NA                -0.0096351   -0.0352726    0.0160024
9-12 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0144652   -0.0402131    0.0112826
9-12 months    IRC              INDIA                          Normal or high birthweight   NA                 0.0067373   -0.0136380    0.0271127
9-12 months    Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0014919   -0.0107694    0.0137531
9-12 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0060577   -0.0142862    0.0264015
9-12 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0124280   -0.0008057    0.0256616
9-12 months    MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0060169   -0.0046998    0.0167336
9-12 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0049944   -0.0087476    0.0187364
9-12 months    MAL-ED           PERU                           Normal or high birthweight   NA                -0.0115899   -0.0231521   -0.0000277
9-12 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0008418   -0.0172468    0.0189304
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0059508   -0.0035771    0.0154788
9-12 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0033843   -0.0210613    0.0278299
9-12 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0115777   -0.0041233    0.0272787
9-12 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0062935   -0.0082343    0.0208214
9-12 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0113786   -0.0026062    0.0253634
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0021104   -0.0050001    0.0092210
9-12 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0071275    0.0005755    0.0136796
12-15 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0213206   -0.0059163    0.0485575
12-15 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0015205   -0.0076329    0.0106739
12-15 months   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0039373   -0.0201723    0.0280469
12-15 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0078211   -0.0143072    0.0299494
12-15 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0139545   -0.0320375    0.0041284
12-15 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0042917   -0.0174095    0.0088262
12-15 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0027041   -0.0245995    0.0191912
12-15 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0153393   -0.0297707   -0.0009080
12-15 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0093183   -0.0290248    0.0103882
12-15 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0005827   -0.0101333    0.0089680
12-15 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0010294   -0.0139102    0.0118515
12-15 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0001737   -0.0098943    0.0102417
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0147804   -0.0360514    0.0064906
12-15 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0112790   -0.0263490    0.0489070
12-15 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0053365   -0.0189939    0.0083209
12-15 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0160884   -0.0301812   -0.0019956
12-15 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0127710   -0.0386915    0.0131495
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0089032   -0.0028190    0.0206254
12-15 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0048475   -0.0158395    0.0061444
15-18 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0018429   -0.0357042    0.0320185
15-18 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0005836   -0.0141746    0.0130075
15-18 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0094587   -0.0326091    0.0136916
15-18 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0257120    0.0011537    0.0502704
15-18 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0006541   -0.0198085    0.0185003
15-18 months   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0006104   -0.0105349    0.0117558
15-18 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0038741   -0.0266110    0.0188628
15-18 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0022968   -0.0100886    0.0146821
15-18 months   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0056475   -0.0118637    0.0231587
15-18 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0027626   -0.0120299    0.0065046
15-18 months   MAL-ED           PERU                           Normal or high birthweight   NA                 0.0060551   -0.0050089    0.0171192
15-18 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0017132   -0.0065497    0.0099761
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0148209   -0.0007013    0.0303430
15-18 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0108217   -0.0169038    0.0385473
15-18 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0013130   -0.0110230    0.0136490
15-18 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0016132   -0.0119362    0.0151626
15-18 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0096491   -0.0340488    0.0147506
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0029771   -0.0051917    0.0111459
15-18 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0054696   -0.0171873    0.0062481
18-21 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0059961   -0.0184785    0.0304706
18-21 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0031164   -0.0168297    0.0105969
18-21 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0162019   -0.0425865    0.0101826
18-21 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0173061   -0.0350102    0.0003981
18-21 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0038624   -0.0209330    0.0132082
18-21 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0073266   -0.0201279    0.0054746
18-21 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0054629   -0.0270258    0.0161001
18-21 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0012756   -0.0140688    0.0115176
18-21 months   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0003197   -0.0151183    0.0157577
18-21 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0005845   -0.0101157    0.0112848
18-21 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0058543   -0.0193567    0.0076481
18-21 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0001668   -0.0148566    0.0145230
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0010843   -0.0165937    0.0144250
18-21 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0232333   -0.0482820    0.0018154
18-21 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0033337   -0.0113407    0.0180080
18-21 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0087812   -0.0046614    0.0222239
18-21 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0006582   -0.0117017    0.0130181
21-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0114071   -0.0197933    0.0426075
21-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0003289   -0.0080693    0.0074115
21-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0085625   -0.0386111    0.0214860
21-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0197538   -0.0065185    0.0460261
21-24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0010608   -0.0208102    0.0186886
21-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0035497   -0.0165938    0.0094944
21-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0095832   -0.0119684    0.0311349
21-24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0011893   -0.0076864    0.0100651
21-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0006891   -0.0121344    0.0135126
21-24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0080024   -0.0030622    0.0190669
21-24 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0068749   -0.0147643    0.0010145
21-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0007684   -0.0155311    0.0139944
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0024413   -0.0163862    0.0115037
21-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0118066   -0.0353093    0.0116960
21-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0050947   -0.0189568    0.0087674
21-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0070016   -0.0219496    0.0079464
21-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0069023   -0.0211254    0.0073208
