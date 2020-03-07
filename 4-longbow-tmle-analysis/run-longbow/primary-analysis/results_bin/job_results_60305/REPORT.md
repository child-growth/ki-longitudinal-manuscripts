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

**Outcome Variable:** wasted

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

agecat      studyid          country                        meducyrs    wasted   n_cell       n
----------  ---------------  -----------------------------  ---------  -------  -------  ------
Birth       CMC-V-BCS-2002   INDIA                          High             0       44      86
Birth       CMC-V-BCS-2002   INDIA                          High             1        5      86
Birth       CMC-V-BCS-2002   INDIA                          Low              0       13      86
Birth       CMC-V-BCS-2002   INDIA                          Low              1        2      86
Birth       CMC-V-BCS-2002   INDIA                          Medium           0       18      86
Birth       CMC-V-BCS-2002   INDIA                          Medium           1        4      86
Birth       COHORTS          GUATEMALA                      High             0      124     748
Birth       COHORTS          GUATEMALA                      High             1       33     748
Birth       COHORTS          GUATEMALA                      Low              0      258     748
Birth       COHORTS          GUATEMALA                      Low              1       86     748
Birth       COHORTS          GUATEMALA                      Medium           0      177     748
Birth       COHORTS          GUATEMALA                      Medium           1       70     748
Birth       COHORTS          INDIA                          High             0      558    4879
Birth       COHORTS          INDIA                          High             1       98    4879
Birth       COHORTS          INDIA                          Low              0     1297    4879
Birth       COHORTS          INDIA                          Low              1      305    4879
Birth       COHORTS          INDIA                          Medium           0     2170    4879
Birth       COHORTS          INDIA                          Medium           1      451    4879
Birth       COHORTS          PHILIPPINES                    High             0      929    2899
Birth       COHORTS          PHILIPPINES                    High             1      199    2899
Birth       COHORTS          PHILIPPINES                    Low              0      727    2899
Birth       COHORTS          PHILIPPINES                    Low              1      111    2899
Birth       COHORTS          PHILIPPINES                    Medium           0      792    2899
Birth       COHORTS          PHILIPPINES                    Medium           1      141    2899
Birth       EE               PAKISTAN                       High             0        5     177
Birth       EE               PAKISTAN                       High             1        0     177
Birth       EE               PAKISTAN                       Low              0      136     177
Birth       EE               PAKISTAN                       Low              1       20     177
Birth       EE               PAKISTAN                       Medium           0       14     177
Birth       EE               PAKISTAN                       Medium           1        2     177
Birth       GMS-Nepal        NEPAL                          High             0       61     639
Birth       GMS-Nepal        NEPAL                          High             1       20     639
Birth       GMS-Nepal        NEPAL                          Low              0      361     639
Birth       GMS-Nepal        NEPAL                          Low              1       83     639
Birth       GMS-Nepal        NEPAL                          Medium           0       85     639
Birth       GMS-Nepal        NEPAL                          Medium           1       29     639
Birth       IRC              INDIA                          High             0       77     343
Birth       IRC              INDIA                          High             1       24     343
Birth       IRC              INDIA                          Low              0       92     343
Birth       IRC              INDIA                          Low              1       34     343
Birth       IRC              INDIA                          Medium           0       82     343
Birth       IRC              INDIA                          Medium           1       34     343
Birth       JiVitA-3         BANGLADESH                     High             0     5034   17988
Birth       JiVitA-3         BANGLADESH                     High             1      597   17988
Birth       JiVitA-3         BANGLADESH                     Low              0     6097   17988
Birth       JiVitA-3         BANGLADESH                     Low              1      800   17988
Birth       JiVitA-3         BANGLADESH                     Medium           0     4884   17988
Birth       JiVitA-3         BANGLADESH                     Medium           1      576   17988
Birth       JiVitA-4         BANGLADESH                     High             0      725    2391
Birth       JiVitA-4         BANGLADESH                     High             1       80    2391
Birth       JiVitA-4         BANGLADESH                     Low              0      736    2391
Birth       JiVitA-4         BANGLADESH                     Low              1       93    2391
Birth       JiVitA-4         BANGLADESH                     Medium           0      692    2391
Birth       JiVitA-4         BANGLADESH                     Medium           1       65    2391
Birth       MAL-ED           BANGLADESH                     High             0       56     175
Birth       MAL-ED           BANGLADESH                     High             1        8     175
Birth       MAL-ED           BANGLADESH                     Low              0       51     175
Birth       MAL-ED           BANGLADESH                     Low              1        9     175
Birth       MAL-ED           BANGLADESH                     Medium           0       39     175
Birth       MAL-ED           BANGLADESH                     Medium           1       12     175
Birth       MAL-ED           BRAZIL                         High             0       18      62
Birth       MAL-ED           BRAZIL                         High             1        0      62
Birth       MAL-ED           BRAZIL                         Low              0       16      62
Birth       MAL-ED           BRAZIL                         Low              1        1      62
Birth       MAL-ED           BRAZIL                         Medium           0       26      62
Birth       MAL-ED           BRAZIL                         Medium           1        1      62
Birth       MAL-ED           INDIA                          High             0        8      38
Birth       MAL-ED           INDIA                          High             1        0      38
Birth       MAL-ED           INDIA                          Low              0       15      38
Birth       MAL-ED           INDIA                          Low              1        3      38
Birth       MAL-ED           INDIA                          Medium           0       11      38
Birth       MAL-ED           INDIA                          Medium           1        1      38
Birth       MAL-ED           NEPAL                          High             0        4      24
Birth       MAL-ED           NEPAL                          High             1        1      24
Birth       MAL-ED           NEPAL                          Low              0       12      24
Birth       MAL-ED           NEPAL                          Low              1        0      24
Birth       MAL-ED           NEPAL                          Medium           0        6      24
Birth       MAL-ED           NEPAL                          Medium           1        1      24
Birth       MAL-ED           PERU                           High             0       63     228
Birth       MAL-ED           PERU                           High             1        2     228
Birth       MAL-ED           PERU                           Low              0       83     228
Birth       MAL-ED           PERU                           Low              1        0     228
Birth       MAL-ED           PERU                           Medium           0       77     228
Birth       MAL-ED           PERU                           Medium           1        3     228
Birth       MAL-ED           SOUTH AFRICA                   High             0       32     120
Birth       MAL-ED           SOUTH AFRICA                   High             1        3     120
Birth       MAL-ED           SOUTH AFRICA                   Low              0       53     120
Birth       MAL-ED           SOUTH AFRICA                   Low              1        6     120
Birth       MAL-ED           SOUTH AFRICA                   Medium           0       23     120
Birth       MAL-ED           SOUTH AFRICA                   Medium           1        3     120
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             0        7      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             1        0      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low              0       32      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low              1        0      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           0       57      97
Birth       MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           1        1      97
Birth       NIH-Birth        BANGLADESH                     High             0      121     575
Birth       NIH-Birth        BANGLADESH                     High             1       42     575
Birth       NIH-Birth        BANGLADESH                     Low              0      150     575
Birth       NIH-Birth        BANGLADESH                     Low              1       60     575
Birth       NIH-Birth        BANGLADESH                     Medium           0      136     575
Birth       NIH-Birth        BANGLADESH                     Medium           1       66     575
Birth       NIH-Crypto       BANGLADESH                     High             0      174     707
Birth       NIH-Crypto       BANGLADESH                     High             1       62     707
Birth       NIH-Crypto       BANGLADESH                     Low              0      178     707
Birth       NIH-Crypto       BANGLADESH                     Low              1       48     707
Birth       NIH-Crypto       BANGLADESH                     Medium           0      183     707
Birth       NIH-Crypto       BANGLADESH                     Medium           1       62     707
Birth       PROBIT           BELARUS                        High             0     1785   13817
Birth       PROBIT           BELARUS                        High             1      455   13817
Birth       PROBIT           BELARUS                        Low              0     3891   13817
Birth       PROBIT           BELARUS                        Low              1     1049   13817
Birth       PROBIT           BELARUS                        Medium           0     5235   13817
Birth       PROBIT           BELARUS                        Medium           1     1402   13817
Birth       PROVIDE          BANGLADESH                     High             0      138     532
Birth       PROVIDE          BANGLADESH                     High             1       31     532
Birth       PROVIDE          BANGLADESH                     Low              0      126     532
Birth       PROVIDE          BANGLADESH                     Low              1       38     532
Birth       PROVIDE          BANGLADESH                     Medium           0      151     532
Birth       PROVIDE          BANGLADESH                     Medium           1       48     532
Birth       SAS-CompFeed     INDIA                          High             0      206    1103
Birth       SAS-CompFeed     INDIA                          High             1       27    1103
Birth       SAS-CompFeed     INDIA                          Low              0      444    1103
Birth       SAS-CompFeed     INDIA                          Low              1       56    1103
Birth       SAS-CompFeed     INDIA                          Medium           0      335    1103
Birth       SAS-CompFeed     INDIA                          Medium           1       35    1103
Birth       ZVITAMBO         ZIMBABWE                       High             0     5847   12897
Birth       ZVITAMBO         ZIMBABWE                       High             1     1168   12897
Birth       ZVITAMBO         ZIMBABWE                       Low              0     2307   12897
Birth       ZVITAMBO         ZIMBABWE                       Low              1      390   12897
Birth       ZVITAMBO         ZIMBABWE                       Medium           0     2686   12897
Birth       ZVITAMBO         ZIMBABWE                       Medium           1      499   12897
6 months    CMC-V-BCS-2002   INDIA                          High             0      136     368
6 months    CMC-V-BCS-2002   INDIA                          High             1       21     368
6 months    CMC-V-BCS-2002   INDIA                          Low              0       95     368
6 months    CMC-V-BCS-2002   INDIA                          Low              1        9     368
6 months    CMC-V-BCS-2002   INDIA                          Medium           0       91     368
6 months    CMC-V-BCS-2002   INDIA                          Medium           1       16     368
6 months    COHORTS          GUATEMALA                      High             0      179     953
6 months    COHORTS          GUATEMALA                      High             1        6     953
6 months    COHORTS          GUATEMALA                      Low              0      430     953
6 months    COHORTS          GUATEMALA                      Low              1       19     953
6 months    COHORTS          GUATEMALA                      Medium           0      313     953
6 months    COHORTS          GUATEMALA                      Medium           1        6     953
6 months    COHORTS          INDIA                          High             0      677    5407
6 months    COHORTS          INDIA                          High             1       60    5407
6 months    COHORTS          INDIA                          Low              0     1479    5407
6 months    COHORTS          INDIA                          Low              1      295    5407
6 months    COHORTS          INDIA                          Medium           0     2557    5407
6 months    COHORTS          INDIA                          Medium           1      339    5407
6 months    COHORTS          PHILIPPINES                    High             0      963    2706
6 months    COHORTS          PHILIPPINES                    High             1       52    2706
6 months    COHORTS          PHILIPPINES                    Low              0      764    2706
6 months    COHORTS          PHILIPPINES                    Low              1       60    2706
6 months    COHORTS          PHILIPPINES                    Medium           0      818    2706
6 months    COHORTS          PHILIPPINES                    Medium           1       49    2706
6 months    EE               PAKISTAN                       High             0       15     372
6 months    EE               PAKISTAN                       High             1        0     372
6 months    EE               PAKISTAN                       Low              0      280     372
6 months    EE               PAKISTAN                       Low              1       44     372
6 months    EE               PAKISTAN                       Medium           0       30     372
6 months    EE               PAKISTAN                       Medium           1        3     372
6 months    GMS-Nepal        NEPAL                          High             0       64     561
6 months    GMS-Nepal        NEPAL                          High             1        4     561
6 months    GMS-Nepal        NEPAL                          Low              0      359     561
6 months    GMS-Nepal        NEPAL                          Low              1       40     561
6 months    GMS-Nepal        NEPAL                          Medium           0       87     561
6 months    GMS-Nepal        NEPAL                          Medium           1        7     561
6 months    Guatemala BSC    GUATEMALA                      High             0      117     277
6 months    Guatemala BSC    GUATEMALA                      High             1        0     277
6 months    Guatemala BSC    GUATEMALA                      Low              0       73     277
6 months    Guatemala BSC    GUATEMALA                      Low              1        0     277
6 months    Guatemala BSC    GUATEMALA                      Medium           0       84     277
6 months    Guatemala BSC    GUATEMALA                      Medium           1        3     277
6 months    IRC              INDIA                          High             0      111     408
6 months    IRC              INDIA                          High             1       13     408
6 months    IRC              INDIA                          Low              0      126     408
6 months    IRC              INDIA                          Low              1       19     408
6 months    IRC              INDIA                          Medium           0      117     408
6 months    IRC              INDIA                          Medium           1       22     408
6 months    JiVitA-3         BANGLADESH                     High             0     5463   16767
6 months    JiVitA-3         BANGLADESH                     High             1      446   16767
6 months    JiVitA-3         BANGLADESH                     Low              0     5075   16767
6 months    JiVitA-3         BANGLADESH                     Low              1      537   16767
6 months    JiVitA-3         BANGLADESH                     Medium           0     4810   16767
6 months    JiVitA-3         BANGLADESH                     Medium           1      436   16767
6 months    JiVitA-4         BANGLADESH                     High             0     1656    4820
6 months    JiVitA-4         BANGLADESH                     High             1       61    4820
6 months    JiVitA-4         BANGLADESH                     Low              0     1455    4820
6 months    JiVitA-4         BANGLADESH                     Low              1      129    4820
6 months    JiVitA-4         BANGLADESH                     Medium           0     1434    4820
6 months    JiVitA-4         BANGLADESH                     Medium           1       85    4820
6 months    LCNI-5           MALAWI                         High             0      295     813
6 months    LCNI-5           MALAWI                         High             1        3     813
6 months    LCNI-5           MALAWI                         Low              0      254     813
6 months    LCNI-5           MALAWI                         Low              1        7     813
6 months    LCNI-5           MALAWI                         Medium           0      250     813
6 months    LCNI-5           MALAWI                         Medium           1        4     813
6 months    MAL-ED           BANGLADESH                     High             0       72     196
6 months    MAL-ED           BANGLADESH                     High             1        1     196
6 months    MAL-ED           BANGLADESH                     Low              0       60     196
6 months    MAL-ED           BANGLADESH                     Low              1        4     196
6 months    MAL-ED           BANGLADESH                     Medium           0       58     196
6 months    MAL-ED           BANGLADESH                     Medium           1        1     196
6 months    MAL-ED           BRAZIL                         High             0       71     208
6 months    MAL-ED           BRAZIL                         High             1        0     208
6 months    MAL-ED           BRAZIL                         Low              0       55     208
6 months    MAL-ED           BRAZIL                         Low              1        1     208
6 months    MAL-ED           BRAZIL                         Medium           0       81     208
6 months    MAL-ED           BRAZIL                         Medium           1        0     208
6 months    MAL-ED           INDIA                          High             0       54     208
6 months    MAL-ED           INDIA                          High             1        5     208
6 months    MAL-ED           INDIA                          Low              0       65     208
6 months    MAL-ED           INDIA                          Low              1        7     208
6 months    MAL-ED           INDIA                          Medium           0       71     208
6 months    MAL-ED           INDIA                          Medium           1        6     208
6 months    MAL-ED           NEPAL                          High             0       53     221
6 months    MAL-ED           NEPAL                          High             1        0     221
6 months    MAL-ED           NEPAL                          Low              0       92     221
6 months    MAL-ED           NEPAL                          Low              1        1     221
6 months    MAL-ED           NEPAL                          Medium           0       73     221
6 months    MAL-ED           NEPAL                          Medium           1        2     221
6 months    MAL-ED           PERU                           High             0       81     272
6 months    MAL-ED           PERU                           High             1        0     272
6 months    MAL-ED           PERU                           Low              0       94     272
6 months    MAL-ED           PERU                           Low              1        0     272
6 months    MAL-ED           PERU                           Medium           0       97     272
6 months    MAL-ED           PERU                           Medium           1        0     272
6 months    MAL-ED           SOUTH AFRICA                   High             0       70     254
6 months    MAL-ED           SOUTH AFRICA                   High             1        0     254
6 months    MAL-ED           SOUTH AFRICA                   Low              0      122     254
6 months    MAL-ED           SOUTH AFRICA                   Low              1        5     254
6 months    MAL-ED           SOUTH AFRICA                   Medium           0       55     254
6 months    MAL-ED           SOUTH AFRICA                   Medium           1        2     254
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             0        9     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             1        0     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low              0       62     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low              1        0     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           0      131     203
6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           1        1     203
6 months    NIH-Birth        BANGLADESH                     High             0      148     537
6 months    NIH-Birth        BANGLADESH                     High             1        7     537
6 months    NIH-Birth        BANGLADESH                     Low              0      180     537
6 months    NIH-Birth        BANGLADESH                     Low              1       15     537
6 months    NIH-Birth        BANGLADESH                     Medium           0      174     537
6 months    NIH-Birth        BANGLADESH                     Medium           1       13     537
6 months    NIH-Crypto       BANGLADESH                     High             0      237     715
6 months    NIH-Crypto       BANGLADESH                     High             1        3     715
6 months    NIH-Crypto       BANGLADESH                     Low              0      217     715
6 months    NIH-Crypto       BANGLADESH                     Low              1       12     715
6 months    NIH-Crypto       BANGLADESH                     Medium           0      240     715
6 months    NIH-Crypto       BANGLADESH                     Medium           1        6     715
6 months    PROBIT           BELARUS                        High             0     2649   15757
6 months    PROBIT           BELARUS                        High             1        8   15757
6 months    PROBIT           BELARUS                        Low              0     5593   15757
6 months    PROBIT           BELARUS                        Low              1       48   15757
6 months    PROBIT           BELARUS                        Medium           0     7407   15757
6 months    PROBIT           BELARUS                        Medium           1       52   15757
6 months    PROVIDE          BANGLADESH                     High             0      201     603
6 months    PROVIDE          BANGLADESH                     High             1        8     603
6 months    PROVIDE          BANGLADESH                     Low              0      178     603
6 months    PROVIDE          BANGLADESH                     Low              1        9     603
6 months    PROVIDE          BANGLADESH                     Medium           0      199     603
6 months    PROVIDE          BANGLADESH                     Medium           1        8     603
6 months    SAS-CompFeed     INDIA                          High             0      264    1334
6 months    SAS-CompFeed     INDIA                          High             1       25    1334
6 months    SAS-CompFeed     INDIA                          Low              0      501    1334
6 months    SAS-CompFeed     INDIA                          Low              1       95    1334
6 months    SAS-CompFeed     INDIA                          Medium           0      403    1334
6 months    SAS-CompFeed     INDIA                          Medium           1       46    1334
6 months    SAS-FoodSuppl    INDIA                          High             0       32     380
6 months    SAS-FoodSuppl    INDIA                          High             1        3     380
6 months    SAS-FoodSuppl    INDIA                          Low              0      248     380
6 months    SAS-FoodSuppl    INDIA                          Low              1       56     380
6 months    SAS-FoodSuppl    INDIA                          Medium           0       31     380
6 months    SAS-FoodSuppl    INDIA                          Medium           1       10     380
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0      491    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1       21    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       72    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1        2    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0     1370    2020
6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1       64    2020
6 months    ZVITAMBO         ZIMBABWE                       High             0     4492    8492
6 months    ZVITAMBO         ZIMBABWE                       High             1      112    8492
6 months    ZVITAMBO         ZIMBABWE                       Low              0     1687    8492
6 months    ZVITAMBO         ZIMBABWE                       Low              1       79    8492
6 months    ZVITAMBO         ZIMBABWE                       Medium           0     2048    8492
6 months    ZVITAMBO         ZIMBABWE                       Medium           1       74    8492
24 months   CMC-V-BCS-2002   INDIA                          High             0      152     372
24 months   CMC-V-BCS-2002   INDIA                          High             1        6     372
24 months   CMC-V-BCS-2002   INDIA                          Low              0       95     372
24 months   CMC-V-BCS-2002   INDIA                          Low              1       10     372
24 months   CMC-V-BCS-2002   INDIA                          Medium           0      102     372
24 months   CMC-V-BCS-2002   INDIA                          Medium           1        7     372
24 months   COHORTS          GUATEMALA                      High             0      200    1068
24 months   COHORTS          GUATEMALA                      High             1        9    1068
24 months   COHORTS          GUATEMALA                      Low              0      485    1068
24 months   COHORTS          GUATEMALA                      Low              1       27    1068
24 months   COHORTS          GUATEMALA                      Medium           0      334    1068
24 months   COHORTS          GUATEMALA                      Medium           1       13    1068
24 months   COHORTS          INDIA                          High             0      584    4166
24 months   COHORTS          INDIA                          High             1       17    4166
24 months   COHORTS          INDIA                          Low              0     1067    4166
24 months   COHORTS          INDIA                          Low              1      197    4166
24 months   COHORTS          INDIA                          Medium           0     2131    4166
24 months   COHORTS          INDIA                          Medium           1      170    4166
24 months   COHORTS          PHILIPPINES                    High             0      864    2449
24 months   COHORTS          PHILIPPINES                    High             1       47    2449
24 months   COHORTS          PHILIPPINES                    Low              0      681    2449
24 months   COHORTS          PHILIPPINES                    Low              1       67    2449
24 months   COHORTS          PHILIPPINES                    Medium           0      737    2449
24 months   COHORTS          PHILIPPINES                    Medium           1       53    2449
24 months   EE               PAKISTAN                       High             0        5     166
24 months   EE               PAKISTAN                       High             1        1     166
24 months   EE               PAKISTAN                       Low              0      119     166
24 months   EE               PAKISTAN                       Low              1       24     166
24 months   EE               PAKISTAN                       Medium           0       13     166
24 months   EE               PAKISTAN                       Medium           1        4     166
24 months   GMS-Nepal        NEPAL                          High             0       45     484
24 months   GMS-Nepal        NEPAL                          High             1       10     484
24 months   GMS-Nepal        NEPAL                          Low              0      285     484
24 months   GMS-Nepal        NEPAL                          Low              1       59     484
24 months   GMS-Nepal        NEPAL                          Medium           0       64     484
24 months   GMS-Nepal        NEPAL                          Medium           1       21     484
24 months   IRC              INDIA                          High             0      116     409
24 months   IRC              INDIA                          High             1        8     409
24 months   IRC              INDIA                          Low              0      136     409
24 months   IRC              INDIA                          Low              1       10     409
24 months   IRC              INDIA                          Medium           0      126     409
24 months   IRC              INDIA                          Medium           1       13     409
24 months   JiVitA-3         BANGLADESH                     High             0     2305    8592
24 months   JiVitA-3         BANGLADESH                     High             1      607    8592
24 months   JiVitA-3         BANGLADESH                     Low              0     2340    8592
24 months   JiVitA-3         BANGLADESH                     Low              1      659    8592
24 months   JiVitA-3         BANGLADESH                     Medium           0     2073    8592
24 months   JiVitA-3         BANGLADESH                     Medium           1      608    8592
24 months   JiVitA-4         BANGLADESH                     High             0     1389    4724
24 months   JiVitA-4         BANGLADESH                     High             1      299    4724
24 months   JiVitA-4         BANGLADESH                     Low              0     1189    4724
24 months   JiVitA-4         BANGLADESH                     Low              1      339    4724
24 months   JiVitA-4         BANGLADESH                     Medium           0     1226    4724
24 months   JiVitA-4         BANGLADESH                     Medium           1      282    4724
24 months   LCNI-5           MALAWI                         High             0      213     556
24 months   LCNI-5           MALAWI                         High             1        1     556
24 months   LCNI-5           MALAWI                         Low              0      167     556
24 months   LCNI-5           MALAWI                         Low              1        5     556
24 months   LCNI-5           MALAWI                         Medium           0      166     556
24 months   LCNI-5           MALAWI                         Medium           1        4     556
24 months   MAL-ED           BANGLADESH                     High             0       60     171
24 months   MAL-ED           BANGLADESH                     High             1        4     171
24 months   MAL-ED           BANGLADESH                     Low              0       52     171
24 months   MAL-ED           BANGLADESH                     Low              1        7     171
24 months   MAL-ED           BANGLADESH                     Medium           0       45     171
24 months   MAL-ED           BANGLADESH                     Medium           1        3     171
24 months   MAL-ED           BRAZIL                         High             0       62     168
24 months   MAL-ED           BRAZIL                         High             1        0     168
24 months   MAL-ED           BRAZIL                         Low              0       40     168
24 months   MAL-ED           BRAZIL                         Low              1        2     168
24 months   MAL-ED           BRAZIL                         Medium           0       63     168
24 months   MAL-ED           BRAZIL                         Medium           1        1     168
24 months   MAL-ED           INDIA                          High             0       51     199
24 months   MAL-ED           INDIA                          High             1        4     199
24 months   MAL-ED           INDIA                          Low              0       60     199
24 months   MAL-ED           INDIA                          Low              1        9     199
24 months   MAL-ED           INDIA                          Medium           0       66     199
24 months   MAL-ED           INDIA                          Medium           1        9     199
24 months   MAL-ED           NEPAL                          High             0       47     213
24 months   MAL-ED           NEPAL                          High             1        1     213
24 months   MAL-ED           NEPAL                          Low              0       89     213
24 months   MAL-ED           NEPAL                          Low              1        2     213
24 months   MAL-ED           NEPAL                          Medium           0       73     213
24 months   MAL-ED           NEPAL                          Medium           1        1     213
24 months   MAL-ED           PERU                           High             0       59     200
24 months   MAL-ED           PERU                           High             1        0     200
24 months   MAL-ED           PERU                           Low              0       72     200
24 months   MAL-ED           PERU                           Low              1        2     200
24 months   MAL-ED           PERU                           Medium           0       65     200
24 months   MAL-ED           PERU                           Medium           1        2     200
24 months   MAL-ED           SOUTH AFRICA                   High             0       67     238
24 months   MAL-ED           SOUTH AFRICA                   High             1        0     238
24 months   MAL-ED           SOUTH AFRICA                   Low              0      119     238
24 months   MAL-ED           SOUTH AFRICA                   Low              1        1     238
24 months   MAL-ED           SOUTH AFRICA                   Medium           0       51     238
24 months   MAL-ED           SOUTH AFRICA                   Medium           1        0     238
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             0        7     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High             1        0     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low              0       51     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low              1        3     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           0      114     175
24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium           1        0     175
24 months   NIH-Birth        BANGLADESH                     High             0      116     428
24 months   NIH-Birth        BANGLADESH                     High             1       14     428
24 months   NIH-Birth        BANGLADESH                     Low              0      131     428
24 months   NIH-Birth        BANGLADESH                     Low              1       21     428
24 months   NIH-Birth        BANGLADESH                     Medium           0      128     428
24 months   NIH-Birth        BANGLADESH                     Medium           1       18     428
24 months   NIH-Crypto       BANGLADESH                     High             0      174     514
24 months   NIH-Crypto       BANGLADESH                     High             1       17     514
24 months   NIH-Crypto       BANGLADESH                     Low              0      132     514
24 months   NIH-Crypto       BANGLADESH                     Low              1       14     514
24 months   NIH-Crypto       BANGLADESH                     Medium           0      163     514
24 months   NIH-Crypto       BANGLADESH                     Medium           1       14     514
24 months   PROBIT           BELARUS                        High             0      650    3970
24 months   PROBIT           BELARUS                        High             1        4    3970
24 months   PROBIT           BELARUS                        Low              0     1367    3970
24 months   PROBIT           BELARUS                        Low              1       14    3970
24 months   PROBIT           BELARUS                        Medium           0     1921    3970
24 months   PROBIT           BELARUS                        Medium           1       14    3970
24 months   PROVIDE          BANGLADESH                     High             0      183     579
24 months   PROVIDE          BANGLADESH                     High             1       18     579
24 months   PROVIDE          BANGLADESH                     Low              0      151     579
24 months   PROVIDE          BANGLADESH                     Low              1       23     579
24 months   PROVIDE          BANGLADESH                     Medium           0      183     579
24 months   PROVIDE          BANGLADESH                     Medium           1       21     579
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0        2       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1        0       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0        4       6
24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1        0       6
24 months   ZVITAMBO         ZIMBABWE                       High             0      153     433
24 months   ZVITAMBO         ZIMBABWE                       High             1       31     433
24 months   ZVITAMBO         ZIMBABWE                       Low              0       92     433
24 months   ZVITAMBO         ZIMBABWE                       Low              1       26     433
24 months   ZVITAMBO         ZIMBABWE                       Medium           0      109     433
24 months   ZVITAMBO         ZIMBABWE                       Medium           1       22     433


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
* agecat: Birth, studyid: MAL-ED, country: PERU
* agecat: Birth, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: EE, country: PAKISTAN
* agecat: 6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: LCNI-5, country: MALAWI
* agecat: 6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: MAL-ED, country: NEPAL
* agecat: 6 months, studyid: MAL-ED, country: PERU
* agecat: 6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: EE, country: PAKISTAN
* agecat: 24 months, studyid: LCNI-5, country: MALAWI
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/8486c654-0e7b-408c-abdc-7deb3766eaec/fc533c64-697e-407d-a797-465ec6283dac/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8486c654-0e7b-408c-abdc-7deb3766eaec/fc533c64-697e-407d-a797-465ec6283dac/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8486c654-0e7b-408c-abdc-7deb3766eaec/fc533c64-697e-407d-a797-465ec6283dac/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8486c654-0e7b-408c-abdc-7deb3766eaec/fc533c64-697e-407d-a797-465ec6283dac/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA     High                 NA                0.2291027   0.1639115   0.2942939
Birth       COHORTS          GUATEMALA     Low                  NA                0.2481443   0.2036335   0.2926551
Birth       COHORTS          GUATEMALA     Medium               NA                0.2744032   0.2164188   0.3323875
Birth       COHORTS          INDIA         High                 NA                0.1844476   0.1714957   0.1973996
Birth       COHORTS          INDIA         Low                  NA                0.1788359   0.1664022   0.1912696
Birth       COHORTS          INDIA         Medium               NA                0.1737576   0.1629161   0.1845991
Birth       COHORTS          PHILIPPINES   High                 NA                0.1569826   0.1434889   0.1704763
Birth       COHORTS          PHILIPPINES   Low                  NA                0.1507725   0.1375957   0.1639492
Birth       COHORTS          PHILIPPINES   Medium               NA                0.1566289   0.1415651   0.1716926
Birth       GMS-Nepal        NEPAL         High                 NA                0.2360378   0.1349734   0.3371022
Birth       GMS-Nepal        NEPAL         Low                  NA                0.1901594   0.1536744   0.2266444
Birth       GMS-Nepal        NEPAL         Medium               NA                0.2368673   0.1535308   0.3202037
Birth       IRC              INDIA         High                 NA                0.2633147   0.1868982   0.3397313
Birth       IRC              INDIA         Low                  NA                0.2781028   0.2020784   0.3541272
Birth       IRC              INDIA         Medium               NA                0.2589581   0.1819794   0.3359368
Birth       JiVitA-3         BANGLADESH    High                 NA                0.1086144   0.1028787   0.1143502
Birth       JiVitA-3         BANGLADESH    Low                  NA                0.1106790   0.1047865   0.1165716
Birth       JiVitA-3         BANGLADESH    Medium               NA                0.1083617   0.1025150   0.1142084
Birth       JiVitA-4         BANGLADESH    High                 NA                0.0956205   0.0789234   0.1123176
Birth       JiVitA-4         BANGLADESH    Low                  NA                0.1004504   0.0835596   0.1173413
Birth       JiVitA-4         BANGLADESH    Medium               NA                0.1004371   0.0831323   0.1177419
Birth       MAL-ED           BANGLADESH    High                 NA                0.1250000   0.0437429   0.2062571
Birth       MAL-ED           BANGLADESH    Low                  NA                0.1500000   0.0593909   0.2406091
Birth       MAL-ED           BANGLADESH    Medium               NA                0.2352941   0.1185432   0.3520450
Birth       NIH-Birth        BANGLADESH    High                 NA                0.2677748   0.2004635   0.3350861
Birth       NIH-Birth        BANGLADESH    Low                  NA                0.2870389   0.2265659   0.3475119
Birth       NIH-Birth        BANGLADESH    Medium               NA                0.3215592   0.2564376   0.3866809
Birth       NIH-Crypto       BANGLADESH    High                 NA                0.2593222   0.2061206   0.3125238
Birth       NIH-Crypto       BANGLADESH    Low                  NA                0.2275033   0.1746627   0.2803439
Birth       NIH-Crypto       BANGLADESH    Medium               NA                0.2404709   0.1876409   0.2933009
Birth       PROBIT           BELARUS       High                 NA                0.2094398   0.1434868   0.2753929
Birth       PROBIT           BELARUS       Low                  NA                0.2093220   0.1438565   0.2747874
Birth       PROBIT           BELARUS       Medium               NA                0.2116168   0.1460748   0.2771588
Birth       PROVIDE          BANGLADESH    High                 NA                0.1887918   0.1297628   0.2478209
Birth       PROVIDE          BANGLADESH    Low                  NA                0.2283485   0.1639765   0.2927205
Birth       PROVIDE          BANGLADESH    Medium               NA                0.2386010   0.1785420   0.2986600
Birth       SAS-CompFeed     INDIA         High                 NA                0.1250690   0.0956386   0.1544994
Birth       SAS-CompFeed     INDIA         Low                  NA                0.1130449   0.0609318   0.1651580
Birth       SAS-CompFeed     INDIA         Medium               NA                0.0977769   0.0739203   0.1216335
Birth       ZVITAMBO         ZIMBABWE      High                 NA                0.1605424   0.1541063   0.1669785
Birth       ZVITAMBO         ZIMBABWE      Low                  NA                0.1586181   0.1514942   0.1657420
Birth       ZVITAMBO         ZIMBABWE      Medium               NA                0.1583452   0.1516433   0.1650470
6 months    CMC-V-BCS-2002   INDIA         High                 NA                0.1337580   0.0804406   0.1870753
6 months    CMC-V-BCS-2002   INDIA         Low                  NA                0.0865385   0.0324291   0.1406478
6 months    CMC-V-BCS-2002   INDIA         Medium               NA                0.1495327   0.0818708   0.2171946
6 months    COHORTS          GUATEMALA     High                 NA                0.0324324   0.0068924   0.0579724
6 months    COHORTS          GUATEMALA     Low                  NA                0.0423163   0.0236861   0.0609465
6 months    COHORTS          GUATEMALA     Medium               NA                0.0188088   0.0038933   0.0337243
6 months    COHORTS          INDIA         High                 NA                0.0861859   0.0612751   0.1110967
6 months    COHORTS          INDIA         Low                  NA                0.1536526   0.1362895   0.1710157
6 months    COHORTS          INDIA         Medium               NA                0.1184365   0.1062146   0.1306584
6 months    COHORTS          PHILIPPINES   High                 NA                0.0519159   0.0380751   0.0657567
6 months    COHORTS          PHILIPPINES   Low                  NA                0.0705133   0.0527432   0.0882833
6 months    COHORTS          PHILIPPINES   Medium               NA                0.0553155   0.0398466   0.0707845
6 months    IRC              INDIA         High                 NA                0.1060907   0.0510843   0.1610970
6 months    IRC              INDIA         Low                  NA                0.1319351   0.0762471   0.1876231
6 months    IRC              INDIA         Medium               NA                0.1522496   0.0927737   0.2117255
6 months    JiVitA-3         BANGLADESH    High                 NA                0.0789503   0.0677980   0.0901025
6 months    JiVitA-3         BANGLADESH    Low                  NA                0.0786940   0.0675887   0.0897993
6 months    JiVitA-3         BANGLADESH    Medium               NA                0.0806118   0.0716675   0.0895560
6 months    JiVitA-4         BANGLADESH    High                 NA                0.0406501   0.0236788   0.0576214
6 months    JiVitA-4         BANGLADESH    Low                  NA                0.0825954   0.0603942   0.1047965
6 months    JiVitA-4         BANGLADESH    Medium               NA                0.0534806   0.0398210   0.0671401
6 months    MAL-ED           INDIA         High                 NA                0.0847458   0.0135099   0.1559816
6 months    MAL-ED           INDIA         Low                  NA                0.0972222   0.0286258   0.1658187
6 months    MAL-ED           INDIA         Medium               NA                0.0779221   0.0179066   0.1379376
6 months    NIH-Birth        BANGLADESH    High                 NA                0.0451613   0.0124396   0.0778829
6 months    NIH-Birth        BANGLADESH    Low                  NA                0.0769231   0.0394876   0.1143585
6 months    NIH-Birth        BANGLADESH    Medium               NA                0.0695187   0.0330318   0.1060056
6 months    PROBIT           BELARUS       High                 NA                0.0030109   0.0001880   0.0058339
6 months    PROBIT           BELARUS       Low                  NA                0.0085091   0.0053795   0.0116388
6 months    PROBIT           BELARUS       Medium               NA                0.0069714   0.0052775   0.0086654
6 months    PROVIDE          BANGLADESH    High                 NA                0.0382775   0.0122440   0.0643110
6 months    PROVIDE          BANGLADESH    Low                  NA                0.0481283   0.0174256   0.0788311
6 months    PROVIDE          BANGLADESH    Medium               NA                0.0386473   0.0123674   0.0649273
6 months    SAS-CompFeed     INDIA         High                 NA                0.0813709   0.0604411   0.1023007
6 months    SAS-CompFeed     INDIA         Low                  NA                0.1616222   0.1340346   0.1892098
6 months    SAS-CompFeed     INDIA         Medium               NA                0.1020136   0.0551314   0.1488959
6 months    ZVITAMBO         ZIMBABWE      High                 NA                0.0289548   0.0227838   0.0351259
6 months    ZVITAMBO         ZIMBABWE      Low                  NA                0.0413962   0.0308964   0.0518959
6 months    ZVITAMBO         ZIMBABWE      Medium               NA                0.0328995   0.0248063   0.0409926
24 months   CMC-V-BCS-2002   INDIA         High                 NA                0.0379747   0.0081316   0.0678178
24 months   CMC-V-BCS-2002   INDIA         Low                  NA                0.0952381   0.0390156   0.1514606
24 months   CMC-V-BCS-2002   INDIA         Medium               NA                0.0642202   0.0181371   0.1103033
24 months   COHORTS          GUATEMALA     High                 NA                0.0430622   0.0155283   0.0705961
24 months   COHORTS          GUATEMALA     Low                  NA                0.0527344   0.0333657   0.0721030
24 months   COHORTS          GUATEMALA     Medium               NA                0.0374640   0.0174745   0.0574535
24 months   COHORTS          INDIA         High                 NA                0.0286657   0.0153850   0.0419464
24 months   COHORTS          INDIA         Low                  NA                0.1596437   0.1393153   0.1799721
24 months   COHORTS          INDIA         Medium               NA                0.0734659   0.0627752   0.0841566
24 months   COHORTS          PHILIPPINES   High                 NA                0.0634344   0.0444802   0.0823885
24 months   COHORTS          PHILIPPINES   Low                  NA                0.0749483   0.0550627   0.0948340
24 months   COHORTS          PHILIPPINES   Medium               NA                0.0651036   0.0455397   0.0846674
24 months   GMS-Nepal        NEPAL         High                 NA                0.1884094   0.0856400   0.2911788
24 months   GMS-Nepal        NEPAL         Low                  NA                0.1717671   0.1318177   0.2117164
24 months   GMS-Nepal        NEPAL         Medium               NA                0.2402394   0.1467668   0.3337120
24 months   IRC              INDIA         High                 NA                0.0645161   0.0212228   0.1078095
24 months   IRC              INDIA         Low                  NA                0.0684932   0.0274709   0.1095154
24 months   IRC              INDIA         Medium               NA                0.0935252   0.0450617   0.1419886
24 months   JiVitA-3         BANGLADESH    High                 NA                0.2462913   0.2169737   0.2756089
24 months   JiVitA-3         BANGLADESH    Low                  NA                0.2030649   0.1825226   0.2236071
24 months   JiVitA-3         BANGLADESH    Medium               NA                0.2262183   0.2025546   0.2498820
24 months   JiVitA-4         BANGLADESH    High                 NA                0.1854913   0.1588487   0.2121338
24 months   JiVitA-4         BANGLADESH    Low                  NA                0.2228347   0.1933708   0.2522986
24 months   JiVitA-4         BANGLADESH    Medium               NA                0.1871365   0.1616462   0.2126268
24 months   NIH-Birth        BANGLADESH    High                 NA                0.1123311   0.0547952   0.1698671
24 months   NIH-Birth        BANGLADESH    Low                  NA                0.1098984   0.0637044   0.1560925
24 months   NIH-Birth        BANGLADESH    Medium               NA                0.1210639   0.0675742   0.1745535
24 months   NIH-Crypto       BANGLADESH    High                 NA                0.0894276   0.0490309   0.1298242
24 months   NIH-Crypto       BANGLADESH    Low                  NA                0.0976143   0.0492584   0.1459702
24 months   NIH-Crypto       BANGLADESH    Medium               NA                0.0806900   0.0404957   0.1208842
24 months   PROVIDE          BANGLADESH    High                 NA                0.0896387   0.0501344   0.1291431
24 months   PROVIDE          BANGLADESH    Low                  NA                0.1335583   0.0827273   0.1843892
24 months   PROVIDE          BANGLADESH    Medium               NA                0.1028069   0.0610854   0.1445284
24 months   ZVITAMBO         ZIMBABWE      High                 NA                0.1606675   0.1096594   0.2116756
24 months   ZVITAMBO         ZIMBABWE      Low                  NA                0.1902489   0.1173706   0.2631272
24 months   ZVITAMBO         ZIMBABWE      Medium               NA                0.1930773   0.1150027   0.2711519


### Parameter: E(Y)


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA     NA                   NA                0.2526738   0.2215120   0.2838356
Birth       COHORTS          INDIA         NA                   NA                0.1750359   0.1643722   0.1856996
Birth       COHORTS          PHILIPPINES   NA                   NA                0.1555709   0.1423748   0.1687670
Birth       GMS-Nepal        NEPAL         NA                   NA                0.2065728   0.1751584   0.2379871
Birth       IRC              INDIA         NA                   NA                0.2682216   0.2212677   0.3151755
Birth       JiVitA-3         BANGLADESH    NA                   NA                0.1096842   0.1045577   0.1148108
Birth       JiVitA-4         BANGLADESH    NA                   NA                0.0995399   0.0841638   0.1149160
Birth       MAL-ED           BANGLADESH    NA                   NA                0.1657143   0.1104670   0.2209616
Birth       NIH-Birth        BANGLADESH    NA                   NA                0.2921739   0.2549711   0.3293768
Birth       NIH-Crypto       BANGLADESH    NA                   NA                0.2432815   0.2116319   0.2749310
Birth       PROBIT           BELARUS       NA                   NA                0.2103206   0.1450833   0.2755580
Birth       PROVIDE          BANGLADESH    NA                   NA                0.2199248   0.1846953   0.2551543
Birth       SAS-CompFeed     INDIA         NA                   NA                0.1069810   0.0760961   0.1378659
Birth       ZVITAMBO         ZIMBABWE      NA                   NA                0.1594945   0.1531752   0.1658137
6 months    CMC-V-BCS-2002   INDIA         NA                   NA                0.1250000   0.0911644   0.1588356
6 months    COHORTS          GUATEMALA     NA                   NA                0.0325289   0.0212599   0.0437978
6 months    COHORTS          INDIA         NA                   NA                0.1283521   0.1194359   0.1372684
6 months    COHORTS          PHILIPPINES   NA                   NA                0.0594974   0.0505830   0.0684118
6 months    IRC              INDIA         NA                   NA                0.1323529   0.0994307   0.1652752
6 months    JiVitA-3         BANGLADESH    NA                   NA                0.0846305   0.0798233   0.0894378
6 months    JiVitA-4         BANGLADESH    NA                   NA                0.0570539   0.0482012   0.0659066
6 months    MAL-ED           INDIA         NA                   NA                0.0865385   0.0482372   0.1248397
6 months    NIH-Birth        BANGLADESH    NA                   NA                0.0651769   0.0442802   0.0860736
6 months    PROBIT           BELARUS       NA                   NA                0.0068541   0.0051915   0.0085167
6 months    PROVIDE          BANGLADESH    NA                   NA                0.0414594   0.0255348   0.0573839
6 months    SAS-CompFeed     INDIA         NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ZVITAMBO         ZIMBABWE      NA                   NA                0.0312058   0.0275075   0.0349041
24 months   CMC-V-BCS-2002   INDIA         NA                   NA                0.0618280   0.0373207   0.0863352
24 months   COHORTS          GUATEMALA     NA                   NA                0.0458801   0.0333262   0.0584341
24 months   COHORTS          INDIA         NA                   NA                0.0921747   0.0833896   0.1009599
24 months   COHORTS          PHILIPPINES   NA                   NA                0.0681911   0.0582056   0.0781766
24 months   GMS-Nepal        NEPAL         NA                   NA                0.1859504   0.1512529   0.2206479
24 months   IRC              INDIA         NA                   NA                0.0757946   0.0501131   0.1014762
24 months   JiVitA-3         BANGLADESH    NA                   NA                0.2181099   0.2082292   0.2279905
24 months   JiVitA-4         BANGLADESH    NA                   NA                0.1947502   0.1814990   0.2080014
24 months   NIH-Birth        BANGLADESH    NA                   NA                0.1238318   0.0925894   0.1550741
24 months   NIH-Crypto       BANGLADESH    NA                   NA                0.0875486   0.0630907   0.1120065
24 months   PROVIDE          BANGLADESH    NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ZVITAMBO         ZIMBABWE      NA                   NA                0.1824480   0.1460286   0.2188675


### Parameter: RR


agecat      studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.0000000
Birth       COHORTS          GUATEMALA     Low                  High              1.0831138   0.7774090   1.5090326
Birth       COHORTS          GUATEMALA     Medium               High              1.1977300   0.8420282   1.7036924
Birth       COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.0000000
Birth       COHORTS          INDIA         Low                  High              0.9695753   0.9160386   1.0262410
Birth       COHORTS          INDIA         Medium               High              0.9420429   0.9006646   0.9853223
Birth       COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
Birth       COHORTS          PHILIPPINES   Low                  High              0.9604404   0.9293825   0.9925361
Birth       COHORTS          PHILIPPINES   Medium               High              0.9977465   0.9437631   1.0548177
Birth       GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.0000000
Birth       GMS-Nepal        NEPAL         Low                  High              0.8056313   0.5038427   1.2881834
Birth       GMS-Nepal        NEPAL         Medium               High              1.0035142   0.5766507   1.7463620
Birth       IRC              INDIA         High                 High              1.0000000   1.0000000   1.0000000
Birth       IRC              INDIA         Low                  High              1.0561612   0.7203002   1.5486272
Birth       IRC              INDIA         Medium               High              0.9834546   0.6631724   1.4584186
Birth       JiVitA-3         BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       JiVitA-3         BANGLADESH    Low                  High              1.0190082   0.9784721   1.0612236
Birth       JiVitA-3         BANGLADESH    Medium               High              0.9976728   0.9585150   1.0384303
Birth       JiVitA-4         BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       JiVitA-4         BANGLADESH    Low                  High              1.0505114   0.9191877   1.2005972
Birth       JiVitA-4         BANGLADESH    Medium               High              1.0503722   0.9215946   1.1971444
Birth       MAL-ED           BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       MAL-ED           BANGLADESH    Low                  High              1.2000000   0.4940740   2.9145433
Birth       MAL-ED           BANGLADESH    Medium               High              1.8823529   0.8308823   4.2644459
Birth       NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       NIH-Birth        BANGLADESH    Low                  High              1.0719413   0.7735330   1.4854675
Birth       NIH-Birth        BANGLADESH    Medium               High              1.2008568   0.8706413   1.6563159
Birth       NIH-Crypto       BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       NIH-Crypto       BANGLADESH    Low                  High              0.8773000   0.6473932   1.1888529
Birth       NIH-Crypto       BANGLADESH    Medium               High              0.9273056   0.6913835   1.2437320
Birth       PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.0000000
Birth       PROBIT           BELARUS       Low                  High              0.9994372   0.9629133   1.0373465
Birth       PROBIT           BELARUS       Medium               High              1.0103944   0.9809367   1.0407366
Birth       PROVIDE          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       PROVIDE          BANGLADESH    Low                  High              1.2095252   0.7941986   1.8420470
Birth       PROVIDE          BANGLADESH    Medium               High              1.2638315   0.8456557   1.8887946
Birth       SAS-CompFeed     INDIA         High                 High              1.0000000   1.0000000   1.0000000
Birth       SAS-CompFeed     INDIA         Low                  High              0.9038604   0.6207765   1.3160348
Birth       SAS-CompFeed     INDIA         Medium               High              0.7817835   0.5583945   1.0945406
Birth       ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
Birth       ZVITAMBO         ZIMBABWE      Low                  High              0.9880138   0.9637251   1.0129147
Birth       ZVITAMBO         ZIMBABWE      Medium               High              0.9863137   0.9672972   1.0057041
6 months    CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    CMC-V-BCS-2002   INDIA         Low                  High              0.6469780   0.3082149   1.3580802
6 months    CMC-V-BCS-2002   INDIA         Medium               High              1.1179350   0.6116839   2.0431773
6 months    COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.0000000
6 months    COHORTS          GUATEMALA     Low                  High              1.3047513   0.5293082   3.2162280
6 months    COHORTS          GUATEMALA     Medium               High              0.5799373   0.1896799   1.7731311
6 months    COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    COHORTS          INDIA         Low                  High              1.7828043   1.3077101   2.4305014
6 months    COHORTS          INDIA         Medium               High              1.3741987   1.0116045   1.8667593
6 months    COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
6 months    COHORTS          PHILIPPINES   Low                  High              1.3582197   0.9411212   1.9601735
6 months    COHORTS          PHILIPPINES   Medium               High              1.0654828   0.7240548   1.5679112
6 months    IRC              INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    IRC              INDIA         Low                  High              1.2436073   0.6365427   2.4296235
6 months    IRC              INDIA         Medium               High              1.4350891   0.7490868   2.7493221
6 months    JiVitA-3         BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
6 months    JiVitA-3         BANGLADESH    Low                  High              0.9967542   0.8224883   1.2079429
6 months    JiVitA-3         BANGLADESH    Medium               High              1.0210451   0.8501879   1.2262384
6 months    JiVitA-4         BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
6 months    JiVitA-4         BANGLADESH    Low                  High              2.0318610   1.2303985   3.3553837
6 months    JiVitA-4         BANGLADESH    Medium               High              1.3156312   0.8046344   2.1511451
6 months    MAL-ED           INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    MAL-ED           INDIA         Low                  High              1.1472222   0.3828517   3.4376725
6 months    MAL-ED           INDIA         Medium               High              0.9194805   0.2940435   2.8752363
6 months    NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
6 months    NIH-Birth        BANGLADESH    Low                  High              1.7032967   0.7115903   4.0770930
6 months    NIH-Birth        BANGLADESH    Medium               High              1.5393430   0.6291925   3.7660603
6 months    PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.0000000
6 months    PROBIT           BELARUS       Low                  High              2.8260947   1.1133993   7.1733572
6 months    PROBIT           BELARUS       Medium               High              2.3153908   0.9673834   5.5417890
6 months    PROVIDE          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
6 months    PROVIDE          BANGLADESH    Low                  High              1.2573529   0.4948615   3.1947051
6 months    PROVIDE          BANGLADESH    Medium               High              1.0096618   0.3859169   2.6415457
6 months    SAS-CompFeed     INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    SAS-CompFeed     INDIA         Low                  High              1.9862406   1.5340725   2.5716852
6 months    SAS-CompFeed     INDIA         Medium               High              1.2536867   0.6785915   2.3161659
6 months    ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
6 months    ZVITAMBO         ZIMBABWE      Low                  High              1.4296807   1.0268220   1.9905951
6 months    ZVITAMBO         ZIMBABWE      Medium               High              1.1362340   0.8205875   1.5732968
24 months   CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.0000000
24 months   CMC-V-BCS-2002   INDIA         Low                  High              2.5079365   0.9385330   6.7016777
24 months   CMC-V-BCS-2002   INDIA         Medium               High              1.6911315   0.5834495   4.9017540
24 months   COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.0000000
24 months   COHORTS          GUATEMALA     Low                  High              1.2246094   0.5858103   2.5599895
24 months   COHORTS          GUATEMALA     Medium               High              0.8699968   0.3783079   2.0007364
24 months   COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.0000000
24 months   COHORTS          INDIA         Low                  High              5.5691513   3.4444171   9.0045560
24 months   COHORTS          INDIA         Medium               High              2.5628498   1.5768018   4.1655196
24 months   COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
24 months   COHORTS          PHILIPPINES   Low                  High              1.1815094   0.7930375   1.7602754
24 months   COHORTS          PHILIPPINES   Medium               High              1.0263136   0.6724437   1.5664057
24 months   GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.0000000
24 months   GMS-Nepal        NEPAL         Low                  High              0.9116694   0.5044000   1.6477816
24 months   GMS-Nepal        NEPAL         Medium               High              1.2750925   0.6525584   2.4915180
24 months   IRC              INDIA         High                 High              1.0000000   1.0000000   1.0000000
24 months   IRC              INDIA         Low                  High              1.0616438   0.4318684   2.6097941
24 months   IRC              INDIA         Medium               High              1.4496403   0.6209420   3.3843046
24 months   JiVitA-3         BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   JiVitA-3         BANGLADESH    Low                  High              0.8244907   0.7063014   0.9624573
24 months   JiVitA-3         BANGLADESH    Medium               High              0.9184991   0.7847974   1.0749788
24 months   JiVitA-4         BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   JiVitA-4         BANGLADESH    Low                  High              1.2013216   0.9908172   1.4565487
24 months   JiVitA-4         BANGLADESH    Medium               High              1.0088693   0.8248462   1.2339479
24 months   NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   NIH-Birth        BANGLADESH    Low                  High              0.9783435   0.5034142   1.9013290
24 months   NIH-Birth        BANGLADESH    Medium               High              1.0777410   0.5473874   2.1219444
24 months   NIH-Crypto       BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   NIH-Crypto       BANGLADESH    Low                  High              1.0915460   0.5580165   2.1351925
24 months   NIH-Crypto       BANGLADESH    Medium               High              0.9022938   0.4602627   1.7688464
24 months   PROVIDE          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   PROVIDE          BANGLADESH    Low                  High              1.4899618   0.8322910   2.6673199
24 months   PROVIDE          BANGLADESH    Medium               High              1.1469032   0.6297706   2.0886763
24 months   ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
24 months   ZVITAMBO         ZIMBABWE      Low                  High              1.1841161   0.7205820   1.9458310
24 months   ZVITAMBO         ZIMBABWE      Medium               High              1.2017199   0.7186229   2.0095807


### Parameter: PAR


agecat      studyid          country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA     High                 NA                 0.0235711   -0.0353262    0.0824684
Birth       COHORTS          INDIA         High                 NA                -0.0094118   -0.0164223   -0.0024012
Birth       COHORTS          PHILIPPINES   High                 NA                -0.0014117   -0.0045340    0.0017105
Birth       GMS-Nepal        NEPAL         High                 NA                -0.0294650   -0.1241260    0.0651960
Birth       IRC              INDIA         High                 NA                 0.0049068   -0.0582865    0.0681002
Birth       JiVitA-3         BANGLADESH    High                 NA                 0.0010698   -0.0018057    0.0039453
Birth       JiVitA-4         BANGLADESH    High                 NA                 0.0039194   -0.0037897    0.0116286
Birth       MAL-ED           BANGLADESH    High                 NA                 0.0407143   -0.0287520    0.1101806
Birth       NIH-Birth        BANGLADESH    High                 NA                 0.0243991   -0.0333293    0.0821275
Birth       NIH-Crypto       BANGLADESH    High                 NA                -0.0160407   -0.0582737    0.0261923
Birth       PROBIT           BELARUS       High                 NA                 0.0008808   -0.0048918    0.0066534
Birth       PROVIDE          BANGLADESH    High                 NA                 0.0311330   -0.0191845    0.0814505
Birth       SAS-CompFeed     INDIA         High                 NA                -0.0180880   -0.0443282    0.0081522
Birth       ZVITAMBO         ZIMBABWE      High                 NA                -0.0010479   -0.0022253    0.0001294
6 months    CMC-V-BCS-2002   INDIA         High                 NA                -0.0087580   -0.0482800    0.0307641
6 months    COHORTS          GUATEMALA     High                 NA                 0.0000964   -0.0228389    0.0230318
6 months    COHORTS          INDIA         High                 NA                 0.0421662    0.0178185    0.0665140
6 months    COHORTS          PHILIPPINES   High                 NA                 0.0075815   -0.0039482    0.0191111
6 months    IRC              INDIA         High                 NA                 0.0262623   -0.0219023    0.0744268
6 months    JiVitA-3         BANGLADESH    High                 NA                 0.0056803   -0.0045346    0.0158951
6 months    JiVitA-4         BANGLADESH    High                 NA                 0.0164038    0.0001602    0.0326474
6 months    MAL-ED           INDIA         High                 NA                 0.0017927   -0.0587275    0.0623129
6 months    NIH-Birth        BANGLADESH    High                 NA                 0.0200156   -0.0098052    0.0498364
6 months    PROBIT           BELARUS       High                 NA                 0.0038432    0.0016285    0.0060579
6 months    PROVIDE          BANGLADESH    High                 NA                 0.0031819   -0.0183012    0.0246649
6 months    SAS-CompFeed     INDIA         High                 NA                 0.0430669    0.0114824    0.0746514
6 months    ZVITAMBO         ZIMBABWE      High                 NA                 0.0022510   -0.0029763    0.0074783
24 months   CMC-V-BCS-2002   INDIA         High                 NA                 0.0238533   -0.0032516    0.0509582
24 months   COHORTS          GUATEMALA     High                 NA                 0.0028179   -0.0220618    0.0276977
24 months   COHORTS          INDIA         High                 NA                 0.0635090    0.0492627    0.0777554
24 months   COHORTS          PHILIPPINES   High                 NA                 0.0047567   -0.0120349    0.0215483
24 months   GMS-Nepal        NEPAL         High                 NA                -0.0024590   -0.0993408    0.0944229
24 months   IRC              INDIA         High                 NA                 0.0112785   -0.0261027    0.0486597
24 months   JiVitA-3         BANGLADESH    High                 NA                -0.0281814   -0.0556241   -0.0007387
24 months   JiVitA-4         BANGLADESH    High                 NA                 0.0092589   -0.0146669    0.0331847
24 months   NIH-Birth        BANGLADESH    High                 NA                 0.0115006   -0.0388937    0.0618950
24 months   NIH-Crypto       BANGLADESH    High                 NA                -0.0018790   -0.0337918    0.0300339
24 months   PROVIDE          BANGLADESH    High                 NA                 0.0174424   -0.0159203    0.0508052
24 months   ZVITAMBO         ZIMBABWE      High                 NA                 0.0217806   -0.0183317    0.0618929


### Parameter: PAF


agecat      studyid          country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ---------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       COHORTS          GUATEMALA     High                 NA                 0.0932867   -0.1721094    0.2985902
Birth       COHORTS          INDIA         High                 NA                -0.0537705   -0.0946215   -0.0144441
Birth       COHORTS          PHILIPPINES   High                 NA                -0.0090746   -0.0293775    0.0108278
Birth       GMS-Nepal        NEPAL         High                 NA                -0.1426374   -0.7057067    0.2345576
Birth       IRC              INDIA         High                 NA                 0.0182940   -0.2477641    0.2276210
Birth       JiVitA-3         BANGLADESH    High                 NA                 0.0097533   -0.0167909    0.0356046
Birth       JiVitA-4         BANGLADESH    High                 NA                 0.0393756   -0.0410635    0.1135995
Birth       MAL-ED           BANGLADESH    High                 NA                 0.2456897   -0.3051245    0.5640385
Birth       NIH-Birth        BANGLADESH    High                 NA                 0.0835087   -0.1367725    0.2611044
Birth       NIH-Crypto       BANGLADESH    High                 NA                -0.0659347   -0.2545470    0.0943210
Birth       PROBIT           BELARUS       High                 NA                 0.0041878   -0.0237792    0.0313909
Birth       PROVIDE          BANGLADESH    High                 NA                 0.1415620   -0.1196777    0.3418500
Birth       SAS-CompFeed     INDIA         High                 NA                -0.1690771   -0.4753887    0.0736400
Birth       ZVITAMBO         ZIMBABWE      High                 NA                -0.0065704   -0.0139821    0.0007871
6 months    CMC-V-BCS-2002   INDIA         High                 NA                -0.0700637   -0.4373815    0.2033873
6 months    COHORTS          GUATEMALA     High                 NA                 0.0029643   -1.0222350    0.5084250
6 months    COHORTS          INDIA         High                 NA                 0.3285200    0.1111110    0.4927540
6 months    COHORTS          PHILIPPINES   High                 NA                 0.1274252   -0.0883182    0.3004006
6 months    IRC              INDIA         High                 NA                 0.1984261   -0.2581490    0.4893126
6 months    JiVitA-3         BANGLADESH    High                 NA                 0.0671183   -0.0616700    0.1802837
6 months    JiVitA-4         BANGLADESH    High                 NA                 0.2875144   -0.0551101    0.5188789
6 months    MAL-ED           INDIA         High                 NA                 0.0207156   -1.0000169    0.5205051
6 months    NIH-Birth        BANGLADESH    High                 NA                 0.3070968   -0.3224587    0.6369528
6 months    PROBIT           BELARUS       High                 NA                 0.5607131    0.0129124    0.8045027
6 months    PROVIDE          BANGLADESH    High                 NA                 0.0767464   -0.6169746    0.4728444
6 months    SAS-CompFeed     INDIA         High                 NA                 0.3460916    0.1032165    0.5231890
6 months    ZVITAMBO         ZIMBABWE      High                 NA                 0.0721340   -0.1109366    0.2250365
24 months   CMC-V-BCS-2002   INDIA         High                 NA                 0.3858008   -0.2035002    0.6865471
24 months   COHORTS          GUATEMALA     High                 NA                 0.0614198   -0.6721728    0.4731808
24 months   COHORTS          INDIA         High                 NA                 0.6890069    0.5111415    0.8021580
24 months   COHORTS          PHILIPPINES   High                 NA                 0.0697556   -0.2115411    0.2857407
24 months   GMS-Nepal        NEPAL         High                 NA                -0.0132239   -0.6944573    0.3941290
24 months   IRC              INDIA         High                 NA                 0.1488033   -0.5154091    0.5218877
24 months   JiVitA-3         BANGLADESH    High                 NA                -0.1292074   -0.2623516   -0.0101064
24 months   JiVitA-4         BANGLADESH    High                 NA                 0.0475425   -0.0834130    0.1626691
24 months   NIH-Birth        BANGLADESH    High                 NA                 0.0928732   -0.4193640    0.4202480
24 months   NIH-Crypto       BANGLADESH    High                 NA                -0.0214618   -0.4594834    0.2851004
24 months   PROVIDE          BANGLADESH    High                 NA                 0.1628900   -0.2117730    0.4217125
24 months   ZVITAMBO         ZIMBABWE      High                 NA                 0.1193796   -0.1285163    0.3128214
