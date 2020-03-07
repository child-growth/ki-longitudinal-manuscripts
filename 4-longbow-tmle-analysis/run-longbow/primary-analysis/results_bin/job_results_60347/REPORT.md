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

**Outcome Variable:** swasted

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

agecat      studyid          country                        meducyrs    swasted   n_cell       n
----------  ---------------  -----------------------------  ---------  --------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          High              0       49      86
Birth       CMC-V-BCS-2002   INDIA                          High              1        0      86
Birth       CMC-V-BCS-2002   INDIA                          Low               0       15      86
Birth       CMC-V-BCS-2002   INDIA                          Low               1        0      86
Birth       CMC-V-BCS-2002   INDIA                          Medium            0       21      86
Birth       CMC-V-BCS-2002   INDIA                          Medium            1        1      86
Birth       COHORTS          GUATEMALA                      High              0      145     748
Birth       COHORTS          GUATEMALA                      High              1       12     748
Birth       COHORTS          GUATEMALA                      Low               0      325     748
Birth       COHORTS          GUATEMALA                      Low               1       19     748
Birth       COHORTS          GUATEMALA                      Medium            0      220     748
Birth       COHORTS          GUATEMALA                      Medium            1       27     748
Birth       COHORTS          INDIA                          High              0      632    4879
Birth       COHORTS          INDIA                          High              1       24    4879
Birth       COHORTS          INDIA                          Low               0     1513    4879
Birth       COHORTS          INDIA                          Low               1       89    4879
Birth       COHORTS          INDIA                          Medium            0     2494    4879
Birth       COHORTS          INDIA                          Medium            1      127    4879
Birth       COHORTS          PHILIPPINES                    High              0     1076    2899
Birth       COHORTS          PHILIPPINES                    High              1       52    2899
Birth       COHORTS          PHILIPPINES                    Low               0      810    2899
Birth       COHORTS          PHILIPPINES                    Low               1       28    2899
Birth       COHORTS          PHILIPPINES                    Medium            0      892    2899
Birth       COHORTS          PHILIPPINES                    Medium            1       41    2899
Birth       EE               PAKISTAN                       High              0        5     177
Birth       EE               PAKISTAN                       High              1        0     177
Birth       EE               PAKISTAN                       Low               0      150     177
Birth       EE               PAKISTAN                       Low               1        6     177
Birth       EE               PAKISTAN                       Medium            0       16     177
Birth       EE               PAKISTAN                       Medium            1        0     177
Birth       GMS-Nepal        NEPAL                          High              0       76     639
Birth       GMS-Nepal        NEPAL                          High              1        5     639
Birth       GMS-Nepal        NEPAL                          Low               0      430     639
Birth       GMS-Nepal        NEPAL                          Low               1       14     639
Birth       GMS-Nepal        NEPAL                          Medium            0      106     639
Birth       GMS-Nepal        NEPAL                          Medium            1        8     639
Birth       IRC              INDIA                          High              0       89     343
Birth       IRC              INDIA                          High              1       12     343
Birth       IRC              INDIA                          Low               0      102     343
Birth       IRC              INDIA                          Low               1       24     343
Birth       IRC              INDIA                          Medium            0       98     343
Birth       IRC              INDIA                          Medium            1       18     343
Birth       JiVitA-3         BANGLADESH                     High              0     5525   17988
Birth       JiVitA-3         BANGLADESH                     High              1      106   17988
Birth       JiVitA-3         BANGLADESH                     Low               0     6760   17988
Birth       JiVitA-3         BANGLADESH                     Low               1      137   17988
Birth       JiVitA-3         BANGLADESH                     Medium            0     5354   17988
Birth       JiVitA-3         BANGLADESH                     Medium            1      106   17988
Birth       JiVitA-4         BANGLADESH                     High              0      795    2391
Birth       JiVitA-4         BANGLADESH                     High              1       10    2391
Birth       JiVitA-4         BANGLADESH                     Low               0      814    2391
Birth       JiVitA-4         BANGLADESH                     Low               1       15    2391
Birth       JiVitA-4         BANGLADESH                     Medium            0      751    2391
Birth       JiVitA-4         BANGLADESH                     Medium            1        6    2391
Birth       MAL-ED           BANGLADESH                     High              0       63     175
Birth       MAL-ED           BANGLADESH                     High              1        1     175
Birth       MAL-ED           BANGLADESH                     Low               0       58     175
Birth       MAL-ED           BANGLADESH                     Low               1        2     175
Birth       MAL-ED           BANGLADESH                     Medium            0       48     175
Birth       MAL-ED           BANGLADESH                     Medium            1        3     175
Birth       MAL-ED           BRAZIL                         High              0       18      62
Birth       MAL-ED           BRAZIL                         High              1        0      62
Birth       MAL-ED           BRAZIL                         Low               0       17      62
Birth       MAL-ED           BRAZIL                         Low               1        0      62
Birth       MAL-ED           BRAZIL                         Medium            0       27      62
Birth       MAL-ED           BRAZIL                         Medium            1        0      62
Birth       MAL-ED           INDIA                          High              0        8      38
Birth       MAL-ED           INDIA                          High              1        0      38
Birth       MAL-ED           INDIA                          Low               0       18      38
Birth       MAL-ED           INDIA                          Low               1        0      38
Birth       MAL-ED           INDIA                          Medium            0       12      38
Birth       MAL-ED           INDIA                          Medium            1        0      38
Birth       MAL-ED           NEPAL                          High              0        4      24
Birth       MAL-ED           NEPAL                          High              1        1      24
Birth       MAL-ED           NEPAL                          Low               0       12      24
Birth       MAL-ED           NEPAL                          Low               1        0      24
Birth       MAL-ED           NEPAL                          Medium            0        7      24
Birth       MAL-ED           NEPAL                          Medium            1        0      24
Birth       MAL-ED           PERU                           High              0       65     228
Birth       MAL-ED           PERU                           High              1        0     228
Birth       MAL-ED           PERU                           Low               0       83     228
Birth       MAL-ED           PERU                           Low               1        0     228
Birth       MAL-ED           PERU                           Medium            0       80     228
Birth       MAL-ED           PERU                           Medium            1        0     228
Birth       MAL-ED           SOUTH AFRICA                   High              0       35     120
Birth       MAL-ED           SOUTH AFRICA                   High              1        0     120
Birth       MAL-ED           SOUTH AFRICA                   Low               0       59     120
Birth       MAL-ED           SOUTH AFRICA                   Low               1        0     120
Birth       MAL-ED           SOUTH AFRICA                   Medium            0       26     120
Birth       MAL-ED           SOUTH AFRICA                   Medium            1        0     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0        7      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        0      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       32      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1        0      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0       58      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1        0      97
Birth       NIH-Birth        BANGLADESH                     High              0      151     575
Birth       NIH-Birth        BANGLADESH                     High              1       12     575
Birth       NIH-Birth        BANGLADESH                     Low               0      198     575
Birth       NIH-Birth        BANGLADESH                     Low               1       12     575
Birth       NIH-Birth        BANGLADESH                     Medium            0      188     575
Birth       NIH-Birth        BANGLADESH                     Medium            1       14     575
Birth       NIH-Crypto       BANGLADESH                     High              0      224     707
Birth       NIH-Crypto       BANGLADESH                     High              1       12     707
Birth       NIH-Crypto       BANGLADESH                     Low               0      210     707
Birth       NIH-Crypto       BANGLADESH                     Low               1       16     707
Birth       NIH-Crypto       BANGLADESH                     Medium            0      226     707
Birth       NIH-Crypto       BANGLADESH                     Medium            1       19     707
Birth       PROBIT           BELARUS                        High              0     2099   13817
Birth       PROBIT           BELARUS                        High              1      141   13817
Birth       PROBIT           BELARUS                        Low               0     4591   13817
Birth       PROBIT           BELARUS                        Low               1      349   13817
Birth       PROBIT           BELARUS                        Medium            0     6208   13817
Birth       PROBIT           BELARUS                        Medium            1      429   13817
Birth       PROVIDE          BANGLADESH                     High              0      166     532
Birth       PROVIDE          BANGLADESH                     High              1        3     532
Birth       PROVIDE          BANGLADESH                     Low               0      162     532
Birth       PROVIDE          BANGLADESH                     Low               1        2     532
Birth       PROVIDE          BANGLADESH                     Medium            0      191     532
Birth       PROVIDE          BANGLADESH                     Medium            1        8     532
Birth       SAS-CompFeed     INDIA                          High              0      229    1103
Birth       SAS-CompFeed     INDIA                          High              1        4    1103
Birth       SAS-CompFeed     INDIA                          Low               0      488    1103
Birth       SAS-CompFeed     INDIA                          Low               1       12    1103
Birth       SAS-CompFeed     INDIA                          Medium            0      357    1103
Birth       SAS-CompFeed     INDIA                          Medium            1       13    1103
Birth       ZVITAMBO         ZIMBABWE                       High              0     6547   12897
Birth       ZVITAMBO         ZIMBABWE                       High              1      468   12897
Birth       ZVITAMBO         ZIMBABWE                       Low               0     2549   12897
Birth       ZVITAMBO         ZIMBABWE                       Low               1      148   12897
Birth       ZVITAMBO         ZIMBABWE                       Medium            0     3010   12897
Birth       ZVITAMBO         ZIMBABWE                       Medium            1      175   12897
6 months    CMC-V-BCS-2002   INDIA                          High              0      152     368
6 months    CMC-V-BCS-2002   INDIA                          High              1        5     368
6 months    CMC-V-BCS-2002   INDIA                          Low               0      101     368
6 months    CMC-V-BCS-2002   INDIA                          Low               1        3     368
6 months    CMC-V-BCS-2002   INDIA                          Medium            0      103     368
6 months    CMC-V-BCS-2002   INDIA                          Medium            1        4     368
6 months    COHORTS          GUATEMALA                      High              0      182     953
6 months    COHORTS          GUATEMALA                      High              1        3     953
6 months    COHORTS          GUATEMALA                      Low               0      447     953
6 months    COHORTS          GUATEMALA                      Low               1        2     953
6 months    COHORTS          GUATEMALA                      Medium            0      318     953
6 months    COHORTS          GUATEMALA                      Medium            1        1     953
6 months    COHORTS          INDIA                          High              0      730    5407
6 months    COHORTS          INDIA                          High              1        7    5407
6 months    COHORTS          INDIA                          Low               0     1705    5407
6 months    COHORTS          INDIA                          Low               1       69    5407
6 months    COHORTS          INDIA                          Medium            0     2811    5407
6 months    COHORTS          INDIA                          Medium            1       85    5407
6 months    COHORTS          PHILIPPINES                    High              0     1006    2706
6 months    COHORTS          PHILIPPINES                    High              1        9    2706
6 months    COHORTS          PHILIPPINES                    Low               0      811    2706
6 months    COHORTS          PHILIPPINES                    Low               1       13    2706
6 months    COHORTS          PHILIPPINES                    Medium            0      854    2706
6 months    COHORTS          PHILIPPINES                    Medium            1       13    2706
6 months    EE               PAKISTAN                       High              0       15     372
6 months    EE               PAKISTAN                       High              1        0     372
6 months    EE               PAKISTAN                       Low               0      311     372
6 months    EE               PAKISTAN                       Low               1       13     372
6 months    EE               PAKISTAN                       Medium            0       33     372
6 months    EE               PAKISTAN                       Medium            1        0     372
6 months    GMS-Nepal        NEPAL                          High              0       68     561
6 months    GMS-Nepal        NEPAL                          High              1        0     561
6 months    GMS-Nepal        NEPAL                          Low               0      394     561
6 months    GMS-Nepal        NEPAL                          Low               1        5     561
6 months    GMS-Nepal        NEPAL                          Medium            0       92     561
6 months    GMS-Nepal        NEPAL                          Medium            1        2     561
6 months    Guatemala BSC    GUATEMALA                      High              0      117     277
6 months    Guatemala BSC    GUATEMALA                      High              1        0     277
6 months    Guatemala BSC    GUATEMALA                      Low               0       73     277
6 months    Guatemala BSC    GUATEMALA                      Low               1        0     277
6 months    Guatemala BSC    GUATEMALA                      Medium            0       87     277
6 months    Guatemala BSC    GUATEMALA                      Medium            1        0     277
6 months    IRC              INDIA                          High              0      118     408
6 months    IRC              INDIA                          High              1        6     408
6 months    IRC              INDIA                          Low               0      138     408
6 months    IRC              INDIA                          Low               1        7     408
6 months    IRC              INDIA                          Medium            0      130     408
6 months    IRC              INDIA                          Medium            1        9     408
6 months    JiVitA-3         BANGLADESH                     High              0     5837   16767
6 months    JiVitA-3         BANGLADESH                     High              1       72   16767
6 months    JiVitA-3         BANGLADESH                     Low               0     5531   16767
6 months    JiVitA-3         BANGLADESH                     Low               1       81   16767
6 months    JiVitA-3         BANGLADESH                     Medium            0     5170   16767
6 months    JiVitA-3         BANGLADESH                     Medium            1       76   16767
6 months    JiVitA-4         BANGLADESH                     High              0     1714    4820
6 months    JiVitA-4         BANGLADESH                     High              1        3    4820
6 months    JiVitA-4         BANGLADESH                     Low               0     1567    4820
6 months    JiVitA-4         BANGLADESH                     Low               1       17    4820
6 months    JiVitA-4         BANGLADESH                     Medium            0     1506    4820
6 months    JiVitA-4         BANGLADESH                     Medium            1       13    4820
6 months    LCNI-5           MALAWI                         High              0      298     813
6 months    LCNI-5           MALAWI                         High              1        0     813
6 months    LCNI-5           MALAWI                         Low               0      261     813
6 months    LCNI-5           MALAWI                         Low               1        0     813
6 months    LCNI-5           MALAWI                         Medium            0      254     813
6 months    LCNI-5           MALAWI                         Medium            1        0     813
6 months    MAL-ED           BANGLADESH                     High              0       73     196
6 months    MAL-ED           BANGLADESH                     High              1        0     196
6 months    MAL-ED           BANGLADESH                     Low               0       62     196
6 months    MAL-ED           BANGLADESH                     Low               1        2     196
6 months    MAL-ED           BANGLADESH                     Medium            0       59     196
6 months    MAL-ED           BANGLADESH                     Medium            1        0     196
6 months    MAL-ED           BRAZIL                         High              0       71     208
6 months    MAL-ED           BRAZIL                         High              1        0     208
6 months    MAL-ED           BRAZIL                         Low               0       56     208
6 months    MAL-ED           BRAZIL                         Low               1        0     208
6 months    MAL-ED           BRAZIL                         Medium            0       81     208
6 months    MAL-ED           BRAZIL                         Medium            1        0     208
6 months    MAL-ED           INDIA                          High              0       58     208
6 months    MAL-ED           INDIA                          High              1        1     208
6 months    MAL-ED           INDIA                          Low               0       70     208
6 months    MAL-ED           INDIA                          Low               1        2     208
6 months    MAL-ED           INDIA                          Medium            0       75     208
6 months    MAL-ED           INDIA                          Medium            1        2     208
6 months    MAL-ED           NEPAL                          High              0       53     221
6 months    MAL-ED           NEPAL                          High              1        0     221
6 months    MAL-ED           NEPAL                          Low               0       93     221
6 months    MAL-ED           NEPAL                          Low               1        0     221
6 months    MAL-ED           NEPAL                          Medium            0       75     221
6 months    MAL-ED           NEPAL                          Medium            1        0     221
6 months    MAL-ED           PERU                           High              0       81     272
6 months    MAL-ED           PERU                           High              1        0     272
6 months    MAL-ED           PERU                           Low               0       94     272
6 months    MAL-ED           PERU                           Low               1        0     272
6 months    MAL-ED           PERU                           Medium            0       97     272
6 months    MAL-ED           PERU                           Medium            1        0     272
6 months    MAL-ED           SOUTH AFRICA                   High              0       70     254
6 months    MAL-ED           SOUTH AFRICA                   High              1        0     254
6 months    MAL-ED           SOUTH AFRICA                   Low               0      125     254
6 months    MAL-ED           SOUTH AFRICA                   Low               1        2     254
6 months    MAL-ED           SOUTH AFRICA                   Medium            0       56     254
6 months    MAL-ED           SOUTH AFRICA                   Medium            1        1     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0        9     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        0     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       62     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1        0     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0      132     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1        0     203
6 months    NIH-Birth        BANGLADESH                     High              0      153     537
6 months    NIH-Birth        BANGLADESH                     High              1        2     537
6 months    NIH-Birth        BANGLADESH                     Low               0      191     537
6 months    NIH-Birth        BANGLADESH                     Low               1        4     537
6 months    NIH-Birth        BANGLADESH                     Medium            0      187     537
6 months    NIH-Birth        BANGLADESH                     Medium            1        0     537
6 months    NIH-Crypto       BANGLADESH                     High              0      240     715
6 months    NIH-Crypto       BANGLADESH                     High              1        0     715
6 months    NIH-Crypto       BANGLADESH                     Low               0      229     715
6 months    NIH-Crypto       BANGLADESH                     Low               1        0     715
6 months    NIH-Crypto       BANGLADESH                     Medium            0      246     715
6 months    NIH-Crypto       BANGLADESH                     Medium            1        0     715
6 months    PROBIT           BELARUS                        High              0     2657   15757
6 months    PROBIT           BELARUS                        High              1        0   15757
6 months    PROBIT           BELARUS                        Low               0     5635   15757
6 months    PROBIT           BELARUS                        Low               1        6   15757
6 months    PROBIT           BELARUS                        Medium            0     7456   15757
6 months    PROBIT           BELARUS                        Medium            1        3   15757
6 months    PROVIDE          BANGLADESH                     High              0      208     603
6 months    PROVIDE          BANGLADESH                     High              1        1     603
6 months    PROVIDE          BANGLADESH                     Low               0      184     603
6 months    PROVIDE          BANGLADESH                     Low               1        3     603
6 months    PROVIDE          BANGLADESH                     Medium            0      206     603
6 months    PROVIDE          BANGLADESH                     Medium            1        1     603
6 months    SAS-CompFeed     INDIA                          High              0      285    1334
6 months    SAS-CompFeed     INDIA                          High              1        4    1334
6 months    SAS-CompFeed     INDIA                          Low               0      565    1334
6 months    SAS-CompFeed     INDIA                          Low               1       31    1334
6 months    SAS-CompFeed     INDIA                          Medium            0      441    1334
6 months    SAS-CompFeed     INDIA                          Medium            1        8    1334
6 months    SAS-FoodSuppl    INDIA                          High              0       35     380
6 months    SAS-FoodSuppl    INDIA                          High              1        0     380
6 months    SAS-FoodSuppl    INDIA                          Low               0      287     380
6 months    SAS-FoodSuppl    INDIA                          Low               1       17     380
6 months    SAS-FoodSuppl    INDIA                          Medium            0       39     380
6 months    SAS-FoodSuppl    INDIA                          Medium            1        2     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      508    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        4    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0       74    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        0    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0     1426    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        8    2020
6 months    ZVITAMBO         ZIMBABWE                       High              0     4569    8492
6 months    ZVITAMBO         ZIMBABWE                       High              1       35    8492
6 months    ZVITAMBO         ZIMBABWE                       Low               0     1745    8492
6 months    ZVITAMBO         ZIMBABWE                       Low               1       21    8492
6 months    ZVITAMBO         ZIMBABWE                       Medium            0     2099    8492
6 months    ZVITAMBO         ZIMBABWE                       Medium            1       23    8492
24 months   CMC-V-BCS-2002   INDIA                          High              0      158     372
24 months   CMC-V-BCS-2002   INDIA                          High              1        0     372
24 months   CMC-V-BCS-2002   INDIA                          Low               0      103     372
24 months   CMC-V-BCS-2002   INDIA                          Low               1        2     372
24 months   CMC-V-BCS-2002   INDIA                          Medium            0      108     372
24 months   CMC-V-BCS-2002   INDIA                          Medium            1        1     372
24 months   COHORTS          GUATEMALA                      High              0      209    1068
24 months   COHORTS          GUATEMALA                      High              1        0    1068
24 months   COHORTS          GUATEMALA                      Low               0      509    1068
24 months   COHORTS          GUATEMALA                      Low               1        3    1068
24 months   COHORTS          GUATEMALA                      Medium            0      346    1068
24 months   COHORTS          GUATEMALA                      Medium            1        1    1068
24 months   COHORTS          INDIA                          High              0      599    4166
24 months   COHORTS          INDIA                          High              1        2    4166
24 months   COHORTS          INDIA                          Low               0     1238    4166
24 months   COHORTS          INDIA                          Low               1       26    4166
24 months   COHORTS          INDIA                          Medium            0     2286    4166
24 months   COHORTS          INDIA                          Medium            1       15    4166
24 months   COHORTS          PHILIPPINES                    High              0      903    2449
24 months   COHORTS          PHILIPPINES                    High              1        8    2449
24 months   COHORTS          PHILIPPINES                    Low               0      741    2449
24 months   COHORTS          PHILIPPINES                    Low               1        7    2449
24 months   COHORTS          PHILIPPINES                    Medium            0      780    2449
24 months   COHORTS          PHILIPPINES                    Medium            1       10    2449
24 months   EE               PAKISTAN                       High              0        6     166
24 months   EE               PAKISTAN                       High              1        0     166
24 months   EE               PAKISTAN                       Low               0      141     166
24 months   EE               PAKISTAN                       Low               1        2     166
24 months   EE               PAKISTAN                       Medium            0       15     166
24 months   EE               PAKISTAN                       Medium            1        2     166
24 months   GMS-Nepal        NEPAL                          High              0       53     484
24 months   GMS-Nepal        NEPAL                          High              1        2     484
24 months   GMS-Nepal        NEPAL                          Low               0      335     484
24 months   GMS-Nepal        NEPAL                          Low               1        9     484
24 months   GMS-Nepal        NEPAL                          Medium            0       81     484
24 months   GMS-Nepal        NEPAL                          Medium            1        4     484
24 months   IRC              INDIA                          High              0      122     409
24 months   IRC              INDIA                          High              1        2     409
24 months   IRC              INDIA                          Low               0      145     409
24 months   IRC              INDIA                          Low               1        1     409
24 months   IRC              INDIA                          Medium            0      137     409
24 months   IRC              INDIA                          Medium            1        2     409
24 months   JiVitA-3         BANGLADESH                     High              0     2809    8592
24 months   JiVitA-3         BANGLADESH                     High              1      103    8592
24 months   JiVitA-3         BANGLADESH                     Low               0     2881    8592
24 months   JiVitA-3         BANGLADESH                     Low               1      118    8592
24 months   JiVitA-3         BANGLADESH                     Medium            0     2569    8592
24 months   JiVitA-3         BANGLADESH                     Medium            1      112    8592
24 months   JiVitA-4         BANGLADESH                     High              0     1652    4724
24 months   JiVitA-4         BANGLADESH                     High              1       36    4724
24 months   JiVitA-4         BANGLADESH                     Low               0     1477    4724
24 months   JiVitA-4         BANGLADESH                     Low               1       51    4724
24 months   JiVitA-4         BANGLADESH                     Medium            0     1466    4724
24 months   JiVitA-4         BANGLADESH                     Medium            1       42    4724
24 months   LCNI-5           MALAWI                         High              0      214     556
24 months   LCNI-5           MALAWI                         High              1        0     556
24 months   LCNI-5           MALAWI                         Low               0      172     556
24 months   LCNI-5           MALAWI                         Low               1        0     556
24 months   LCNI-5           MALAWI                         Medium            0      169     556
24 months   LCNI-5           MALAWI                         Medium            1        1     556
24 months   MAL-ED           BANGLADESH                     High              0       64     171
24 months   MAL-ED           BANGLADESH                     High              1        0     171
24 months   MAL-ED           BANGLADESH                     Low               0       59     171
24 months   MAL-ED           BANGLADESH                     Low               1        0     171
24 months   MAL-ED           BANGLADESH                     Medium            0       48     171
24 months   MAL-ED           BANGLADESH                     Medium            1        0     171
24 months   MAL-ED           BRAZIL                         High              0       62     168
24 months   MAL-ED           BRAZIL                         High              1        0     168
24 months   MAL-ED           BRAZIL                         Low               0       41     168
24 months   MAL-ED           BRAZIL                         Low               1        1     168
24 months   MAL-ED           BRAZIL                         Medium            0       64     168
24 months   MAL-ED           BRAZIL                         Medium            1        0     168
24 months   MAL-ED           INDIA                          High              0       55     199
24 months   MAL-ED           INDIA                          High              1        0     199
24 months   MAL-ED           INDIA                          Low               0       68     199
24 months   MAL-ED           INDIA                          Low               1        1     199
24 months   MAL-ED           INDIA                          Medium            0       74     199
24 months   MAL-ED           INDIA                          Medium            1        1     199
24 months   MAL-ED           NEPAL                          High              0       48     213
24 months   MAL-ED           NEPAL                          High              1        0     213
24 months   MAL-ED           NEPAL                          Low               0       91     213
24 months   MAL-ED           NEPAL                          Low               1        0     213
24 months   MAL-ED           NEPAL                          Medium            0       74     213
24 months   MAL-ED           NEPAL                          Medium            1        0     213
24 months   MAL-ED           PERU                           High              0       59     200
24 months   MAL-ED           PERU                           High              1        0     200
24 months   MAL-ED           PERU                           Low               0       73     200
24 months   MAL-ED           PERU                           Low               1        1     200
24 months   MAL-ED           PERU                           Medium            0       66     200
24 months   MAL-ED           PERU                           Medium            1        1     200
24 months   MAL-ED           SOUTH AFRICA                   High              0       67     238
24 months   MAL-ED           SOUTH AFRICA                   High              1        0     238
24 months   MAL-ED           SOUTH AFRICA                   Low               0      120     238
24 months   MAL-ED           SOUTH AFRICA                   Low               1        0     238
24 months   MAL-ED           SOUTH AFRICA                   Medium            0       51     238
24 months   MAL-ED           SOUTH AFRICA                   Medium            1        0     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0        7     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        0     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       54     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1        0     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0      114     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1        0     175
24 months   NIH-Birth        BANGLADESH                     High              0      128     428
24 months   NIH-Birth        BANGLADESH                     High              1        2     428
24 months   NIH-Birth        BANGLADESH                     Low               0      149     428
24 months   NIH-Birth        BANGLADESH                     Low               1        3     428
24 months   NIH-Birth        BANGLADESH                     Medium            0      141     428
24 months   NIH-Birth        BANGLADESH                     Medium            1        5     428
24 months   NIH-Crypto       BANGLADESH                     High              0      190     514
24 months   NIH-Crypto       BANGLADESH                     High              1        1     514
24 months   NIH-Crypto       BANGLADESH                     Low               0      145     514
24 months   NIH-Crypto       BANGLADESH                     Low               1        1     514
24 months   NIH-Crypto       BANGLADESH                     Medium            0      175     514
24 months   NIH-Crypto       BANGLADESH                     Medium            1        2     514
24 months   PROBIT           BELARUS                        High              0      652    3970
24 months   PROBIT           BELARUS                        High              1        2    3970
24 months   PROBIT           BELARUS                        Low               0     1377    3970
24 months   PROBIT           BELARUS                        Low               1        4    3970
24 months   PROBIT           BELARUS                        Medium            0     1934    3970
24 months   PROBIT           BELARUS                        Medium            1        1    3970
24 months   PROVIDE          BANGLADESH                     High              0      199     579
24 months   PROVIDE          BANGLADESH                     High              1        2     579
24 months   PROVIDE          BANGLADESH                     Low               0      170     579
24 months   PROVIDE          BANGLADESH                     Low               1        4     579
24 months   PROVIDE          BANGLADESH                     Medium            0      201     579
24 months   PROVIDE          BANGLADESH                     Medium            1        3     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0        4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        0       6
24 months   ZVITAMBO         ZIMBABWE                       High              0      168     433
24 months   ZVITAMBO         ZIMBABWE                       High              1       16     433
24 months   ZVITAMBO         ZIMBABWE                       Low               0      109     433
24 months   ZVITAMBO         ZIMBABWE                       Low               1        9     433
24 months   ZVITAMBO         ZIMBABWE                       Medium            0      125     433
24 months   ZVITAMBO         ZIMBABWE                       Medium            1        6     433


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
* agecat: Birth, studyid: MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: MAL-ED, country: BRAZIL
* agecat: Birth, studyid: MAL-ED, country: INDIA
* agecat: Birth, studyid: MAL-ED, country: NEPAL
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
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
* agecat: 24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: COHORTS, country: INDIA
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: IRC, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/4f7f031b-87e3-4dd8-a788-797a20075190/265c0e3d-446f-464a-97a5-b5892df8b2ef/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4f7f031b-87e3-4dd8-a788-797a20075190/265c0e3d-446f-464a-97a5-b5892df8b2ef/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4f7f031b-87e3-4dd8-a788-797a20075190/265c0e3d-446f-464a-97a5-b5892df8b2ef/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4f7f031b-87e3-4dd8-a788-797a20075190/265c0e3d-446f-464a-97a5-b5892df8b2ef/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      GUATEMALA     High                 NA                0.0803469   0.0400980   0.1205958
Birth       COHORTS      GUATEMALA     Low                  NA                0.0573483   0.0333195   0.0813772
Birth       COHORTS      GUATEMALA     Medium               NA                0.1063218   0.0670226   0.1456210
Birth       COHORTS      INDIA         High                 NA                0.0344513   0.0202050   0.0486975
Birth       COHORTS      INDIA         Low                  NA                0.0557990   0.0444867   0.0671113
Birth       COHORTS      INDIA         Medium               NA                0.0487949   0.0404372   0.0571526
Birth       COHORTS      PHILIPPINES   High                 NA                0.0454881   0.0333402   0.0576360
Birth       COHORTS      PHILIPPINES   Low                  NA                0.0353804   0.0228680   0.0478928
Birth       COHORTS      PHILIPPINES   Medium               NA                0.0433778   0.0300107   0.0567450
Birth       GMS-Nepal    NEPAL         High                 NA                0.0617284   0.0092776   0.1141792
Birth       GMS-Nepal    NEPAL         Low                  NA                0.0315315   0.0152644   0.0477987
Birth       GMS-Nepal    NEPAL         Medium               NA                0.0701754   0.0232478   0.1171031
Birth       IRC          INDIA         High                 NA                0.1388486   0.0798664   0.1978307
Birth       IRC          INDIA         Low                  NA                0.2065747   0.1375905   0.2755589
Birth       IRC          INDIA         Medium               NA                0.1359301   0.0754107   0.1964495
Birth       JiVitA-3     BANGLADESH    High                 NA                0.0210635   0.0174119   0.0247151
Birth       JiVitA-3     BANGLADESH    Low                  NA                0.0187209   0.0161787   0.0212631
Birth       JiVitA-3     BANGLADESH    Medium               NA                0.0189007   0.0161307   0.0216706
Birth       JiVitA-4     BANGLADESH    High                 NA                0.0124224   0.0011008   0.0237440
Birth       JiVitA-4     BANGLADESH    Low                  NA                0.0180941   0.0086591   0.0275291
Birth       JiVitA-4     BANGLADESH    Medium               NA                0.0079260   0.0011127   0.0147393
Birth       NIH-Birth    BANGLADESH    High                 NA                0.0736723   0.0331407   0.1142038
Birth       NIH-Birth    BANGLADESH    Low                  NA                0.0576708   0.0257787   0.0895629
Birth       NIH-Birth    BANGLADESH    Medium               NA                0.0688849   0.0337751   0.1039946
Birth       NIH-Crypto   BANGLADESH    High                 NA                0.0484474   0.0208120   0.0760828
Birth       NIH-Crypto   BANGLADESH    Low                  NA                0.0744162   0.0398901   0.1089422
Birth       NIH-Crypto   BANGLADESH    Medium               NA                0.0770327   0.0436639   0.1104014
Birth       PROBIT       BELARUS       High                 NA                0.0681455   0.0329961   0.1032950
Birth       PROBIT       BELARUS       Low                  NA                0.0673925   0.0346635   0.1001214
Birth       PROBIT       BELARUS       Medium               NA                0.0658831   0.0327632   0.0990029
Birth       ZVITAMBO     ZIMBABWE      High                 NA                0.0611419   0.0568035   0.0654804
Birth       ZVITAMBO     ZIMBABWE      Low                  NA                0.0601999   0.0558172   0.0645826
Birth       ZVITAMBO     ZIMBABWE      Medium               NA                0.0629696   0.0577529   0.0681862
6 months    COHORTS      INDIA         High                 NA                0.0094980   0.0024947   0.0165012
6 months    COHORTS      INDIA         Low                  NA                0.0388952   0.0298972   0.0478931
6 months    COHORTS      INDIA         Medium               NA                0.0293508   0.0232029   0.0354988
6 months    COHORTS      PHILIPPINES   High                 NA                0.0088670   0.0030987   0.0146353
6 months    COHORTS      PHILIPPINES   Low                  NA                0.0157767   0.0072669   0.0242865
6 months    COHORTS      PHILIPPINES   Medium               NA                0.0149942   0.0069033   0.0230852
6 months    IRC          INDIA         High                 NA                0.0483871   0.0105720   0.0862022
6 months    IRC          INDIA         Low                  NA                0.0482759   0.0133443   0.0832074
6 months    IRC          INDIA         Medium               NA                0.0647482   0.0237890   0.1057074
6 months    JiVitA-3     BANGLADESH    High                 NA                0.0124429   0.0089708   0.0159151
6 months    JiVitA-3     BANGLADESH    Low                  NA                0.0125382   0.0095671   0.0155092
6 months    JiVitA-3     BANGLADESH    Medium               NA                0.0145307   0.0108448   0.0182166
6 months    ZVITAMBO     ZIMBABWE      High                 NA                0.0089786   0.0057532   0.0122040
6 months    ZVITAMBO     ZIMBABWE      Low                  NA                0.0099547   0.0045310   0.0153784
6 months    ZVITAMBO     ZIMBABWE      Medium               NA                0.0103123   0.0056981   0.0149266
24 months   COHORTS      PHILIPPINES   High                 NA                0.0087816   0.0027219   0.0148412
24 months   COHORTS      PHILIPPINES   Low                  NA                0.0093583   0.0024568   0.0162598
24 months   COHORTS      PHILIPPINES   Medium               NA                0.0126582   0.0048609   0.0204555
24 months   JiVitA-3     BANGLADESH    High                 NA                0.0368026   0.0229046   0.0507006
24 months   JiVitA-3     BANGLADESH    Low                  NA                0.0313141   0.0234145   0.0392137
24 months   JiVitA-3     BANGLADESH    Medium               NA                0.0396437   0.0306129   0.0486745
24 months   JiVitA-4     BANGLADESH    High                 NA                0.0223304   0.0103017   0.0343590
24 months   JiVitA-4     BANGLADESH    Low                  NA                0.0321735   0.0183099   0.0460372
24 months   JiVitA-4     BANGLADESH    Medium               NA                0.0288522   0.0187202   0.0389843
24 months   ZVITAMBO     ZIMBABWE      High                 NA                0.0869565   0.0461962   0.1277169
24 months   ZVITAMBO     ZIMBABWE      Low                  NA                0.0762712   0.0283242   0.1242182
24 months   ZVITAMBO     ZIMBABWE      Medium               NA                0.0458015   0.0099610   0.0816420


### Parameter: E(Y)


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS      GUATEMALA     NA                   NA                0.0775401   0.0583612   0.0967191
Birth       COHORTS      INDIA         NA                   NA                0.0491904   0.0431214   0.0552594
Birth       COHORTS      PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       GMS-Nepal    NEPAL         NA                   NA                0.0422535   0.0266438   0.0578632
Birth       IRC          INDIA         NA                   NA                0.1574344   0.1188345   0.1960344
Birth       JiVitA-3     BANGLADESH    NA                   NA                0.0194018   0.0169900   0.0218136
Birth       JiVitA-4     BANGLADESH    NA                   NA                0.0129653   0.0075421   0.0183885
Birth       NIH-Birth    BANGLADESH    NA                   NA                0.0660870   0.0457632   0.0864107
Birth       NIH-Crypto   BANGLADESH    NA                   NA                0.0664781   0.0481022   0.0848539
Birth       PROBIT       BELARUS       NA                   NA                0.0665123   0.0333611   0.0996634
Birth       ZVITAMBO     ZIMBABWE      NA                   NA                0.0613321   0.0571909   0.0654732
6 months    COHORTS      INDIA         NA                   NA                0.0297762   0.0252454   0.0343071
6 months    COHORTS      PHILIPPINES   NA                   NA                0.0129342   0.0086762   0.0171922
6 months    IRC          INDIA         NA                   NA                0.0539216   0.0319786   0.0758646
6 months    JiVitA-3     BANGLADESH    NA                   NA                0.0136578   0.0115849   0.0157307
6 months    ZVITAMBO     ZIMBABWE      NA                   NA                0.0093029   0.0072609   0.0113448
24 months   COHORTS      PHILIPPINES   NA                   NA                0.0102082   0.0062264   0.0141901
24 months   JiVitA-3     BANGLADESH    NA                   NA                0.0387570   0.0344303   0.0430837
24 months   JiVitA-4     BANGLADESH    NA                   NA                0.0273074   0.0220923   0.0325225
24 months   ZVITAMBO     ZIMBABWE      NA                   NA                0.0715935   0.0472820   0.0959051


### Parameter: RR


agecat      studyid      country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -----------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       COHORTS      GUATEMALA     High                 High              1.0000000   1.0000000   1.000000
Birth       COHORTS      GUATEMALA     Low                  High              0.7137592   0.3734593   1.364144
Birth       COHORTS      GUATEMALA     Medium               High              1.3232845   0.7114522   2.461279
Birth       COHORTS      INDIA         High                 High              1.0000000   1.0000000   1.000000
Birth       COHORTS      INDIA         Low                  High              1.6196511   1.0220245   2.566739
Birth       COHORTS      INDIA         Medium               High              1.4163466   0.9054894   2.215418
Birth       COHORTS      PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
Birth       COHORTS      PHILIPPINES   Low                  High              0.7777948   0.4996915   1.210676
Birth       COHORTS      PHILIPPINES   Medium               High              0.9536077   0.6349455   1.432198
Birth       GMS-Nepal    NEPAL         High                 High              1.0000000   1.0000000   1.000000
Birth       GMS-Nepal    NEPAL         Low                  High              0.5108108   0.1890368   1.380301
Birth       GMS-Nepal    NEPAL         Medium               High              1.1368421   0.3855700   3.351947
Birth       IRC          INDIA         High                 High              1.0000000   1.0000000   1.000000
Birth       IRC          INDIA         Low                  High              1.4877699   0.8887448   2.490546
Birth       IRC          INDIA         Medium               High              0.9789808   0.5445244   1.760074
Birth       JiVitA-3     BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
Birth       JiVitA-3     BANGLADESH    Low                  High              0.8887842   0.7651741   1.032363
Birth       JiVitA-3     BANGLADESH    Medium               High              0.8973187   0.7633128   1.054851
Birth       JiVitA-4     BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
Birth       JiVitA-4     BANGLADESH    Low                  High              1.4565742   0.5084765   4.172481
Birth       JiVitA-4     BANGLADESH    Medium               High              0.6380449   0.1818054   2.239215
Birth       NIH-Birth    BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
Birth       NIH-Birth    BANGLADESH    Low                  High              0.7828022   0.3585401   1.709095
Birth       NIH-Birth    BANGLADESH    Medium               High              0.9350176   0.4414410   1.980464
Birth       NIH-Crypto   BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
Birth       NIH-Crypto   BANGLADESH    Low                  High              1.5360200   0.7364306   3.203775
Birth       NIH-Crypto   BANGLADESH    Medium               High              1.5900267   0.7775829   3.251338
Birth       PROBIT       BELARUS       High                 High              1.0000000   1.0000000   1.000000
Birth       PROBIT       BELARUS       Low                  High              0.9889489   0.9387160   1.041870
Birth       PROBIT       BELARUS       Medium               High              0.9667993   0.9106089   1.026457
Birth       ZVITAMBO     ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
Birth       ZVITAMBO     ZIMBABWE      Low                  High              0.9845926   0.9468766   1.023811
Birth       ZVITAMBO     ZIMBABWE      Medium               High              1.0298914   0.9713992   1.091906
6 months    COHORTS      INDIA         High                 High              1.0000000   1.0000000   1.000000
6 months    COHORTS      INDIA         Low                  High              4.0951039   1.8908265   8.869072
6 months    COHORTS      INDIA         Medium               High              3.0902230   1.4358105   6.650932
6 months    COHORTS      PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
6 months    COHORTS      PHILIPPINES   Low                  High              1.7792611   0.7642414   4.142369
6 months    COHORTS      PHILIPPINES   Medium               High              1.6910163   0.7262384   3.937462
6 months    IRC          INDIA         High                 High              1.0000000   1.0000000   1.000000
6 months    IRC          INDIA         Low                  High              0.9977011   0.3439183   2.894314
6 months    IRC          INDIA         Medium               High              1.3381295   0.4895938   3.657299
6 months    JiVitA-3     BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
6 months    JiVitA-3     BANGLADESH    Low                  High              1.0076518   0.6978113   1.455067
6 months    JiVitA-3     BANGLADESH    Medium               High              1.1677874   0.8028480   1.698612
6 months    ZVITAMBO     ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
6 months    ZVITAMBO     ZIMBABWE      Low                  High              1.1087195   0.5773818   2.129023
6 months    ZVITAMBO     ZIMBABWE      Medium               High              1.1485498   0.6470079   2.038872
24 months   COHORTS      PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
24 months   COHORTS      PHILIPPINES   Low                  High              1.0656751   0.3881533   2.925812
24 months   COHORTS      PHILIPPINES   Medium               High              1.4414557   0.5715907   3.635109
24 months   JiVitA-3     BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
24 months   JiVitA-3     BANGLADESH    Low                  High              0.8508659   0.5449060   1.328620
24 months   JiVitA-3     BANGLADESH    Medium               High              1.0771978   0.6895697   1.682724
24 months   JiVitA-4     BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
24 months   JiVitA-4     BANGLADESH    Low                  High              1.4407976   0.7233059   2.870014
24 months   JiVitA-4     BANGLADESH    Medium               High              1.2920638   0.6774483   2.464290
24 months   ZVITAMBO     ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
24 months   ZVITAMBO     ZIMBABWE      Low                  High              0.8771186   0.4004071   1.921388
24 months   ZVITAMBO     ZIMBABWE      Medium               High              0.5267176   0.2115570   1.311379


### Parameter: PAR


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS      GUATEMALA     High                 NA                -0.0028068   -0.0386197   0.0330061
Birth       COHORTS      INDIA         High                 NA                 0.0147392    0.0010823   0.0283960
Birth       COHORTS      PHILIPPINES   High                 NA                -0.0037496   -0.0129919   0.0054928
Birth       GMS-Nepal    NEPAL         High                 NA                -0.0194749   -0.0674050   0.0284552
Birth       IRC          INDIA         High                 NA                 0.0185858   -0.0316940   0.0688657
Birth       JiVitA-3     BANGLADESH    High                 NA                -0.0016617   -0.0044166   0.0010933
Birth       JiVitA-4     BANGLADESH    High                 NA                 0.0005429   -0.0079350   0.0090208
Birth       NIH-Birth    BANGLADESH    High                 NA                -0.0075853   -0.0413017   0.0261311
Birth       NIH-Crypto   BANGLADESH    High                 NA                 0.0180307   -0.0061670   0.0422284
Birth       PROBIT       BELARUS       High                 NA                -0.0016333   -0.0048922   0.0016257
Birth       ZVITAMBO     ZIMBABWE      High                 NA                 0.0001901   -0.0010382   0.0014184
6 months    COHORTS      INDIA         High                 NA                 0.0202783    0.0127813   0.0277752
6 months    COHORTS      PHILIPPINES   High                 NA                 0.0040672   -0.0010750   0.0092095
6 months    IRC          INDIA         High                 NA                 0.0055345   -0.0267498   0.0378187
6 months    JiVitA-3     BANGLADESH    High                 NA                 0.0012148   -0.0017341   0.0041638
6 months    ZVITAMBO     ZIMBABWE      High                 NA                 0.0003243   -0.0022668   0.0029153
24 months   COHORTS      PHILIPPINES   High                 NA                 0.0014267   -0.0035989   0.0064523
24 months   JiVitA-3     BANGLADESH    High                 NA                 0.0019544   -0.0112636   0.0151724
24 months   JiVitA-4     BANGLADESH    High                 NA                 0.0049770   -0.0052617   0.0152158
24 months   ZVITAMBO     ZIMBABWE      High                 NA                -0.0153630   -0.0443536   0.0136276


### Parameter: PAF


agecat      studyid      country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       COHORTS      GUATEMALA     High                 NA                -0.0361978   -0.6186007   0.3366456
Birth       COHORTS      INDIA         High                 NA                 0.2996347   -0.0379718   0.5274327
Birth       COHORTS      PHILIPPINES   High                 NA                -0.0898348   -0.3347458   0.1101378
Birth       GMS-Nepal    NEPAL         High                 NA                -0.4609053   -2.1514607   0.3227761
Birth       IRC          INDIA         High                 NA                 0.1180545   -0.2629001   0.3840939
Birth       JiVitA-3     BANGLADESH    High                 NA                -0.0856445   -0.2378646   0.0478572
Birth       JiVitA-4     BANGLADESH    High                 NA                 0.0418754   -0.9064856   0.5184843
Birth       NIH-Birth    BANGLADESH    High                 NA                -0.1147777   -0.7598982   0.2938629
Birth       NIH-Crypto   BANGLADESH    High                 NA                 0.2712274   -0.1914281   0.5542245
Birth       PROBIT       BELARUS       High                 NA                -0.0245559   -0.0685065   0.0175869
Birth       ZVITAMBO     ZIMBABWE      High                 NA                 0.0031002   -0.0171338   0.0229317
6 months    COHORTS      INDIA         High                 NA                 0.6810218    0.3441589   0.8448601
6 months    COHORTS      PHILIPPINES   High                 NA                 0.3144546   -0.2005200   0.6085259
6 months    IRC          INDIA         High                 NA                 0.1026393   -0.7462155   0.5388563
6 months    JiVitA-3     BANGLADESH    High                 NA                 0.0889487   -0.1539258   0.2807037
6 months    ZVITAMBO     ZIMBABWE      High                 NA                 0.0348592   -0.2876884   0.2766133
24 months   COHORTS      PHILIPPINES   High                 NA                 0.1397585   -0.5193606   0.5129429
24 months   JiVitA-3     BANGLADESH    High                 NA                 0.0504270   -0.3599531   0.3369707
24 months   JiVitA-4     BANGLADESH    High                 NA                 0.1822589   -0.3024819   0.4865952
24 months   ZVITAMBO     ZIMBABWE      High                 NA                -0.2145863   -0.6877207   0.1259100
