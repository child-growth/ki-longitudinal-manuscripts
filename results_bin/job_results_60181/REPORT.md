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

**Outcome Variable:** sstunted

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

agecat      studyid          country                        meducyrs    sstunted   n_cell       n
----------  ---------------  -----------------------------  ---------  ---------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          High               0       49      92
Birth       CMC-V-BCS-2002   INDIA                          High               1        2      92
Birth       CMC-V-BCS-2002   INDIA                          Low                0       16      92
Birth       CMC-V-BCS-2002   INDIA                          Low                1        0      92
Birth       CMC-V-BCS-2002   INDIA                          Medium             0       23      92
Birth       CMC-V-BCS-2002   INDIA                          Medium             1        2      92
Birth       COHORTS          GUATEMALA                      High               0      177     842
Birth       COHORTS          GUATEMALA                      High               1        1     842
Birth       COHORTS          GUATEMALA                      Low                0      384     842
Birth       COHORTS          GUATEMALA                      Low                1        7     842
Birth       COHORTS          GUATEMALA                      Medium             0      270     842
Birth       COHORTS          GUATEMALA                      Medium             1        3     842
Birth       COHORTS          INDIA                          High               0      668    5216
Birth       COHORTS          INDIA                          High               1       10    5216
Birth       COHORTS          INDIA                          Low                0     1683    5216
Birth       COHORTS          INDIA                          Low                1       73    5216
Birth       COHORTS          INDIA                          Medium             0     2716    5216
Birth       COHORTS          INDIA                          Medium             1       66    5216
Birth       COHORTS          PHILIPPINES                    High               0     1156    3050
Birth       COHORTS          PHILIPPINES                    High               1       13    3050
Birth       COHORTS          PHILIPPINES                    Low                0      882    3050
Birth       COHORTS          PHILIPPINES                    Low                1       18    3050
Birth       COHORTS          PHILIPPINES                    Medium             0      966    3050
Birth       COHORTS          PHILIPPINES                    Medium             1       15    3050
Birth       EE               PAKISTAN                       High               0        5     239
Birth       EE               PAKISTAN                       High               1        2     239
Birth       EE               PAKISTAN                       Low                0      171     239
Birth       EE               PAKISTAN                       Low                1       44     239
Birth       EE               PAKISTAN                       Medium             0       16     239
Birth       EE               PAKISTAN                       Medium             1        1     239
Birth       GMS-Nepal        NEPAL                          High               0       82     693
Birth       GMS-Nepal        NEPAL                          High               1        3     693
Birth       GMS-Nepal        NEPAL                          Low                0      462     693
Birth       GMS-Nepal        NEPAL                          Low                1       23     693
Birth       GMS-Nepal        NEPAL                          Medium             0      118     693
Birth       GMS-Nepal        NEPAL                          Medium             1        5     693
Birth       IRC              INDIA                          High               0      110     388
Birth       IRC              INDIA                          High               1        3     388
Birth       IRC              INDIA                          Low                0      137     388
Birth       IRC              INDIA                          Low                1        5     388
Birth       IRC              INDIA                          Medium             0      125     388
Birth       IRC              INDIA                          Medium             1        8     388
Birth       JiVitA-3         BANGLADESH                     High               0     6145   22427
Birth       JiVitA-3         BANGLADESH                     High               1      538   22427
Birth       JiVitA-3         BANGLADESH                     Low                0     7731   22427
Birth       JiVitA-3         BANGLADESH                     Low                1     1064   22427
Birth       JiVitA-3         BANGLADESH                     Medium             0     6103   22427
Birth       JiVitA-3         BANGLADESH                     Medium             1      846   22427
Birth       JiVitA-4         BANGLADESH                     High               0      866    2817
Birth       JiVitA-4         BANGLADESH                     High               1       67    2817
Birth       JiVitA-4         BANGLADESH                     Low                0      892    2817
Birth       JiVitA-4         BANGLADESH                     Low                1       98    2817
Birth       JiVitA-4         BANGLADESH                     Medium             0      826    2817
Birth       JiVitA-4         BANGLADESH                     Medium             1       68    2817
Birth       MAL-ED           BANGLADESH                     High               0       65     187
Birth       MAL-ED           BANGLADESH                     High               1        2     187
Birth       MAL-ED           BANGLADESH                     Low                0       62     187
Birth       MAL-ED           BANGLADESH                     Low                1        3     187
Birth       MAL-ED           BANGLADESH                     Medium             0       53     187
Birth       MAL-ED           BANGLADESH                     Medium             1        2     187
Birth       MAL-ED           BRAZIL                         High               0       18      65
Birth       MAL-ED           BRAZIL                         High               1        0      65
Birth       MAL-ED           BRAZIL                         Low                0       17      65
Birth       MAL-ED           BRAZIL                         Low                1        0      65
Birth       MAL-ED           BRAZIL                         Medium             0       27      65
Birth       MAL-ED           BRAZIL                         Medium             1        3      65
Birth       MAL-ED           INDIA                          High               0        8      40
Birth       MAL-ED           INDIA                          High               1        0      40
Birth       MAL-ED           INDIA                          Low                0       18      40
Birth       MAL-ED           INDIA                          Low                1        0      40
Birth       MAL-ED           INDIA                          Medium             0       12      40
Birth       MAL-ED           INDIA                          Medium             1        2      40
Birth       MAL-ED           NEPAL                          High               0        5      25
Birth       MAL-ED           NEPAL                          High               1        0      25
Birth       MAL-ED           NEPAL                          Low                0       12      25
Birth       MAL-ED           NEPAL                          Low                1        0      25
Birth       MAL-ED           NEPAL                          Medium             0        7      25
Birth       MAL-ED           NEPAL                          Medium             1        1      25
Birth       MAL-ED           PERU                           High               0       66     233
Birth       MAL-ED           PERU                           High               1        2     233
Birth       MAL-ED           PERU                           Low                0       83     233
Birth       MAL-ED           PERU                           Low                1        1     233
Birth       MAL-ED           PERU                           Medium             0       80     233
Birth       MAL-ED           PERU                           Medium             1        1     233
Birth       MAL-ED           SOUTH AFRICA                   High               0       35     123
Birth       MAL-ED           SOUTH AFRICA                   High               1        0     123
Birth       MAL-ED           SOUTH AFRICA                   Low                0       60     123
Birth       MAL-ED           SOUTH AFRICA                   Low                1        2     123
Birth       MAL-ED           SOUTH AFRICA                   Medium             0       26     123
Birth       MAL-ED           SOUTH AFRICA                   Medium             1        0     123
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               0        7     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               1        0     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                0       32     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                1        2     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             0       58     105
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             1        6     105
Birth       NIH-Birth        BANGLADESH                     High               0      165     608
Birth       NIH-Birth        BANGLADESH                     High               1        5     608
Birth       NIH-Birth        BANGLADESH                     Low                0      215     608
Birth       NIH-Birth        BANGLADESH                     Low                1        9     608
Birth       NIH-Birth        BANGLADESH                     Medium             0      209     608
Birth       NIH-Birth        BANGLADESH                     Medium             1        5     608
Birth       NIH-Crypto       BANGLADESH                     High               0      243     732
Birth       NIH-Crypto       BANGLADESH                     High               1        4     732
Birth       NIH-Crypto       BANGLADESH                     Low                0      230     732
Birth       NIH-Crypto       BANGLADESH                     Low                1        2     732
Birth       NIH-Crypto       BANGLADESH                     Medium             0      249     732
Birth       NIH-Crypto       BANGLADESH                     Medium             1        4     732
Birth       PROBIT           BELARUS                        High               0     2249   13893
Birth       PROBIT           BELARUS                        High               1        0   13893
Birth       PROBIT           BELARUS                        Low                0     4963   13893
Birth       PROBIT           BELARUS                        Low                1        2   13893
Birth       PROBIT           BELARUS                        Medium             0     6676   13893
Birth       PROBIT           BELARUS                        Medium             1        3   13893
Birth       PROVIDE          BANGLADESH                     High               0      170     539
Birth       PROVIDE          BANGLADESH                     High               1        1     539
Birth       PROVIDE          BANGLADESH                     Low                0      164     539
Birth       PROVIDE          BANGLADESH                     Low                1        1     539
Birth       PROVIDE          BANGLADESH                     Medium             0      201     539
Birth       PROVIDE          BANGLADESH                     Medium             1        2     539
Birth       SAS-CompFeed     INDIA                          High               0      235    1252
Birth       SAS-CompFeed     INDIA                          High               1       13    1252
Birth       SAS-CompFeed     INDIA                          Low                0      535    1252
Birth       SAS-CompFeed     INDIA                          Low                1       52    1252
Birth       SAS-CompFeed     INDIA                          Medium             0      391    1252
Birth       SAS-CompFeed     INDIA                          Medium             1       26    1252
Birth       ZVITAMBO         ZIMBABWE                       High               0     7301   13855
Birth       ZVITAMBO         ZIMBABWE                       High               1      214   13855
Birth       ZVITAMBO         ZIMBABWE                       Low                0     2802   13855
Birth       ZVITAMBO         ZIMBABWE                       Low                1      110   13855
Birth       ZVITAMBO         ZIMBABWE                       Medium             0     3310   13855
Birth       ZVITAMBO         ZIMBABWE                       Medium             1      118   13855
6 months    CMC-V-BCS-2002   INDIA                          High               0      144     369
6 months    CMC-V-BCS-2002   INDIA                          High               1       13     369
6 months    CMC-V-BCS-2002   INDIA                          Low                0       89     369
6 months    CMC-V-BCS-2002   INDIA                          Low                1       16     369
6 months    CMC-V-BCS-2002   INDIA                          Medium             0       94     369
6 months    CMC-V-BCS-2002   INDIA                          Medium             1       13     369
6 months    COHORTS          GUATEMALA                      High               0      161     952
6 months    COHORTS          GUATEMALA                      High               1       24     952
6 months    COHORTS          GUATEMALA                      Low                0      381     952
6 months    COHORTS          GUATEMALA                      Low                1       68     952
6 months    COHORTS          GUATEMALA                      Medium             0      288     952
6 months    COHORTS          GUATEMALA                      Medium             1       30     952
6 months    COHORTS          INDIA                          High               0      731    5413
6 months    COHORTS          INDIA                          High               1        5    5413
6 months    COHORTS          INDIA                          Low                0     1638    5413
6 months    COHORTS          INDIA                          Low                1      139    5413
6 months    COHORTS          INDIA                          Medium             0     2793    5413
6 months    COHORTS          INDIA                          Medium             1      107    5413
6 months    COHORTS          PHILIPPINES                    High               0      986    2708
6 months    COHORTS          PHILIPPINES                    High               1       28    2708
6 months    COHORTS          PHILIPPINES                    Low                0      770    2708
6 months    COHORTS          PHILIPPINES                    Low                1       56    2708
6 months    COHORTS          PHILIPPINES                    Medium             0      820    2708
6 months    COHORTS          PHILIPPINES                    Medium             1       48    2708
6 months    EE               PAKISTAN                       High               0       12     370
6 months    EE               PAKISTAN                       High               1        3     370
6 months    EE               PAKISTAN                       Low                0      248     370
6 months    EE               PAKISTAN                       Low                1       74     370
6 months    EE               PAKISTAN                       Medium             0       30     370
6 months    EE               PAKISTAN                       Medium             1        3     370
6 months    GMS-Nepal        NEPAL                          High               0       68     561
6 months    GMS-Nepal        NEPAL                          High               1        0     561
6 months    GMS-Nepal        NEPAL                          Low                0      378     561
6 months    GMS-Nepal        NEPAL                          Low                1       21     561
6 months    GMS-Nepal        NEPAL                          Medium             0       94     561
6 months    GMS-Nepal        NEPAL                          Medium             1        0     561
6 months    Guatemala BSC    GUATEMALA                      High               0      103     277
6 months    Guatemala BSC    GUATEMALA                      High               1       14     277
6 months    Guatemala BSC    GUATEMALA                      Low                0       67     277
6 months    Guatemala BSC    GUATEMALA                      Low                1        6     277
6 months    Guatemala BSC    GUATEMALA                      Medium             0       82     277
6 months    Guatemala BSC    GUATEMALA                      Medium             1        5     277
6 months    IRC              INDIA                          High               0      117     407
6 months    IRC              INDIA                          High               1        6     407
6 months    IRC              INDIA                          Low                0      133     407
6 months    IRC              INDIA                          Low                1       13     407
6 months    IRC              INDIA                          Medium             0      128     407
6 months    IRC              INDIA                          Medium             1       10     407
6 months    JiVitA-3         BANGLADESH                     High               0     5673   16794
6 months    JiVitA-3         BANGLADESH                     High               1      249   16794
6 months    JiVitA-3         BANGLADESH                     Low                0     5201   16794
6 months    JiVitA-3         BANGLADESH                     Low                1      421   16794
6 months    JiVitA-3         BANGLADESH                     Medium             0     4901   16794
6 months    JiVitA-3         BANGLADESH                     Medium             1      349   16794
6 months    JiVitA-4         BANGLADESH                     High               0     1659    4818
6 months    JiVitA-4         BANGLADESH                     High               1       59    4818
6 months    JiVitA-4         BANGLADESH                     Low                0     1458    4818
6 months    JiVitA-4         BANGLADESH                     Low                1      123    4818
6 months    JiVitA-4         BANGLADESH                     Medium             0     1430    4818
6 months    JiVitA-4         BANGLADESH                     Medium             1       89    4818
6 months    LCNI-5           MALAWI                         High               0      279     813
6 months    LCNI-5           MALAWI                         High               1       19     813
6 months    LCNI-5           MALAWI                         Low                0      233     813
6 months    LCNI-5           MALAWI                         Low                1       28     813
6 months    LCNI-5           MALAWI                         Medium             0      236     813
6 months    LCNI-5           MALAWI                         Medium             1       18     813
6 months    MAL-ED           BANGLADESH                     High               0       72     196
6 months    MAL-ED           BANGLADESH                     High               1        1     196
6 months    MAL-ED           BANGLADESH                     Low                0       59     196
6 months    MAL-ED           BANGLADESH                     Low                1        5     196
6 months    MAL-ED           BANGLADESH                     Medium             0       58     196
6 months    MAL-ED           BANGLADESH                     Medium             1        1     196
6 months    MAL-ED           BRAZIL                         High               0       71     208
6 months    MAL-ED           BRAZIL                         High               1        0     208
6 months    MAL-ED           BRAZIL                         Low                0       56     208
6 months    MAL-ED           BRAZIL                         Low                1        0     208
6 months    MAL-ED           BRAZIL                         Medium             0       81     208
6 months    MAL-ED           BRAZIL                         Medium             1        0     208
6 months    MAL-ED           INDIA                          High               0       58     208
6 months    MAL-ED           INDIA                          High               1        1     208
6 months    MAL-ED           INDIA                          Low                0       70     208
6 months    MAL-ED           INDIA                          Low                1        2     208
6 months    MAL-ED           INDIA                          Medium             0       73     208
6 months    MAL-ED           INDIA                          Medium             1        4     208
6 months    MAL-ED           NEPAL                          High               0       53     221
6 months    MAL-ED           NEPAL                          High               1        0     221
6 months    MAL-ED           NEPAL                          Low                0       93     221
6 months    MAL-ED           NEPAL                          Low                1        0     221
6 months    MAL-ED           NEPAL                          Medium             0       74     221
6 months    MAL-ED           NEPAL                          Medium             1        1     221
6 months    MAL-ED           PERU                           High               0       80     272
6 months    MAL-ED           PERU                           High               1        1     272
6 months    MAL-ED           PERU                           Low                0       88     272
6 months    MAL-ED           PERU                           Low                1        6     272
6 months    MAL-ED           PERU                           Medium             0       94     272
6 months    MAL-ED           PERU                           Medium             1        3     272
6 months    MAL-ED           SOUTH AFRICA                   High               0       68     254
6 months    MAL-ED           SOUTH AFRICA                   High               1        2     254
6 months    MAL-ED           SOUTH AFRICA                   Low                0      123     254
6 months    MAL-ED           SOUTH AFRICA                   Low                1        4     254
6 months    MAL-ED           SOUTH AFRICA                   Medium             0       57     254
6 months    MAL-ED           SOUTH AFRICA                   Medium             1        0     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               0        9     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               1        0     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                0       60     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                1        2     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             0      126     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             1        6     203
6 months    NIH-Birth        BANGLADESH                     High               0      152     537
6 months    NIH-Birth        BANGLADESH                     High               1        3     537
6 months    NIH-Birth        BANGLADESH                     Low                0      174     537
6 months    NIH-Birth        BANGLADESH                     Low                1       21     537
6 months    NIH-Birth        BANGLADESH                     Medium             0      176     537
6 months    NIH-Birth        BANGLADESH                     Medium             1       11     537
6 months    NIH-Crypto       BANGLADESH                     High               0      232     715
6 months    NIH-Crypto       BANGLADESH                     High               1        8     715
6 months    NIH-Crypto       BANGLADESH                     Low                0      221     715
6 months    NIH-Crypto       BANGLADESH                     Low                1        8     715
6 months    NIH-Crypto       BANGLADESH                     Medium             0      239     715
6 months    NIH-Crypto       BANGLADESH                     Medium             1        7     715
6 months    PROBIT           BELARUS                        High               0     2644   15760
6 months    PROBIT           BELARUS                        High               1       13   15760
6 months    PROBIT           BELARUS                        Low                0     5543   15760
6 months    PROBIT           BELARUS                        Low                1      100   15760
6 months    PROBIT           BELARUS                        Medium             0     7396   15760
6 months    PROBIT           BELARUS                        Medium             1       64   15760
6 months    PROVIDE          BANGLADESH                     High               0      208     604
6 months    PROVIDE          BANGLADESH                     High               1        1     604
6 months    PROVIDE          BANGLADESH                     Low                0      181     604
6 months    PROVIDE          BANGLADESH                     Low                1        6     604
6 months    PROVIDE          BANGLADESH                     Medium             0      201     604
6 months    PROVIDE          BANGLADESH                     Medium             1        7     604
6 months    SAS-CompFeed     INDIA                          High               0      278    1336
6 months    SAS-CompFeed     INDIA                          High               1       12    1336
6 months    SAS-CompFeed     INDIA                          Low                0      521    1336
6 months    SAS-CompFeed     INDIA                          Low                1       76    1336
6 months    SAS-CompFeed     INDIA                          Medium             0      409    1336
6 months    SAS-CompFeed     INDIA                          Medium             1       40    1336
6 months    SAS-FoodSuppl    INDIA                          High               0       33     380
6 months    SAS-FoodSuppl    INDIA                          High               1        2     380
6 months    SAS-FoodSuppl    INDIA                          Low                0      257     380
6 months    SAS-FoodSuppl    INDIA                          Low                1       47     380
6 months    SAS-FoodSuppl    INDIA                          Medium             0       36     380
6 months    SAS-FoodSuppl    INDIA                          Medium             1        5     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0      506    2021
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        6    2021
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0       73    2021
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        1    2021
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0     1423    2021
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1       12    2021
6 months    ZVITAMBO         ZIMBABWE                       High               0     4535    8655
6 months    ZVITAMBO         ZIMBABWE                       High               1      167    8655
6 months    ZVITAMBO         ZIMBABWE                       Low                0     1714    8655
6 months    ZVITAMBO         ZIMBABWE                       Low                1       81    8655
6 months    ZVITAMBO         ZIMBABWE                       Medium             0     2055    8655
6 months    ZVITAMBO         ZIMBABWE                       Medium             1      103    8655
24 months   CMC-V-BCS-2002   INDIA                          High               0      106     371
24 months   CMC-V-BCS-2002   INDIA                          High               1       52     371
24 months   CMC-V-BCS-2002   INDIA                          Low                0       66     371
24 months   CMC-V-BCS-2002   INDIA                          Low                1       39     371
24 months   CMC-V-BCS-2002   INDIA                          Medium             0       74     371
24 months   CMC-V-BCS-2002   INDIA                          Medium             1       34     371
24 months   COHORTS          GUATEMALA                      High               0      101    1057
24 months   COHORTS          GUATEMALA                      High               1      108    1057
24 months   COHORTS          GUATEMALA                      Low                0      241    1057
24 months   COHORTS          GUATEMALA                      Low                1      265    1057
24 months   COHORTS          GUATEMALA                      Medium             0      199    1057
24 months   COHORTS          GUATEMALA                      Medium             1      143    1057
24 months   COHORTS          INDIA                          High               0      583    4198
24 months   COHORTS          INDIA                          High               1       25    4198
24 months   COHORTS          INDIA                          Low                0      721    4198
24 months   COHORTS          INDIA                          Low                1      551    4198
24 months   COHORTS          INDIA                          Medium             0     1871    4198
24 months   COHORTS          INDIA                          Medium             1      447    4198
24 months   COHORTS          PHILIPPINES                    High               0      752    2445
24 months   COHORTS          PHILIPPINES                    High               1      162    2445
24 months   COHORTS          PHILIPPINES                    Low                0      453    2445
24 months   COHORTS          PHILIPPINES                    Low                1      291    2445
24 months   COHORTS          PHILIPPINES                    Medium             0      533    2445
24 months   COHORTS          PHILIPPINES                    Medium             1      254    2445
24 months   EE               PAKISTAN                       High               0        5     165
24 months   EE               PAKISTAN                       High               1        1     165
24 months   EE               PAKISTAN                       Low                0       88     165
24 months   EE               PAKISTAN                       Low                1       54     165
24 months   EE               PAKISTAN                       Medium             0       15     165
24 months   EE               PAKISTAN                       Medium             1        2     165
24 months   GMS-Nepal        NEPAL                          High               0       53     485
24 months   GMS-Nepal        NEPAL                          High               1        2     485
24 months   GMS-Nepal        NEPAL                          Low                0      301     485
24 months   GMS-Nepal        NEPAL                          Low                1       43     485
24 months   GMS-Nepal        NEPAL                          Medium             0       78     485
24 months   GMS-Nepal        NEPAL                          Medium             1        8     485
24 months   IRC              INDIA                          High               0      111     409
24 months   IRC              INDIA                          High               1       13     409
24 months   IRC              INDIA                          Low                0      131     409
24 months   IRC              INDIA                          Low                1       15     409
24 months   IRC              INDIA                          Medium             0      126     409
24 months   IRC              INDIA                          Medium             1       13     409
24 months   JiVitA-3         BANGLADESH                     High               0     2634    8621
24 months   JiVitA-3         BANGLADESH                     High               1      293    8621
24 months   JiVitA-3         BANGLADESH                     Low                0     2388    8621
24 months   JiVitA-3         BANGLADESH                     Low                1      616    8621
24 months   JiVitA-3         BANGLADESH                     Medium             0     2255    8621
24 months   JiVitA-3         BANGLADESH                     Medium             1      435    8621
24 months   JiVitA-4         BANGLADESH                     High               0     1588    4741
24 months   JiVitA-4         BANGLADESH                     High               1      108    4741
24 months   JiVitA-4         BANGLADESH                     Low                0     1344    4741
24 months   JiVitA-4         BANGLADESH                     Low                1      192    4741
24 months   JiVitA-4         BANGLADESH                     Medium             0     1357    4741
24 months   JiVitA-4         BANGLADESH                     Medium             1      152    4741
24 months   LCNI-5           MALAWI                         High               0      201     572
24 months   LCNI-5           MALAWI                         High               1       19     572
24 months   LCNI-5           MALAWI                         Low                0      150     572
24 months   LCNI-5           MALAWI                         Low                1       27     572
24 months   LCNI-5           MALAWI                         Medium             0      153     572
24 months   LCNI-5           MALAWI                         Medium             1       22     572
24 months   MAL-ED           BANGLADESH                     High               0       57     171
24 months   MAL-ED           BANGLADESH                     High               1        7     171
24 months   MAL-ED           BANGLADESH                     Low                0       53     171
24 months   MAL-ED           BANGLADESH                     Low                1        6     171
24 months   MAL-ED           BANGLADESH                     Medium             0       44     171
24 months   MAL-ED           BANGLADESH                     Medium             1        4     171
24 months   MAL-ED           BRAZIL                         High               0       62     168
24 months   MAL-ED           BRAZIL                         High               1        0     168
24 months   MAL-ED           BRAZIL                         Low                0       42     168
24 months   MAL-ED           BRAZIL                         Low                1        0     168
24 months   MAL-ED           BRAZIL                         Medium             0       63     168
24 months   MAL-ED           BRAZIL                         Medium             1        1     168
24 months   MAL-ED           INDIA                          High               0       53     199
24 months   MAL-ED           INDIA                          High               1        2     199
24 months   MAL-ED           INDIA                          Low                0       60     199
24 months   MAL-ED           INDIA                          Low                1        9     199
24 months   MAL-ED           INDIA                          Medium             0       65     199
24 months   MAL-ED           INDIA                          Medium             1       10     199
24 months   MAL-ED           NEPAL                          High               0       46     213
24 months   MAL-ED           NEPAL                          High               1        2     213
24 months   MAL-ED           NEPAL                          Low                0       89     213
24 months   MAL-ED           NEPAL                          Low                1        2     213
24 months   MAL-ED           NEPAL                          Medium             0       73     213
24 months   MAL-ED           NEPAL                          Medium             1        1     213
24 months   MAL-ED           PERU                           High               0       56     200
24 months   MAL-ED           PERU                           High               1        3     200
24 months   MAL-ED           PERU                           Low                0       67     200
24 months   MAL-ED           PERU                           Low                1        7     200
24 months   MAL-ED           PERU                           Medium             0       62     200
24 months   MAL-ED           PERU                           Medium             1        5     200
24 months   MAL-ED           SOUTH AFRICA                   High               0       63     238
24 months   MAL-ED           SOUTH AFRICA                   High               1        4     238
24 months   MAL-ED           SOUTH AFRICA                   Low                0      103     238
24 months   MAL-ED           SOUTH AFRICA                   Low                1       17     238
24 months   MAL-ED           SOUTH AFRICA                   Medium             0       45     238
24 months   MAL-ED           SOUTH AFRICA                   Medium             1        6     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               0        6     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High               1        1     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                0       32     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                1       22     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             0       85     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium             1       29     175
24 months   NIH-Birth        BANGLADESH                     High               0      117     429
24 months   NIH-Birth        BANGLADESH                     High               1       13     429
24 months   NIH-Birth        BANGLADESH                     Low                0      104     429
24 months   NIH-Birth        BANGLADESH                     Low                1       49     429
24 months   NIH-Birth        BANGLADESH                     Medium             0      113     429
24 months   NIH-Birth        BANGLADESH                     Medium             1       33     429
24 months   NIH-Crypto       BANGLADESH                     High               0      185     514
24 months   NIH-Crypto       BANGLADESH                     High               1        6     514
24 months   NIH-Crypto       BANGLADESH                     Low                0      133     514
24 months   NIH-Crypto       BANGLADESH                     Low                1       13     514
24 months   NIH-Crypto       BANGLADESH                     Medium             0      160     514
24 months   NIH-Crypto       BANGLADESH                     Medium             1       17     514
24 months   PROBIT           BELARUS                        High               0      663    4035
24 months   PROBIT           BELARUS                        High               1        1    4035
24 months   PROBIT           BELARUS                        Low                0     1378    4035
24 months   PROBIT           BELARUS                        Low                1       29    4035
24 months   PROBIT           BELARUS                        Medium             0     1929    4035
24 months   PROBIT           BELARUS                        Medium             1       35    4035
24 months   PROVIDE          BANGLADESH                     High               0      193     578
24 months   PROVIDE          BANGLADESH                     High               1        8     578
24 months   PROVIDE          BANGLADESH                     Low                0      150     578
24 months   PROVIDE          BANGLADESH                     Low                1       24     578
24 months   PROVIDE          BANGLADESH                     Medium             0      183     578
24 months   PROVIDE          BANGLADESH                     Medium             1       20     578
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0        3       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        1       6
24 months   ZVITAMBO         ZIMBABWE                       High               0      787    1639
24 months   ZVITAMBO         ZIMBABWE                       High               1       75    1639
24 months   ZVITAMBO         ZIMBABWE                       Low                0      298    1639
24 months   ZVITAMBO         ZIMBABWE                       Low                1       47    1639
24 months   ZVITAMBO         ZIMBABWE                       Medium             0      376    1639
24 months   ZVITAMBO         ZIMBABWE                       Medium             1       56    1639


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
* agecat: Birth, studyid: COHORTS, country: GUATEMALA
* agecat: Birth, studyid: EE, country: PAKISTAN
* agecat: Birth, studyid: GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: IRC, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: PROBIT, country: BELARUS
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: INDIA
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: MAL-ED, country: INDIA
* agecat: 24 months, studyid: MAL-ED, country: NEPAL
* agecat: 24 months, studyid: MAL-ED, country: PERU
* agecat: 24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: PROBIT, country: BELARUS
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




# Results Detail

## Results Plots
![](/tmp/99d20d18-e74b-49e2-b546-367a1fb9a65d/c5375754-e67e-427b-bb56-619012682c34/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/99d20d18-e74b-49e2-b546-367a1fb9a65d/c5375754-e67e-427b-bb56-619012682c34/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/99d20d18-e74b-49e2-b546-367a1fb9a65d/c5375754-e67e-427b-bb56-619012682c34/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/99d20d18-e74b-49e2-b546-367a1fb9a65d/c5375754-e67e-427b-bb56-619012682c34/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA         High                 NA                0.0154048   0.0056038   0.0252058
Birth       COHORTS          INDIA         Low                  NA                0.0419288   0.0325000   0.0513576
Birth       COHORTS          INDIA         Medium               NA                0.0237914   0.0181081   0.0294746
Birth       COHORTS          PHILIPPINES   High                 NA                0.0148084   0.0048017   0.0248151
Birth       COHORTS          PHILIPPINES   Low                  NA                0.0186825   0.0080271   0.0293378
Birth       COHORTS          PHILIPPINES   Medium               NA                0.0144567   0.0069719   0.0219415
Birth       JiVitA-3         BANGLADESH    High                 NA                0.1092595   0.1034295   0.1150895
Birth       JiVitA-3         BANGLADESH    Low                  NA                0.1114186   0.1063181   0.1165190
Birth       JiVitA-3         BANGLADESH    Medium               NA                0.1129864   0.1068376   0.1191352
Birth       JiVitA-4         BANGLADESH    High                 NA                0.0823995   0.0691916   0.0956074
Birth       JiVitA-4         BANGLADESH    Low                  NA                0.0854464   0.0726722   0.0982205
Birth       JiVitA-4         BANGLADESH    Medium               NA                0.0791800   0.0666824   0.0916775
Birth       NIH-Birth        BANGLADESH    High                 NA                0.0294118   0.0039927   0.0548308
Birth       NIH-Birth        BANGLADESH    Low                  NA                0.0401786   0.0144406   0.0659165
Birth       NIH-Birth        BANGLADESH    Medium               NA                0.0233645   0.0031090   0.0436200
Birth       SAS-CompFeed     INDIA         High                 NA                0.0431140   0.0298965   0.0563315
Birth       SAS-CompFeed     INDIA         Low                  NA                0.0838651   0.0620966   0.1056335
Birth       SAS-CompFeed     INDIA         Medium               NA                0.0583095   0.0286509   0.0879680
Birth       ZVITAMBO         ZIMBABWE      High                 NA                0.0319837   0.0288916   0.0350757
Birth       ZVITAMBO         ZIMBABWE      Low                  NA                0.0317210   0.0276464   0.0357956
Birth       ZVITAMBO         ZIMBABWE      Medium               NA                0.0312735   0.0276716   0.0348754
6 months    CMC-V-BCS-2002   INDIA         High                 NA                0.0822073   0.0393626   0.1250520
6 months    CMC-V-BCS-2002   INDIA         Low                  NA                0.1533952   0.0835181   0.2232723
6 months    CMC-V-BCS-2002   INDIA         Medium               NA                0.1202219   0.0585548   0.1818891
6 months    COHORTS          GUATEMALA     High                 NA                0.1395483   0.0875225   0.1915742
6 months    COHORTS          GUATEMALA     Low                  NA                0.1358714   0.1042229   0.1675200
6 months    COHORTS          GUATEMALA     Medium               NA                0.0993314   0.0656792   0.1329836
6 months    COHORTS          INDIA         High                 NA                0.0067935   0.0008586   0.0127284
6 months    COHORTS          INDIA         Low                  NA                0.0782217   0.0657358   0.0907077
6 months    COHORTS          INDIA         Medium               NA                0.0368966   0.0300351   0.0437580
6 months    COHORTS          PHILIPPINES   High                 NA                0.0288624   0.0183262   0.0393986
6 months    COHORTS          PHILIPPINES   Low                  NA                0.0632396   0.0462965   0.0801826
6 months    COHORTS          PHILIPPINES   Medium               NA                0.0596957   0.0432741   0.0761173
6 months    Guatemala BSC    GUATEMALA     High                 NA                0.1196581   0.0607416   0.1785747
6 months    Guatemala BSC    GUATEMALA     Low                  NA                0.0821918   0.0190725   0.1453111
6 months    Guatemala BSC    GUATEMALA     Medium               NA                0.0574713   0.0084769   0.1064657
6 months    IRC              INDIA         High                 NA                0.0487805   0.0106657   0.0868952
6 months    IRC              INDIA         Low                  NA                0.0890411   0.0427870   0.1352952
6 months    IRC              INDIA         Medium               NA                0.0724638   0.0291557   0.1157718
6 months    JiVitA-3         BANGLADESH    High                 NA                0.0544916   0.0463828   0.0626005
6 months    JiVitA-3         BANGLADESH    Low                  NA                0.0645386   0.0553600   0.0737172
6 months    JiVitA-3         BANGLADESH    Medium               NA                0.0648224   0.0546148   0.0750300
6 months    JiVitA-4         BANGLADESH    High                 NA                0.0420896   0.0319615   0.0522178
6 months    JiVitA-4         BANGLADESH    Low                  NA                0.0640342   0.0501629   0.0779054
6 months    JiVitA-4         BANGLADESH    Medium               NA                0.0562702   0.0430492   0.0694911
6 months    LCNI-5           MALAWI        High                 NA                0.0664706   0.0370064   0.0959348
6 months    LCNI-5           MALAWI        Low                  NA                0.1120645   0.0717488   0.1523803
6 months    LCNI-5           MALAWI        Medium               NA                0.0746618   0.0407731   0.1085504
6 months    NIH-Crypto       BANGLADESH    High                 NA                0.0333333   0.0106073   0.0560594
6 months    NIH-Crypto       BANGLADESH    Low                  NA                0.0349345   0.0111365   0.0587325
6 months    NIH-Crypto       BANGLADESH    Medium               NA                0.0284553   0.0076632   0.0492473
6 months    PROBIT           BELARUS       High                 NA                0.0058415   0.0013477   0.0103352
6 months    PROBIT           BELARUS       Low                  NA                0.0179975   0.0076351   0.0283598
6 months    PROBIT           BELARUS       Medium               NA                0.0086381   0.0040200   0.0132563
6 months    SAS-CompFeed     INDIA         High                 NA                0.0432403   0.0247091   0.0617714
6 months    SAS-CompFeed     INDIA         Low                  NA                0.1217324   0.1049442   0.1385205
6 months    SAS-CompFeed     INDIA         Medium               NA                0.0902075   0.0600812   0.1203338
6 months    ZVITAMBO         ZIMBABWE      High                 NA                0.0365649   0.0309995   0.0421303
6 months    ZVITAMBO         ZIMBABWE      Low                  NA                0.0466697   0.0351916   0.0581478
6 months    ZVITAMBO         ZIMBABWE      Medium               NA                0.0468162   0.0372250   0.0564073
24 months   CMC-V-BCS-2002   INDIA         High                 NA                0.3332853   0.2589079   0.4076627
24 months   CMC-V-BCS-2002   INDIA         Low                  NA                0.3577082   0.2658212   0.4495952
24 months   CMC-V-BCS-2002   INDIA         Medium               NA                0.3187723   0.2277378   0.4098067
24 months   COHORTS          GUATEMALA     High                 NA                0.5609193   0.4844625   0.6373760
24 months   COHORTS          GUATEMALA     Low                  NA                0.4870651   0.4414549   0.5326753
24 months   COHORTS          GUATEMALA     Medium               NA                0.4409500   0.3809288   0.5009712
24 months   COHORTS          INDIA         High                 NA                0.0425677   0.0230175   0.0621178
24 months   COHORTS          INDIA         Low                  NA                0.4087385   0.3805439   0.4369330
24 months   COHORTS          INDIA         Medium               NA                0.1952613   0.1786830   0.2118397
24 months   COHORTS          PHILIPPINES   High                 NA                0.2541933   0.2203322   0.2880544
24 months   COHORTS          PHILIPPINES   Low                  NA                0.3024044   0.2654009   0.3394078
24 months   COHORTS          PHILIPPINES   Medium               NA                0.3132059   0.2750828   0.3513291
24 months   IRC              INDIA         High                 NA                0.1088630   0.0521279   0.1655980
24 months   IRC              INDIA         Low                  NA                0.0975234   0.0498021   0.1452447
24 months   IRC              INDIA         Medium               NA                0.0871129   0.0407145   0.1335112
24 months   JiVitA-3         BANGLADESH    High                 NA                0.1292076   0.1105772   0.1478380
24 months   JiVitA-3         BANGLADESH    Low                  NA                0.1622648   0.1444858   0.1800439
24 months   JiVitA-3         BANGLADESH    Medium               NA                0.1531176   0.1349202   0.1713149
24 months   JiVitA-4         BANGLADESH    High                 NA                0.1038932   0.0836698   0.1241166
24 months   JiVitA-4         BANGLADESH    Low                  NA                0.1031152   0.0850782   0.1211522
24 months   JiVitA-4         BANGLADESH    Medium               NA                0.0987156   0.0777086   0.1197226
24 months   LCNI-5           MALAWI        High                 NA                0.0915631   0.0525959   0.1305303
24 months   LCNI-5           MALAWI        Low                  NA                0.1522791   0.0969413   0.2076168
24 months   LCNI-5           MALAWI        Medium               NA                0.1274236   0.0750861   0.1797612
24 months   NIH-Birth        BANGLADESH    High                 NA                0.0791563   0.0364319   0.1218807
24 months   NIH-Birth        BANGLADESH    Low                  NA                0.3155229   0.2396997   0.3913460
24 months   NIH-Birth        BANGLADESH    Medium               NA                0.2385532   0.1610862   0.3160202
24 months   NIH-Crypto       BANGLADESH    High                 NA                0.0314136   0.0066518   0.0561754
24 months   NIH-Crypto       BANGLADESH    Low                  NA                0.0890411   0.0427988   0.1352834
24 months   NIH-Crypto       BANGLADESH    Medium               NA                0.0960452   0.0525946   0.1394958
24 months   PROVIDE          BANGLADESH    High                 NA                0.0398010   0.0127518   0.0668501
24 months   PROVIDE          BANGLADESH    Low                  NA                0.1379310   0.0866506   0.1892114
24 months   PROVIDE          BANGLADESH    Medium               NA                0.0985222   0.0574904   0.1395540
24 months   ZVITAMBO         ZIMBABWE      High                 NA                0.0837850   0.0646649   0.1029052
24 months   ZVITAMBO         ZIMBABWE      Low                  NA                0.1172642   0.0802178   0.1543105
24 months   ZVITAMBO         ZIMBABWE      Medium               NA                0.1303006   0.0939435   0.1666577


### Parameter: E(Y)


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          INDIA         NA                   NA                0.0285660   0.0240448   0.0330871
Birth       COHORTS          PHILIPPINES   NA                   NA                0.0150820   0.0107558   0.0194081
Birth       JiVitA-3         BANGLADESH    NA                   NA                0.1091541   0.1045948   0.1137135
Birth       JiVitA-4         BANGLADESH    NA                   NA                0.0827121   0.0710164   0.0944078
Birth       NIH-Birth        BANGLADESH    NA                   NA                0.0312500   0.0174085   0.0450915
Birth       SAS-CompFeed     INDIA         NA                   NA                0.0726837   0.0523147   0.0930527
Birth       ZVITAMBO         ZIMBABWE      NA                   NA                0.0319018   0.0289755   0.0348282
6 months    CMC-V-BCS-2002   INDIA         NA                   NA                0.1138211   0.0813725   0.1462698
6 months    COHORTS          GUATEMALA     NA                   NA                0.1281513   0.1069071   0.1493954
6 months    COHORTS          INDIA         NA                   NA                0.0463699   0.0407674   0.0519723
6 months    COHORTS          PHILIPPINES   NA                   NA                0.0487445   0.0406327   0.0568562
6 months    Guatemala BSC    GUATEMALA     NA                   NA                0.0902527   0.0564475   0.1240580
6 months    IRC              INDIA         NA                   NA                0.0712531   0.0462303   0.0962759
6 months    JiVitA-3         BANGLADESH    NA                   NA                0.0606764   0.0568167   0.0645362
6 months    JiVitA-4         BANGLADESH    NA                   NA                0.0562474   0.0494699   0.0630249
6 months    LCNI-5           MALAWI        NA                   NA                0.0799508   0.0612962   0.0986054
6 months    NIH-Crypto       BANGLADESH    NA                   NA                0.0321678   0.0192256   0.0451101
6 months    PROBIT           BELARUS       NA                   NA                0.0112310   0.0054733   0.0169886
6 months    SAS-CompFeed     INDIA         NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ZVITAMBO         ZIMBABWE      NA                   NA                0.0405546   0.0363986   0.0447105
24 months   CMC-V-BCS-2002   INDIA         NA                   NA                0.3369272   0.2887662   0.3850883
24 months   COHORTS          GUATEMALA     NA                   NA                0.4881741   0.4580257   0.5183225
24 months   COHORTS          INDIA         NA                   NA                0.2436875   0.2306994   0.2566756
24 months   COHORTS          PHILIPPINES   NA                   NA                0.2891616   0.2711872   0.3071359
24 months   IRC              INDIA         NA                   NA                0.1002445   0.0711031   0.1293859
24 months   JiVitA-3         BANGLADESH    NA                   NA                0.1558984   0.1471655   0.1646313
24 months   JiVitA-4         BANGLADESH    NA                   NA                0.0953385   0.0857703   0.1049067
24 months   LCNI-5           MALAWI        NA                   NA                0.1188811   0.0923348   0.1454274
24 months   NIH-Birth        BANGLADESH    NA                   NA                0.2214452   0.1821080   0.2607825
24 months   NIH-Crypto       BANGLADESH    NA                   NA                0.0700389   0.0479542   0.0921236
24 months   PROVIDE          BANGLADESH    NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ZVITAMBO         ZIMBABWE      NA                   NA                0.1086028   0.0935351   0.1236705


### Parameter: RR


agecat      studyid          country       intervention_level   baseline_level      estimate    ci_lower     ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  ----------  -----------
Birth       COHORTS          INDIA         High                 High               1.0000000   1.0000000    1.0000000
Birth       COHORTS          INDIA         Low                  High               2.7218055   1.3856671    5.3463238
Birth       COHORTS          INDIA         Medium               High               1.5444137   0.7825955    3.0478243
Birth       COHORTS          PHILIPPINES   High                 High               1.0000000   1.0000000    1.0000000
Birth       COHORTS          PHILIPPINES   Low                  High               1.2616113   0.5210975    3.0544438
Birth       COHORTS          PHILIPPINES   Medium               High               0.9762508   0.4168529    2.2863355
Birth       JiVitA-3         BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
Birth       JiVitA-3         BANGLADESH    Low                  High               1.0197607   0.9760955    1.0653792
Birth       JiVitA-3         BANGLADESH    Medium               High               1.0341105   0.9826274    1.0882910
Birth       JiVitA-4         BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
Birth       JiVitA-4         BANGLADESH    Low                  High               1.0369767   0.9108605    1.1805547
Birth       JiVitA-4         BANGLADESH    Medium               High               0.9609278   0.8384236    1.1013314
Birth       NIH-Birth        BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
Birth       NIH-Birth        BANGLADESH    Low                  High               1.3660714   0.4658790    4.0056565
Birth       NIH-Birth        BANGLADESH    Medium               High               0.7943925   0.2335614    2.7018994
Birth       SAS-CompFeed     INDIA         High                 High               1.0000000   1.0000000    1.0000000
Birth       SAS-CompFeed     INDIA         Low                  High               1.9451936   1.2895449    2.9341964
Birth       SAS-CompFeed     INDIA         Medium               High               1.3524491   0.8175123    2.2374202
Birth       ZVITAMBO         ZIMBABWE      High                 High               1.0000000   1.0000000    1.0000000
Birth       ZVITAMBO         ZIMBABWE      Low                  High               0.9917857   0.8917588    1.1030325
Birth       ZVITAMBO         ZIMBABWE      Medium               High               0.9777953   0.8942430    1.0691541
6 months    CMC-V-BCS-2002   INDIA         High                 High               1.0000000   1.0000000    1.0000000
6 months    CMC-V-BCS-2002   INDIA         Low                  High               1.8659558   0.9324981    3.7338316
6 months    CMC-V-BCS-2002   INDIA         Medium               High               1.4624237   0.7034526    3.0402657
6 months    COHORTS          GUATEMALA     High                 High               1.0000000   1.0000000    1.0000000
6 months    COHORTS          GUATEMALA     Low                  High               0.9736512   0.6282608    1.5089222
6 months    COHORTS          GUATEMALA     Medium               High               0.7118065   0.4310833    1.1753378
6 months    COHORTS          INDIA         High                 High               1.0000000   1.0000000    1.0000000
6 months    COHORTS          INDIA         Low                  High              11.5142375   4.7374574   27.9849831
6 months    COHORTS          INDIA         Medium               High               5.4311724   2.2232285   13.2679273
6 months    COHORTS          PHILIPPINES   High                 High               1.0000000   1.0000000    1.0000000
6 months    COHORTS          PHILIPPINES   Low                  High               2.1910725   1.3934754    3.4451980
6 months    COHORTS          PHILIPPINES   Medium               High               2.0682884   1.3101437    3.2651510
6 months    Guatemala BSC    GUATEMALA     High                 High               1.0000000   1.0000000    1.0000000
6 months    Guatemala BSC    GUATEMALA     Low                  High               0.6868885   0.2758706    1.7102790
6 months    Guatemala BSC    GUATEMALA     Medium               High               0.4802956   0.1794552    1.2854673
6 months    IRC              INDIA         High                 High               1.0000000   1.0000000    1.0000000
6 months    IRC              INDIA         Low                  High               1.8253425   0.7142605    4.6647899
6 months    IRC              INDIA         Medium               High               1.4855072   0.5554590    3.9728075
6 months    JiVitA-3         BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
6 months    JiVitA-3         BANGLADESH    Low                  High               1.1843765   0.9681954    1.4488269
6 months    JiVitA-3         BANGLADESH    Medium               High               1.1895847   0.9573967    1.4780829
6 months    JiVitA-4         BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
6 months    JiVitA-4         BANGLADESH    Low                  High               1.5213775   1.1198333    2.0669053
6 months    JiVitA-4         BANGLADESH    Medium               High               1.3369134   0.9581252    1.8654530
6 months    LCNI-5           MALAWI        High                 High               1.0000000   1.0000000    1.0000000
6 months    LCNI-5           MALAWI        Low                  High               1.6859271   0.9514669    2.9873348
6 months    LCNI-5           MALAWI        Medium               High               1.1232303   0.5952673    2.1194619
6 months    NIH-Crypto       BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
6 months    NIH-Crypto       BANGLADESH    Low                  High               1.0480349   0.3997689    2.7475307
6 months    NIH-Crypto       BANGLADESH    Medium               High               0.8536585   0.3142418    2.3190194
6 months    PROBIT           BELARUS       High                 High               1.0000000   1.0000000    1.0000000
6 months    PROBIT           BELARUS       Low                  High               3.0809877   1.6075378    5.9049842
6 months    PROBIT           BELARUS       Medium               High               1.4787596   0.6597299    3.3145834
6 months    SAS-CompFeed     INDIA         High                 High               1.0000000   1.0000000    1.0000000
6 months    SAS-CompFeed     INDIA         Low                  High               2.8152544   1.8352718    4.3185196
6 months    SAS-CompFeed     INDIA         Medium               High               2.0861909   1.5124593    2.8775601
6 months    ZVITAMBO         ZIMBABWE      High                 High               1.0000000   1.0000000    1.0000000
6 months    ZVITAMBO         ZIMBABWE      Low                  High               1.2763519   0.9582188    1.7001066
6 months    ZVITAMBO         ZIMBABWE      Medium               High               1.2803568   0.9951271    1.6473410
24 months   CMC-V-BCS-2002   INDIA         High                 High               1.0000000   1.0000000    1.0000000
24 months   CMC-V-BCS-2002   INDIA         Low                  High               1.0732792   0.7634863    1.5087741
24 months   CMC-V-BCS-2002   INDIA         Medium               High               0.9564546   0.6657679    1.3740608
24 months   COHORTS          GUATEMALA     High                 High               1.0000000   1.0000000    1.0000000
24 months   COHORTS          GUATEMALA     Low                  High               0.8683338   0.7375160    1.0223555
24 months   COHORTS          GUATEMALA     Medium               High               0.7861203   0.6497519    0.9511092
24 months   COHORTS          INDIA         High                 High               1.0000000   1.0000000    1.0000000
24 months   COHORTS          INDIA         Low                  High               9.6020886   6.0350785   15.2773666
24 months   COHORTS          INDIA         Medium               High               4.5870818   2.8754633    7.3175405
24 months   COHORTS          PHILIPPINES   High                 High               1.0000000   1.0000000    1.0000000
24 months   COHORTS          PHILIPPINES   Low                  High               1.1896630   0.9959200    1.4210961
24 months   COHORTS          PHILIPPINES   Medium               High               1.2321564   1.0316225    1.4716716
24 months   IRC              INDIA         High                 High               1.0000000   1.0000000    1.0000000
24 months   IRC              INDIA         Low                  High               0.8958367   0.4381129    1.8317729
24 months   IRC              INDIA         Medium               High               0.8002066   0.3792134    1.6885759
24 months   JiVitA-3         BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   JiVitA-3         BANGLADESH    Low                  High               1.2558458   1.0397750    1.5168173
24 months   JiVitA-3         BANGLADESH    Medium               High               1.1850508   0.9924331    1.4150528
24 months   JiVitA-4         BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   JiVitA-4         BANGLADESH    Low                  High               0.9925118   0.7648549    1.2879302
24 months   JiVitA-4         BANGLADESH    Medium               High               0.9501648   0.7107735    1.2701841
24 months   LCNI-5           MALAWI        High                 High               1.0000000   1.0000000    1.0000000
24 months   LCNI-5           MALAWI        Low                  High               1.6631050   0.9493809    2.9133915
24 months   LCNI-5           MALAWI        Medium               High               1.3916483   0.7701144    2.5148015
24 months   NIH-Birth        BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   NIH-Birth        BANGLADESH    Low                  High               3.9860729   2.2080280    7.1959130
24 months   NIH-Birth        BANGLADESH    Medium               High               3.0136972   1.6038616    5.6628143
24 months   NIH-Crypto       BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   NIH-Crypto       BANGLADESH    Low                  High               2.8344749   1.1028551    7.2849534
24 months   NIH-Crypto       BANGLADESH    Medium               High               3.0574388   1.2321130    7.5869111
24 months   PROVIDE          BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   PROVIDE          BANGLADESH    Low                  High               3.4655172   1.5971258    7.5196390
24 months   PROVIDE          BANGLADESH    Medium               High               2.4753695   1.1155198    5.4929137
24 months   ZVITAMBO         ZIMBABWE      High                 High               1.0000000   1.0000000    1.0000000
24 months   ZVITAMBO         ZIMBABWE      Low                  High               1.3995837   0.9486222    2.0649260
24 months   ZVITAMBO         ZIMBABWE      Medium               High               1.5551775   1.0856166    2.2278372


### Parameter: PAR


agecat      studyid          country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA         High                 NA                 0.0131612    0.0034678    0.0228545
Birth       COHORTS          PHILIPPINES   High                 NA                 0.0002736   -0.0088053    0.0093524
Birth       JiVitA-3         BANGLADESH    High                 NA                -0.0001054   -0.0038385    0.0036278
Birth       JiVitA-4         BANGLADESH    High                 NA                 0.0003126   -0.0052580    0.0058832
Birth       NIH-Birth        BANGLADESH    High                 NA                 0.0018382   -0.0199882    0.0236647
Birth       SAS-CompFeed     INDIA         High                 NA                 0.0295697    0.0098802    0.0492592
Birth       ZVITAMBO         ZIMBABWE      High                 NA                -0.0000818   -0.0011371    0.0009734
6 months    CMC-V-BCS-2002   INDIA         High                 NA                 0.0316138   -0.0047225    0.0679501
6 months    COHORTS          GUATEMALA     High                 NA                -0.0113971   -0.0585581    0.0357639
6 months    COHORTS          INDIA         High                 NA                 0.0395764    0.0320244    0.0471283
6 months    COHORTS          PHILIPPINES   High                 NA                 0.0198821    0.0099720    0.0297922
6 months    Guatemala BSC    GUATEMALA     High                 NA                -0.0294054   -0.0704132    0.0116024
6 months    IRC              INDIA         High                 NA                 0.0224726   -0.0121801    0.0571253
6 months    JiVitA-3         BANGLADESH    High                 NA                 0.0061848   -0.0014259    0.0137955
6 months    JiVitA-4         BANGLADESH    High                 NA                 0.0141578    0.0053764    0.0229392
6 months    LCNI-5           MALAWI        High                 NA                 0.0134802   -0.0116171    0.0385775
6 months    NIH-Crypto       BANGLADESH    High                 NA                -0.0011655   -0.0195299    0.0171989
6 months    PROBIT           BELARUS       High                 NA                 0.0053895    0.0005956    0.0101834
6 months    SAS-CompFeed     INDIA         High                 NA                 0.0525681    0.0381918    0.0669445
6 months    ZVITAMBO         ZIMBABWE      High                 NA                 0.0039897   -0.0002035    0.0081828
24 months   CMC-V-BCS-2002   INDIA         High                 NA                 0.0036419   -0.0533065    0.0605903
24 months   COHORTS          GUATEMALA     High                 NA                -0.0727452   -0.1429500   -0.0025404
24 months   COHORTS          INDIA         High                 NA                 0.2011198    0.1791924    0.2230473
24 months   COHORTS          PHILIPPINES   High                 NA                 0.0349683    0.0047140    0.0652225
24 months   IRC              INDIA         High                 NA                -0.0086185   -0.0563522    0.0391153
24 months   JiVitA-3         BANGLADESH    High                 NA                 0.0266908    0.0089611    0.0444204
24 months   JiVitA-4         BANGLADESH    High                 NA                -0.0085546   -0.0273733    0.0102640
24 months   LCNI-5           MALAWI        High                 NA                 0.0273180   -0.0061758    0.0608118
24 months   NIH-Birth        BANGLADESH    High                 NA                 0.1422889    0.0968250    0.1877528
24 months   NIH-Crypto       BANGLADESH    High                 NA                 0.0386253    0.0132246    0.0640260
24 months   PROVIDE          BANGLADESH    High                 NA                 0.0501644    0.0224541    0.0778747
24 months   ZVITAMBO         ZIMBABWE      High                 NA                 0.0248178    0.0095545    0.0400810


### Parameter: PAF


agecat      studyid          country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          INDIA         High                 NA                 0.4607293    0.0022133    0.7085421
Birth       COHORTS          PHILIPPINES   High                 NA                 0.0181382   -0.8125517    0.4681241
Birth       JiVitA-3         BANGLADESH    High                 NA                -0.0009654   -0.0357580    0.0326585
Birth       JiVitA-4         BANGLADESH    High                 NA                 0.0037795   -0.0659295    0.0689298
Birth       NIH-Birth        BANGLADESH    High                 NA                 0.0588235   -0.9758330    0.5516761
Birth       SAS-CompFeed     INDIA         High                 NA                 0.4068273    0.1759359    0.5730261
Birth       ZVITAMBO         ZIMBABWE      High                 NA                -0.0025653   -0.0362006    0.0299783
6 months    CMC-V-BCS-2002   INDIA         High                 NA                 0.2777499   -0.1107960    0.5303862
6 months    COHORTS          GUATEMALA     High                 NA                -0.0889346   -0.5268617    0.2233884
6 months    COHORTS          INDIA         High                 NA                 0.8534936    0.6522116    0.9382840
6 months    COHORTS          PHILIPPINES   High                 NA                 0.4078840    0.1811754    0.5718236
6 months    Guatemala BSC    GUATEMALA     High                 NA                -0.3258120   -0.8505799    0.0501478
6 months    IRC              INDIA         High                 NA                 0.3153911   -0.3699702    0.6578835
6 months    JiVitA-3         BANGLADESH    High                 NA                 0.1019310   -0.0319754    0.2184622
6 months    JiVitA-4         BANGLADESH    High                 NA                 0.2517059    0.0809164    0.3907583
6 months    LCNI-5           MALAWI        High                 NA                 0.1686066   -0.2096471    0.4285813
6 months    NIH-Crypto       BANGLADESH    High                 NA                -0.0362319   -0.7974273    0.4026037
6 months    PROBIT           BELARUS       High                 NA                 0.4798787    0.0273719    0.7218607
6 months    SAS-CompFeed     INDIA         High                 NA                 0.5486796    0.3747695    0.6742161
6 months    ZVITAMBO         ZIMBABWE      High                 NA                 0.0983773   -0.0104690    0.1954989
24 months   CMC-V-BCS-2002   INDIA         High                 NA                 0.0108092   -0.1735111    0.1661789
24 months   COHORTS          GUATEMALA     High                 NA                -0.1490148   -0.3025267   -0.0135954
24 months   COHORTS          INDIA         High                 NA                 0.8253186    0.7246749    0.8891725
24 months   COHORTS          PHILIPPINES   High                 NA                 0.1209298    0.0102325    0.2192465
24 months   IRC              INDIA         High                 NA                -0.0859743   -0.6833790    0.2994209
24 months   JiVitA-3         BANGLADESH    High                 NA                 0.1712062    0.0503943    0.2766480
24 months   JiVitA-4         BANGLADESH    High                 NA                -0.0897290   -0.3074672    0.0917482
24 months   LCNI-5           MALAWI        High                 NA                 0.2297927   -0.1042726    0.4627964
24 months   NIH-Birth        BANGLADESH    High                 NA                 0.6425467    0.4116110    0.7828429
24 months   NIH-Crypto       BANGLADESH    High                 NA                 0.5514834    0.0815919    0.7809611
24 months   PROVIDE          BANGLADESH    High                 NA                 0.5575966    0.1758141    0.7625284
24 months   ZVITAMBO         ZIMBABWE      High                 NA                 0.2285187    0.0779103    0.3545277
