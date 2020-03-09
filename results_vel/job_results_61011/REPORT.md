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

**Outcome Variable:** y_rate_haz

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
![](/tmp/6d80ba7c-9f5c-4e2c-aade-15e2d61969f5/96acb12b-8e78-42ee-a724-e132e93091c7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/6d80ba7c-9f5c-4e2c-aade-15e2d61969f5/96acb12b-8e78-42ee-a724-e132e93091c7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/6d80ba7c-9f5c-4e2c-aade-15e2d61969f5/96acb12b-8e78-42ee-a724-e132e93091c7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat         studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0716752   -0.1850811    0.0417308
0-3 months     CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.0615158   -0.4689903    0.3459587
0-3 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.5405938   -0.5637903   -0.5173972
0-3 months     COHORTS          GUATEMALA                      Low birthweight              NA                -0.4592340   -0.5458666   -0.3726014
0-3 months     COHORTS          INDIA                          Normal or high birthweight   NA                -0.0817772   -0.0893214   -0.0742330
0-3 months     COHORTS          INDIA                          Low birthweight              NA                 0.0179014    0.0018517    0.0339511
0-3 months     EE               PAKISTAN                       Normal or high birthweight   NA                -0.2475366   -0.3033020   -0.1917713
0-3 months     EE               PAKISTAN                       Low birthweight              NA                -0.1641910   -0.2337132   -0.0946689
0-3 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0527594   -0.0819405   -0.0235783
0-3 months     GMS-Nepal        NEPAL                          Low birthweight              NA                 0.0200559   -0.0285760    0.0686877
0-3 months     IRC              INDIA                          Normal or high birthweight   NA                -0.2158917   -0.2765439   -0.1552394
0-3 months     IRC              INDIA                          Low birthweight              NA                -0.4289209   -0.5560268   -0.3018151
0-3 months     JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.0337768    0.0275818    0.0399717
0-3 months     JiVitA-3         BANGLADESH                     Low birthweight              NA                 0.1312590    0.1239812    0.1385369
0-3 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0283829    0.0113965    0.0453693
0-3 months     JiVitA-4         BANGLADESH                     Low birthweight              NA                 0.1447328    0.1189281    0.1705374
0-3 months     Keneba           GAMBIA                         Normal or high birthweight   NA                -0.2939354   -0.3191257   -0.2687450
0-3 months     Keneba           GAMBIA                         Low birthweight              NA                -0.2244630   -0.2932547   -0.1556714
0-3 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.1520561   -0.1897036   -0.1144085
0-3 months     MAL-ED           BANGLADESH                     Low birthweight              NA                 0.0042272   -0.0658756    0.0743300
0-3 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.1180299    0.0598237    0.1762362
0-3 months     MAL-ED           BRAZIL                         Low birthweight              NA                 0.5030250    0.3948260    0.6112240
0-3 months     MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0699917   -0.1259141   -0.0140693
0-3 months     MAL-ED           INDIA                          Low birthweight              NA                 0.0557985   -0.0690272    0.1806243
0-3 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0213895   -0.0229484    0.0657273
0-3 months     MAL-ED           NEPAL                          Low birthweight              NA                 0.3235528    0.1567909    0.4903147
0-3 months     MAL-ED           PERU                           Normal or high birthweight   NA                -0.2725109   -0.3070836   -0.2379382
0-3 months     MAL-ED           PERU                           Low birthweight              NA                -0.1255373   -0.3081897    0.0571150
0-3 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.1851276   -0.2353578   -0.1348975
0-3 months     MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -0.0816544   -0.3099199    0.1466111
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.1615319   -0.2073585   -0.1157053
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.0673386   -0.1932222    0.0585450
0-3 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2737040   -0.3054728   -0.2419352
0-3 months     NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.1507485   -0.1991665   -0.1023305
0-3 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.2425855   -0.2625133   -0.2226577
0-3 months     NIH-Crypto       BANGLADESH                     Low birthweight              NA                -0.1956501   -0.2324875   -0.1588128
0-3 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.2079693   -0.2282064   -0.1877323
0-3 months     PROVIDE          BANGLADESH                     Low birthweight              NA                -0.1262151   -0.1587632   -0.0936670
0-3 months     ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.4606344   -0.7204747   -0.2007941
0-3 months     ResPak           PAKISTAN                       Low birthweight              NA                -0.2237574   -0.5399283    0.0924136
0-3 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.1561967   -0.1897911   -0.1226023
0-3 months     SAS-CompFeed     INDIA                          Low birthweight              NA                -0.0420057   -0.0806683   -0.0033431
0-3 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1353815   -0.1462255   -0.1245376
0-3 months     ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -0.1705050   -0.2010321   -0.1399779
3-6 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1229426   -0.1747729   -0.0711123
3-6 months     CMC-V-BCS-2002   INDIA                          Low birthweight              NA                 0.1124828   -0.0144279    0.2393934
3-6 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1106280   -0.1263187   -0.0949373
3-6 months     COHORTS          GUATEMALA                      Low birthweight              NA                -0.0357887   -0.0831084    0.0115311
3-6 months     COHORTS          INDIA                          Normal or high birthweight   NA                -0.0660781   -0.0726155   -0.0595408
3-6 months     COHORTS          INDIA                          Low birthweight              NA                -0.0170993   -0.0305035   -0.0036951
3-6 months     EE               PAKISTAN                       Normal or high birthweight   NA                 0.0354513    0.0006507    0.0702519
3-6 months     EE               PAKISTAN                       Low birthweight              NA                 0.1159309    0.0719824    0.1598793
3-6 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.1850552   -0.2063381   -0.1637723
3-6 months     GMS-Nepal        NEPAL                          Low birthweight              NA                -0.1052829   -0.1408944   -0.0696714
3-6 months     IRC              INDIA                          Normal or high birthweight   NA                -0.0712240   -0.1039664   -0.0384817
3-6 months     IRC              INDIA                          Low birthweight              NA                 0.0504096   -0.0255239    0.1263431
3-6 months     JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                -0.0335282   -0.0396551   -0.0274012
3-6 months     JiVitA-3         BANGLADESH                     Low birthweight              NA                 0.0373982    0.0290352    0.0457613
3-6 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0239978   -0.0404456   -0.0075500
3-6 months     JiVitA-4         BANGLADESH                     Low birthweight              NA                 0.0408796    0.0127840    0.0689752
3-6 months     Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0525899   -0.0753012   -0.0298786
3-6 months     Keneba           GAMBIA                         Low birthweight              NA                 0.0510708    0.0020901    0.1000514
3-6 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0360059   -0.0622551   -0.0097568
3-6 months     MAL-ED           BANGLADESH                     Low birthweight              NA                 0.0279799   -0.0302291    0.0861888
3-6 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0515948    0.0139423    0.0892473
3-6 months     MAL-ED           BRAZIL                         Low birthweight              NA                 0.2257312    0.1297314    0.3217311
3-6 months     MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0443482   -0.0782225   -0.0104740
3-6 months     MAL-ED           INDIA                          Low birthweight              NA                -0.0552662   -0.1198209    0.0092885
3-6 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0355891   -0.0626848   -0.0084934
3-6 months     MAL-ED           NEPAL                          Low birthweight              NA                 0.1232317    0.0227725    0.2236908
3-6 months     MAL-ED           PERU                           Normal or high birthweight   NA                 0.0181956   -0.0139553    0.0503465
3-6 months     MAL-ED           PERU                           Low birthweight              NA                 0.1445840   -0.0136675    0.3028356
3-6 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0090704   -0.0480795    0.0299388
3-6 months     MAL-ED           SOUTH AFRICA                   Low birthweight              NA                 0.0576484   -0.1193472    0.2346439
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0817218   -0.1183295   -0.0451142
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.1055344   -0.0529042    0.2639730
3-6 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0615164   -0.0874716   -0.0355613
3-6 months     NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.0323183   -0.0781150    0.0134783
3-6 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0138059   -0.0052591    0.0328709
3-6 months     NIH-Crypto       BANGLADESH                     Low birthweight              NA                 0.0653047    0.0299300    0.1006795
3-6 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0448192   -0.0623610   -0.0272774
3-6 months     PROVIDE          BANGLADESH                     Low birthweight              NA                 0.0305885   -0.0065500    0.0677269
3-6 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0304887   -0.0532807   -0.0076967
3-6 months     SAS-CompFeed     INDIA                          Low birthweight              NA                 0.0446734    0.0134173    0.0759295
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0882851   -0.1053000   -0.0712702
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0418191   -0.0494948    0.1331329
3-6 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0168301   -0.0266159   -0.0070443
3-6 months     ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.1062677    0.0802883    0.1322471
6-9 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0824068   -0.1195253   -0.0452883
6-9 months     CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.0670053   -0.1770628    0.0430523
6-9 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1228038   -0.1362934   -0.1093141
6-9 months     COHORTS          GUATEMALA                      Low birthweight              NA                -0.1117503   -0.1567759   -0.0667247
6-9 months     COHORTS          INDIA                          Normal or high birthweight   NA                -0.1037362   -0.1094404   -0.0980320
6-9 months     COHORTS          INDIA                          Low birthweight              NA                -0.0674144   -0.0793837   -0.0554450
6-9 months     EE               PAKISTAN                       Normal or high birthweight   NA                -0.1024735   -0.1276740   -0.0772729
6-9 months     EE               PAKISTAN                       Low birthweight              NA                -0.0624645   -0.0983140   -0.0266149
6-9 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0559041   -0.0730255   -0.0387826
6-9 months     GMS-Nepal        NEPAL                          Low birthweight              NA                -0.0158430   -0.0652016    0.0335157
6-9 months     IRC              INDIA                          Normal or high birthweight   NA                -0.0240298   -0.0487831    0.0007236
6-9 months     IRC              INDIA                          Low birthweight              NA                 0.0107412   -0.0333491    0.0548315
6-9 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0362069   -0.0473919   -0.0250220
6-9 months     JiVitA-4         BANGLADESH                     Low birthweight              NA                 0.0018440   -0.0154711    0.0191592
6-9 months     Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0023988   -0.0332124    0.0284149
6-9 months     Keneba           GAMBIA                         Low birthweight              NA                -0.0339690   -0.0865962    0.0186582
6-9 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0732977   -0.0924031   -0.0541923
6-9 months     MAL-ED           BANGLADESH                     Low birthweight              NA                -0.0560738   -0.0999696   -0.0121781
6-9 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0079901   -0.0280428    0.0440229
6-9 months     MAL-ED           BRAZIL                         Low birthweight              NA                -0.0062392   -0.1582518    0.1457735
6-9 months     MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0814102   -0.1075959   -0.0552246
6-9 months     MAL-ED           INDIA                          Low birthweight              NA                -0.0224250   -0.0666512    0.0218012
6-9 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0350498   -0.0552477   -0.0148519
6-9 months     MAL-ED           NEPAL                          Low birthweight              NA                -0.0281550   -0.1122076    0.0558975
6-9 months     MAL-ED           PERU                           Normal or high birthweight   NA                -0.0325389   -0.0573356   -0.0077421
6-9 months     MAL-ED           PERU                           Low birthweight              NA                -0.0904475   -0.1838430    0.0029481
6-9 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0267558   -0.0547516    0.0012401
6-9 months     MAL-ED           SOUTH AFRICA                   Low birthweight              NA                 0.1437031   -0.0471341    0.3345402
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.1096828   -0.1515950   -0.0677705
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.0192033   -0.1143770    0.0759704
6-9 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0637168   -0.0854023   -0.0420314
6-9 months     NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.0559754   -0.0901678   -0.0217831
6-9 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0284983   -0.0428695   -0.0141271
6-9 months     NIH-Crypto       BANGLADESH                     Low birthweight              NA                -0.0393573   -0.0680567   -0.0106580
6-9 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0626072   -0.0750619   -0.0501524
6-9 months     PROVIDE          BANGLADESH                     Low birthweight              NA                -0.0582108   -0.0797184   -0.0367032
6-9 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0862428   -0.0993393   -0.0731463
6-9 months     SAS-CompFeed     INDIA                          Low birthweight              NA                -0.0719559   -0.1006190   -0.0432927
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0531552   -0.0693522   -0.0369581
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.0228497   -0.1566618    0.1109625
6-9 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0384005   -0.0473720   -0.0294289
6-9 months     ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.0145330   -0.0086688    0.0377348
9-12 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1220726   -0.1533888   -0.0907564
9-12 months    CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.0878880   -0.1705875   -0.0051884
9-12 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0970436   -0.1085760   -0.0855112
9-12 months    COHORTS          GUATEMALA                      Low birthweight              NA                -0.0474598   -0.0873380   -0.0075816
9-12 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.0855254   -0.0912177   -0.0798332
9-12 months    COHORTS          INDIA                          Low birthweight              NA                -0.0913888   -0.1033230   -0.0794546
9-12 months    EE               PAKISTAN                       Normal or high birthweight   NA                -0.1048414   -0.1220480   -0.0876349
9-12 months    EE               PAKISTAN                       Low birthweight              NA                -0.0966900   -0.1228196   -0.0705605
9-12 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0775873   -0.0907633   -0.0644114
9-12 months    GMS-Nepal        NEPAL                          Low birthweight              NA                -0.0959046   -0.1361970   -0.0556122
9-12 months    IRC              INDIA                          Normal or high birthweight   NA                -0.0412300   -0.0593440   -0.0231159
9-12 months    IRC              INDIA                          Low birthweight              NA                -0.0058596   -0.0548410    0.0431217
9-12 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0568833   -0.0657602   -0.0480063
9-12 months    JiVitA-4         BANGLADESH                     Low birthweight              NA                -0.0342523   -0.0504512   -0.0180533
9-12 months    Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1104618   -0.1346075   -0.0863161
9-12 months    Keneba           GAMBIA                         Low birthweight              NA                -0.0824806   -0.1210319   -0.0439293
9-12 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0921426   -0.1103237   -0.0739615
9-12 months    MAL-ED           BANGLADESH                     Low birthweight              NA                -0.0749579   -0.1115989   -0.0383168
9-12 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0030910   -0.0290882    0.0352701
9-12 months    MAL-ED           BRAZIL                         Low birthweight              NA                 0.0999861    0.0228426    0.1771295
9-12 months    MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0932106   -0.1115893   -0.0748319
9-12 months    MAL-ED           INDIA                          Low birthweight              NA                -0.0687791   -0.0949416   -0.0426165
9-12 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0639883   -0.0812764   -0.0467002
9-12 months    MAL-ED           NEPAL                          Low birthweight              NA                -0.0728015   -0.1430891   -0.0025140
9-12 months    MAL-ED           PERU                           Normal or high birthweight   NA                -0.0378494   -0.0604603   -0.0152385
9-12 months    MAL-ED           PERU                           Low birthweight              NA                -0.1177237   -0.1684598   -0.0669876
9-12 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0860474   -0.1137349   -0.0583599
9-12 months    MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -0.0776565   -0.2102624    0.0549494
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.1482099   -0.1901023   -0.1063175
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.0765645   -0.1389312   -0.0141979
9-12 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0491564   -0.0660744   -0.0322384
9-12 months    NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.0267055   -0.0548855    0.0014745
9-12 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0434741   -0.0555264   -0.0314217
9-12 months    NIH-Crypto       BANGLADESH                     Low birthweight              NA                -0.0059778   -0.0307137    0.0187581
9-12 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0699120   -0.0825508   -0.0572732
9-12 months    PROVIDE          BANGLADESH                     Low birthweight              NA                -0.0418325   -0.0631279   -0.0205371
9-12 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0896035   -0.0996440   -0.0795630
9-12 months    SAS-CompFeed     INDIA                          Low birthweight              NA                -0.0508733   -0.0768033   -0.0249432
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0668853   -0.0813691   -0.0524014
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.0273876   -0.1356578    0.0808826
9-12 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0639619   -0.0719558   -0.0559681
9-12 months    ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -0.0240145   -0.0447092   -0.0033197
12-15 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0806513   -0.1108153   -0.0504874
12-15 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                 0.0055927   -0.0726731    0.0838585
12-15 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0977408   -0.1107397   -0.0847419
12-15 months   COHORTS          GUATEMALA                      Low birthweight              NA                -0.0745982   -0.1168393   -0.0323571
12-15 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0057155   -0.0213151    0.0098840
12-15 months   EE               PAKISTAN                       Low birthweight              NA                 0.0148320   -0.0086352    0.0382993
12-15 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0738905   -0.0852774   -0.0625035
12-15 months   GMS-Nepal        NEPAL                          Low birthweight              NA                -0.0540687   -0.0780428   -0.0300947
12-15 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0448757   -0.0637410   -0.0260104
12-15 months   IRC              INDIA                          Low birthweight              NA                -0.0441092   -0.0838935   -0.0043249
12-15 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0501984   -0.0579723   -0.0424245
12-15 months   JiVitA-4         BANGLADESH                     Low birthweight              NA                -0.0417983   -0.0528060   -0.0307906
12-15 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0505215   -0.0653052   -0.0357378
12-15 months   Keneba           GAMBIA                         Low birthweight              NA                -0.0397642   -0.0754561   -0.0040723
12-15 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0560542   -0.0737989   -0.0383094
12-15 months   MAL-ED           BANGLADESH                     Low birthweight              NA                -0.0451560   -0.0791715   -0.0111406
12-15 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0020206   -0.0211247    0.0251659
12-15 months   MAL-ED           BRAZIL                         Low birthweight              NA                -0.0251074   -0.1415559    0.0913411
12-15 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0543283   -0.0706979   -0.0379588
12-15 months   MAL-ED           INDIA                          Low birthweight              NA                -0.0744664   -0.1243612   -0.0245716
12-15 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0563119   -0.0729060   -0.0397178
12-15 months   MAL-ED           NEPAL                          Low birthweight              NA                -0.0716257   -0.1155658   -0.0276857
12-15 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0681654   -0.0864922   -0.0498386
12-15 months   MAL-ED           PERU                           Low birthweight              NA                -0.0409523   -0.1192456    0.0373410
12-15 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0608461   -0.0847356   -0.0369566
12-15 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -0.0679755   -0.1383058    0.0023548
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0608494   -0.0894695   -0.0322292
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.1596087   -0.3143813   -0.0048361
12-15 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1359815   -0.1522861   -0.1196769
12-15 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.0528880   -0.1068315    0.0010556
12-15 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0397083   -0.0505665   -0.0288501
12-15 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                -0.0303625   -0.0503259   -0.0103990
12-15 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0376138   -0.0491221   -0.0261054
12-15 months   PROVIDE          BANGLADESH                     Low birthweight              NA                -0.0524306   -0.0732183   -0.0316429
12-15 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0856015   -0.1066749   -0.0645281
12-15 months   SAS-CompFeed     INDIA                          Low birthweight              NA                -0.0873197   -0.1159927   -0.0586466
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0692207   -0.0832356   -0.0552059
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.1395814   -0.0196921    0.2988550
12-15 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0621946   -0.0734521   -0.0509370
12-15 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -0.0646235   -0.0954172   -0.0338299
15-18 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0700239   -0.0934489   -0.0465989
15-18 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.0621443   -0.1588848    0.0345962
15-18 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0577192   -0.0710121   -0.0444262
15-18 months   COHORTS          GUATEMALA                      Low birthweight              NA                -0.0309653   -0.0840106    0.0220800
15-18 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0265355   -0.0405714   -0.0124997
15-18 months   EE               PAKISTAN                       Low birthweight              NA                -0.0261895   -0.0453982   -0.0069808
15-18 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0817468   -0.0970091   -0.0664845
15-18 months   GMS-Nepal        NEPAL                          Low birthweight              NA                -0.0341116   -0.0597555   -0.0084677
15-18 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0379591   -0.0538751   -0.0220430
15-18 months   IRC              INDIA                          Low birthweight              NA                -0.0178941   -0.0582640    0.0224757
15-18 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                -0.0369392   -0.0442624   -0.0296160
15-18 months   JiVitA-4         BANGLADESH                     Low birthweight              NA                -0.0295483   -0.0420822   -0.0170144
15-18 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0324542   -0.0476937   -0.0172147
15-18 months   Keneba           GAMBIA                         Low birthweight              NA                -0.0056944   -0.0343050    0.0229162
15-18 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0471435   -0.0616222   -0.0326649
15-18 months   MAL-ED           BANGLADESH                     Low birthweight              NA                -0.0321126   -0.0654785    0.0012534
15-18 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0213753   -0.0428094    0.0000587
15-18 months   MAL-ED           BRAZIL                         Low birthweight              NA                 0.0044517   -0.1089498    0.1178532
15-18 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0422655   -0.0562445   -0.0282866
15-18 months   MAL-ED           INDIA                          Low birthweight              NA                -0.0338808   -0.0744471    0.0066855
15-18 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0556619   -0.0721533   -0.0391706
15-18 months   MAL-ED           NEPAL                          Low birthweight              NA                -0.0499391   -0.0853075   -0.0145708
15-18 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0399151   -0.0559389   -0.0238913
15-18 months   MAL-ED           PERU                           Low birthweight              NA                 0.0189306   -0.0624915    0.1003527
15-18 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0293682   -0.0492271   -0.0095092
15-18 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -0.0051076   -0.0623394    0.0521242
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0944847   -0.1207632   -0.0682063
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0334010   -0.0448876    0.1116895
15-18 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0640792   -0.0812662   -0.0468922
15-18 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.0303905   -0.0595078   -0.0012733
15-18 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0207468   -0.0304812   -0.0110124
15-18 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                -0.0037615   -0.0201643    0.0126412
15-18 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0416779   -0.0514471   -0.0319088
15-18 months   PROVIDE          BANGLADESH                     Low birthweight              NA                -0.0238337   -0.0433661   -0.0043013
15-18 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0114274   -0.0253083    0.0024535
15-18 months   SAS-CompFeed     INDIA                          Low birthweight              NA                -0.0055849   -0.0389321    0.0277624
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0200018   -0.0356310   -0.0043726
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0118386   -0.0762910    0.0999681
15-18 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0627802   -0.0745638   -0.0509965
15-18 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -0.0575792   -0.0883099   -0.0268484
18-21 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0460519   -0.0704401   -0.0216637
18-21 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.0205464   -0.0847464    0.0436535
18-21 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0222448   -0.0336094   -0.0108802
18-21 months   COHORTS          GUATEMALA                      Low birthweight              NA                -0.0154160   -0.0692882    0.0384561
18-21 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0335201   -0.0450939   -0.0219463
18-21 months   EE               PAKISTAN                       Low birthweight              NA                -0.0403826   -0.0667599   -0.0140052
18-21 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0198190    0.0028140    0.0368241
18-21 months   GMS-Nepal        NEPAL                          Low birthweight              NA                 0.0076760   -0.0072426    0.0225947
18-21 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0410811   -0.0559044   -0.0262577
18-21 months   IRC              INDIA                          Low birthweight              NA                -0.0461868   -0.0770778   -0.0152958
18-21 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0138669   -0.0297822    0.0020484
18-21 months   Keneba           GAMBIA                         Low birthweight              NA                -0.0267748   -0.0565039    0.0029544
18-21 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                -0.0165437   -0.0290316   -0.0040558
18-21 months   MAL-ED           BANGLADESH                     Low birthweight              NA                -0.0111417   -0.0429267    0.0206434
18-21 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0200516   -0.0453345    0.0052313
18-21 months   MAL-ED           BRAZIL                         Low birthweight              NA                -0.0273850   -0.1229621    0.0681920
18-21 months   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0062202   -0.0063784    0.0188189
18-21 months   MAL-ED           INDIA                          Low birthweight              NA                 0.0110414   -0.0201469    0.0422297
18-21 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0292108   -0.0430430   -0.0153787
18-21 months   MAL-ED           NEPAL                          Low birthweight              NA                -0.0094379   -0.0540569    0.0351811
18-21 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0071063   -0.0229391    0.0087265
18-21 months   MAL-ED           PERU                           Low birthweight              NA                -0.0198450   -0.0846886    0.0449986
18-21 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0330010   -0.0527670   -0.0132351
18-21 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                -0.0363934   -0.1219350    0.0491482
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0285962   -0.0553538   -0.0018387
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.0218471   -0.1196305    0.0759363
18-21 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0327702   -0.0476384   -0.0179021
18-21 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.0446349   -0.0693182   -0.0199515
18-21 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0324664   -0.0412063   -0.0237266
18-21 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                -0.0133969   -0.0324856    0.0056919
18-21 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0165135   -0.0258849   -0.0071422
18-21 months   PROVIDE          BANGLADESH                     Low birthweight              NA                 0.0067564   -0.0098124    0.0233251
18-21 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0710633   -0.0836559   -0.0584707
18-21 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -0.0585660   -0.0947779   -0.0223540
21-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0140219   -0.0072329    0.0352767
21-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              NA                 0.0568488   -0.0363839    0.1500815
21-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0053783   -0.0151118    0.0043553
21-24 months   COHORTS          GUATEMALA                      Low birthweight              NA                -0.0018048   -0.0293810    0.0257713
21-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0051673   -0.0217190    0.0113844
21-24 months   EE               PAKISTAN                       Low birthweight              NA                -0.0077105   -0.0284641    0.0130430
21-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0388761    0.0207701    0.0569821
21-24 months   GMS-Nepal        NEPAL                          Low birthweight              NA                 0.0686596    0.0410278    0.0962913
21-24 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0145784   -0.0293158    0.0001590
21-24 months   IRC              INDIA                          Low birthweight              NA                -0.0089947   -0.0482002    0.0302107
21-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0150193    0.0007090    0.0293295
21-24 months   Keneba           GAMBIA                         Low birthweight              NA                 0.0326179    0.0041675    0.0610682
21-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0206249    0.0073485    0.0339014
21-24 months   MAL-ED           BANGLADESH                     Low birthweight              NA                 0.0471387    0.0150357    0.0792417
21-24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0164160   -0.0002349    0.0330669
21-24 months   MAL-ED           BRAZIL                         Low birthweight              NA                 0.0178809   -0.0282567    0.0640186
21-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0313015    0.0191399    0.0434631
21-24 months   MAL-ED           INDIA                          Low birthweight              NA                 0.0277051   -0.0032810    0.0586912
21-24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0027044   -0.0158310    0.0104222
21-24 months   MAL-ED           NEPAL                          Low birthweight              NA                -0.0016373   -0.0418712    0.0385965
21-24 months   MAL-ED           PERU                           Normal or high birthweight   NA                 0.0584456    0.0422782    0.0746131
21-24 months   MAL-ED           PERU                           Low birthweight              NA                 0.0227294   -0.0027515    0.0482104
21-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0442949    0.0271715    0.0614183
21-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              NA                 0.1094283    0.0511639    0.1676926
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0130770   -0.0123692    0.0385232
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0198528   -0.0697383    0.1094440
21-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0395272    0.0250754    0.0539790
21-24 months   NIH-Birth        BANGLADESH                     Low birthweight              NA                 0.0389708    0.0166271    0.0613146
21-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0566424    0.0470453    0.0662396
21-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              NA                 0.0627473    0.0456856    0.0798090
21-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0447223    0.0348615    0.0545830
21-24 months   PROVIDE          BANGLADESH                     Low birthweight              NA                 0.0495934    0.0312337    0.0679531
21-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0186590    0.0053640    0.0319539
21-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.0092771   -0.0293723    0.0479264


### Parameter: E(Y)


agecat         studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0878386   -0.1937874    0.0181102
0-3 months     COHORTS          GUATEMALA                      NA                   NA                -0.5327514   -0.5552134   -0.5102895
0-3 months     COHORTS          INDIA                          NA                   NA                -0.0616347   -0.0685285   -0.0547409
0-3 months     EE               PAKISTAN                       NA                   NA                -0.2173541   -0.2600129   -0.1746953
0-3 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0317680   -0.0569509   -0.0065852
0-3 months     IRC              INDIA                          NA                   NA                -0.2517387   -0.3068690   -0.1966084
0-3 months     JiVitA-3         BANGLADESH                     NA                   NA                 0.0740696    0.0690218    0.0791174
0-3 months     JiVitA-4         BANGLADESH                     NA                   NA                 0.0673143    0.0523756    0.0822531
0-3 months     Keneba           GAMBIA                         NA                   NA                -0.2839136   -0.3073760   -0.2604512
0-3 months     MAL-ED           BANGLADESH                     NA                   NA                -0.1233623   -0.1573331   -0.0893915
0-3 months     MAL-ED           BRAZIL                         NA                   NA                 0.1340714    0.0769051    0.1912377
0-3 months     MAL-ED           INDIA                          NA                   NA                -0.0558315   -0.1073579   -0.0043050
0-3 months     MAL-ED           NEPAL                          NA                   NA                 0.0479108    0.0033823    0.0924392
0-3 months     MAL-ED           PERU                           NA                   NA                -0.2637392   -0.2979115   -0.2295670
0-3 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.1806931   -0.2298379   -0.1315482
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1524797   -0.1965253   -0.1084341
0-3 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.2365683   -0.2634819   -0.2096547
0-3 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.2312607   -0.2486732   -0.2138483
0-3 months     PROVIDE          BANGLADESH                     NA                   NA                -0.1880402   -0.2054115   -0.1706689
0-3 months     ResPak           PAKISTAN                       NA                   NA                -0.4236224   -0.6503899   -0.1968549
0-3 months     SAS-CompFeed     INDIA                          NA                   NA                -0.1273566   -0.1543372   -0.1003761
0-3 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1396500   -0.1498974   -0.1294026
3-6 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979485   -0.1465278   -0.0493691
3-6 months     COHORTS          GUATEMALA                      NA                   NA                -0.1040917   -0.1191397   -0.0890438
3-6 months     COHORTS          INDIA                          NA                   NA                -0.0555469   -0.0614231   -0.0496706
3-6 months     EE               PAKISTAN                       NA                   NA                 0.0655669    0.0381519    0.0929818
3-6 months     GMS-Nepal        NEPAL                          NA                   NA                -0.1613977   -0.1800128   -0.1427826
3-6 months     IRC              INDIA                          NA                   NA                -0.0507703   -0.0811159   -0.0204248
3-6 months     JiVitA-3         BANGLADESH                     NA                   NA                -0.0048183   -0.0101890    0.0005525
3-6 months     JiVitA-4         BANGLADESH                     NA                   NA                -0.0086180   -0.0226664    0.0054305
3-6 months     Keneba           GAMBIA                         NA                   NA                -0.0397129   -0.0607889   -0.0186369
3-6 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0223165   -0.0461740    0.0015410
3-6 months     MAL-ED           BRAZIL                         NA                   NA                 0.0597292    0.0232017    0.0962566
3-6 months     MAL-ED           INDIA                          NA                   NA                -0.0410555   -0.0712575   -0.0108535
3-6 months     MAL-ED           NEPAL                          NA                   NA                -0.0217886   -0.0484402    0.0048630
3-6 months     MAL-ED           PERU                           NA                   NA                 0.0231042   -0.0080725    0.0542808
3-6 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0066117   -0.0446285    0.0314052
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0723590   -0.1085248   -0.0361933
3-6 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.0529028   -0.0754199   -0.0303858
3-6 months     NIH-Crypto       BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0269625   -0.0428628   -0.0110622
3-6 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0134541   -0.0340772    0.0071691
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0846842   -0.1014105   -0.0679580
3-6 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0011401   -0.0103512    0.0080709
6-9 months     CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0803561   -0.1150924   -0.0456197
6-9 months     COHORTS          GUATEMALA                      NA                   NA                -0.1219168   -0.1348310   -0.1090025
6-9 months     COHORTS          INDIA                          NA                   NA                -0.0963715   -0.1015092   -0.0912339
6-9 months     EE               PAKISTAN                       NA                   NA                -0.0859143   -0.1065467   -0.0652819
6-9 months     GMS-Nepal        NEPAL                          NA                   NA                -0.0435425   -0.0610734   -0.0260116
6-9 months     IRC              INDIA                          NA                   NA                -0.0162775   -0.0381158    0.0055609
6-9 months     JiVitA-4         BANGLADESH                     NA                   NA                -0.0277781   -0.0371747   -0.0183815
6-9 months     Keneba           GAMBIA                         NA                   NA                -0.0065406   -0.0339788    0.0208975
6-9 months     MAL-ED           BANGLADESH                     NA                   NA                -0.0710999   -0.0883796   -0.0538202
6-9 months     MAL-ED           BRAZIL                         NA                   NA                 0.0087834   -0.0260798    0.0436466
6-9 months     MAL-ED           INDIA                          NA                   NA                -0.0729456   -0.0963830   -0.0495082
6-9 months     MAL-ED           NEPAL                          NA                   NA                -0.0352521   -0.0549582   -0.0155461
6-9 months     MAL-ED           PERU                           NA                   NA                -0.0361297   -0.0602222   -0.0120373
6-9 months     MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0177890   -0.0460334    0.0104554
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1054498   -0.1457511   -0.0651485
6-9 months     NIH-Birth        BANGLADESH                     NA                   NA                -0.0625218   -0.0807337   -0.0443099
6-9 months     NIH-Crypto       BANGLADESH                     NA                   NA                -0.0313638   -0.0441155   -0.0186120
6-9 months     PROVIDE          BANGLADESH                     NA                   NA                -0.0614264   -0.0722690   -0.0505838
6-9 months     SAS-CompFeed     INDIA                          NA                   NA                -0.0830719   -0.0908166   -0.0753272
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0526742   -0.0687710   -0.0365775
6-9 months     ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0318556   -0.0402430   -0.0234683
9-12 months    CMC-V-BCS-2002   INDIA                          NA                   NA                -0.1177676   -0.1468468   -0.0886884
9-12 months    COHORTS          GUATEMALA                      NA                   NA                -0.0932852   -0.1042607   -0.0823097
9-12 months    COHORTS          INDIA                          NA                   NA                -0.0865275   -0.0916546   -0.0814004
9-12 months    EE               PAKISTAN                       NA                   NA                -0.1012899   -0.1160503   -0.0865295
9-12 months    GMS-Nepal        NEPAL                          NA                   NA                -0.0799887   -0.0936094   -0.0663679
9-12 months    IRC              INDIA                          NA                   NA                -0.0363102   -0.0534781   -0.0191422
9-12 months    JiVitA-4         BANGLADESH                     NA                   NA                -0.0513240   -0.0590544   -0.0435937
9-12 months    Keneba           GAMBIA                         NA                   NA                -0.1070876   -0.1287238   -0.0854514
9-12 months    MAL-ED           BANGLADESH                     NA                   NA                -0.0866490   -0.1028810   -0.0704169
9-12 months    MAL-ED           BRAZIL                         NA                   NA                 0.0081784   -0.0226414    0.0389982
9-12 months    MAL-ED           INDIA                          NA                   NA                -0.0901975   -0.1063468   -0.0740481
9-12 months    MAL-ED           NEPAL                          NA                   NA                -0.0607617   -0.0776200   -0.0439035
9-12 months    MAL-ED           PERU                           NA                   NA                -0.0411805   -0.0628061   -0.0195549
9-12 months    MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0847380   -0.1117373   -0.0577388
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1448184   -0.1849028   -0.1047340
9-12 months    NIH-Birth        BANGLADESH                     NA                   NA                -0.0423937   -0.0570582   -0.0277292
9-12 months    NIH-Crypto       BANGLADESH                     NA                   NA                -0.0342995   -0.0452397   -0.0233593
9-12 months    PROVIDE          BANGLADESH                     NA                   NA                -0.0630470   -0.0740183   -0.0520757
9-12 months    SAS-CompFeed     INDIA                          NA                   NA                -0.0803162   -0.0926753   -0.0679571
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0652418   -0.0796317   -0.0508518
9-12 months    ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0592096   -0.0666786   -0.0517405
12-15 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0705025   -0.0989616   -0.0420435
12-15 months   COHORTS          GUATEMALA                      NA                   NA                -0.0958538   -0.1082171   -0.0834904
12-15 months   EE               PAKISTAN                       NA                   NA                -0.0009386   -0.0138727    0.0119955
12-15 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0665123   -0.0773867   -0.0556379
12-15 months   IRC              INDIA                          NA                   NA                -0.0461529   -0.0631421   -0.0291637
12-15 months   JiVitA-4         BANGLADESH                     NA                   NA                -0.0481485   -0.0546739   -0.0416231
12-15 months   Keneba           GAMBIA                         NA                   NA                -0.0505089   -0.0640589   -0.0369589
12-15 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0553468   -0.0709909   -0.0397027
12-15 months   MAL-ED           BRAZIL                         NA                   NA                -0.0030430   -0.0256176    0.0195316
12-15 months   MAL-ED           INDIA                          NA                   NA                -0.0570181   -0.0726888   -0.0413475
12-15 months   MAL-ED           NEPAL                          NA                   NA                -0.0556717   -0.0713623   -0.0399811
12-15 months   MAL-ED           PERU                           NA                   NA                -0.0667709   -0.0846929   -0.0488488
12-15 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0600337   -0.0829414   -0.0371260
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0655244   -0.0939345   -0.0371143
12-15 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.1257162   -0.1430906   -0.1083418
12-15 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0383313   -0.0478154   -0.0288473
12-15 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0409107   -0.0510053   -0.0308161
12-15 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0858392   -0.1000816   -0.0715968
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0651955   -0.0796086   -0.0507823
12-15 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0624978   -0.0730686   -0.0519271
15-18 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0681097   -0.0919486   -0.0442708
15-18 months   COHORTS          GUATEMALA                      NA                   NA                -0.0559720   -0.0688825   -0.0430614
15-18 months   EE               PAKISTAN                       NA                   NA                -0.0256550   -0.0369587   -0.0143512
15-18 months   GMS-Nepal        NEPAL                          NA                   NA                -0.0689576   -0.0815283   -0.0563869
15-18 months   IRC              INDIA                          NA                   NA                -0.0372117   -0.0520811   -0.0223423
15-18 months   JiVitA-4         BANGLADESH                     NA                   NA                -0.0345206   -0.0410991   -0.0279421
15-18 months   Keneba           GAMBIA                         NA                   NA                -0.0293214   -0.0431069   -0.0155360
15-18 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0465581   -0.0600639   -0.0330524
15-18 months   MAL-ED           BRAZIL                         NA                   NA                -0.0203422   -0.0414264    0.0007419
15-18 months   MAL-ED           INDIA                          NA                   NA                -0.0392444   -0.0524562   -0.0260326
15-18 months   MAL-ED           NEPAL                          NA                   NA                -0.0560076   -0.0714213   -0.0405938
15-18 months   MAL-ED           PERU                           NA                   NA                -0.0355924   -0.0511744   -0.0200104
15-18 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0284295   -0.0474993   -0.0093597
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0882081   -0.1138460   -0.0625703
15-18 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.0565325   -0.0714057   -0.0416592
15-18 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0169074   -0.0252557   -0.0085590
15-18 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0376437   -0.0463882   -0.0288992
15-18 months   SAS-CompFeed     INDIA                          NA                   NA                -0.0103307   -0.0201744   -0.0004870
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0192601   -0.0346672   -0.0038530
15-18 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0622601   -0.0732419   -0.0512783
18-21 months   CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0428831   -0.0655837   -0.0201825
18-21 months   COHORTS          GUATEMALA                      NA                   NA                -0.0219623   -0.0332925   -0.0106320
18-21 months   EE               PAKISTAN                       NA                   NA                -0.0357223   -0.0470222   -0.0244224
18-21 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0155926    0.0038526    0.0273327
18-21 months   IRC              INDIA                          NA                   NA                -0.0407480   -0.0541320   -0.0273640
18-21 months   Keneba           GAMBIA                         NA                   NA                -0.0156182   -0.0297814   -0.0014550
18-21 months   MAL-ED           BANGLADESH                     NA                   NA                -0.0152856   -0.0270052   -0.0035661
18-21 months   MAL-ED           BRAZIL                         NA                   NA                -0.0203590   -0.0449122    0.0041942
18-21 months   MAL-ED           INDIA                          NA                   NA                 0.0066992   -0.0048549    0.0182534
18-21 months   MAL-ED           NEPAL                          NA                   NA                -0.0283427   -0.0415128   -0.0151727
18-21 months   MAL-ED           PERU                           NA                   NA                -0.0075024   -0.0228526    0.0078478
18-21 months   MAL-ED           SOUTH AFRICA                   NA                   NA                -0.0324839   -0.0517228   -0.0132451
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0282479   -0.0541225   -0.0023733
18-21 months   NIH-Birth        BANGLADESH                     NA                   NA                -0.0363472   -0.0490347   -0.0236597
18-21 months   NIH-Crypto       BANGLADESH                     NA                   NA                -0.0279687   -0.0360019   -0.0199355
18-21 months   PROVIDE          BANGLADESH                     NA                   NA                -0.0109399   -0.0190984   -0.0027814
18-21 months   ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0692820   -0.0810605   -0.0575034
21-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                 0.0174829   -0.0037938    0.0387597
21-24 months   COHORTS          GUATEMALA                      NA                   NA                -0.0032689   -0.0124286    0.0058908
21-24 months   EE               PAKISTAN                       NA                   NA                -0.0065196   -0.0190677    0.0060285
21-24 months   GMS-Nepal        NEPAL                          NA                   NA                 0.0477538    0.0321932    0.0633143
21-24 months   IRC              INDIA                          NA                   NA                -0.0137009   -0.0274163    0.0000145
21-24 months   Keneba           GAMBIA                         NA                   NA                 0.0164472    0.0035222    0.0293722
21-24 months   MAL-ED           BANGLADESH                     NA                   NA                 0.0266812    0.0145631    0.0387993
21-24 months   MAL-ED           BRAZIL                         NA                   NA                 0.0164870    0.0004862    0.0324878
21-24 months   MAL-ED           INDIA                          NA                   NA                 0.0308992    0.0196401    0.0421582
21-24 months   MAL-ED           NEPAL                          NA                   NA                 0.0007364   -0.0118324    0.0133051
21-24 months   MAL-ED           PERU                           NA                   NA                 0.0568758    0.0414457    0.0723058
21-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                 0.0440882    0.0272574    0.0609190
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0134267   -0.0111463    0.0379997
21-24 months   NIH-Birth        BANGLADESH                     NA                   NA                 0.0395499    0.0276352    0.0514645
21-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                 0.0587621    0.0505315    0.0669927
21-24 months   PROVIDE          BANGLADESH                     NA                   NA                 0.0462342    0.0375872    0.0548812
21-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                 0.0177092    0.0051862    0.0302321


### Parameter: ATE


agecat         studyid          country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0101594   -0.4104473    0.4307660
0-3 months     COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0813598   -0.0083148    0.1710343
0-3 months     COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     COHORTS          INDIA                          Low birthweight              Normal or high birthweight     0.0996786    0.0819851    0.1173720
0-3 months     EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0833456   -0.0056849    0.1723761
0-3 months     GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0728152    0.0160267    0.1296038
0-3 months     IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.2130293   -0.3536588   -0.0723997
0-3 months     JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0974822    0.0887922    0.1061723
0-3 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight     0.1163499    0.0855987    0.1471010
0-3 months     Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0694723   -0.0037944    0.1427390
0-3 months     MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.1562833    0.0763011    0.2362654
0-3 months     MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.3849950    0.2621334    0.5078567
0-3 months     MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.1257903   -0.0105394    0.2621199
0-3 months     MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.3021633    0.1294674    0.4748593
0-3 months     MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           PERU                           Low birthweight              Normal or high birthweight     0.1469735   -0.0390382    0.3329852
0-3 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.1034733   -0.1302535    0.3372000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0941933   -0.0401002    0.2284868
0-3 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.1229555    0.0650280    0.1808831
0-3 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     0.0469354    0.0051293    0.0887415
0-3 months     PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0817543    0.0433978    0.1201108
0-3 months     ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight     0.2368770   -0.1723675    0.6461215
0-3 months     SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     0.1141910    0.0633941    0.1649878
0-3 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
0-3 months     ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0351235   -0.0674555   -0.0027915
3-6 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.2354254    0.0979825    0.3728683
3-6 months     COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0748393    0.0250093    0.1246693
3-6 months     COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     COHORTS          INDIA                          Low birthweight              Normal or high birthweight     0.0489789    0.0340830    0.0638748
3-6 months     EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0804795    0.0243386    0.1366205
3-6 months     GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0797724    0.0382073    0.1213374
3-6 months     IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     IRC              INDIA                          Low birthweight              Normal or high birthweight     0.1216336    0.0388002    0.2044670
3-6 months     JiVitA-3         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-3         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0709264    0.0614791    0.0803738
3-6 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0648774    0.0329727    0.0967821
3-6 months     Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.1036607    0.0498203    0.1575010
3-6 months     MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0639858    0.0000694    0.1279022
3-6 months     MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.1741364    0.0707752    0.2774977
3-6 months     MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.0109180   -0.0842139    0.0623778
3-6 months     MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.1588207    0.0549841    0.2626574
3-6 months     MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           PERU                           Low birthweight              Normal or high birthweight     0.1263884   -0.0352922    0.2880691
3-6 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0667188   -0.1140726    0.2475101
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1872563    0.0246435    0.3498690
3-6 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0291981   -0.0237533    0.0821495
3-6 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     0.0514988    0.0114339    0.0915637
3-6 months     PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0754077    0.0343890    0.1164264
3-6 months     SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     0.0751621    0.0418333    0.1084909
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1301042    0.0371752    0.2230332
3-6 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
3-6 months     ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.1230978    0.0953517    0.1508439
6-9 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0154015   -0.1009509    0.1317539
6-9 months     COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0110535   -0.0358932    0.0580002
6-9 months     COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     COHORTS          INDIA                          Low birthweight              Normal or high birthweight     0.0363218    0.0230690    0.0495747
6-9 months     EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0400090   -0.0038269    0.0838449
6-9 months     GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0400611   -0.0119699    0.0920920
6-9 months     IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0347710   -0.0160931    0.0856351
6-9 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0380510    0.0176552    0.0584468
6-9 months     Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0315702   -0.0926942    0.0295538
6-9 months     MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0172239   -0.0310799    0.0655276
6-9 months     MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.0142292   -0.1703554    0.1418970
6-9 months     MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0589852    0.0074981    0.1104724
6-9 months     MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.0068948   -0.0794132    0.0932027
6-9 months     MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0579086   -0.1546756    0.0388584
6-9 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.1704588   -0.0227584    0.3636761
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0904795   -0.0135141    0.1944731
6-9 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0077414   -0.0328145    0.0482973
6-9 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0108591   -0.0428597    0.0211415
6-9 months     PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0043964   -0.0202993    0.0290921
6-9 months     SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     0.0142869   -0.0238604    0.0524343
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0303055   -0.1044771    0.1650881
6-9 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6-9 months     ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0529335    0.0280966    0.0777704
9-12 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0341846   -0.0544442    0.1228134
9-12 months    COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0495837    0.0079569    0.0912106
9-12 months    COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.0058633   -0.0190579    0.0073312
9-12 months    EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0081514   -0.0221272    0.0384300
9-12 months    GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0183173   -0.0610017    0.0243671
9-12 months    IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0353703   -0.0169381    0.0876788
9-12 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0226310    0.0040781    0.0411840
9-12 months    Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0279811   -0.0182303    0.0741926
9-12 months    MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0171847   -0.0238884    0.0582579
9-12 months    MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0968951    0.0132175    0.1805727
9-12 months    MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0244315   -0.0076342    0.0564973
9-12 months    MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.0088132   -0.0814237    0.0637973
9-12 months    MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0798742   -0.1355446   -0.0242038
9-12 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0083909   -0.1270932    0.1438750
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0716454   -0.0034850    0.1467757
9-12 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0224509   -0.0102486    0.0551503
9-12 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     0.0374963    0.0099634    0.0650292
9-12 months    PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0280795    0.0035319    0.0526271
9-12 months    SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     0.0387303    0.0149635    0.0624970
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0394977   -0.0697109    0.1487062
9-12 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
9-12 months    ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0399475    0.0177625    0.0621324
12-15 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0862440    0.0023636    0.1701244
12-15 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0231426   -0.0209847    0.0672699
12-15 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0205476   -0.0076974    0.0487925
12-15 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0198217   -0.0067897    0.0464332
12-15 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0007665   -0.0431918    0.0447249
12-15 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0084001   -0.0046848    0.0214850
12-15 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0107573   -0.0279285    0.0494430
12-15 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0108982   -0.0275658    0.0493621
12-15 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.0271280   -0.1456316    0.0913756
12-15 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.0201381   -0.0727129    0.0324368
12-15 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight    -0.0153139   -0.0623099    0.0316822
12-15 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight     0.0272132   -0.0532062    0.1076325
12-15 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0071294   -0.0811755    0.0669167
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.0987593   -0.2561559    0.0586372
12-15 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0830935    0.0260824    0.1401047
12-15 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     0.0093458   -0.0133620    0.0320537
12-15 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0148168   -0.0384013    0.0087676
12-15 months   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight    -0.0017182   -0.0445781    0.0411418
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.2088022    0.0489748    0.3686295
12-15 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
12-15 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0024290   -0.0352382    0.0303802
15-18 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0078796   -0.0914107    0.1071699
15-18 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0267539   -0.0281186    0.0816264
15-18 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight     0.0003460   -0.0236289    0.0243210
15-18 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0476352    0.0185354    0.0767350
15-18 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0200649   -0.0232893    0.0634192
15-18 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   JiVitA-4         BANGLADESH                     Low birthweight              Normal or high birthweight     0.0073909   -0.0063966    0.0211784
15-18 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0267598   -0.0057629    0.0592825
15-18 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0150310   -0.0215607    0.0516226
15-18 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0258270   -0.0895823    0.1412364
15-18 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0083847   -0.0345917    0.0513611
15-18 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.0057228   -0.0333387    0.0447843
15-18 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight     0.0588457   -0.0242120    0.1419034
15-18 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0242606   -0.0363577    0.0848788
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.1278857    0.0453045    0.2104668
15-18 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight     0.0336887   -0.0002226    0.0675999
15-18 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     0.0169852   -0.0020814    0.0360519
15-18 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0178442   -0.0039773    0.0396657
15-18 months   SAS-CompFeed     INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   SAS-CompFeed     INDIA                          Low birthweight              Normal or high birthweight     0.0058425   -0.0355369    0.0472219
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0318403   -0.0575719    0.1212525
15-18 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
15-18 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0052010   -0.0277848    0.0381868
18-21 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0255055   -0.0429916    0.0940025
18-21 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0068288   -0.0482624    0.0619200
18-21 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0068625   -0.0356995    0.0219746
18-21 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.0121430   -0.0348509    0.0105649
18-21 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.0051057   -0.0393070    0.0290956
18-21 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.0129079   -0.0469101    0.0210944
18-21 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0054020   -0.0287833    0.0395874
18-21 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight    -0.0073335   -0.1061980    0.0915311
18-21 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight     0.0048212   -0.0288189    0.0384612
18-21 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.0197729   -0.0269908    0.0665366
18-21 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0127387   -0.0795274    0.0540500
18-21 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.0033923   -0.0910906    0.0843060
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0067492   -0.0946292    0.1081275
18-21 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0118646   -0.0407060    0.0169767
18-21 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     0.0190696   -0.0019430    0.0400822
18-21 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0232699    0.0042205    0.0423193
18-21 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
18-21 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight     0.0124973   -0.0258722    0.0508669
21-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight     0.0428269   -0.0533825    0.1390363
21-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight     0.0035734   -0.0257764    0.0329233
21-24 months   EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0025433   -0.0290442    0.0239577
21-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight     0.0297835   -0.0033390    0.0629059
21-24 months   IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   IRC              INDIA                          Low birthweight              Normal or high birthweight     0.0055837   -0.0363105    0.0474778
21-24 months   Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   Keneba           GAMBIA                         Low birthweight              Normal or high birthweight     0.0175986   -0.0143911    0.0495883
21-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BANGLADESH                     Low birthweight              Normal or high birthweight     0.0265138   -0.0080374    0.0610650
21-24 months   MAL-ED           BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           BRAZIL                         Low birthweight              Normal or high birthweight     0.0014650   -0.0475854    0.0505153
21-24 months   MAL-ED           INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           INDIA                          Low birthweight              Normal or high birthweight    -0.0035964   -0.0367186    0.0295258
21-24 months   MAL-ED           NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           NEPAL                          Low birthweight              Normal or high birthweight     0.0010670   -0.0410766    0.0432107
21-24 months   MAL-ED           PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           PERU                           Low birthweight              Normal or high birthweight    -0.0357162   -0.0658260   -0.0056064
21-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0651333    0.0047673    0.1254994
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight     0.0067758   -0.0863589    0.0999106
21-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.0005564   -0.0273728    0.0262600
21-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   NIH-Crypto       BANGLADESH                     Low birthweight              Normal or high birthweight     0.0061049   -0.0134883    0.0256981
21-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   PROVIDE          BANGLADESH                     Low birthweight              Normal or high birthweight     0.0048712   -0.0159723    0.0257147
21-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
21-24 months   ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0093819   -0.0503333    0.0315695


### Parameter: PAR


agecat         studyid          country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
-------------  ---------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
0-3 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0161634   -0.0576849    0.0253580
0-3 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0078423    0.0011715    0.0145132
0-3 months     COHORTS          INDIA                          Normal or high birthweight   NA                 0.0201425    0.0163979    0.0238871
0-3 months     EE               PAKISTAN                       Normal or high birthweight   NA                 0.0301825   -0.0030978    0.0634629
0-3 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0209914    0.0035296    0.0384531
0-3 months     IRC              INDIA                          Normal or high birthweight   NA                -0.0358470   -0.0600151   -0.0116790
0-3 months     JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.0402928    0.0364557    0.0441300
0-3 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0389315    0.0275586    0.0503043
0-3 months     Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0100217   -0.0003484    0.0203919
0-3 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0286937    0.0098924    0.0474950
0-3 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0160415    0.0032998    0.0287831
0-3 months     MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0141602   -0.0047491    0.0330696
0-3 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0265213    0.0068268    0.0462158
0-3 months     MAL-ED           PERU                           Normal or high birthweight   NA                 0.0087716   -0.0022279    0.0197712
0-3 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0044346   -0.0059774    0.0148466
0-3 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0090522    0.0002456    0.0178588
0-3 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0371357    0.0193958    0.0548755
0-3 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0113248    0.0015444    0.0211051
0-3 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0199291    0.0103309    0.0295274
0-3 months     ResPak           PAKISTAN                       Normal or high birthweight   NA                 0.0370120   -0.0337380    0.1077621
0-3 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0288400    0.0172037    0.0404764
0-3 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0042685   -0.0083922   -0.0001448
3-6 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0249941    0.0060675    0.0439208
3-6 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0065363    0.0019005    0.0111720
3-6 months     COHORTS          INDIA                          Normal or high birthweight   NA                 0.0105313    0.0075098    0.0135528
3-6 months     EE               PAKISTAN                       Normal or high birthweight   NA                 0.0301155    0.0088724    0.0513587
3-6 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0236575    0.0108618    0.0364533
3-6 months     IRC              INDIA                          Normal or high birthweight   NA                 0.0204537    0.0064861    0.0344212
3-6 months     JiVitA-3         BANGLADESH                     Normal or high birthweight   NA                 0.0287099    0.0247650    0.0326547
3-6 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0153798    0.0075812    0.0231784
3-6 months     Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0128770    0.0046748    0.0210793
3-6 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0136894   -0.0000514    0.0274303
3-6 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0081344    0.0010420    0.0152268
3-6 months     MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0032927   -0.0068435    0.0134290
3-6 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0138005    0.0037749    0.0238261
3-6 months     MAL-ED           PERU                           Normal or high birthweight   NA                 0.0049086   -0.0026753    0.0124924
3-6 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0024587   -0.0066761    0.0115936
3-6 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0093628   -0.0007294    0.0194550
3-6 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0086136   -0.0067317    0.0239589
3-6 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0129681    0.0030052    0.0229310
3-6 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0178567    0.0082028    0.0275106
3-6 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0170347    0.0086445    0.0254248
3-6 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0036009    0.0004778    0.0067239
3-6 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0156900    0.0120805    0.0192994
6-9 months     CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0020507   -0.0117715    0.0158730
6-9 months     COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0008870   -0.0034024    0.0051765
6-9 months     COHORTS          INDIA                          Normal or high birthweight   NA                 0.0073647    0.0047656    0.0099638
6-9 months     EE               PAKISTAN                       Normal or high birthweight   NA                 0.0165592    0.0016619    0.0314565
6-9 months     GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0123616   -0.0012367    0.0259598
6-9 months     IRC              INDIA                          Normal or high birthweight   NA                 0.0077523   -0.0009775    0.0164820
6-9 months     JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0084288    0.0030651    0.0137926
6-9 months     Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0041418   -0.0120417    0.0037581
6-9 months     MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0021978   -0.0076451    0.0120407
6-9 months     MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0007933   -0.0060431    0.0076297
6-9 months     MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0084646    0.0005935    0.0163357
6-9 months     MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0002024   -0.0070003    0.0065956
6-9 months     MAL-ED           PERU                           Normal or high birthweight   NA                -0.0035909   -0.0098846    0.0027028
6-9 months     MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0089668   -0.0011439    0.0190774
6-9 months     MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0042330   -0.0014168    0.0098827
6-9 months     NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0011950   -0.0107833    0.0131733
6-9 months     NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                -0.0028655   -0.0099830    0.0042520
6-9 months     PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0011808   -0.0047009    0.0070625
6-9 months     SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0031709   -0.0055828    0.0119246
6-9 months     TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0004810   -0.0028897    0.0038516
6-9 months     ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0065448    0.0035108    0.0095789
9-12 months    CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0043050   -0.0060343    0.0146443
9-12 months    COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0037583    0.0002591    0.0072576
9-12 months    COHORTS          INDIA                          Normal or high birthweight   NA                -0.0010021   -0.0035102    0.0015060
9-12 months    EE               PAKISTAN                       Normal or high birthweight   NA                 0.0035515   -0.0064528    0.0135557
9-12 months    GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0024013   -0.0133815    0.0085788
9-12 months    IRC              INDIA                          Normal or high birthweight   NA                 0.0049198   -0.0037900    0.0136296
9-12 months    JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0055592    0.0007754    0.0103431
9-12 months    Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0033742   -0.0022912    0.0090395
9-12 months    MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0054936   -0.0032289    0.0142162
9-12 months    MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0050874   -0.0002121    0.0103870
9-12 months    MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0030131   -0.0017368    0.0077630
9-12 months    MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0032266   -0.0026396    0.0090928
9-12 months    MAL-ED           PERU                           Normal or high birthweight   NA                -0.0033311   -0.0081147    0.0014525
9-12 months    MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0013094   -0.0060837    0.0087024
9-12 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0033915   -0.0008442    0.0076272
9-12 months    NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0067627   -0.0032733    0.0167986
9-12 months    NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0091746    0.0025940    0.0157552
9-12 months    PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0068650    0.0009512    0.0127788
9-12 months    SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0092873    0.0034602    0.0151145
9-12 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0016435   -0.0013708    0.0046578
9-12 months    ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0047524    0.0020517    0.0074531
12-15 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0101488   -0.0008259    0.0211234
12-15 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0018870   -0.0017485    0.0055226
12-15 months   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0047769   -0.0048636    0.0144174
12-15 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0073782   -0.0010203    0.0157766
12-15 months   IRC              INDIA                          Normal or high birthweight   NA                -0.0012772   -0.0084785    0.0059242
12-15 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0020499   -0.0014603    0.0055600
12-15 months   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0000126   -0.0051530    0.0051781
12-15 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0007074   -0.0076746    0.0090894
12-15 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0050636   -0.0104747    0.0003476
12-15 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0026898   -0.0103370    0.0049573
12-15 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0006402   -0.0033396    0.0046199
12-15 months   MAL-ED           PERU                           Normal or high birthweight   NA                 0.0013946   -0.0034727    0.0062618
12-15 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0008124   -0.0028949    0.0045197
12-15 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0046750   -0.0127726    0.0034226
12-15 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0102653   -0.0043962    0.0249267
12-15 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0013770   -0.0039457    0.0066997
12-15 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                -0.0032970   -0.0085874    0.0019935
12-15 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                -0.0002377   -0.0096152    0.0091398
12-15 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0040253   -0.0006517    0.0087022
12-15 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0003032   -0.0046137    0.0040072
15-18 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0019142   -0.0104607    0.0142891
15-18 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0017472   -0.0033196    0.0068140
15-18 months   EE               PAKISTAN                       Normal or high birthweight   NA                 0.0008806   -0.0071537    0.0089148
15-18 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0127892    0.0034126    0.0221658
15-18 months   IRC              INDIA                          Normal or high birthweight   NA                 0.0007473   -0.0064250    0.0079197
15-18 months   JiVitA-4         BANGLADESH                     Normal or high birthweight   NA                 0.0024186   -0.0011162    0.0059535
15-18 months   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0031328   -0.0010361    0.0073016
15-18 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0005854   -0.0077674    0.0089382
15-18 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0010331   -0.0036441    0.0057103
15-18 months   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0030211   -0.0034293    0.0094715
15-18 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                -0.0003456   -0.0034826    0.0027913
15-18 months   MAL-ED           PERU                           Normal or high birthweight   NA                 0.0043227   -0.0002789    0.0089243
15-18 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0009387   -0.0020474    0.0039247
15-18 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0062766    0.0004006    0.0121526
15-18 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0075467   -0.0026916    0.0177850
15-18 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0038394   -0.0006800    0.0083589
15-18 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0040342   -0.0008724    0.0089408
15-18 months   SAS-CompFeed     INDIA                          Normal or high birthweight   NA                 0.0010967   -0.0090096    0.0112030
15-18 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0007417   -0.0022189    0.0037022
15-18 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0005201   -0.0038047    0.0048448
18-21 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0031688   -0.0052582    0.0115958
18-21 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0002825   -0.0045605    0.0051255
18-21 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0022022   -0.0108115    0.0064071
18-21 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0042264   -0.0118380    0.0033852
18-21 months   IRC              INDIA                          Normal or high birthweight   NA                 0.0003331   -0.0053732    0.0060394
18-21 months   Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0017513   -0.0062706    0.0027679
18-21 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0012580   -0.0062246    0.0087407
18-21 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                -0.0003074   -0.0044574    0.0038427
18-21 months   MAL-ED           INDIA                          Normal or high birthweight   NA                 0.0004790   -0.0043267    0.0052847
18-21 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0008681   -0.0028433    0.0045795
18-21 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0003961   -0.0045970    0.0038047
18-21 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                 0.0005171   -0.0042922    0.0053264
18-21 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0003483   -0.0048894    0.0055861
18-21 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.0035770   -0.0122250    0.0050710
18-21 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0044977   -0.0006385    0.0096339
18-21 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0055736    0.0008833    0.0102640
18-21 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.0017813   -0.0024931    0.0060558
21-24 months   CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                 0.0034610   -0.0076013    0.0145233
21-24 months   COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.0021093   -0.0007102    0.0049289
21-24 months   EE               PAKISTAN                       Normal or high birthweight   NA                -0.0013523   -0.0112582    0.0085536
21-24 months   GMS-Nepal        NEPAL                          Normal or high birthweight   NA                 0.0088776   -0.0004227    0.0181780
21-24 months   IRC              INDIA                          Normal or high birthweight   NA                 0.0008775   -0.0058819    0.0076369
21-24 months   Keneba           GAMBIA                         Normal or high birthweight   NA                 0.0014279   -0.0031449    0.0060008
21-24 months   MAL-ED           BANGLADESH                     Normal or high birthweight   NA                 0.0060562   -0.0011227    0.0132351
21-24 months   MAL-ED           BRAZIL                         Normal or high birthweight   NA                 0.0000710   -0.0023077    0.0024497
21-24 months   MAL-ED           INDIA                          Normal or high birthweight   NA                -0.0004024   -0.0052773    0.0044725
21-24 months   MAL-ED           NEPAL                          Normal or high birthweight   NA                 0.0034408   -0.0002571    0.0071387
21-24 months   MAL-ED           PERU                           Normal or high birthweight   NA                -0.0015699   -0.0036050    0.0004653
21-24 months   MAL-ED           SOUTH AFRICA                   Normal or high birthweight   NA                -0.0002067   -0.0049355    0.0045221
21-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.0003497   -0.0044631    0.0051625
21-24 months   NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                 0.0000226   -0.0080260    0.0080713
21-24 months   NIH-Crypto       BANGLADESH                     Normal or high birthweight   NA                 0.0021197   -0.0025442    0.0067835
21-24 months   PROVIDE          BANGLADESH                     Normal or high birthweight   NA                 0.0015120   -0.0035241    0.0065480
21-24 months   ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0009498   -0.0056565    0.0037569
