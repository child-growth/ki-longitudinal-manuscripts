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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* W_nrooms
* impsan
* delta_W_mage
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid          country                        meducyrs    stunted   n_cell       n
----------  ---------------  -----------------------------  ---------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          High              0       43      92
Birth       CMC-V-BCS-2002   INDIA                          High              1        8      92
Birth       CMC-V-BCS-2002   INDIA                          Low               0       14      92
Birth       CMC-V-BCS-2002   INDIA                          Low               1        2      92
Birth       CMC-V-BCS-2002   INDIA                          Medium            0       18      92
Birth       CMC-V-BCS-2002   INDIA                          Medium            1        7      92
Birth       COHORTS          GUATEMALA                      High              0      168     842
Birth       COHORTS          GUATEMALA                      High              1       10     842
Birth       COHORTS          GUATEMALA                      Low               0      361     842
Birth       COHORTS          GUATEMALA                      Low               1       30     842
Birth       COHORTS          GUATEMALA                      Medium            0      264     842
Birth       COHORTS          GUATEMALA                      Medium            1        9     842
Birth       COHORTS          INDIA                          High              0      626    5216
Birth       COHORTS          INDIA                          High              1       52    5216
Birth       COHORTS          INDIA                          Low               0     1505    5216
Birth       COHORTS          INDIA                          Low               1      251    5216
Birth       COHORTS          INDIA                          Medium            0     2468    5216
Birth       COHORTS          INDIA                          Medium            1      314    5216
Birth       COHORTS          PHILIPPINES                    High              0     1114    3050
Birth       COHORTS          PHILIPPINES                    High              1       55    3050
Birth       COHORTS          PHILIPPINES                    Low               0      830    3050
Birth       COHORTS          PHILIPPINES                    Low               1       70    3050
Birth       COHORTS          PHILIPPINES                    Medium            0      919    3050
Birth       COHORTS          PHILIPPINES                    Medium            1       62    3050
Birth       EE               PAKISTAN                       High              0        4     239
Birth       EE               PAKISTAN                       High              1        3     239
Birth       EE               PAKISTAN                       Low               0      122     239
Birth       EE               PAKISTAN                       Low               1       93     239
Birth       EE               PAKISTAN                       Medium            0       14     239
Birth       EE               PAKISTAN                       Medium            1        3     239
Birth       GMS-Nepal        NEPAL                          High              0       74     693
Birth       GMS-Nepal        NEPAL                          High              1       11     693
Birth       GMS-Nepal        NEPAL                          Low               0      396     693
Birth       GMS-Nepal        NEPAL                          Low               1       89     693
Birth       GMS-Nepal        NEPAL                          Medium            0      101     693
Birth       GMS-Nepal        NEPAL                          Medium            1       22     693
Birth       IRC              INDIA                          High              0      102     388
Birth       IRC              INDIA                          High              1       11     388
Birth       IRC              INDIA                          Low               0      126     388
Birth       IRC              INDIA                          Low               1       16     388
Birth       IRC              INDIA                          Medium            0      115     388
Birth       IRC              INDIA                          Medium            1       18     388
Birth       JiVitA-3         BANGLADESH                     High              0     4851   22427
Birth       JiVitA-3         BANGLADESH                     High              1     1832   22427
Birth       JiVitA-3         BANGLADESH                     Low               0     5700   22427
Birth       JiVitA-3         BANGLADESH                     Low               1     3095   22427
Birth       JiVitA-3         BANGLADESH                     Medium            0     4496   22427
Birth       JiVitA-3         BANGLADESH                     Medium            1     2453   22427
Birth       JiVitA-4         BANGLADESH                     High              0      674    2817
Birth       JiVitA-4         BANGLADESH                     High              1      259    2817
Birth       JiVitA-4         BANGLADESH                     Low               0      670    2817
Birth       JiVitA-4         BANGLADESH                     Low               1      320    2817
Birth       JiVitA-4         BANGLADESH                     Medium            0      618    2817
Birth       JiVitA-4         BANGLADESH                     Medium            1      276    2817
Birth       MAL-ED           BANGLADESH                     High              0       59     187
Birth       MAL-ED           BANGLADESH                     High              1        8     187
Birth       MAL-ED           BANGLADESH                     Low               0       47     187
Birth       MAL-ED           BANGLADESH                     Low               1       18     187
Birth       MAL-ED           BANGLADESH                     Medium            0       47     187
Birth       MAL-ED           BANGLADESH                     Medium            1        8     187
Birth       MAL-ED           BRAZIL                         High              0       18      65
Birth       MAL-ED           BRAZIL                         High              1        0      65
Birth       MAL-ED           BRAZIL                         Low               0       14      65
Birth       MAL-ED           BRAZIL                         Low               1        3      65
Birth       MAL-ED           BRAZIL                         Medium            0       24      65
Birth       MAL-ED           BRAZIL                         Medium            1        6      65
Birth       MAL-ED           INDIA                          High              0        7      40
Birth       MAL-ED           INDIA                          High              1        1      40
Birth       MAL-ED           INDIA                          Low               0       17      40
Birth       MAL-ED           INDIA                          Low               1        1      40
Birth       MAL-ED           INDIA                          Medium            0        8      40
Birth       MAL-ED           INDIA                          Medium            1        6      40
Birth       MAL-ED           NEPAL                          High              0        5      25
Birth       MAL-ED           NEPAL                          High              1        0      25
Birth       MAL-ED           NEPAL                          Low               0       12      25
Birth       MAL-ED           NEPAL                          Low               1        0      25
Birth       MAL-ED           NEPAL                          Medium            0        6      25
Birth       MAL-ED           NEPAL                          Medium            1        2      25
Birth       MAL-ED           PERU                           High              0       60     233
Birth       MAL-ED           PERU                           High              1        8     233
Birth       MAL-ED           PERU                           Low               0       72     233
Birth       MAL-ED           PERU                           Low               1       12     233
Birth       MAL-ED           PERU                           Medium            0       75     233
Birth       MAL-ED           PERU                           Medium            1        6     233
Birth       MAL-ED           SOUTH AFRICA                   High              0       34     123
Birth       MAL-ED           SOUTH AFRICA                   High              1        1     123
Birth       MAL-ED           SOUTH AFRICA                   Low               0       56     123
Birth       MAL-ED           SOUTH AFRICA                   Low               1        6     123
Birth       MAL-ED           SOUTH AFRICA                   Medium            0       23     123
Birth       MAL-ED           SOUTH AFRICA                   Medium            1        3     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0        7     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        0     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       29     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1        5     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0       49     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1       15     105
Birth       NIH-Birth        BANGLADESH                     High              0      144     608
Birth       NIH-Birth        BANGLADESH                     High              1       26     608
Birth       NIH-Birth        BANGLADESH                     Low               0      188     608
Birth       NIH-Birth        BANGLADESH                     Low               1       36     608
Birth       NIH-Birth        BANGLADESH                     Medium            0      179     608
Birth       NIH-Birth        BANGLADESH                     Medium            1       35     608
Birth       NIH-Crypto       BANGLADESH                     High              0      222     732
Birth       NIH-Crypto       BANGLADESH                     High              1       25     732
Birth       NIH-Crypto       BANGLADESH                     Low               0      199     732
Birth       NIH-Crypto       BANGLADESH                     Low               1       33     732
Birth       NIH-Crypto       BANGLADESH                     Medium            0      210     732
Birth       NIH-Crypto       BANGLADESH                     Medium            1       43     732
Birth       PROBIT           BELARUS                        High              0     2246   13893
Birth       PROBIT           BELARUS                        High              1        3   13893
Birth       PROBIT           BELARUS                        Low               0     4952   13893
Birth       PROBIT           BELARUS                        Low               1       13   13893
Birth       PROBIT           BELARUS                        Medium            0     6661   13893
Birth       PROBIT           BELARUS                        Medium            1       18   13893
Birth       PROVIDE          BANGLADESH                     High              0      157     539
Birth       PROVIDE          BANGLADESH                     High              1       14     539
Birth       PROVIDE          BANGLADESH                     Low               0      150     539
Birth       PROVIDE          BANGLADESH                     Low               1       15     539
Birth       PROVIDE          BANGLADESH                     Medium            0      184     539
Birth       PROVIDE          BANGLADESH                     Medium            1       19     539
Birth       SAS-CompFeed     INDIA                          High              0      197    1252
Birth       SAS-CompFeed     INDIA                          High              1       51    1252
Birth       SAS-CompFeed     INDIA                          Low               0      398    1252
Birth       SAS-CompFeed     INDIA                          Low               1      189    1252
Birth       SAS-CompFeed     INDIA                          Medium            0      308    1252
Birth       SAS-CompFeed     INDIA                          Medium            1      109    1252
Birth       ZVITAMBO         ZIMBABWE                       High              0     6781   13855
Birth       ZVITAMBO         ZIMBABWE                       High              1      734   13855
Birth       ZVITAMBO         ZIMBABWE                       Low               0     2591   13855
Birth       ZVITAMBO         ZIMBABWE                       Low               1      321   13855
Birth       ZVITAMBO         ZIMBABWE                       Medium            0     3049   13855
Birth       ZVITAMBO         ZIMBABWE                       Medium            1      379   13855
6 months    CMC-V-BCS-2002   INDIA                          High              0      112     369
6 months    CMC-V-BCS-2002   INDIA                          High              1       45     369
6 months    CMC-V-BCS-2002   INDIA                          Low               0       69     369
6 months    CMC-V-BCS-2002   INDIA                          Low               1       36     369
6 months    CMC-V-BCS-2002   INDIA                          Medium            0       77     369
6 months    CMC-V-BCS-2002   INDIA                          Medium            1       30     369
6 months    COHORTS          GUATEMALA                      High              0      114     952
6 months    COHORTS          GUATEMALA                      High              1       71     952
6 months    COHORTS          GUATEMALA                      Low               0      252     952
6 months    COHORTS          GUATEMALA                      Low               1      197     952
6 months    COHORTS          GUATEMALA                      Medium            0      198     952
6 months    COHORTS          GUATEMALA                      Medium            1      120     952
6 months    COHORTS          INDIA                          High              0      680    5413
6 months    COHORTS          INDIA                          High              1       56    5413
6 months    COHORTS          INDIA                          Low               0     1264    5413
6 months    COHORTS          INDIA                          Low               1      513    5413
6 months    COHORTS          INDIA                          Medium            0     2432    5413
6 months    COHORTS          INDIA                          Medium            1      468    5413
6 months    COHORTS          PHILIPPINES                    High              0      852    2708
6 months    COHORTS          PHILIPPINES                    High              1      162    2708
6 months    COHORTS          PHILIPPINES                    Low               0      610    2708
6 months    COHORTS          PHILIPPINES                    Low               1      216    2708
6 months    COHORTS          PHILIPPINES                    Medium            0      674    2708
6 months    COHORTS          PHILIPPINES                    Medium            1      194    2708
6 months    EE               PAKISTAN                       High              0       11     370
6 months    EE               PAKISTAN                       High              1        4     370
6 months    EE               PAKISTAN                       Low               0      160     370
6 months    EE               PAKISTAN                       Low               1      162     370
6 months    EE               PAKISTAN                       Medium            0       19     370
6 months    EE               PAKISTAN                       Medium            1       14     370
6 months    GMS-Nepal        NEPAL                          High              0       58     561
6 months    GMS-Nepal        NEPAL                          High              1       10     561
6 months    GMS-Nepal        NEPAL                          Low               0      303     561
6 months    GMS-Nepal        NEPAL                          Low               1       96     561
6 months    GMS-Nepal        NEPAL                          Medium            0       78     561
6 months    GMS-Nepal        NEPAL                          Medium            1       16     561
6 months    Guatemala BSC    GUATEMALA                      High              0       81     277
6 months    Guatemala BSC    GUATEMALA                      High              1       36     277
6 months    Guatemala BSC    GUATEMALA                      Low               0       47     277
6 months    Guatemala BSC    GUATEMALA                      Low               1       26     277
6 months    Guatemala BSC    GUATEMALA                      Medium            0       63     277
6 months    Guatemala BSC    GUATEMALA                      Medium            1       24     277
6 months    IRC              INDIA                          High              0       98     407
6 months    IRC              INDIA                          High              1       25     407
6 months    IRC              INDIA                          Low               0      108     407
6 months    IRC              INDIA                          Low               1       38     407
6 months    IRC              INDIA                          Medium            0      101     407
6 months    IRC              INDIA                          Medium            1       37     407
6 months    JiVitA-3         BANGLADESH                     High              0     4783   16794
6 months    JiVitA-3         BANGLADESH                     High              1     1139   16794
6 months    JiVitA-3         BANGLADESH                     Low               0     3988   16794
6 months    JiVitA-3         BANGLADESH                     Low               1     1634   16794
6 months    JiVitA-3         BANGLADESH                     Medium            0     3800   16794
6 months    JiVitA-3         BANGLADESH                     Medium            1     1450   16794
6 months    JiVitA-4         BANGLADESH                     High              0     1378    4818
6 months    JiVitA-4         BANGLADESH                     High              1      340    4818
6 months    JiVitA-4         BANGLADESH                     Low               0     1103    4818
6 months    JiVitA-4         BANGLADESH                     Low               1      478    4818
6 months    JiVitA-4         BANGLADESH                     Medium            0     1120    4818
6 months    JiVitA-4         BANGLADESH                     Medium            1      399    4818
6 months    LCNI-5           MALAWI                         High              0      207     813
6 months    LCNI-5           MALAWI                         High              1       91     813
6 months    LCNI-5           MALAWI                         Low               0      149     813
6 months    LCNI-5           MALAWI                         Low               1      112     813
6 months    LCNI-5           MALAWI                         Medium            0      162     813
6 months    LCNI-5           MALAWI                         Medium            1       92     813
6 months    MAL-ED           BANGLADESH                     High              0       65     196
6 months    MAL-ED           BANGLADESH                     High              1        8     196
6 months    MAL-ED           BANGLADESH                     Low               0       50     196
6 months    MAL-ED           BANGLADESH                     Low               1       14     196
6 months    MAL-ED           BANGLADESH                     Medium            0       46     196
6 months    MAL-ED           BANGLADESH                     Medium            1       13     196
6 months    MAL-ED           BRAZIL                         High              0       70     208
6 months    MAL-ED           BRAZIL                         High              1        1     208
6 months    MAL-ED           BRAZIL                         Low               0       54     208
6 months    MAL-ED           BRAZIL                         Low               1        2     208
6 months    MAL-ED           BRAZIL                         Medium            0       78     208
6 months    MAL-ED           BRAZIL                         Medium            1        3     208
6 months    MAL-ED           INDIA                          High              0       50     208
6 months    MAL-ED           INDIA                          High              1        9     208
6 months    MAL-ED           INDIA                          Low               0       58     208
6 months    MAL-ED           INDIA                          Low               1       14     208
6 months    MAL-ED           INDIA                          Medium            0       65     208
6 months    MAL-ED           INDIA                          Medium            1       12     208
6 months    MAL-ED           NEPAL                          High              0       51     221
6 months    MAL-ED           NEPAL                          High              1        2     221
6 months    MAL-ED           NEPAL                          Low               0       87     221
6 months    MAL-ED           NEPAL                          Low               1        6     221
6 months    MAL-ED           NEPAL                          Medium            0       73     221
6 months    MAL-ED           NEPAL                          Medium            1        2     221
6 months    MAL-ED           PERU                           High              0       60     272
6 months    MAL-ED           PERU                           High              1       21     272
6 months    MAL-ED           PERU                           Low               0       75     272
6 months    MAL-ED           PERU                           Low               1       19     272
6 months    MAL-ED           PERU                           Medium            0       77     272
6 months    MAL-ED           PERU                           Medium            1       20     272
6 months    MAL-ED           SOUTH AFRICA                   High              0       58     254
6 months    MAL-ED           SOUTH AFRICA                   High              1       12     254
6 months    MAL-ED           SOUTH AFRICA                   Low               0      100     254
6 months    MAL-ED           SOUTH AFRICA                   Low               1       27     254
6 months    MAL-ED           SOUTH AFRICA                   Medium            0       46     254
6 months    MAL-ED           SOUTH AFRICA                   Medium            1       11     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0        7     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        2     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       47     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1       15     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0      107     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1       25     203
6 months    NIH-Birth        BANGLADESH                     High              0      128     537
6 months    NIH-Birth        BANGLADESH                     High              1       27     537
6 months    NIH-Birth        BANGLADESH                     Low               0      130     537
6 months    NIH-Birth        BANGLADESH                     Low               1       65     537
6 months    NIH-Birth        BANGLADESH                     Medium            0      135     537
6 months    NIH-Birth        BANGLADESH                     Medium            1       52     537
6 months    NIH-Crypto       BANGLADESH                     High              0      203     715
6 months    NIH-Crypto       BANGLADESH                     High              1       37     715
6 months    NIH-Crypto       BANGLADESH                     Low               0      173     715
6 months    NIH-Crypto       BANGLADESH                     Low               1       56     715
6 months    NIH-Crypto       BANGLADESH                     Medium            0      189     715
6 months    NIH-Crypto       BANGLADESH                     Medium            1       57     715
6 months    PROBIT           BELARUS                        High              0     2596   15760
6 months    PROBIT           BELARUS                        High              1       61   15760
6 months    PROBIT           BELARUS                        Low               0     5338   15760
6 months    PROBIT           BELARUS                        Low               1      305   15760
6 months    PROBIT           BELARUS                        Medium            0     7206   15760
6 months    PROBIT           BELARUS                        Medium            1      254   15760
6 months    PROVIDE          BANGLADESH                     High              0      185     604
6 months    PROVIDE          BANGLADESH                     High              1       24     604
6 months    PROVIDE          BANGLADESH                     Low               0      154     604
6 months    PROVIDE          BANGLADESH                     Low               1       33     604
6 months    PROVIDE          BANGLADESH                     Medium            0      169     604
6 months    PROVIDE          BANGLADESH                     Medium            1       39     604
6 months    SAS-CompFeed     INDIA                          High              0      250    1336
6 months    SAS-CompFeed     INDIA                          High              1       40    1336
6 months    SAS-CompFeed     INDIA                          Low               0      381    1336
6 months    SAS-CompFeed     INDIA                          Low               1      216    1336
6 months    SAS-CompFeed     INDIA                          Medium            0      325    1336
6 months    SAS-CompFeed     INDIA                          Medium            1      124    1336
6 months    SAS-FoodSuppl    INDIA                          High              0       23     380
6 months    SAS-FoodSuppl    INDIA                          High              1       12     380
6 months    SAS-FoodSuppl    INDIA                          Low               0      171     380
6 months    SAS-FoodSuppl    INDIA                          Low               1      133     380
6 months    SAS-FoodSuppl    INDIA                          Medium            0       23     380
6 months    SAS-FoodSuppl    INDIA                          Medium            1       18     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      465    2021
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       47    2021
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0       69    2021
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        5    2021
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0     1292    2021
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1      143    2021
6 months    ZVITAMBO         ZIMBABWE                       High              0     4012    8655
6 months    ZVITAMBO         ZIMBABWE                       High              1      690    8655
6 months    ZVITAMBO         ZIMBABWE                       Low               0     1466    8655
6 months    ZVITAMBO         ZIMBABWE                       Low               1      329    8655
6 months    ZVITAMBO         ZIMBABWE                       Medium            0     1765    8655
6 months    ZVITAMBO         ZIMBABWE                       Medium            1      393    8655
24 months   CMC-V-BCS-2002   INDIA                          High              0       55     371
24 months   CMC-V-BCS-2002   INDIA                          High              1      103     371
24 months   CMC-V-BCS-2002   INDIA                          Low               0       18     371
24 months   CMC-V-BCS-2002   INDIA                          Low               1       87     371
24 months   CMC-V-BCS-2002   INDIA                          Medium            0       32     371
24 months   CMC-V-BCS-2002   INDIA                          Medium            1       76     371
24 months   COHORTS          GUATEMALA                      High              0       40    1057
24 months   COHORTS          GUATEMALA                      High              1      169    1057
24 months   COHORTS          GUATEMALA                      Low               0       76    1057
24 months   COHORTS          GUATEMALA                      Low               1      430    1057
24 months   COHORTS          GUATEMALA                      Medium            0       84    1057
24 months   COHORTS          GUATEMALA                      Medium            1      258    1057
24 months   COHORTS          INDIA                          High              0      466    4198
24 months   COHORTS          INDIA                          High              1      142    4198
24 months   COHORTS          INDIA                          Low               0      304    4198
24 months   COHORTS          INDIA                          Low               1      968    4198
24 months   COHORTS          INDIA                          Medium            0     1106    4198
24 months   COHORTS          INDIA                          Medium            1     1212    4198
24 months   COHORTS          PHILIPPINES                    High              0      480    2445
24 months   COHORTS          PHILIPPINES                    High              1      434    2445
24 months   COHORTS          PHILIPPINES                    Low               0      195    2445
24 months   COHORTS          PHILIPPINES                    Low               1      549    2445
24 months   COHORTS          PHILIPPINES                    Medium            0      247    2445
24 months   COHORTS          PHILIPPINES                    Medium            1      540    2445
24 months   EE               PAKISTAN                       High              0        4     165
24 months   EE               PAKISTAN                       High              1        2     165
24 months   EE               PAKISTAN                       Low               0       36     165
24 months   EE               PAKISTAN                       Low               1      106     165
24 months   EE               PAKISTAN                       Medium            0        9     165
24 months   EE               PAKISTAN                       Medium            1        8     165
24 months   GMS-Nepal        NEPAL                          High              0       40     485
24 months   GMS-Nepal        NEPAL                          High              1       15     485
24 months   GMS-Nepal        NEPAL                          Low               0      182     485
24 months   GMS-Nepal        NEPAL                          Low               1      162     485
24 months   GMS-Nepal        NEPAL                          Medium            0       44     485
24 months   GMS-Nepal        NEPAL                          Medium            1       42     485
24 months   IRC              INDIA                          High              0       80     409
24 months   IRC              INDIA                          High              1       44     409
24 months   IRC              INDIA                          Low               0       79     409
24 months   IRC              INDIA                          Low               1       67     409
24 months   IRC              INDIA                          Medium            0       78     409
24 months   IRC              INDIA                          Medium            1       61     409
24 months   JiVitA-3         BANGLADESH                     High              0     1789    8621
24 months   JiVitA-3         BANGLADESH                     High              1     1138    8621
24 months   JiVitA-3         BANGLADESH                     Low               0     1292    8621
24 months   JiVitA-3         BANGLADESH                     Low               1     1712    8621
24 months   JiVitA-3         BANGLADESH                     Medium            0     1306    8621
24 months   JiVitA-3         BANGLADESH                     Medium            1     1384    8621
24 months   JiVitA-4         BANGLADESH                     High              0     1148    4741
24 months   JiVitA-4         BANGLADESH                     High              1      548    4741
24 months   JiVitA-4         BANGLADESH                     Low               0      834    4741
24 months   JiVitA-4         BANGLADESH                     Low               1      702    4741
24 months   JiVitA-4         BANGLADESH                     Medium            0      856    4741
24 months   JiVitA-4         BANGLADESH                     Medium            1      653    4741
24 months   LCNI-5           MALAWI                         High              0      132     572
24 months   LCNI-5           MALAWI                         High              1       88     572
24 months   LCNI-5           MALAWI                         Low               0       94     572
24 months   LCNI-5           MALAWI                         Low               1       83     572
24 months   LCNI-5           MALAWI                         Medium            0       94     572
24 months   LCNI-5           MALAWI                         Medium            1       81     572
24 months   MAL-ED           BANGLADESH                     High              0       34     171
24 months   MAL-ED           BANGLADESH                     High              1       30     171
24 months   MAL-ED           BANGLADESH                     Low               0       31     171
24 months   MAL-ED           BANGLADESH                     Low               1       28     171
24 months   MAL-ED           BANGLADESH                     Medium            0       27     171
24 months   MAL-ED           BANGLADESH                     Medium            1       21     171
24 months   MAL-ED           BRAZIL                         High              0       61     168
24 months   MAL-ED           BRAZIL                         High              1        1     168
24 months   MAL-ED           BRAZIL                         Low               0       39     168
24 months   MAL-ED           BRAZIL                         Low               1        3     168
24 months   MAL-ED           BRAZIL                         Medium            0       61     168
24 months   MAL-ED           BRAZIL                         Medium            1        3     168
24 months   MAL-ED           INDIA                          High              0       33     199
24 months   MAL-ED           INDIA                          High              1       22     199
24 months   MAL-ED           INDIA                          Low               0       39     199
24 months   MAL-ED           INDIA                          Low               1       30     199
24 months   MAL-ED           INDIA                          Medium            0       44     199
24 months   MAL-ED           INDIA                          Medium            1       31     199
24 months   MAL-ED           NEPAL                          High              0       38     213
24 months   MAL-ED           NEPAL                          High              1       10     213
24 months   MAL-ED           NEPAL                          Low               0       69     213
24 months   MAL-ED           NEPAL                          Low               1       22     213
24 months   MAL-ED           NEPAL                          Medium            0       61     213
24 months   MAL-ED           NEPAL                          Medium            1       13     213
24 months   MAL-ED           PERU                           High              0       42     200
24 months   MAL-ED           PERU                           High              1       17     200
24 months   MAL-ED           PERU                           Low               0       43     200
24 months   MAL-ED           PERU                           Low               1       31     200
24 months   MAL-ED           PERU                           Medium            0       41     200
24 months   MAL-ED           PERU                           Medium            1       26     200
24 months   MAL-ED           SOUTH AFRICA                   High              0       50     238
24 months   MAL-ED           SOUTH AFRICA                   High              1       17     238
24 months   MAL-ED           SOUTH AFRICA                   Low               0       73     238
24 months   MAL-ED           SOUTH AFRICA                   Low               1       47     238
24 months   MAL-ED           SOUTH AFRICA                   Medium            0       31     238
24 months   MAL-ED           SOUTH AFRICA                   Medium            1       20     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0        4     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        3     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       10     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1       44     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0       38     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1       76     175
24 months   NIH-Birth        BANGLADESH                     High              0       77     429
24 months   NIH-Birth        BANGLADESH                     High              1       53     429
24 months   NIH-Birth        BANGLADESH                     Low               0       45     429
24 months   NIH-Birth        BANGLADESH                     Low               1      108     429
24 months   NIH-Birth        BANGLADESH                     Medium            0       63     429
24 months   NIH-Birth        BANGLADESH                     Medium            1       83     429
24 months   NIH-Crypto       BANGLADESH                     High              0      163     514
24 months   NIH-Crypto       BANGLADESH                     High              1       28     514
24 months   NIH-Crypto       BANGLADESH                     Low               0       97     514
24 months   NIH-Crypto       BANGLADESH                     Low               1       49     514
24 months   NIH-Crypto       BANGLADESH                     Medium            0      122     514
24 months   NIH-Crypto       BANGLADESH                     Medium            1       55     514
24 months   PROBIT           BELARUS                        High              0      637    4035
24 months   PROBIT           BELARUS                        High              1       27    4035
24 months   PROBIT           BELARUS                        Low               0     1283    4035
24 months   PROBIT           BELARUS                        Low               1      124    4035
24 months   PROBIT           BELARUS                        Medium            0     1840    4035
24 months   PROBIT           BELARUS                        Medium            1      124    4035
24 months   PROVIDE          BANGLADESH                     High              0      156     578
24 months   PROVIDE          BANGLADESH                     High              1       45     578
24 months   PROVIDE          BANGLADESH                     Low               0       99     578
24 months   PROVIDE          BANGLADESH                     Low               1       75     578
24 months   PROVIDE          BANGLADESH                     Medium            0      133     578
24 months   PROVIDE          BANGLADESH                     Medium            1       70     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        1       6
24 months   ZVITAMBO         ZIMBABWE                       High              0      597    1639
24 months   ZVITAMBO         ZIMBABWE                       High              1      265    1639
24 months   ZVITAMBO         ZIMBABWE                       Low               0      200    1639
24 months   ZVITAMBO         ZIMBABWE                       Low               1      145    1639
24 months   ZVITAMBO         ZIMBABWE                       Medium            0      273    1639
24 months   ZVITAMBO         ZIMBABWE                       Medium            1      159    1639


The following strata were considered:

* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
* agecat: 24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: PROBIT, country: BELARUS
* agecat: 24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: COHORTS, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: IRC, country: INDIA
* agecat: 6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: COHORTS, country: INDIA
* agecat: Birth, studyid: COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/ae18976a-4031-42ab-86bc-e3f9d41beea8/e3d1120a-26c5-4efe-8eec-cac516de1600/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ae18976a-4031-42ab-86bc-e3f9d41beea8/e3d1120a-26c5-4efe-8eec-cac516de1600/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ae18976a-4031-42ab-86bc-e3f9d41beea8/e3d1120a-26c5-4efe-8eec-cac516de1600/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ae18976a-4031-42ab-86bc-e3f9d41beea8/e3d1120a-26c5-4efe-8eec-cac516de1600/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      High                 NA                0.0561798   0.0223319   0.0900276
Birth       COHORTS          GUATEMALA                      Low                  NA                0.0767263   0.0503293   0.1031234
Birth       COHORTS          GUATEMALA                      Medium               NA                0.0329670   0.0117744   0.0541597
Birth       COHORTS          INDIA                          High                 NA                0.0836501   0.0598534   0.1074468
Birth       COHORTS          INDIA                          Low                  NA                0.1389104   0.1214419   0.1563789
Birth       COHORTS          INDIA                          Medium               NA                0.1135654   0.1007929   0.1263379
Birth       COHORTS          PHILIPPINES                    High                 NA                0.0560803   0.0405645   0.0715961
Birth       COHORTS          PHILIPPINES                    Low                  NA                0.0566559   0.0409054   0.0724064
Birth       COHORTS          PHILIPPINES                    Medium               NA                0.0636225   0.0466162   0.0806288
Birth       GMS-Nepal        NEPAL                          High                 NA                0.1935244   0.1575818   0.2294671
Birth       GMS-Nepal        NEPAL                          Low                  NA                0.1772999   0.1477370   0.2068629
Birth       GMS-Nepal        NEPAL                          Medium               NA                0.1671586   0.1276048   0.2067125
Birth       IRC              INDIA                          High                 NA                0.0913836   0.0356367   0.1471305
Birth       IRC              INDIA                          Low                  NA                0.1014889   0.0485180   0.1544597
Birth       IRC              INDIA                          Medium               NA                0.1256400   0.0664508   0.1848291
Birth       JiVitA-3         BANGLADESH                     High                 NA                0.3291668   0.3200120   0.3383215
Birth       JiVitA-3         BANGLADESH                     Low                  NA                0.3316111   0.3228018   0.3404204
Birth       JiVitA-3         BANGLADESH                     Medium               NA                0.3304075   0.3215101   0.3393049
Birth       JiVitA-4         BANGLADESH                     High                 NA                0.2912381   0.2639751   0.3185011
Birth       JiVitA-4         BANGLADESH                     Low                  NA                0.3068633   0.2834418   0.3302848
Birth       JiVitA-4         BANGLADESH                     Medium               NA                0.3062432   0.2816692   0.3308171
Birth       MAL-ED           BANGLADESH                     High                 NA                0.1194030   0.0415507   0.1972552
Birth       MAL-ED           BANGLADESH                     Low                  NA                0.2769231   0.1678475   0.3859987
Birth       MAL-ED           BANGLADESH                     Medium               NA                0.1454545   0.0520297   0.2388794
Birth       MAL-ED           PERU                           High                 NA                0.1176471   0.0409040   0.1943902
Birth       MAL-ED           PERU                           Low                  NA                0.1428571   0.0678643   0.2178500
Birth       MAL-ED           PERU                           Medium               NA                0.0740741   0.0169182   0.1312299
Birth       NIH-Birth        BANGLADESH                     High                 NA                0.1535170   0.0994071   0.2076269
Birth       NIH-Birth        BANGLADESH                     Low                  NA                0.1608681   0.1123214   0.2094148
Birth       NIH-Birth        BANGLADESH                     Medium               NA                0.1610352   0.1098736   0.2121969
Birth       NIH-Crypto       BANGLADESH                     High                 NA                0.1070147   0.0705194   0.1435100
Birth       NIH-Crypto       BANGLADESH                     Low                  NA                0.1500240   0.1053911   0.1946568
Birth       NIH-Crypto       BANGLADESH                     Medium               NA                0.1531056   0.1084412   0.1977699
Birth       PROVIDE          BANGLADESH                     High                 NA                0.0655064   0.0300801   0.1009327
Birth       PROVIDE          BANGLADESH                     Low                  NA                0.0961006   0.0485389   0.1436623
Birth       PROVIDE          BANGLADESH                     Medium               NA                0.0930911   0.0527960   0.1333862
Birth       SAS-CompFeed     INDIA                          High                 NA                0.2524004   0.2023260   0.3024747
Birth       SAS-CompFeed     INDIA                          Low                  NA                0.2775398   0.2485994   0.3064802
Birth       SAS-CompFeed     INDIA                          Medium               NA                0.2931093   0.2544834   0.3317352
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                0.1037984   0.0982449   0.1093520
Birth       ZVITAMBO         ZIMBABWE                       Low                  NA                0.1035862   0.0965627   0.1106096
Birth       ZVITAMBO         ZIMBABWE                       Medium               NA                0.1052884   0.0987022   0.1118746
6 months    CMC-V-BCS-2002   INDIA                          High                 NA                0.2901106   0.2190390   0.3611823
6 months    CMC-V-BCS-2002   INDIA                          Low                  NA                0.3410921   0.2498097   0.4323745
6 months    CMC-V-BCS-2002   INDIA                          Medium               NA                0.2766282   0.1882711   0.3649852
6 months    COHORTS          GUATEMALA                      High                 NA                0.4252834   0.3567623   0.4938045
6 months    COHORTS          GUATEMALA                      Low                  NA                0.4119677   0.3664547   0.4574807
6 months    COHORTS          GUATEMALA                      Medium               NA                0.4036364   0.3527019   0.4545708
6 months    COHORTS          INDIA                          High                 NA                0.1055383   0.0812283   0.1298484
6 months    COHORTS          INDIA                          Low                  NA                0.2511576   0.2311220   0.2711932
6 months    COHORTS          INDIA                          Medium               NA                0.1674040   0.1533915   0.1814165
6 months    COHORTS          PHILIPPINES                    High                 NA                0.1951036   0.1651754   0.2250318
6 months    COHORTS          PHILIPPINES                    Low                  NA                0.2254048   0.1915304   0.2592793
6 months    COHORTS          PHILIPPINES                    Medium               NA                0.2142956   0.1849024   0.2436887
6 months    GMS-Nepal        NEPAL                          High                 NA                0.1251761   0.0465080   0.2038442
6 months    GMS-Nepal        NEPAL                          Low                  NA                0.2367494   0.1945423   0.2789564
6 months    GMS-Nepal        NEPAL                          Medium               NA                0.1641869   0.0830678   0.2453059
6 months    Guatemala BSC    GUATEMALA                      High                 NA                0.3052752   0.2221877   0.3883626
6 months    Guatemala BSC    GUATEMALA                      Low                  NA                0.3502457   0.2399303   0.4605612
6 months    Guatemala BSC    GUATEMALA                      Medium               NA                0.2833051   0.1871667   0.3794435
6 months    IRC              INDIA                          High                 NA                0.2031047   0.1335551   0.2726543
6 months    IRC              INDIA                          Low                  NA                0.2617932   0.1919202   0.3316663
6 months    IRC              INDIA                          Medium               NA                0.2703062   0.1971338   0.3434786
6 months    JiVitA-3         BANGLADESH                     High                 NA                0.2477715   0.2307720   0.2647709
6 months    JiVitA-3         BANGLADESH                     Low                  NA                0.2582734   0.2426655   0.2738812
6 months    JiVitA-3         BANGLADESH                     Medium               NA                0.2685522   0.2520622   0.2850423
6 months    JiVitA-4         BANGLADESH                     High                 NA                0.2268613   0.1983304   0.2553921
6 months    JiVitA-4         BANGLADESH                     Low                  NA                0.2594268   0.2311123   0.2877413
6 months    JiVitA-4         BANGLADESH                     Medium               NA                0.2521029   0.2255210   0.2786848
6 months    LCNI-5           MALAWI                         High                 NA                0.3189750   0.2652129   0.3727371
6 months    LCNI-5           MALAWI                         Low                  NA                0.4160003   0.3549918   0.4770089
6 months    LCNI-5           MALAWI                         Medium               NA                0.3577641   0.2959392   0.4195890
6 months    MAL-ED           BANGLADESH                     High                 NA                0.1095890   0.0377474   0.1814307
6 months    MAL-ED           BANGLADESH                     Low                  NA                0.2187500   0.1172098   0.3202902
6 months    MAL-ED           BANGLADESH                     Medium               NA                0.2203390   0.1143083   0.3263696
6 months    MAL-ED           INDIA                          High                 NA                0.1525424   0.0605773   0.2445074
6 months    MAL-ED           INDIA                          Low                  NA                0.1944444   0.1028068   0.2860821
6 months    MAL-ED           INDIA                          Medium               NA                0.1558442   0.0746348   0.2370535
6 months    MAL-ED           PERU                           High                 NA                0.2721006   0.1738668   0.3703345
6 months    MAL-ED           PERU                           Low                  NA                0.1928020   0.1118093   0.2737948
6 months    MAL-ED           PERU                           Medium               NA                0.2060825   0.1243593   0.2878057
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                0.1605059   0.0748294   0.2461824
6 months    MAL-ED           SOUTH AFRICA                   Low                  NA                0.2159440   0.1429454   0.2889425
6 months    MAL-ED           SOUTH AFRICA                   Medium               NA                0.1995008   0.0913069   0.3076948
6 months    NIH-Birth        BANGLADESH                     High                 NA                0.1931386   0.1301571   0.2561200
6 months    NIH-Birth        BANGLADESH                     Low                  NA                0.3197194   0.2537338   0.3857051
6 months    NIH-Birth        BANGLADESH                     Medium               NA                0.2749815   0.2096844   0.3402786
6 months    NIH-Crypto       BANGLADESH                     High                 NA                0.1622343   0.1174422   0.2070263
6 months    NIH-Crypto       BANGLADESH                     Low                  NA                0.2425204   0.1876203   0.2974206
6 months    NIH-Crypto       BANGLADESH                     Medium               NA                0.2170090   0.1642931   0.2697249
6 months    PROBIT           BELARUS                        High                 NA                0.0219285   0.0144883   0.0293687
6 months    PROBIT           BELARUS                        Low                  NA                0.0477554   0.0335749   0.0619359
6 months    PROBIT           BELARUS                        Medium               NA                0.0344322   0.0240157   0.0448487
6 months    PROVIDE          BANGLADESH                     High                 NA                0.1150820   0.0718232   0.1583408
6 months    PROVIDE          BANGLADESH                     Low                  NA                0.1745356   0.1192980   0.2297733
6 months    PROVIDE          BANGLADESH                     Medium               NA                0.1855667   0.1323987   0.2387347
6 months    SAS-CompFeed     INDIA                          High                 NA                0.1687056   0.1115021   0.2259092
6 months    SAS-CompFeed     INDIA                          Low                  NA                0.3170570   0.2845318   0.3495823
6 months    SAS-CompFeed     INDIA                          Medium               NA                0.2955255   0.2662179   0.3248331
6 months    SAS-FoodSuppl    INDIA                          High                 NA                0.3425697   0.1663170   0.5188225
6 months    SAS-FoodSuppl    INDIA                          Low                  NA                0.4353227   0.3790111   0.4916343
6 months    SAS-FoodSuppl    INDIA                          Medium               NA                0.4340549   0.2740315   0.5940782
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0917969   0.0667804   0.1168133
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0675676   0.0103647   0.1247704
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0996516   0.0841500   0.1151532
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.1556181   0.1445386   0.1666975
6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.1644057   0.1451508   0.1836606
6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.1777454   0.1608077   0.1946832
24 months   CMC-V-BCS-2002   INDIA                          High                 NA                0.6514420   0.5764929   0.7263910
24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                0.8269313   0.7529723   0.9008903
24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                0.7049273   0.6158287   0.7940259
24 months   COHORTS          GUATEMALA                      High                 NA                0.8228359   0.7683506   0.8773211
24 months   COHORTS          GUATEMALA                      Low                  NA                0.8281428   0.7960545   0.8602311
24 months   COHORTS          GUATEMALA                      Medium               NA                0.7851086   0.7421945   0.8280227
24 months   COHORTS          INDIA                          High                 NA                0.3689245   0.3173501   0.4204990
24 months   COHORTS          INDIA                          Low                  NA                0.6945568   0.6607582   0.7283554
24 months   COHORTS          INDIA                          Medium               NA                0.5342816   0.5123585   0.5562046
24 months   COHORTS          PHILIPPINES                    High                 NA                0.5844673   0.5493014   0.6196331
24 months   COHORTS          PHILIPPINES                    Low                  NA                0.6569147   0.6170790   0.6967505
24 months   COHORTS          PHILIPPINES                    Medium               NA                0.6733455   0.6370438   0.7096472
24 months   GMS-Nepal        NEPAL                          High                 NA                0.2853544   0.1698447   0.4008641
24 months   GMS-Nepal        NEPAL                          Low                  NA                0.4684122   0.4160329   0.5207914
24 months   GMS-Nepal        NEPAL                          Medium               NA                0.4846166   0.3774272   0.5918061
24 months   IRC              INDIA                          High                 NA                0.3701139   0.2873666   0.4528611
24 months   IRC              INDIA                          Low                  NA                0.4537942   0.3728070   0.5347815
24 months   IRC              INDIA                          Medium               NA                0.4228226   0.3396352   0.5060099
24 months   JiVitA-3         BANGLADESH                     High                 NA                0.4789531   0.4487044   0.5092017
24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.5388500   0.5133924   0.5643076
24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.4939334   0.4662211   0.5216458
24 months   JiVitA-4         BANGLADESH                     High                 NA                0.3786692   0.3462282   0.4111101
24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.4265152   0.3924378   0.4605927
24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.4166381   0.3821528   0.4511234
24 months   LCNI-5           MALAWI                         High                 NA                0.4079776   0.3420314   0.4739238
24 months   LCNI-5           MALAWI                         Low                  NA                0.4676046   0.3946695   0.5405397
24 months   LCNI-5           MALAWI                         Medium               NA                0.4595691   0.3822873   0.5368509
24 months   MAL-ED           BANGLADESH                     High                 NA                0.4927760   0.3796715   0.6058805
24 months   MAL-ED           BANGLADESH                     Low                  NA                0.4333564   0.3185914   0.5481214
24 months   MAL-ED           BANGLADESH                     Medium               NA                0.4495945   0.2975272   0.6016618
24 months   MAL-ED           INDIA                          High                 NA                0.3928430   0.2566803   0.5290057
24 months   MAL-ED           INDIA                          Low                  NA                0.4294303   0.3157615   0.5430992
24 months   MAL-ED           INDIA                          Medium               NA                0.3803921   0.2703634   0.4904208
24 months   MAL-ED           NEPAL                          High                 NA                0.2056749   0.0901679   0.3211819
24 months   MAL-ED           NEPAL                          Low                  NA                0.2367977   0.1480831   0.3255124
24 months   MAL-ED           NEPAL                          Medium               NA                0.1777369   0.0878688   0.2676050
24 months   MAL-ED           PERU                           High                 NA                0.2667701   0.1470479   0.3864922
24 months   MAL-ED           PERU                           Low                  NA                0.4169489   0.3020892   0.5318085
24 months   MAL-ED           PERU                           Medium               NA                0.3841575   0.2673306   0.5009844
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.2728431   0.1571797   0.3885064
24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.3785682   0.2919696   0.4651667
24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.4103097   0.2659546   0.5546649
24 months   NIH-Birth        BANGLADESH                     High                 NA                0.4666880   0.3830798   0.5502963
24 months   NIH-Birth        BANGLADESH                     Low                  NA                0.6934788   0.6248139   0.7621437
24 months   NIH-Birth        BANGLADESH                     Medium               NA                0.5418207   0.4611541   0.6224873
24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.1762218   0.1173471   0.2350966
24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.3350885   0.2519222   0.4182548
24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.2973981   0.2235227   0.3712736
24 months   PROBIT           BELARUS                        High                 NA                0.0411112   0.0197491   0.0624733
24 months   PROBIT           BELARUS                        Low                  NA                0.0878168   0.0439364   0.1316973
24 months   PROBIT           BELARUS                        Medium               NA                0.0630729   0.0405280   0.0856178
24 months   PROVIDE          BANGLADESH                     High                 NA                0.3013415   0.2358368   0.3668463
24 months   PROVIDE          BANGLADESH                     Low                  NA                0.3531423   0.2737940   0.4324906
24 months   PROVIDE          BANGLADESH                     Medium               NA                0.3245134   0.2562564   0.3927704
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.3115178   0.2809817   0.3420539
24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.3797391   0.3257133   0.4337650
24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.3711957   0.3218208   0.4205707


### Parameter: E(Y)


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA                      NA                   NA                0.0581948   0.0423724   0.0740172
Birth       COHORTS          INDIA                          NA                   NA                0.1182899   0.1095248   0.1270550
Birth       COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       GMS-Nepal        NEPAL                          NA                   NA                0.1760462   0.1476696   0.2044227
Birth       IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       JiVitA-3         BANGLADESH                     NA                   NA                0.3290676   0.3216916   0.3364437
Birth       JiVitA-4         BANGLADESH                     NA                   NA                0.3035144   0.2834906   0.3235382
Birth       MAL-ED           BANGLADESH                     NA                   NA                0.1818182   0.1263894   0.2372469
Birth       MAL-ED           PERU                           NA                   NA                0.1115880   0.0710726   0.1521034
Birth       NIH-Birth        BANGLADESH                     NA                   NA                0.1595395   0.1304091   0.1886699
Birth       NIH-Crypto       BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       PROVIDE          BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       SAS-CompFeed     INDIA                          NA                   NA                0.2787540   0.2475949   0.3099131
Birth       ZVITAMBO         ZIMBABWE                       NA                   NA                0.1035005   0.0984282   0.1085729
6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    COHORTS          GUATEMALA                      NA                   NA                0.4075630   0.3763327   0.4387933
6 months    COHORTS          INDIA                          NA                   NA                0.1915758   0.1810911   0.2020606
6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    GMS-Nepal        NEPAL                          NA                   NA                0.2174688   0.1833021   0.2516355
6 months    Guatemala BSC    GUATEMALA                      NA                   NA                0.3104693   0.2558835   0.3650551
6 months    IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.2514589   0.2433251   0.2595926
6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.2525944   0.2385189   0.2666699
6 months    LCNI-5           MALAWI                         NA                   NA                0.3628536   0.3297820   0.3959252
6 months    MAL-ED           BANGLADESH                     NA                   NA                0.1785714   0.1248161   0.2323268
6 months    MAL-ED           INDIA                          NA                   NA                0.1682692   0.1173060   0.2192324
6 months    MAL-ED           PERU                           NA                   NA                0.2205882   0.1712211   0.2699554
6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    PROBIT           BELARUS                        NA                   NA                0.0393401   0.0293640   0.0493162
6 months    PROVIDE          BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0964869   0.0836111   0.1093627
6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1631427   0.1553579   0.1709275
24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.7169811   0.6710815   0.7628807
24 months   COHORTS          GUATEMALA                      NA                   NA                0.8107852   0.7871616   0.8344089
24 months   COHORTS          INDIA                          NA                   NA                0.5531205   0.5380793   0.5681618
24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6229039   0.6036892   0.6421186
24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4515464   0.4072114   0.4958814
24 months   IRC              INDIA                          NA                   NA                0.4205379   0.3726382   0.4684376
24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4911263   0.4780235   0.5042291
24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.4013921   0.3844229   0.4183613
24 months   LCNI-5           MALAWI                         NA                   NA                0.4405594   0.3998393   0.4812796
24 months   MAL-ED           BANGLADESH                     NA                   NA                0.4619883   0.3870446   0.5369320
24 months   MAL-ED           INDIA                          NA                   NA                0.4170854   0.3484054   0.4857655
24 months   MAL-ED           NEPAL                          NA                   NA                0.2112676   0.1563184   0.2662168
24 months   MAL-ED           PERU                           NA                   NA                0.3700000   0.3029201   0.4370799
24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5687646   0.5218455   0.6156837
24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   PROBIT           BELARUS                        NA                   NA                0.0681537   0.0420376   0.0942697
24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.3471629   0.3241082   0.3702176


### Parameter: RR


agecat      studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
Birth       COHORTS          GUATEMALA                      Low                  High              1.3657289   0.6824179   2.733245
Birth       COHORTS          GUATEMALA                      Medium               High              0.5868132   0.2431453   1.416230
Birth       COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
Birth       COHORTS          INDIA                          Low                  High              1.6606118   1.2167368   2.266416
Birth       COHORTS          INDIA                          Medium               High              1.3576233   0.9999565   1.843221
Birth       COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
Birth       COHORTS          PHILIPPINES                    Low                  High              1.0102634   0.6855826   1.488708
Birth       COHORTS          PHILIPPINES                    Medium               High              1.1344892   0.7752746   1.660142
Birth       GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
Birth       GMS-Nepal        NEPAL                          Low                  High              0.9161632   0.7942965   1.056728
Birth       GMS-Nepal        NEPAL                          Medium               High              0.8637599   0.6939535   1.075117
Birth       IRC              INDIA                          High                 High              1.0000000   1.0000000   1.000000
Birth       IRC              INDIA                          Low                  High              1.1105813   0.4956531   2.488415
Birth       IRC              INDIA                          Medium               High              1.3748638   0.6355140   2.974365
Birth       JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       JiVitA-3         BANGLADESH                     Low                  High              1.0074259   0.9816815   1.033845
Birth       JiVitA-3         BANGLADESH                     Medium               High              1.0037693   0.9795401   1.028598
Birth       JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       JiVitA-4         BANGLADESH                     Low                  High              1.0536511   0.9645071   1.151034
Birth       JiVitA-4         BANGLADESH                     Medium               High              1.0515216   0.9582091   1.153921
Birth       MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       MAL-ED           BANGLADESH                     Low                  High              2.3192308   1.0827284   4.967849
Birth       MAL-ED           BANGLADESH                     Medium               High              1.2181818   0.4877850   3.042256
Birth       MAL-ED           PERU                           High                 High              1.0000000   1.0000000   1.000000
Birth       MAL-ED           PERU                           Low                  High              1.2142857   0.5256316   2.805177
Birth       MAL-ED           PERU                           Medium               High              0.6296296   0.2292335   1.729387
Birth       NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       NIH-Birth        BANGLADESH                     Low                  High              1.0478846   0.6591193   1.665954
Birth       NIH-Birth        BANGLADESH                     Medium               High              1.0489731   0.6526206   1.686040
Birth       NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       NIH-Crypto       BANGLADESH                     Low                  High              1.4019009   0.8992424   2.185535
Birth       NIH-Crypto       BANGLADESH                     Medium               High              1.4306970   0.9217658   2.220623
Birth       PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       PROVIDE          BANGLADESH                     Low                  High              1.4670420   0.7061808   3.047679
Birth       PROVIDE          BANGLADESH                     Medium               High              1.4210993   0.7136283   2.829937
Birth       SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
Birth       SAS-CompFeed     INDIA                          Low                  High              1.0996014   0.9513483   1.270958
Birth       SAS-CompFeed     INDIA                          Medium               High              1.1612872   0.9963569   1.353519
Birth       ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
Birth       ZVITAMBO         ZIMBABWE                       Low                  High              0.9979552   0.9417216   1.057547
Birth       ZVITAMBO         ZIMBABWE                       Medium               High              1.0143549   0.9629332   1.068523
6 months    CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    CMC-V-BCS-2002   INDIA                          Low                  High              1.1757310   0.8184748   1.688926
6 months    CMC-V-BCS-2002   INDIA                          Medium               High              0.9535265   0.6378941   1.425335
6 months    COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6 months    COHORTS          GUATEMALA                      Low                  High              0.9686898   0.8024868   1.169315
6 months    COHORTS          GUATEMALA                      Medium               High              0.9490997   0.7797148   1.155282
6 months    COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    COHORTS          INDIA                          Low                  High              2.3797765   1.8694062   3.029484
6 months    COHORTS          INDIA                          Medium               High              1.5861920   1.2449576   2.020956
6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6 months    COHORTS          PHILIPPINES                    Low                  High              1.1553086   0.9351860   1.427243
6 months    COHORTS          PHILIPPINES                    Medium               High              1.0983681   0.8980516   1.343367
6 months    GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6 months    GMS-Nepal        NEPAL                          Low                  High              1.8913305   0.9835233   3.637058
6 months    GMS-Nepal        NEPAL                          Medium               High              1.3116472   0.5905555   2.913220
6 months    Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6 months    Guatemala BSC    GUATEMALA                      Low                  High              1.1473115   0.7550266   1.743414
6 months    Guatemala BSC    GUATEMALA                      Medium               High              0.9280317   0.6004700   1.434281
6 months    IRC              INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    IRC              INDIA                          Low                  High              1.2889571   0.8382561   1.981985
6 months    IRC              INDIA                          Medium               High              1.3308713   0.8645969   2.048606
6 months    JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    JiVitA-3         BANGLADESH                     Low                  High              1.0423854   0.9551243   1.137619
6 months    JiVitA-3         BANGLADESH                     Medium               High              1.0838705   0.9954912   1.180096
6 months    JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    JiVitA-4         BANGLADESH                     Low                  High              1.1435482   0.9761539   1.339648
6 months    JiVitA-4         BANGLADESH                     Medium               High              1.1112644   0.9385684   1.315736
6 months    LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
6 months    LCNI-5           MALAWI                         Low                  High              1.3041784   1.0441273   1.628998
6 months    LCNI-5           MALAWI                         Medium               High              1.1216055   0.8824512   1.425573
6 months    MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    MAL-ED           BANGLADESH                     Low                  High              1.9960937   0.8939880   4.456872
6 months    MAL-ED           BANGLADESH                     Medium               High              2.0105932   0.8915563   4.534189
6 months    MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    MAL-ED           INDIA                          Low                  High              1.2746914   0.5930231   2.739924
6 months    MAL-ED           INDIA                          Medium               High              1.0216450   0.4604930   2.266611
6 months    MAL-ED           PERU                           High                 High              1.0000000   1.0000000   1.000000
6 months    MAL-ED           PERU                           Low                  High              0.7085689   0.4075910   1.231798
6 months    MAL-ED           PERU                           Medium               High              0.7573760   0.4439004   1.292223
6 months    MAL-ED           SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
6 months    MAL-ED           SOUTH AFRICA                   Low                  High              1.3453958   0.7147058   2.532636
6 months    MAL-ED           SOUTH AFRICA                   Medium               High              1.2429500   0.5801390   2.663025
6 months    NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    NIH-Birth        BANGLADESH                     Low                  High              1.6553889   1.1275832   2.430253
6 months    NIH-Birth        BANGLADESH                     Medium               High              1.4237522   0.9542945   2.124156
6 months    NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    NIH-Crypto       BANGLADESH                     Low                  High              1.4948780   1.0506558   2.126919
6 months    NIH-Crypto       BANGLADESH                     Medium               High              1.3376271   0.9287213   1.926570
6 months    PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
6 months    PROBIT           BELARUS                        Low                  High              2.1777780   1.5533636   3.053192
6 months    PROBIT           BELARUS                        Medium               High              1.5702043   1.0896043   2.262786
6 months    PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    PROVIDE          BANGLADESH                     Low                  High              1.5166199   0.9278603   2.478968
6 months    PROVIDE          BANGLADESH                     Medium               High              1.6124743   1.0059402   2.584720
6 months    SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    SAS-CompFeed     INDIA                          Low                  High              1.8793505   1.2551635   2.813943
6 months    SAS-CompFeed     INDIA                          Medium               High              1.7517224   1.2140547   2.527507
6 months    SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    SAS-FoodSuppl    INDIA                          Low                  High              1.2707564   0.7473016   2.160870
6 months    SAS-FoodSuppl    INDIA                          Medium               High              1.2670555   0.6729117   2.385795
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.7360552   0.3024519   1.791284
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0855660   0.7931916   1.485711
6 months    ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6 months    ZVITAMBO         ZIMBABWE                       Low                  High              1.0564691   0.9230845   1.209128
6 months    ZVITAMBO         ZIMBABWE                       Medium               High              1.1421903   1.0166418   1.283243
24 months   CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.000000
24 months   CMC-V-BCS-2002   INDIA                          Low                  High              1.2693859   1.0970575   1.468784
24 months   CMC-V-BCS-2002   INDIA                          Medium               High              1.0821030   0.9121272   1.283754
24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
24 months   COHORTS          GUATEMALA                      Low                  High              1.0064496   0.9325871   1.086162
24 months   COHORTS          GUATEMALA                      Medium               High              0.9541497   0.8761971   1.039038
24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
24 months   COHORTS          INDIA                          Low                  High              1.8826527   1.6249038   2.181287
24 months   COHORTS          INDIA                          Medium               High              1.4482137   1.2534450   1.673247
24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
24 months   COHORTS          PHILIPPINES                    Low                  High              1.1239547   1.0338043   1.221966
24 months   COHORTS          PHILIPPINES                    Medium               High              1.1520671   1.0647528   1.246541
24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
24 months   GMS-Nepal        NEPAL                          Low                  High              1.6415101   1.0807271   2.493280
24 months   GMS-Nepal        NEPAL                          Medium               High              1.6982974   1.0721979   2.690001
24 months   IRC              INDIA                          High                 High              1.0000000   1.0000000   1.000000
24 months   IRC              INDIA                          Low                  High              1.2260935   0.9226665   1.629305
24 months   IRC              INDIA                          Medium               High              1.1424120   0.8503036   1.534870
24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   JiVitA-3         BANGLADESH                     Low                  High              1.1250580   1.0427656   1.213845
24 months   JiVitA-3         BANGLADESH                     Medium               High              1.0312773   0.9525103   1.116558
24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   JiVitA-4         BANGLADESH                     Low                  High              1.1263533   1.0036588   1.264047
24 months   JiVitA-4         BANGLADESH                     Medium               High              1.1002695   0.9785356   1.237148
24 months   LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
24 months   LCNI-5           MALAWI                         Low                  High              1.1461527   0.9163464   1.433591
24 months   LCNI-5           MALAWI                         Medium               High              1.1264567   0.8926007   1.421582
24 months   MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   MAL-ED           BANGLADESH                     Low                  High              0.8794187   0.6333033   1.221180
24 months   MAL-ED           BANGLADESH                     Medium               High              0.9123709   0.6098120   1.365045
24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.000000
24 months   MAL-ED           INDIA                          Low                  High              1.0931348   0.7095128   1.684175
24 months   MAL-ED           INDIA                          Medium               High              0.9683057   0.6180784   1.516985
24 months   MAL-ED           NEPAL                          High                 High              1.0000000   1.0000000   1.000000
24 months   MAL-ED           NEPAL                          Low                  High              1.1513207   0.5860331   2.261885
24 months   MAL-ED           NEPAL                          Medium               High              0.8641643   0.4051487   1.843225
24 months   MAL-ED           PERU                           High                 High              1.0000000   1.0000000   1.000000
24 months   MAL-ED           PERU                           Low                  High              1.5629522   0.9232186   2.645982
24 months   MAL-ED           PERU                           Medium               High              1.4400323   0.8403866   2.467547
24 months   MAL-ED           SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
24 months   MAL-ED           SOUTH AFRICA                   Low                  High              1.3874942   0.8628573   2.231122
24 months   MAL-ED           SOUTH AFRICA                   Medium               High              1.5038306   0.8661851   2.610881
24 months   NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   NIH-Birth        BANGLADESH                     Low                  High              1.4859580   1.2177115   1.813296
24 months   NIH-Birth        BANGLADESH                     Medium               High              1.1609913   0.9256539   1.456161
24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   NIH-Crypto       BANGLADESH                     Low                  High              1.9015151   1.2541356   2.883069
24 months   NIH-Crypto       BANGLADESH                     Medium               High              1.6876349   1.1153890   2.553469
24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
24 months   PROBIT           BELARUS                        Low                  High              2.1360798   1.1911573   3.830592
24 months   PROBIT           BELARUS                        Medium               High              1.5342017   0.9384165   2.508241
24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   PROVIDE          BANGLADESH                     Low                  High              1.1719005   0.8599920   1.596934
24 months   PROVIDE          BANGLADESH                     Medium               High              1.0768957   0.7995053   1.450528
24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.2189966   1.0281641   1.445248
24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.1915716   1.0126448   1.402114


### Parameter: PAR


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      High                 NA                 0.0020150   -0.0281782   0.0322082
Birth       COHORTS          INDIA                          High                 NA                 0.0346397    0.0114320   0.0578475
Birth       COHORTS          PHILIPPINES                    High                 NA                 0.0052312   -0.0085326   0.0189950
Birth       GMS-Nepal        NEPAL                          High                 NA                -0.0174782   -0.0407955   0.0058390
Birth       IRC              INDIA                          High                 NA                 0.0245958   -0.0240445   0.0732361
Birth       JiVitA-3         BANGLADESH                     High                 NA                -0.0000991   -0.0060159   0.0058177
Birth       JiVitA-4         BANGLADESH                     High                 NA                 0.0122763   -0.0062744   0.0308270
Birth       MAL-ED           BANGLADESH                     High                 NA                 0.0624152   -0.0067958   0.1316262
Birth       MAL-ED           PERU                           High                 NA                -0.0060591   -0.0700384   0.0579202
Birth       NIH-Birth        BANGLADESH                     High                 NA                 0.0060225   -0.0404508   0.0524957
Birth       NIH-Crypto       BANGLADESH                     High                 NA                 0.0309635   -0.0005321   0.0624591
Birth       PROVIDE          BANGLADESH                     High                 NA                 0.0235474   -0.0072804   0.0543752
Birth       SAS-CompFeed     INDIA                          High                 NA                 0.0263536   -0.0012371   0.0539443
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.0002979   -0.0025291   0.0019333
6 months    CMC-V-BCS-2002   INDIA                          High                 NA                 0.0107024   -0.0440149   0.0654197
6 months    COHORTS          GUATEMALA                      High                 NA                -0.0177204   -0.0789350   0.0434942
6 months    COHORTS          INDIA                          High                 NA                 0.0860375    0.0619284   0.1101466
6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0161224   -0.0102121   0.0424569
6 months    GMS-Nepal        NEPAL                          High                 NA                 0.0922927    0.0153697   0.1692158
6 months    Guatemala BSC    GUATEMALA                      High                 NA                 0.0051941   -0.0587893   0.0691775
6 months    IRC              INDIA                          High                 NA                 0.0425956   -0.0168832   0.1020743
6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0036874   -0.0113691   0.0187439
6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0257332   -0.0003628   0.0518291
6 months    LCNI-5           MALAWI                         High                 NA                 0.0438786   -0.0004004   0.0881576
6 months    MAL-ED           BANGLADESH                     High                 NA                 0.0689824    0.0041266   0.1338382
6 months    MAL-ED           INDIA                          High                 NA                 0.0157269   -0.0633729   0.0948266
6 months    MAL-ED           PERU                           High                 NA                -0.0515124   -0.1322210   0.0291962
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                 0.0363445   -0.0385966   0.1112856
6 months    NIH-Birth        BANGLADESH                     High                 NA                 0.0750179    0.0185225   0.1315132
6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0475559    0.0088820   0.0862299
6 months    PROBIT           BELARUS                        High                 NA                 0.0174116    0.0088227   0.0260005
6 months    PROVIDE          BANGLADESH                     High                 NA                 0.0438584    0.0060842   0.0816326
6 months    SAS-CompFeed     INDIA                          High                 NA                 0.1157255    0.0609184   0.1705326
6 months    SAS-FoodSuppl    INDIA                          High                 NA                 0.0863776   -0.0836869   0.2564421
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0046900   -0.0170934   0.0264734
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0075246   -0.0007749   0.0158241
24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0655391    0.0106854   0.1203929
24 months   COHORTS          GUATEMALA                      High                 NA                -0.0120506   -0.0606699   0.0365687
24 months   COHORTS          INDIA                          High                 NA                 0.1841960    0.1340914   0.2343005
24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0384366    0.0090975   0.0677757
24 months   GMS-Nepal        NEPAL                          High                 NA                 0.1661920    0.0559065   0.2764775
24 months   IRC              INDIA                          High                 NA                 0.0504240   -0.0192808   0.1201288
24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0121733   -0.0145351   0.0388816
24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0227230   -0.0067454   0.0521913
24 months   LCNI-5           MALAWI                         High                 NA                 0.0325819   -0.0198933   0.0850570
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0307877   -0.1174378   0.0558625
24 months   MAL-ED           INDIA                          High                 NA                 0.0242424   -0.0910817   0.1395665
24 months   MAL-ED           NEPAL                          High                 NA                 0.0055927   -0.0965371   0.1077226
24 months   MAL-ED           PERU                           High                 NA                 0.1032299   -0.0006478   0.2071077
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.0800981   -0.0220762   0.1822724
24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.1020766    0.0336004   0.1705527
24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0805875    0.0272124   0.1339626
24 months   PROBIT           BELARUS                        High                 NA                 0.0270425    0.0033340   0.0507510
24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0273782   -0.0299739   0.0847303
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0356451    0.0137371   0.0575532


### Parameter: PAF


agecat      studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS          GUATEMALA                      High                 NA                 0.0346251   -0.6522240   0.4359429
Birth       COHORTS          INDIA                          High                 NA                 0.2928378    0.0686066   0.4630857
Birth       COHORTS          PHILIPPINES                    High                 NA                 0.0853212   -0.1681435   0.2837889
Birth       GMS-Nepal        NEPAL                          High                 NA                -0.0992822   -0.2418998   0.0269575
Birth       IRC              INDIA                          High                 NA                 0.2120705   -0.3397510   0.5366058
Birth       JiVitA-3         BANGLADESH                     High                 NA                -0.0003012   -0.0184447   0.0175191
Birth       JiVitA-4         BANGLADESH                     High                 NA                 0.0404471   -0.0227162   0.0997095
Birth       MAL-ED           BANGLADESH                     High                 NA                 0.3432836   -0.1542075   0.6263441
Birth       MAL-ED           PERU                           High                 NA                -0.0542986   -0.8156860   0.3878095
Birth       NIH-Birth        BANGLADESH                     High                 NA                 0.0377490   -0.3022792   0.2889950
Birth       NIH-Crypto       BANGLADESH                     High                 NA                 0.2244085   -0.0359510   0.4193333
Birth       PROVIDE          BANGLADESH                     High                 NA                 0.2644179   -0.1682389   0.5368404
Birth       SAS-CompFeed     INDIA                          High                 NA                 0.0945408   -0.0158599   0.1929435
Birth       ZVITAMBO         ZIMBABWE                       High                 NA                -0.0028779   -0.0246683   0.0184491
6 months    CMC-V-BCS-2002   INDIA                          High                 NA                 0.0355782   -0.1645264   0.2012981
6 months    COHORTS          GUATEMALA                      High                 NA                -0.0434788   -0.2050932   0.0964615
6 months    COHORTS          INDIA                          High                 NA                 0.4491042    0.3108533   0.5596204
6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0763278   -0.0570253   0.1928572
6 months    GMS-Nepal        NEPAL                          High                 NA                 0.4243952   -0.0547418   0.6858749
6 months    Guatemala BSC    GUATEMALA                      High                 NA                 0.0167299   -0.2124821   0.2026108
6 months    IRC              INDIA                          High                 NA                 0.1733639   -0.1066947   0.3825513
6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0146639   -0.0470633   0.0727522
6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.1018754   -0.0072227   0.1991565
6 months    LCNI-5           MALAWI                         High                 NA                 0.1209265   -0.0098419   0.2347612
6 months    MAL-ED           BANGLADESH                     High                 NA                 0.3863014   -0.0842433   0.6526370
6 months    MAL-ED           INDIA                          High                 NA                 0.0934625   -0.5216944   0.4599374
6 months    MAL-ED           PERU                           High                 NA                -0.2335229   -0.6583057   0.0824498
6 months    MAL-ED           SOUTH AFRICA                   High                 NA                 0.1846300   -0.2982282   0.4878957
6 months    NIH-Birth        BANGLADESH                     High                 NA                 0.2797541    0.0379786   0.4607665
6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.2266833    0.0217016   0.3887154
6 months    PROBIT           BELARUS                        High                 NA                 0.4425919    0.2533943   0.5838450
6 months    PROVIDE          BANGLADESH                     High                 NA                 0.2759425    0.0001581   0.4756579
6 months    SAS-CompFeed     INDIA                          High                 NA                 0.4068665    0.1777352   0.5721483
6 months    SAS-FoodSuppl    INDIA                          High                 NA                 0.2013711   -0.3123974   0.5140130
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0486078   -0.2061016   0.2495266
6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0461230   -0.0060600   0.0955993
24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0914099    0.0107165   0.1655213
24 months   COHORTS          GUATEMALA                      High                 NA                -0.0148629   -0.0766280   0.0433588
24 months   COHORTS          INDIA                          High                 NA                 0.3330124    0.2359975   0.4177080
24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0617055    0.0133505   0.1076907
24 months   GMS-Nepal        NEPAL                          High                 NA                 0.3680507    0.0702374   0.5704711
24 months   IRC              INDIA                          High                 NA                 0.1199036   -0.0624076   0.2709298
24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0247864   -0.0311745   0.0777104
24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0566104   -0.0195103   0.1270475
24 months   LCNI-5           MALAWI                         High                 NA                 0.0739556   -0.0532626   0.1858078
24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0666417   -0.2724019   0.1058450
24 months   MAL-ED           INDIA                          High                 NA                 0.0581234   -0.2638886   0.2980936
24 months   MAL-ED           NEPAL                          High                 NA                 0.0264722   -0.5995352   0.4074802
24 months   MAL-ED           PERU                           High                 NA                 0.2789998   -0.0658520   0.5122764
24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.2269447   -0.1245558   0.4685772
24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.1794707    0.0484796   0.2924288
24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.3138028    0.0767245   0.4900042
24 months   PROBIT           BELARUS                        High                 NA                 0.3967865    0.0449243   0.6190182
24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0832873   -0.1079684   0.2415288
24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.1026755    0.0374749   0.1634595
