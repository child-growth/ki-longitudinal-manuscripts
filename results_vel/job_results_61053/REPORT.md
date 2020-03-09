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
0-3 months     JiVitA-3         BANGLADESH                     Normal or high birthweight     11093   19022
0-3 months     JiVitA-3         BANGLADESH                     Low birthweight                 7929   19022
0-3 months     JiVitA-4         BANGLADESH                     Normal or high birthweight      1197    1807
0-3 months     JiVitA-4         BANGLADESH                     Low birthweight                  610    1807
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
3-6 months     JiVitA-3         BANGLADESH                     Normal or high birthweight      6432   10752
3-6 months     JiVitA-3         BANGLADESH                     Low birthweight                 4320   10752
3-6 months     JiVitA-4         BANGLADESH                     Normal or high birthweight      1322    1758
3-6 months     JiVitA-4         BANGLADESH                     Low birthweight                  436    1758
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
6-9 months     JiVitA-4         BANGLADESH                     Normal or high birthweight      2002    2688
6-9 months     JiVitA-4         BANGLADESH                     Low birthweight                  686    2688
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
9-12 months    JiVitA-4         BANGLADESH                     Normal or high birthweight      2208    2978
9-12 months    JiVitA-4         BANGLADESH                     Low birthweight                  770    2978
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
12-15 months   JiVitA-4         BANGLADESH                     Normal or high birthweight      2201    3006
12-15 months   JiVitA-4         BANGLADESH                     Low birthweight                  805    3006
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
15-18 months   JiVitA-4         BANGLADESH                     Normal or high birthweight      2226    3015
15-18 months   JiVitA-4         BANGLADESH                     Low birthweight                  789    3015
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/ab66b261-df7a-45cc-ab26-e14d9f00954f/1754d546-e235-4739-ad53-f19b90c1b4f2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/ab66b261-df7a-45cc-ab26-e14d9f00954f/1754d546-e235-4739-ad53-f19b90c1b4f2/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/ab66b261-df7a-45cc-ab26-e14d9f00954f/1754d546-e235-4739-ad53-f19b90c1b4f2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level           baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  ---------------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                3.4950943   3.2680645   3.7221242
0-3 months     CMC-V-BCS-2002   INDIA                          Low birthweight              NA                3.3769267   2.6711551   4.0826983
0-3 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                2.5811883   2.5351958   2.6271809
0-3 months     COHORTS          GUATEMALA                      Low birthweight              NA                2.7014026   2.5256613   2.8771440
0-3 months     COHORTS          INDIA                          Normal or high birthweight   NA                3.4877147   3.4723099   3.5031195
0-3 months     COHORTS          INDIA                          Low birthweight              NA                3.5935444   3.5608400   3.6262487
0-3 months     EE               PAKISTAN                       Normal or high birthweight   NA                3.0576986   2.9484972   3.1669000
0-3 months     EE               PAKISTAN                       Low birthweight              NA                3.1057146   2.9740567   3.2373725
0-3 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                3.5883440   3.5298501   3.6468379
0-3 months     GMS-Nepal        NEPAL                          Low birthweight              NA                3.6255885   3.5255420   3.7256349
0-3 months     IRC              INDIA                          Normal or high birthweight   NA                3.2356342   3.1150594   3.3562090
0-3 months     IRC              INDIA                          Low birthweight              NA                2.6861484   2.4386690   2.9336279
0-3 months     JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                3.6869072   3.6741313   3.6996830
0-3 months     JiVitA-3         BANGLADESH                     Low birthweight              NA                3.7959633   3.7807561   3.8111705
0-3 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                3.5845664   3.5483089   3.6208240
0-3 months     JiVitA-4         BANGLADESH                     Low birthweight              NA                3.7437646   3.6904201   3.7971091
0-3 months     Keneba           GAMBIA                         Normal or high birthweight   NA                3.1029464   3.0530525   3.1528402
0-3 months     Keneba           GAMBIA                         Low birthweight              NA                3.1454301   3.0077058   3.2831543
0-3 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                3.3100372   3.2360241   3.3840502
0-3 months     MAL-ED           BANGLADESH                     Low birthweight              NA                3.4521988   3.3037520   3.6006457
0-3 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                3.7756828   3.6622452   3.8891203
0-3 months     MAL-ED           BRAZIL                         Low birthweight              NA                4.3281292   4.0899732   4.5662852
0-3 months     MAL-ED           INDIA                          Normal or high birthweight   NA                3.3426271   3.2341792   3.4510750
0-3 months     MAL-ED           INDIA                          Low birthweight              NA                3.6397452   3.3350879   3.9444025
0-3 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                3.5721728   3.4763710   3.6679747
0-3 months     MAL-ED           NEPAL                          Low birthweight              NA                4.1249494   3.8555835   4.3943152
0-3 months     MAL-ED           PERU                           Normal or high birthweight   NA                3.0407454   2.9722374   3.1092535
0-3 months     MAL-ED           PERU                           Low birthweight              NA                3.2947805   3.0105253   3.5790357
0-3 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                3.1783826   3.0796643   3.2771010
0-3 months     MAL-ED           SOUTH AFRICA                   Low birthweight              NA                3.2180963   2.6689922   3.7672004
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                3.2513710   3.1628421   3.3398999
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                3.3620819   3.0756214   3.6485425
0-3 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                3.0645057   3.0001417   3.1288697
0-3 months     NIH-Birth        BANGLADESH                     Low birthweight              NA                3.2208090   3.1204738   3.3211441
0-3 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                3.1290340   3.0870747   3.1709933
0-3 months     NIH-Crypto       BANGLADESH                     Low birthweight              NA                3.1308874   3.0549325   3.2068424
0-3 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                3.2413605   3.1983604   3.2843606
0-3 months     PROVIDE          BANGLADESH                     Low birthweight              NA                3.3087902   3.2354427   3.3821377
0-3 months     ResPak           PAKISTAN                       Normal or high birthweight   NA                2.6745628   2.1459187   3.2032070
0-3 months     ResPak           PAKISTAN                       Low birthweight              NA                2.9865176   2.3064198   3.6666155
0-3 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                3.3218740   3.2573015   3.3864465
0-3 months     SAS-CompFeed     INDIA                          Low birthweight              NA                3.4416838   3.3671505   3.5162171
0-3 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                3.3589060   3.3371121   3.3807000
0-3 months     ZVITAMBO         ZIMBABWE                       Low birthweight              NA                3.1917437   3.1318274   3.2516600
3-6 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                1.7623571   1.6518914   1.8728227
3-6 months     CMC-V-BCS-2002   INDIA                          Low birthweight              NA                2.1171919   1.8442298   2.3901539
3-6 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                1.7374517   1.7043316   1.7705717
3-6 months     COHORTS          GUATEMALA                      Low birthweight              NA                1.8413959   1.7331829   1.9496089
3-6 months     COHORTS          INDIA                          Normal or high birthweight   NA                1.8619026   1.8477361   1.8760692
3-6 months     COHORTS          INDIA                          Low birthweight              NA                1.9249442   1.8957838   1.9541045
3-6 months     EE               PAKISTAN                       Normal or high birthweight   NA                2.0554878   1.9806226   2.1303530
3-6 months     EE               PAKISTAN                       Low birthweight              NA                2.1563760   2.0644698   2.2482822
3-6 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                1.6716411   1.6258736   1.7174086
3-6 months     GMS-Nepal        NEPAL                          Low birthweight              NA                1.7944125   1.7176908   1.8711341
3-6 months     IRC              INDIA                          Normal or high birthweight   NA                1.8528363   1.7836116   1.9220610
3-6 months     IRC              INDIA                          Low birthweight              NA                2.1183535   1.9560440   2.2806631
3-6 months     JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                1.8727076   1.8594554   1.8859598
3-6 months     JiVitA-3         BANGLADESH                     Low birthweight              NA                1.9828881   1.9651305   2.0006458
3-6 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                1.8790572   1.8433427   1.9147716
3-6 months     JiVitA-4         BANGLADESH                     Low birthweight              NA                1.9710242   1.9083842   2.0336642
3-6 months     Keneba           GAMBIA                         Normal or high birthweight   NA                1.9265782   1.8776835   1.9754730
3-6 months     Keneba           GAMBIA                         Low birthweight              NA                2.0707077   1.9617364   2.1796790
3-6 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                1.9074991   1.8513498   1.9636483
3-6 months     MAL-ED           BANGLADESH                     Low birthweight              NA                2.0068707   1.8855264   2.1282151
3-6 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                2.1310349   2.0491443   2.2129256
3-6 months     MAL-ED           BRAZIL                         Low birthweight              NA                2.4198999   2.2072136   2.6325861
3-6 months     MAL-ED           INDIA                          Normal or high birthweight   NA                1.8821110   1.8088529   1.9553692
3-6 months     MAL-ED           INDIA                          Low birthweight              NA                1.9327515   1.8026513   2.0628517
3-6 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                1.9442856   1.8867021   2.0018692
3-6 months     MAL-ED           NEPAL                          Low birthweight              NA                2.2149077   1.9940488   2.4357665
3-6 months     MAL-ED           PERU                           Normal or high birthweight   NA                2.0006712   1.9319735   2.0693688
3-6 months     MAL-ED           PERU                           Low birthweight              NA                2.1615004   1.9244908   2.3985099
3-6 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                1.9667668   1.8839430   2.0495906
3-6 months     MAL-ED           SOUTH AFRICA                   Low birthweight              NA                1.9672647   1.5707448   2.3637846
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.8100282   1.7314328   1.8886236
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                2.1341755   1.8031232   2.4652279
3-6 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                1.8241994   1.7675003   1.8808984
3-6 months     NIH-Birth        BANGLADESH                     Low birthweight              NA                1.8367000   1.7369286   1.9364714
3-6 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                1.9882202   1.9470571   2.0293833
3-6 months     NIH-Crypto       BANGLADESH                     Low birthweight              NA                2.0611059   1.9830390   2.1391728
3-6 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                1.9383788   1.9008618   1.9758958
3-6 months     PROVIDE          BANGLADESH                     Low birthweight              NA                2.0557651   1.9810531   2.1304770
3-6 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                1.9204209   1.8694848   1.9713569
3-6 months     SAS-CompFeed     INDIA                          Low birthweight              NA                2.0351065   1.9655906   2.1046225
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.7895869   1.7528886   1.8262851
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                1.9932156   1.7955870   2.1908443
3-6 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                1.9494251   1.9284794   1.9703707
3-6 months     ZVITAMBO         ZIMBABWE                       Low birthweight              NA                2.1605874   2.1051479   2.2160269
6-9 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                1.2197179   1.1354298   1.3040060
6-9 months     CMC-V-BCS-2002   INDIA                          Low birthweight              NA                1.1721715   0.9366404   1.4077027
6-9 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                1.1073793   1.0765748   1.1381838
6-9 months     COHORTS          GUATEMALA                      Low birthweight              NA                1.0867297   0.9896892   1.1837702
6-9 months     COHORTS          INDIA                          Normal or high birthweight   NA                1.1856325   1.1726413   1.1986236
6-9 months     COHORTS          INDIA                          Low birthweight              NA                1.2309758   1.2038408   1.2581107
6-9 months     EE               PAKISTAN                       Normal or high birthweight   NA                1.1534437   1.0963241   1.2105632
6-9 months     EE               PAKISTAN                       Low birthweight              NA                1.2163676   1.1323294   1.3004059
6-9 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                1.3012521   1.2626263   1.3398779
6-9 months     GMS-Nepal        NEPAL                          Low birthweight              NA                1.3549676   1.2401546   1.4697806
6-9 months     IRC              INDIA                          Normal or high birthweight   NA                1.3639371   1.3085375   1.4193366
6-9 months     IRC              INDIA                          Low birthweight              NA                1.4250804   1.3212240   1.5289368
6-9 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                1.3164930   1.2909470   1.3420390
6-9 months     JiVitA-4         BANGLADESH                     Low birthweight              NA                1.3716374   1.3317267   1.4115481
6-9 months     Keneba           GAMBIA                         Normal or high birthweight   NA                1.4359933   1.3654211   1.5065655
6-9 months     Keneba           GAMBIA                         Low birthweight              NA                1.3197774   1.2046854   1.4348694
6-9 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                1.2468959   1.2035852   1.2902066
6-9 months     MAL-ED           BANGLADESH                     Low birthweight              NA                1.2415001   1.1368982   1.3461019
6-9 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                1.4827168   1.3997859   1.5656476
6-9 months     MAL-ED           BRAZIL                         Low birthweight              NA                1.4604541   1.1021591   1.8187491
6-9 months     MAL-ED           INDIA                          Normal or high birthweight   NA                1.2236535   1.1641783   1.2831288
6-9 months     MAL-ED           INDIA                          Low birthweight              NA                1.3566162   1.2525941   1.4606383
6-9 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                1.3594679   1.3132752   1.4056605
6-9 months     MAL-ED           NEPAL                          Low birthweight              NA                1.3627401   1.1071397   1.6183404
6-9 months     MAL-ED           PERU                           Normal or high birthweight   NA                1.3253209   1.2693685   1.3812734
6-9 months     MAL-ED           PERU                           Low birthweight              NA                1.1262588   0.8769818   1.3755359
6-9 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                1.3593905   1.2956562   1.4231248
6-9 months     MAL-ED           SOUTH AFRICA                   Low birthweight              NA                1.7016038   1.3918650   2.0113426
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.1588626   1.0609577   1.2567675
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                1.3143037   1.0895312   1.5390762
6-9 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                1.2618502   1.2126741   1.3110263
6-9 months     NIH-Birth        BANGLADESH                     Low birthweight              NA                1.2634384   1.1858385   1.3410382
6-9 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                1.3432826   1.3101089   1.3764564
6-9 months     NIH-Crypto       BANGLADESH                     Low birthweight              NA                1.2820621   1.2155476   1.3485765
6-9 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                1.2864629   1.2574211   1.3155047
6-9 months     PROVIDE          BANGLADESH                     Low birthweight              NA                1.2662061   1.2154130   1.3169992
6-9 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                1.2177169   1.1877008   1.2477330
6-9 months     SAS-CompFeed     INDIA                          Low birthweight              NA                1.2050474   1.1443316   1.2657633
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.3223953   1.2855569   1.3592337
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                1.4299059   1.1324879   1.7273239
6-9 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                1.3362181   1.3158233   1.3566130
6-9 months     ZVITAMBO         ZIMBABWE                       Low birthweight              NA                1.4160810   1.3629310   1.4692310
9-12 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.8973517   0.8227314   0.9719719
9-12 months    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.9102726   0.7218555   1.0986897
9-12 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.9382285   0.9098710   0.9665860
9-12 months    COHORTS          GUATEMALA                      Low birthweight              NA                1.0106386   0.9194313   1.1018458
9-12 months    COHORTS          INDIA                          Normal or high birthweight   NA                1.0089637   0.9950417   1.0228858
9-12 months    COHORTS          INDIA                          Low birthweight              NA                0.9533887   0.9245788   0.9821986
9-12 months    EE               PAKISTAN                       Normal or high birthweight   NA                0.9200176   0.8786488   0.9613865
9-12 months    EE               PAKISTAN                       Low birthweight              NA                0.9070465   0.8446676   0.9694254
9-12 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                1.0123856   0.9814572   1.0433139
9-12 months    GMS-Nepal        NEPAL                          Low birthweight              NA                0.9379186   0.8460496   1.0297876
9-12 months    IRC              INDIA                          Normal or high birthweight   NA                1.1159400   1.0740993   1.1577807
9-12 months    IRC              INDIA                          Low birthweight              NA                1.1178454   1.0000751   1.2356157
9-12 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                1.0695328   1.0480091   1.0910565
9-12 months    JiVitA-4         BANGLADESH                     Low birthweight              NA                1.0906821   1.0515755   1.1297887
9-12 months    Keneba           GAMBIA                         Normal or high birthweight   NA                0.9606643   0.9028070   1.0185216
9-12 months    Keneba           GAMBIA                         Low birthweight              NA                0.9967634   0.9084320   1.0850948
9-12 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.9841377   0.9406250   1.0276504
9-12 months    MAL-ED           BANGLADESH                     Low birthweight              NA                1.0031316   0.9147600   1.0915033
9-12 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                1.2875039   1.2104463   1.3645616
9-12 months    MAL-ED           BRAZIL                         Low birthweight              NA                1.5465137   1.3114743   1.7815530
9-12 months    MAL-ED           INDIA                          Normal or high birthweight   NA                0.9776510   0.9330015   1.0223006
9-12 months    MAL-ED           INDIA                          Low birthweight              NA                1.0240994   0.9657116   1.0824872
9-12 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                1.0889209   1.0471300   1.1307118
9-12 months    MAL-ED           NEPAL                          Low birthweight              NA                1.1342197   0.9826420   1.2857975
9-12 months    MAL-ED           PERU                           Normal or high birthweight   NA                1.1128059   1.0594963   1.1661155
9-12 months    MAL-ED           PERU                           Low birthweight              NA                0.9570557   0.7821351   1.1319762
9-12 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                1.0180881   0.9514269   1.0847494
9-12 months    MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.9773426   0.6195242   1.3351609
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.8357490   0.7349738   0.9365243
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.9614607   0.8095239   1.1133974
9-12 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                1.0842494   1.0428458   1.1256530
9-12 months    NIH-Birth        BANGLADESH                     Low birthweight              NA                1.1039170   1.0349792   1.1728548
9-12 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                1.1112477   1.0822179   1.1402774
9-12 months    NIH-Crypto       BANGLADESH                     Low birthweight              NA                1.1636319   1.1026825   1.2245813
9-12 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                1.0409885   1.0096520   1.0723250
9-12 months    PROVIDE          BANGLADESH                     Low birthweight              NA                1.0816299   1.0300042   1.1332556
9-12 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.9880682   0.9642544   1.0118820
9-12 months    SAS-CompFeed     INDIA                          Low birthweight              NA                1.0426322   0.9803311   1.1049334
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                1.0847753   1.0502004   1.1193502
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                1.1957240   0.9271186   1.4643295
9-12 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                1.0748214   1.0556729   1.0939698
9-12 months    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                1.1258876   1.0762967   1.1754786
12-15 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.8330670   0.7576514   0.9084826
12-15 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.9871914   0.7787373   1.1956455
12-15 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7658610   0.7320849   0.7996371
12-15 months   COHORTS          GUATEMALA                      Low birthweight              NA                0.7979345   0.6853688   0.9105003
12-15 months   EE               PAKISTAN                       Normal or high birthweight   NA                1.0032338   0.9639469   1.0425207
12-15 months   EE               PAKISTAN                       Low birthweight              NA                1.0134421   0.9544086   1.0724757
12-15 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.8728630   0.8427414   0.9029847
12-15 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.8905177   0.8265548   0.9544807
12-15 months   IRC              INDIA                          Normal or high birthweight   NA                0.9666464   0.9198709   1.0134219
12-15 months   IRC              INDIA                          Low birthweight              NA                0.9100014   0.8061096   1.0138931
12-15 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.9376591   0.9173476   0.9579707
12-15 months   JiVitA-4         BANGLADESH                     Low birthweight              NA                0.9235033   0.8954673   0.9515393
12-15 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.9504416   0.9133499   0.9875332
12-15 months   Keneba           GAMBIA                         Low birthweight              NA                0.9252575   0.8343266   1.0161883
12-15 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.9193594   0.8737351   0.9649837
12-15 months   MAL-ED           BANGLADESH                     Low birthweight              NA                0.9234172   0.8340051   1.0128293
12-15 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                1.1586970   1.0980565   1.2193375
12-15 months   MAL-ED           BRAZIL                         Low birthweight              NA                1.1255860   0.9355950   1.3155770
12-15 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.9200301   0.8781931   0.9618672
12-15 months   MAL-ED           INDIA                          Low birthweight              NA                0.8496572   0.7121582   0.9871563
12-15 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.9581063   0.9157533   1.0004594
12-15 months   MAL-ED           NEPAL                          Low birthweight              NA                0.9505176   0.8342497   1.0667856
12-15 months   MAL-ED           PERU                           Normal or high birthweight   NA                0.8904715   0.8429226   0.9380205
12-15 months   MAL-ED           PERU                           Low birthweight              NA                1.2699466   1.0719282   1.4679651
12-15 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.9167205   0.8564735   0.9769674
12-15 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.9193223   0.6138881   1.2247566
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.8854245   0.8123206   0.9585284
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.5731887   0.1836907   0.9626867
12-15 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7040741   0.6626301   0.7455182
12-15 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.7752622   0.6468915   0.9036330
12-15 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.9772547   0.9492202   1.0052892
12-15 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.9598373   0.9075282   1.0121465
12-15 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.9762929   0.9465393   1.0060466
12-15 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.9005482   0.8460157   0.9550806
12-15 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.8408023   0.7865921   0.8950125
12-15 months   SAS-CompFeed     INDIA                          Low birthweight              NA                0.7970792   0.7178865   0.8762718
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.9208160   0.8849736   0.9566585
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                1.2151944   0.8324610   1.5979278
12-15 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.9253827   0.8966423   0.9541230
12-15 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.8901695   0.8087557   0.9715834
15-18 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.7316703   0.6689786   0.7943620
15-18 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.6661017   0.4047448   0.9274586
15-18 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7434088   0.7072614   0.7795563
15-18 months   COHORTS          GUATEMALA                      Low birthweight              NA                0.7297190   0.5813195   0.8781185
15-18 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.8527083   0.8130882   0.8923283
15-18 months   EE               PAKISTAN                       Low birthweight              NA                0.8360297   0.7819972   0.8900622
15-18 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.7276921   0.6852856   0.7700986
15-18 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.8241796   0.7535496   0.8948096
15-18 months   IRC              INDIA                          Normal or high birthweight   NA                0.8641881   0.8215814   0.9067948
15-18 months   IRC              INDIA                          Low birthweight              NA                0.8978388   0.7837864   1.0118911
15-18 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                0.8564982   0.8362170   0.8767793
15-18 months   JiVitA-4         BANGLADESH                     Low birthweight              NA                0.8445932   0.8106791   0.8785073
15-18 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.8850307   0.8434195   0.9266418
15-18 months   Keneba           GAMBIA                         Low birthweight              NA                0.9163212   0.8357736   0.9968688
15-18 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.8245676   0.7856081   0.8635270
15-18 months   MAL-ED           BANGLADESH                     Low birthweight              NA                0.8079475   0.7093296   0.9065655
15-18 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                0.9998146   0.9395542   1.0600750
15-18 months   MAL-ED           BRAZIL                         Low birthweight              NA                1.0572335   0.7564092   1.3580579
15-18 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.8370108   0.7974246   0.8765969
15-18 months   MAL-ED           INDIA                          Low birthweight              NA                0.8919158   0.7845127   0.9993189
15-18 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.8435049   0.7980896   0.8889202
15-18 months   MAL-ED           NEPAL                          Low birthweight              NA                0.7736916   0.6631175   0.8842656
15-18 months   MAL-ED           PERU                           Normal or high birthweight   NA                0.8478496   0.8038030   0.8918963
15-18 months   MAL-ED           PERU                           Low birthweight              NA                0.8263272   0.6606887   0.9919657
15-18 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.8851645   0.8298767   0.9404524
15-18 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.9270346   0.7579779   1.0960913
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.6698128   0.5976435   0.7419822
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.9717881   0.7417462   1.2018299
15-18 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7637711   0.7160794   0.8114628
15-18 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.8048659   0.7253604   0.8843715
15-18 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.9165720   0.8896608   0.9434832
15-18 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.9221673   0.8758756   0.9684591
15-18 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.8546002   0.8275521   0.8816482
15-18 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.8615630   0.8079357   0.9151904
15-18 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                0.9165608   0.8787238   0.9543978
15-18 months   SAS-CompFeed     INDIA                          Low birthweight              NA                0.8848224   0.7955553   0.9740895
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.9342434   0.8915016   0.9769852
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.8610856   0.5568492   1.1653220
15-18 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.8033199   0.7711568   0.8354829
15-18 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.7780805   0.6940509   0.8621101
18-21 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6998756   0.6299943   0.7697570
18-21 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.7434433   0.5536677   0.9332189
18-21 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.7476558   0.7148130   0.7804985
18-21 months   COHORTS          GUATEMALA                      Low birthweight              NA                0.7230285   0.5673347   0.8787223
18-21 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.7341408   0.6997584   0.7685231
18-21 months   EE               PAKISTAN                       Low birthweight              NA                0.6764661   0.5944854   0.7584468
18-21 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.9267726   0.8813900   0.9721552
18-21 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.8579040   0.8153764   0.9004316
18-21 months   IRC              INDIA                          Normal or high birthweight   NA                0.7629656   0.7204043   0.8055270
18-21 months   IRC              INDIA                          Low birthweight              NA                0.7422071   0.6484034   0.8360107
18-21 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.8469441   0.8009973   0.8928910
18-21 months   Keneba           GAMBIA                         Low birthweight              NA                0.7614923   0.6768749   0.8461097
18-21 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.8180656   0.7816150   0.8545162
18-21 months   MAL-ED           BANGLADESH                     Low birthweight              NA                0.7988506   0.6999106   0.8977906
18-21 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                0.9173515   0.8445898   0.9901132
18-21 months   MAL-ED           BRAZIL                         Low birthweight              NA                0.8869185   0.5913371   1.1824998
18-21 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.8823663   0.8439612   0.9207715
18-21 months   MAL-ED           INDIA                          Low birthweight              NA                0.8863511   0.7891784   0.9835238
18-21 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.8197119   0.7790764   0.8603473
18-21 months   MAL-ED           NEPAL                          Low birthweight              NA                0.8288528   0.7009737   0.9567320
18-21 months   MAL-ED           PERU                           Normal or high birthweight   NA                0.8494588   0.8036530   0.8952645
18-21 months   MAL-ED           PERU                           Low birthweight              NA                0.8288218   0.6019723   1.0556714
18-21 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.7820901   0.7248297   0.8393506
18-21 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.8081223   0.5327085   1.0835361
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.7458999   0.6679178   0.8238819
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.7248911   0.4350413   1.0147408
18-21 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7589367   0.7160003   0.8018730
18-21 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.6762608   0.6067644   0.7457572
18-21 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.7946686   0.7690773   0.8202600
18-21 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.8116730   0.7569864   0.8663596
18-21 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.8316955   0.8040409   0.8593501
18-21 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.8627977   0.8130157   0.9125797
18-21 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.6798817   0.6434575   0.7163058
18-21 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.6743904   0.5687341   0.7800467
21-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                0.6959181   0.6339984   0.7578378
21-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                0.7870271   0.5169015   1.0571527
21-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                0.6843831   0.6557060   0.7130601
21-24 months   COHORTS          GUATEMALA                      Low birthweight              NA                0.6832210   0.5961489   0.7702930
21-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                0.6582222   0.6136674   0.7027771
21-24 months   EE               PAKISTAN                       Low birthweight              NA                0.6303714   0.5555375   0.7052054
21-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                0.7753273   0.7224080   0.8282465
21-24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                0.8398022   0.7600085   0.9195958
21-24 months   IRC              INDIA                          Normal or high birthweight   NA                0.7144027   0.6696463   0.7591591
21-24 months   IRC              INDIA                          Low birthweight              NA                0.6859251   0.5806570   0.7911932
21-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                0.7212072   0.6781852   0.7642291
21-24 months   Keneba           GAMBIA                         Low birthweight              NA                0.7249676   0.6397851   0.8101502
21-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                0.7582910   0.7204324   0.7961497
21-24 months   MAL-ED           BANGLADESH                     Low birthweight              NA                0.7967161   0.7056230   0.8878093
21-24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                0.7949626   0.7495609   0.8403642
21-24 months   MAL-ED           BRAZIL                         Low birthweight              NA                0.8194924   0.6429312   0.9960536
21-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                0.8290240   0.7940123   0.8640357
21-24 months   MAL-ED           INDIA                          Low birthweight              NA                0.8400157   0.7570997   0.9229316
21-24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                0.7627186   0.7237151   0.8017220
21-24 months   MAL-ED           NEPAL                          Low birthweight              NA                0.8969345   0.7638832   1.0299857
21-24 months   MAL-ED           PERU                           Normal or high birthweight   NA                0.7662066   0.7168854   0.8155278
21-24 months   MAL-ED           PERU                           Low birthweight              NA                0.6725590   0.5396763   0.8054416
21-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                0.8406585   0.7880845   0.8932325
21-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                0.7654773   0.4981513   1.0328033
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                0.7433977   0.6686331   0.8181624
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                0.6960984   0.4384482   0.9537486
21-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                0.7229407   0.6790259   0.7668554
21-24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                0.6849362   0.6189707   0.7509016
21-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                0.8047634   0.7762078   0.8333190
21-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                0.7823208   0.7326367   0.8320049
21-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                0.7701283   0.7414033   0.7988533
21-24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                0.7431908   0.6878523   0.7985294
21-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                0.6984035   0.6576926   0.7391145
21-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                0.6501146   0.5304074   0.7698219


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                3.4601875   3.2440906   3.6762845
0-3 months     COHORTS          GUATEMALA                      NA                   NA                2.5898758   2.5454966   2.6342550
0-3 months     COHORTS          INDIA                          NA                   NA                3.5088797   3.4947939   3.5229654
0-3 months     EE               PAKISTAN                       NA                   NA                3.0754939   2.9926408   3.1583470
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                3.5989683   3.5479067   3.6500300
0-3 months     IRC              INDIA                          NA                   NA                3.1454764   3.0350485   3.2559044
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                3.7306945   3.7201451   3.7412439
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                3.6381167   3.6070177   3.6692156
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
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                1.9170252   1.9055186   1.9285319
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                1.8995564   1.8689852   1.9301276
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
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                1.3268234   1.3052230   1.3484237
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
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                1.0737488   1.0550752   1.0924224
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
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                0.9335450   0.9165121   0.9505779
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
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                0.8546698   0.8367097   0.8726300
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
0-3 months     CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.1181676   -0.8616313    0.6252960
0-3 months     COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.1202143   -0.0612512    0.3016798
0-3 months     COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          Low birthweight              Normal or high birthweight     0.1058297    0.0700914    0.1415680
0-3 months     EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0480160   -0.1235167    0.2195487
0-3 months     GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0372445   -0.0784385    0.1529275
0-3 months     IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.5494858   -0.8239871   -0.2749845
0-3 months     JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight     0.1090561    0.0914246    0.1266877
0-3 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight     0.1591982    0.0957076    0.2226887
0-3 months     Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0424837   -0.1035999    0.1885673
0-3 months     MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.1421617   -0.0244858    0.3088092
0-3 months     MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.5524465    0.2886542    0.8162387
0-3 months     MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.2971181   -0.0299050    0.6241412
0-3 months     MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.5527765    0.2664464    0.8391067
0-3 months     MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           Low birthweight              Normal or high birthweight     0.2540351   -0.0390253    0.5470954
0-3 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0397137   -0.5181937    0.5976210
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1107109   -0.1885088    0.4099307
0-3 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.1563033    0.0368422    0.2757644
0-3 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     0.0018534   -0.0849732    0.0886800
0-3 months     PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0674297   -0.0176316    0.1524910
0-3 months     ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight     0.3119548   -0.5494381    1.1733477
0-3 months     SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     0.1198098    0.0202644    0.2193552
0-3 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.1671623   -0.2307525   -0.1035721
3-6 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.3548348    0.0603815    0.6492881
3-6 months     COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.1039442   -0.0091564    0.2170448
3-6 months     COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          Low birthweight              Normal or high birthweight     0.0630416    0.0307559    0.0953272
3-6 months     EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.1008882   -0.0178737    0.2196501
3-6 months     GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.1227714    0.0331681    0.2123746
3-6 months     IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          Low birthweight              Normal or high birthweight     0.2655173    0.0892915    0.4417431
3-6 months     JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight     0.1101805    0.0900443    0.1303168
3-6 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0919670    0.0213876    0.1625464
3-6 months     Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.1441295    0.0251497    0.2631092
3-6 months     MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0993717   -0.0342083    0.2329517
3-6 months     MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.2888650    0.0613504    0.5163795
3-6 months     MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0506404   -0.0990259    0.2003068
3-6 months     MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.2706220    0.0421424    0.4991017
3-6 months     MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           Low birthweight              Normal or high birthweight     0.1608292   -0.0857795    0.4074379
3-6 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0004979   -0.4047808    0.4057766
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.3241473   -0.0161069    0.6644015
3-6 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0125006   -0.1024484    0.1274497
3-6 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     0.0728857   -0.0149657    0.1607370
3-6 months     PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.1173863    0.0342986    0.2004739
3-6 months     SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     0.1146857    0.0449722    0.1843992
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.2036288    0.0025934    0.4046642
3-6 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.2111623    0.1519361    0.2703885
6-9 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.0475464   -0.2981077    0.2030149
6-9 months     COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0206496   -0.1223578    0.0810587
6-9 months     COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          Low birthweight              Normal or high birthweight     0.0453433    0.0152903    0.0753963
6-9 months     EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0629240   -0.0387822    0.1646301
6-9 months     GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0537155   -0.0674001    0.1748311
6-9 months     IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0611433   -0.0566647    0.1789514
6-9 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0551444    0.0080683    0.1022205
6-9 months     Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.1162159   -0.2517749    0.0193431
6-9 months     MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0053958   -0.1192532    0.1084616
6-9 months     MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.0222627   -0.3904377    0.3459124
6-9 months     MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.1329627    0.0127519    0.2531734
6-9 months     MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.0032722   -0.2577339    0.2642783
6-9 months     MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.1990621   -0.4542053    0.0560811
6-9 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.3422133    0.0253828    0.6590438
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1554411   -0.0897283    0.4006105
6-9 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0015882   -0.0904220    0.0935983
6-9 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0612206   -0.1352567    0.0128155
6-9 months     PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0202568   -0.0785168    0.0380032
6-9 months     SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.0126695   -0.0942387    0.0688997
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1075106   -0.1921405    0.4071617
6-9 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0798628    0.0230146    0.1367111
9-12 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0129209   -0.1906196    0.2164615
9-12 months    COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0724101   -0.0233726    0.1681928
9-12 months    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.0555750   -0.0874846   -0.0236654
9-12 months    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0129712   -0.0854219    0.0594795
9-12 months    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0744670   -0.1716863    0.0227523
9-12 months    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0019054   -0.1233811    0.1271920
9-12 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0211493   -0.0238902    0.0661888
9-12 months    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0360991   -0.0711475    0.1433457
9-12 months    MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0189939   -0.0797332    0.1177211
9-12 months    MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.2590097    0.0110084    0.5070111
9-12 months    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0464484   -0.0272936    0.1201904
9-12 months    MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.0452988   -0.1120337    0.2026313
9-12 months    MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.1557502   -0.3388813    0.0273808
9-12 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0407456   -0.4050289    0.3235378
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1257116   -0.0566080    0.3080312
9-12 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0196676   -0.0603979    0.0997330
9-12 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     0.0523843   -0.0151232    0.1198918
9-12 months    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0406414   -0.0193360    0.1006189
9-12 months    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     0.0545640   -0.0009452    0.1100732
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1109487   -0.1599344    0.3818317
9-12 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0510662   -0.0020783    0.1042108
12-15 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.1541244   -0.0675533    0.3758021
12-15 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0320735   -0.0856147    0.1497617
12-15 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0102083   -0.0605821    0.0809987
12-15 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0176547   -0.0530681    0.0883775
12-15 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0566451   -0.1707209    0.0574308
12-15 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0141559   -0.0476183    0.0193066
12-15 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0251841   -0.1234662    0.0730980
12-15 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0040578   -0.0965721    0.1046877
12-15 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.0331110   -0.2334135    0.1671916
12-15 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.0703729   -0.2143551    0.0736093
12-15 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.0075887   -0.1313467    0.1161694
12-15 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight     0.3794751    0.1743838    0.5845664
12-15 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0026019   -0.3099839    0.3151876
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.3122358   -0.7085347    0.0840632
12-15 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0711881   -0.0645986    0.2069748
12-15 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0174174   -0.0766319    0.0417971
12-15 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0757448   -0.1377002   -0.0137894
12-15 months   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.0437231   -0.1580728    0.0706265
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.2943784   -0.0896408    0.6783975
12-15 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0352131   -0.1216641    0.0512379
15-18 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.0655686   -0.3337444    0.2026071
15-18 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0136898   -0.1668944    0.1395148
15-18 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0166786   -0.0837687    0.0504115
15-18 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0964875    0.0157177    0.1772572
15-18 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0336507   -0.0884419    0.1557432
15-18 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0119050   -0.0493298    0.0255198
15-18 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0312905   -0.0597891    0.1223701
15-18 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0166200   -0.1226277    0.0893876
15-18 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0574189   -0.2493817    0.3642195
15-18 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0549050   -0.0599968    0.1698068
15-18 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.0698133   -0.1896847    0.0500581
15-18 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0215225   -0.1929311    0.1498861
15-18 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0418701   -0.1363626    0.2201028
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.3019752    0.0608784    0.5430721
15-18 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0410948   -0.0517392    0.1339288
15-18 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     0.0055953   -0.0479808    0.0591715
15-18 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0069629   -0.0531439    0.0670697
15-18 months   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.0317384   -0.1463232    0.0828464
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0731578   -0.3804592    0.2341436
15-18 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0252393   -0.1152416    0.0647629
18-21 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0435677   -0.1589606    0.2460959
18-21 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0246273   -0.1843006    0.1350460
18-21 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0576747   -0.1468401    0.0314907
18-21 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0688686   -0.1312478   -0.0064894
18-21 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0207586   -0.1237468    0.0822297
18-21 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0854519   -0.1829104    0.0120067
18-21 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0192150   -0.1255992    0.0871692
18-21 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.0304330   -0.3348383    0.2739723
18-21 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0039847   -0.1006293    0.1085988
18-21 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.0091410   -0.1247954    0.1430774
18-21 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0206370   -0.2519766    0.2107027
18-21 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0260322   -0.2561208    0.3081852
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0210088   -0.3211656    0.2791479
18-21 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0826759   -0.1641381   -0.0012136
18-21 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     0.0170044   -0.0433321    0.0773409
18-21 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0311022   -0.0259947    0.0881991
18-21 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0054913   -0.1174282    0.1064457
21-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0911090   -0.1861271    0.3683451
21-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.0011621   -0.0928419    0.0905177
21-24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0278508   -0.1155273    0.0598257
21-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0644749   -0.0317979    0.1607477
21-24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0284776   -0.1423333    0.0853781
21-24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0037605   -0.0921215    0.0996424
21-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0384251   -0.0598659    0.1367161
21-24 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0245298   -0.1577753    0.2068350
21-24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0109917   -0.0793781    0.1013615
21-24 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.1342159   -0.0049063    0.2733380
21-24 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0936476   -0.2351814    0.0478862
21-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0751812   -0.3477470    0.1973846
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0472993   -0.3155779    0.2209792
21-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0380045   -0.1177895    0.0417806
21-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0224426   -0.0797289    0.0348438
21-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0269375   -0.0892959    0.0354209
21-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0482889   -0.1751590    0.0785812


### Parameter: PAR


agecat         studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0349068   -0.1262892    0.0564756
0-3 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0086875   -0.0041269    0.0215019
0-3 months     COHORTS          INDIA                          Normal or high birthweight   NA                 0.0211650    0.0137884    0.0285416
0-3 months     EE               PAKISTAN                       Normal or high birthweight   NA                 0.0177953   -0.0457348    0.0813255
0-3 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0106243   -0.0245383    0.0457870
0-3 months     IRC              INDIA                          Normal or high birthweight   NA                -0.0901578   -0.1392759   -0.0410396
0-3 months     JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.0437873    0.0362033    0.0513713
0-3 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0535502    0.0306811    0.0764193
0-3 months     Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0059209   -0.0143183    0.0261601
0-3 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0290002   -0.0063429    0.0643432
0-3 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0230186    0.0029902    0.0430470
0-3 months     MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0175503   -0.0246465    0.0597471
0-3 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0383279    0.0046468    0.0720090
0-3 months     MAL-ED           PERU                           Normal or high birthweight   NA                 0.0091136   -0.0090034    0.0272305
0-3 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0017020   -0.0222332    0.0256372
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0075279   -0.0058505    0.0209063
0-3 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0400022    0.0042819    0.0757225
0-3 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0002109   -0.0201268    0.0205485
0-3 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0163205   -0.0041681    0.0368091
0-3 months     ResPak           PAKISTAN                       Normal or high birthweight   NA                 0.0487429   -0.0916316    0.1891175
0-3 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0296866    0.0079461    0.0514271
0-3 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0208189   -0.0290112   -0.0126266
3-6 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0423780    0.0023765    0.0823795
3-6 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0097257    0.0001594    0.0192920
3-6 months     COHORTS          INDIA                          Normal or high birthweight   NA                 0.0132534    0.0067884    0.0197185
3-6 months     EE               PAKISTAN                       Normal or high birthweight   NA                 0.0377330   -0.0063857    0.0818518
3-6 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0379274    0.0108989    0.0649560
3-6 months     IRC              INDIA                          Normal or high birthweight   NA                 0.0301026    0.0004021    0.0598032
3-6 months     JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.0443177    0.0359673    0.0526680
3-6 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0204993    0.0037017    0.0372968
3-6 months     Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0222364    0.0046847    0.0397882
3-6 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0208399   -0.0074455    0.0491252
3-6 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0150466    0.0006755    0.0294178
3-6 months     MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0006351   -0.0209379    0.0222081
3-6 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0230340    0.0023192    0.0437487
3-6 months     MAL-ED           PERU                           Normal or high birthweight   NA                 0.0093398   -0.0055018    0.0241814
3-6 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0003754   -0.0197594    0.0205102
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0162074   -0.0037060    0.0361207
3-6 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0042958   -0.0287803    0.0373718
3-6 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0175770   -0.0038108    0.0389649
3-6 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0273669    0.0074769    0.0472569
3-6 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0263672    0.0091546    0.0435798
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0061336   -0.0003928    0.0126600
3-6 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0262897    0.0186291    0.0339502
6-9 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0018540   -0.0289574    0.0326653
6-9 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0016577   -0.0112608    0.0079453
6-9 months     COHORTS          INDIA                          Normal or high birthweight   NA                 0.0093528    0.0035042    0.0152013
6-9 months     EE               PAKISTAN                       Normal or high birthweight   NA                 0.0223152   -0.0115968    0.0562273
6-9 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0167053   -0.0154682    0.0488787
6-9 months     IRC              INDIA                          Normal or high birthweight   NA                 0.0090378   -0.0102107    0.0282862
6-9 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0103303   -0.0016557    0.0223164
6-9 months     Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0147228   -0.0329595    0.0035138
6-9 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0014950   -0.0242329    0.0212430
6-9 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0003992   -0.0155997    0.0163980
6-9 months     MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0174060   -0.0012179    0.0360300
6-9 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0028484   -0.0199955    0.0142987
6-9 months     MAL-ED           PERU                           Normal or high birthweight   NA                -0.0107065   -0.0253594    0.0039465
6-9 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0175495   -0.0056711    0.0407701
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0072721   -0.0052142    0.0197584
6-9 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0133886   -0.0405743    0.0137972
6-9 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0150132   -0.0315031    0.0014768
6-9 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0040444   -0.0176909    0.0096020
6-9 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0029419   -0.0223318    0.0164480
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0002734   -0.0075049    0.0080517
6-9 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0101573    0.0032228    0.0170919
9-12 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0053682   -0.0191569    0.0298933
9-12 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0040034   -0.0042289    0.0122357
9-12 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.0101549   -0.0162820   -0.0040279
9-12 months    EE               PAKISTAN                       Normal or high birthweight   NA                -0.0053706   -0.0294052    0.0186639
9-12 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0143714   -0.0403667    0.0116239
9-12 months    IRC              INDIA                          Normal or high birthweight   NA                 0.0080207   -0.0127103    0.0287518
9-12 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0042160   -0.0074931    0.0159251
9-12 months    Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0040326   -0.0091234    0.0171885
9-12 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0066432   -0.0139094    0.0271959
9-12 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0107520   -0.0030667    0.0245707
9-12 months    MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0075712   -0.0031352    0.0182776
9-12 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0050167   -0.0090606    0.0190940
9-12 months    MAL-ED           PERU                           Normal or high birthweight   NA                -0.0122563   -0.0241523   -0.0003603
9-12 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0034242   -0.0215959    0.0147474
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0059508   -0.0035771    0.0154788
9-12 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0039817   -0.0204441    0.0284075
9-12 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0122268   -0.0035148    0.0279684
9-12 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0089865   -0.0055857    0.0235588
9-12 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0136109    0.0011284    0.0260934
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0028725   -0.0043281    0.0100731
9-12 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0061379   -0.0003958    0.0126716
12-15 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0230851   -0.0043351    0.0505054
12-15 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0015956   -0.0075356    0.0107268
12-15 months   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0057116   -0.0183629    0.0297860
12-15 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0074366   -0.0147834    0.0296566
12-15 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0119730   -0.0303796    0.0064335
12-15 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0041142   -0.0131050    0.0048766
12-15 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0053774   -0.0187422    0.0079874
12-15 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0044768   -0.0267143    0.0177608
12-15 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0165196   -0.0314824   -0.0015568
12-15 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0094192   -0.0293659    0.0105275
12-15 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0004778   -0.0100299    0.0090742
12-15 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0020456   -0.0157670    0.0116759
12-15 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0005518   -0.0105497    0.0116532
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0147804   -0.0360514    0.0064906
12-15 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0202577   -0.0185374    0.0590529
12-15 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0061153   -0.0197708    0.0075403
12-15 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0165429   -0.0306955   -0.0023903
12-15 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0100752   -0.0347909    0.0146405
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0089387   -0.0024730    0.0203503
12-15 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0052106   -0.0162947    0.0058735
15-18 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0028327   -0.0307872    0.0364526
15-18 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0006166   -0.0132783    0.0145114
15-18 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0150547   -0.0388324    0.0087229
15-18 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0272598    0.0017089    0.0528107
15-18 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0004388   -0.0199295    0.0190519
15-18 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0018283   -0.0114539    0.0077972
15-18 months   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0025112   -0.0088444    0.0138667
15-18 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0029028   -0.0257578    0.0199523
15-18 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0022968   -0.0100886    0.0146821
15-18 months   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0056228   -0.0121042    0.0233498
15-18 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0035804   -0.0130094    0.0058486
15-18 months   MAL-ED           PERU                           Normal or high birthweight   NA                 0.0069547   -0.0043724    0.0182818
15-18 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0021903   -0.0065374    0.0109180
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0148209   -0.0007013    0.0303430
15-18 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0119311   -0.0158204    0.0396826
15-18 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0011448   -0.0113476    0.0136371
15-18 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0014997   -0.0121060    0.0151053
15-18 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0081493   -0.0359024    0.0196038
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0034602   -0.0047494    0.0116697
15-18 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0036393   -0.0153534    0.0080748
18-21 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0033750   -0.0211519    0.0279018
18-21 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0044313   -0.0185948    0.0097321
18-21 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0158296   -0.0424460    0.0107868
18-21 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0228771   -0.0419831   -0.0037710
18-21 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0039609   -0.0210133    0.0130916
18-21 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0112424   -0.0250098    0.0025249
18-21 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0043977   -0.0269979    0.0182024
18-21 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0012756   -0.0140688    0.0115176
18-21 months   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0003608   -0.0150618    0.0157834
18-21 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0000796   -0.0107744    0.0109335
18-21 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0060217   -0.0196178    0.0075743
18-21 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0010072   -0.0165190    0.0145046
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0010843   -0.0165937    0.0144250
18-21 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0245789   -0.0495450    0.0003871
18-21 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0031069   -0.0116837    0.0178975
18-21 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0076422   -0.0060088    0.0212931
18-21 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0000234   -0.0125736    0.0125268
21-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0103164   -0.0210697    0.0417025
21-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0006805   -0.0071220    0.0084829
21-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0088813   -0.0397805    0.0220180
21-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0229131   -0.0042389    0.0500651
21-24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0043903   -0.0239069    0.0151263
21-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0012981   -0.0146335    0.0120374
21-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0143055   -0.0075507    0.0361618
21-24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0011893   -0.0076864    0.0100651
21-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0015109   -0.0116030    0.0146247
21-24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0081133   -0.0031208    0.0193474
21-24 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0060897   -0.0136853    0.0015060
21-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0011470   -0.0160437    0.0137497
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0024413   -0.0163862    0.0115037
21-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0105839   -0.0346359    0.0134681
21-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0054281   -0.0193297    0.0084736
21-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0069893   -0.0219851    0.0080065
21-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0059088   -0.0204895    0.0086718
