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

**Outcome Variable:** ever_co

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
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        meducyrs    ever_co   n_cell       n
------------  ---------------  -----------------------------  ---------  --------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          High              0      132     373
0-24 months   CMC-V-BCS-2002   INDIA                          High              1       26     373
0-24 months   CMC-V-BCS-2002   INDIA                          Low               0       77     373
0-24 months   CMC-V-BCS-2002   INDIA                          Low               1       29     373
0-24 months   CMC-V-BCS-2002   INDIA                          Medium            0       78     373
0-24 months   CMC-V-BCS-2002   INDIA                          Medium            1       31     373
0-24 months   COHORTS          GUATEMALA                      High              0      253    1322
0-24 months   COHORTS          GUATEMALA                      High              1       27    1322
0-24 months   COHORTS          GUATEMALA                      Low               0      555    1322
0-24 months   COHORTS          GUATEMALA                      Low               1       72    1322
0-24 months   COHORTS          GUATEMALA                      Medium            0      366    1322
0-24 months   COHORTS          GUATEMALA                      Medium            1       49    1322
0-24 months   COHORTS          INDIA                          High              0      776    5841
0-24 months   COHORTS          INDIA                          High              1       16    5841
0-24 months   COHORTS          INDIA                          Low               0     1623    5841
0-24 months   COHORTS          INDIA                          Low               1      327    5841
0-24 months   COHORTS          INDIA                          Medium            0     2896    5841
0-24 months   COHORTS          INDIA                          Medium            1      203    5841
0-24 months   COHORTS          PHILIPPINES                    High              0     1036    3045
0-24 months   COHORTS          PHILIPPINES                    High              1      132    3045
0-24 months   COHORTS          PHILIPPINES                    Low               0      670    3045
0-24 months   COHORTS          PHILIPPINES                    Low               1      231    3045
0-24 months   COHORTS          PHILIPPINES                    Medium            0      779    3045
0-24 months   COHORTS          PHILIPPINES                    Medium            1      197    3045
0-24 months   EE               PAKISTAN                       High              0       12     376
0-24 months   EE               PAKISTAN                       High              1        3     376
0-24 months   EE               PAKISTAN                       Low               0      175     376
0-24 months   EE               PAKISTAN                       Low               1      153     376
0-24 months   EE               PAKISTAN                       Medium            0       22     376
0-24 months   EE               PAKISTAN                       Medium            1       11     376
0-24 months   GMS-Nepal        NEPAL                          High              0       69     683
0-24 months   GMS-Nepal        NEPAL                          High              1       15     683
0-24 months   GMS-Nepal        NEPAL                          Low               0      323     683
0-24 months   GMS-Nepal        NEPAL                          Low               1      157     683
0-24 months   GMS-Nepal        NEPAL                          Medium            0       89     683
0-24 months   GMS-Nepal        NEPAL                          Medium            1       30     683
0-24 months   Guatemala BSC    GUATEMALA                      High              0      109     282
0-24 months   Guatemala BSC    GUATEMALA                      High              1        9     282
0-24 months   Guatemala BSC    GUATEMALA                      Low               0       67     282
0-24 months   Guatemala BSC    GUATEMALA                      Low               1        9     282
0-24 months   Guatemala BSC    GUATEMALA                      Medium            0       84     282
0-24 months   Guatemala BSC    GUATEMALA                      Medium            1        4     282
0-24 months   IRC              INDIA                          High              0      105     410
0-24 months   IRC              INDIA                          High              1       19     410
0-24 months   IRC              INDIA                          Low               0      122     410
0-24 months   IRC              INDIA                          Low               1       25     410
0-24 months   IRC              INDIA                          Medium            0      107     410
0-24 months   IRC              INDIA                          Medium            1       32     410
0-24 months   JiVitA-3         BANGLADESH                     High              0     8366   26889
0-24 months   JiVitA-3         BANGLADESH                     High              1      610   26889
0-24 months   JiVitA-3         BANGLADESH                     Low               0     8702   26889
0-24 months   JiVitA-3         BANGLADESH                     Low               1     1019   26889
0-24 months   JiVitA-3         BANGLADESH                     Medium            0     7433   26889
0-24 months   JiVitA-3         BANGLADESH                     Medium            1      759   26889
0-24 months   JiVitA-4         BANGLADESH                     High              0     1689    5419
0-24 months   JiVitA-4         BANGLADESH                     High              1      212    5419
0-24 months   JiVitA-4         BANGLADESH                     Low               0     1422    5419
0-24 months   JiVitA-4         BANGLADESH                     Low               1      363    5419
0-24 months   JiVitA-4         BANGLADESH                     Medium            0     1432    5419
0-24 months   JiVitA-4         BANGLADESH                     Medium            1      301    5419
0-24 months   LCNI-5           MALAWI                         High              0      292     814
0-24 months   LCNI-5           MALAWI                         High              1        6     814
0-24 months   LCNI-5           MALAWI                         Low               0      243     814
0-24 months   LCNI-5           MALAWI                         Low               1       18     814
0-24 months   LCNI-5           MALAWI                         Medium            0      238     814
0-24 months   LCNI-5           MALAWI                         Medium            1       17     814
0-24 months   MAL-ED           BANGLADESH                     High              0       70     213
0-24 months   MAL-ED           BANGLADESH                     High              1        8     213
0-24 months   MAL-ED           BANGLADESH                     Low               0       61     213
0-24 months   MAL-ED           BANGLADESH                     Low               1        9     213
0-24 months   MAL-ED           BANGLADESH                     Medium            0       58     213
0-24 months   MAL-ED           BANGLADESH                     Medium            1        7     213
0-24 months   MAL-ED           BRAZIL                         High              0       79     232
0-24 months   MAL-ED           BRAZIL                         High              1        0     232
0-24 months   MAL-ED           BRAZIL                         Low               0       61     232
0-24 months   MAL-ED           BRAZIL                         Low               1        2     232
0-24 months   MAL-ED           BRAZIL                         Medium            0       89     232
0-24 months   MAL-ED           BRAZIL                         Medium            1        1     232
0-24 months   MAL-ED           INDIA                          High              0       54     220
0-24 months   MAL-ED           INDIA                          High              1        9     220
0-24 months   MAL-ED           INDIA                          Low               0       61     220
0-24 months   MAL-ED           INDIA                          Low               1       15     220
0-24 months   MAL-ED           INDIA                          Medium            0       60     220
0-24 months   MAL-ED           INDIA                          Medium            1       21     220
0-24 months   MAL-ED           NEPAL                          High              0       50     225
0-24 months   MAL-ED           NEPAL                          High              1        3     225
0-24 months   MAL-ED           NEPAL                          Low               0       84     225
0-24 months   MAL-ED           NEPAL                          Low               1       12     225
0-24 months   MAL-ED           NEPAL                          Medium            0       71     225
0-24 months   MAL-ED           NEPAL                          Medium            1        5     225
0-24 months   MAL-ED           PERU                           High              0       89     301
0-24 months   MAL-ED           PERU                           High              1        1     301
0-24 months   MAL-ED           PERU                           Low               0      100     301
0-24 months   MAL-ED           PERU                           Low               1        4     301
0-24 months   MAL-ED           PERU                           Medium            0      100     301
0-24 months   MAL-ED           PERU                           Medium            1        7     301
0-24 months   MAL-ED           SOUTH AFRICA                   High              0       88     312
0-24 months   MAL-ED           SOUTH AFRICA                   High              1        7     312
0-24 months   MAL-ED           SOUTH AFRICA                   Low               0      135     312
0-24 months   MAL-ED           SOUTH AFRICA                   Low               1       13     312
0-24 months   MAL-ED           SOUTH AFRICA                   Medium            0       66     312
0-24 months   MAL-ED           SOUTH AFRICA                   Medium            1        3     312
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0       10     216
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        1     216
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       55     216
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1        9     216
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0      132     216
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1        9     216
0-24 months   NIH-Birth        BANGLADESH                     High              0      152     624
0-24 months   NIH-Birth        BANGLADESH                     High              1       26     624
0-24 months   NIH-Birth        BANGLADESH                     Low               0      163     624
0-24 months   NIH-Birth        BANGLADESH                     Low               1       65     624
0-24 months   NIH-Birth        BANGLADESH                     Medium            0      172     624
0-24 months   NIH-Birth        BANGLADESH                     Medium            1       46     624
0-24 months   NIH-Crypto       BANGLADESH                     High              0      240     758
0-24 months   NIH-Crypto       BANGLADESH                     High              1       14     758
0-24 months   NIH-Crypto       BANGLADESH                     Low               0      219     758
0-24 months   NIH-Crypto       BANGLADESH                     Low               1       23     758
0-24 months   NIH-Crypto       BANGLADESH                     Medium            0      228     758
0-24 months   NIH-Crypto       BANGLADESH                     Medium            1       34     758
0-24 months   PROBIT           BELARUS                        High              0     2837   16897
0-24 months   PROBIT           BELARUS                        High              1        3   16897
0-24 months   PROBIT           BELARUS                        Low               0     6092   16897
0-24 months   PROBIT           BELARUS                        Low               1        8   16897
0-24 months   PROBIT           BELARUS                        Medium            0     7950   16897
0-24 months   PROBIT           BELARUS                        Medium            1        7   16897
0-24 months   PROVIDE          BANGLADESH                     High              0      213     700
0-24 months   PROVIDE          BANGLADESH                     High              1       22     700
0-24 months   PROVIDE          BANGLADESH                     Low               0      180     700
0-24 months   PROVIDE          BANGLADESH                     Low               1       34     700
0-24 months   PROVIDE          BANGLADESH                     Medium            0      217     700
0-24 months   PROVIDE          BANGLADESH                     Medium            1       34     700
0-24 months   SAS-CompFeed     INDIA                          High              0      287    1513
0-24 months   SAS-CompFeed     INDIA                          High              1       35    1513
0-24 months   SAS-CompFeed     INDIA                          Low               0      473    1513
0-24 months   SAS-CompFeed     INDIA                          Low               1      209    1513
0-24 months   SAS-CompFeed     INDIA                          Medium            0      402    1513
0-24 months   SAS-CompFeed     INDIA                          Medium            1      107    1513
0-24 months   SAS-FoodSuppl    INDIA                          High              0       33     418
0-24 months   SAS-FoodSuppl    INDIA                          High              1        8     418
0-24 months   SAS-FoodSuppl    INDIA                          Low               0      203     418
0-24 months   SAS-FoodSuppl    INDIA                          Low               1      129     418
0-24 months   SAS-FoodSuppl    INDIA                          Medium            0       27     418
0-24 months   SAS-FoodSuppl    INDIA                          Medium            1       18     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      596    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       25    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0       77    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        5    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0     1594    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1       89    2386
0-24 months   ZVITAMBO         ZIMBABWE                       High              0     7303   13922
0-24 months   ZVITAMBO         ZIMBABWE                       High              1      251   13922
0-24 months   ZVITAMBO         ZIMBABWE                       Low               0     2766   13922
0-24 months   ZVITAMBO         ZIMBABWE                       Low               1      157   13922
0-24 months   ZVITAMBO         ZIMBABWE                       Medium            0     3262   13922
0-24 months   ZVITAMBO         ZIMBABWE                       Medium            1      183   13922
0-6 months    CMC-V-BCS-2002   INDIA                          High              0      146     368
0-6 months    CMC-V-BCS-2002   INDIA                          High              1       11     368
0-6 months    CMC-V-BCS-2002   INDIA                          Low               0       94     368
0-6 months    CMC-V-BCS-2002   INDIA                          Low               1       10     368
0-6 months    CMC-V-BCS-2002   INDIA                          Medium            0       97     368
0-6 months    CMC-V-BCS-2002   INDIA                          Medium            1       10     368
0-6 months    COHORTS          GUATEMALA                      High              0      212    1050
0-6 months    COHORTS          GUATEMALA                      High              1        3    1050
0-6 months    COHORTS          GUATEMALA                      Low               0      495    1050
0-6 months    COHORTS          GUATEMALA                      Low               1        9    1050
0-6 months    COHORTS          GUATEMALA                      Medium            0      323    1050
0-6 months    COHORTS          GUATEMALA                      Medium            1        8    1050
0-6 months    COHORTS          INDIA                          High              0      740    5625
0-6 months    COHORTS          INDIA                          High              1       10    5625
0-6 months    COHORTS          INDIA                          Low               0     1818    5625
0-6 months    COHORTS          INDIA                          Low               1       75    5625
0-6 months    COHORTS          INDIA                          Medium            0     2917    5625
0-6 months    COHORTS          INDIA                          Medium            1       65    5625
0-6 months    COHORTS          PHILIPPINES                    High              0     1141    3044
0-6 months    COHORTS          PHILIPPINES                    High              1       27    3044
0-6 months    COHORTS          PHILIPPINES                    Low               0      874    3044
0-6 months    COHORTS          PHILIPPINES                    Low               1       26    3044
0-6 months    COHORTS          PHILIPPINES                    Medium            0      957    3044
0-6 months    COHORTS          PHILIPPINES                    Medium            1       19    3044
0-6 months    EE               PAKISTAN                       High              0       15     376
0-6 months    EE               PAKISTAN                       High              1        0     376
0-6 months    EE               PAKISTAN                       Low               0      276     376
0-6 months    EE               PAKISTAN                       Low               1       52     376
0-6 months    EE               PAKISTAN                       Medium            0       28     376
0-6 months    EE               PAKISTAN                       Medium            1        5     376
0-6 months    GMS-Nepal        NEPAL                          High              0       79     683
0-6 months    GMS-Nepal        NEPAL                          High              1        5     683
0-6 months    GMS-Nepal        NEPAL                          Low               0      453     683
0-6 months    GMS-Nepal        NEPAL                          Low               1       27     683
0-6 months    GMS-Nepal        NEPAL                          Medium            0      115     683
0-6 months    GMS-Nepal        NEPAL                          Medium            1        4     683
0-6 months    Guatemala BSC    GUATEMALA                      High              0      108     265
0-6 months    Guatemala BSC    GUATEMALA                      High              1        4     265
0-6 months    Guatemala BSC    GUATEMALA                      Low               0       73     265
0-6 months    Guatemala BSC    GUATEMALA                      Low               1        1     265
0-6 months    Guatemala BSC    GUATEMALA                      Medium            0       77     265
0-6 months    Guatemala BSC    GUATEMALA                      Medium            1        2     265
0-6 months    IRC              INDIA                          High              0      118     409
0-6 months    IRC              INDIA                          High              1        6     409
0-6 months    IRC              INDIA                          Low               0      139     409
0-6 months    IRC              INDIA                          Low               1        8     409
0-6 months    IRC              INDIA                          Medium            0      127     409
0-6 months    IRC              INDIA                          Medium            1       11     409
0-6 months    JiVitA-3         BANGLADESH                     High              0     8669   26782
0-6 months    JiVitA-3         BANGLADESH                     High              1      265   26782
0-6 months    JiVitA-3         BANGLADESH                     Low               0     9212   26782
0-6 months    JiVitA-3         BANGLADESH                     Low               1      472   26782
0-6 months    JiVitA-3         BANGLADESH                     Medium            0     7840   26782
0-6 months    JiVitA-3         BANGLADESH                     Medium            1      324   26782
0-6 months    JiVitA-4         BANGLADESH                     High              0     1744    5073
0-6 months    JiVitA-4         BANGLADESH                     High              1       38    5073
0-6 months    JiVitA-4         BANGLADESH                     Low               0     1610    5073
0-6 months    JiVitA-4         BANGLADESH                     Low               1       53    5073
0-6 months    JiVitA-4         BANGLADESH                     Medium            0     1585    5073
0-6 months    JiVitA-4         BANGLADESH                     Medium            1       43    5073
0-6 months    LCNI-5           MALAWI                         High              0       87     267
0-6 months    LCNI-5           MALAWI                         High              1        0     267
0-6 months    LCNI-5           MALAWI                         Low               0       92     267
0-6 months    LCNI-5           MALAWI                         Low               1        0     267
0-6 months    LCNI-5           MALAWI                         Medium            0       88     267
0-6 months    LCNI-5           MALAWI                         Medium            1        0     267
0-6 months    MAL-ED           BANGLADESH                     High              0       76     213
0-6 months    MAL-ED           BANGLADESH                     High              1        2     213
0-6 months    MAL-ED           BANGLADESH                     Low               0       66     213
0-6 months    MAL-ED           BANGLADESH                     Low               1        4     213
0-6 months    MAL-ED           BANGLADESH                     Medium            0       64     213
0-6 months    MAL-ED           BANGLADESH                     Medium            1        1     213
0-6 months    MAL-ED           BRAZIL                         High              0       79     232
0-6 months    MAL-ED           BRAZIL                         High              1        0     232
0-6 months    MAL-ED           BRAZIL                         Low               0       63     232
0-6 months    MAL-ED           BRAZIL                         Low               1        0     232
0-6 months    MAL-ED           BRAZIL                         Medium            0       89     232
0-6 months    MAL-ED           BRAZIL                         Medium            1        1     232
0-6 months    MAL-ED           INDIA                          High              0       60     220
0-6 months    MAL-ED           INDIA                          High              1        3     220
0-6 months    MAL-ED           INDIA                          Low               0       73     220
0-6 months    MAL-ED           INDIA                          Low               1        3     220
0-6 months    MAL-ED           INDIA                          Medium            0       72     220
0-6 months    MAL-ED           INDIA                          Medium            1        9     220
0-6 months    MAL-ED           NEPAL                          High              0       51     225
0-6 months    MAL-ED           NEPAL                          High              1        2     225
0-6 months    MAL-ED           NEPAL                          Low               0       94     225
0-6 months    MAL-ED           NEPAL                          Low               1        2     225
0-6 months    MAL-ED           NEPAL                          Medium            0       73     225
0-6 months    MAL-ED           NEPAL                          Medium            1        3     225
0-6 months    MAL-ED           PERU                           High              0       90     301
0-6 months    MAL-ED           PERU                           High              1        0     301
0-6 months    MAL-ED           PERU                           Low               0      103     301
0-6 months    MAL-ED           PERU                           Low               1        1     301
0-6 months    MAL-ED           PERU                           Medium            0      106     301
0-6 months    MAL-ED           PERU                           Medium            1        1     301
0-6 months    MAL-ED           SOUTH AFRICA                   High              0       92     312
0-6 months    MAL-ED           SOUTH AFRICA                   High              1        3     312
0-6 months    MAL-ED           SOUTH AFRICA                   Low               0      147     312
0-6 months    MAL-ED           SOUTH AFRICA                   Low               1        1     312
0-6 months    MAL-ED           SOUTH AFRICA                   Medium            0       68     312
0-6 months    MAL-ED           SOUTH AFRICA                   Medium            1        1     312
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0       11     216
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        0     216
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       63     216
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1        1     216
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0      138     216
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1        3     216
0-6 months    NIH-Birth        BANGLADESH                     High              0      164     622
0-6 months    NIH-Birth        BANGLADESH                     High              1       13     622
0-6 months    NIH-Birth        BANGLADESH                     Low               0      209     622
0-6 months    NIH-Birth        BANGLADESH                     Low               1       19     622
0-6 months    NIH-Birth        BANGLADESH                     Medium            0      204     622
0-6 months    NIH-Birth        BANGLADESH                     Medium            1       13     622
0-6 months    NIH-Crypto       BANGLADESH                     High              0      250     758
0-6 months    NIH-Crypto       BANGLADESH                     High              1        4     758
0-6 months    NIH-Crypto       BANGLADESH                     Low               0      238     758
0-6 months    NIH-Crypto       BANGLADESH                     Low               1        4     758
0-6 months    NIH-Crypto       BANGLADESH                     Medium            0      253     758
0-6 months    NIH-Crypto       BANGLADESH                     Medium            1        9     758
0-6 months    PROBIT           BELARUS                        High              0     2839   16892
0-6 months    PROBIT           BELARUS                        High              1        1   16892
0-6 months    PROBIT           BELARUS                        Low               0     6092   16892
0-6 months    PROBIT           BELARUS                        Low               1        5   16892
0-6 months    PROBIT           BELARUS                        Medium            0     7948   16892
0-6 months    PROBIT           BELARUS                        Medium            1        7   16892
0-6 months    PROVIDE          BANGLADESH                     High              0      229     700
0-6 months    PROVIDE          BANGLADESH                     High              1        6     700
0-6 months    PROVIDE          BANGLADESH                     Low               0      204     700
0-6 months    PROVIDE          BANGLADESH                     Low               1       10     700
0-6 months    PROVIDE          BANGLADESH                     Medium            0      237     700
0-6 months    PROVIDE          BANGLADESH                     Medium            1       14     700
0-6 months    SAS-CompFeed     INDIA                          High              0      313    1504
0-6 months    SAS-CompFeed     INDIA                          High              1        9    1504
0-6 months    SAS-CompFeed     INDIA                          Low               0      610    1504
0-6 months    SAS-CompFeed     INDIA                          Low               1       68    1504
0-6 months    SAS-CompFeed     INDIA                          Medium            0      475    1504
0-6 months    SAS-CompFeed     INDIA                          Medium            1       29    1504
0-6 months    SAS-FoodSuppl    INDIA                          High              0       39     416
0-6 months    SAS-FoodSuppl    INDIA                          High              1        1     416
0-6 months    SAS-FoodSuppl    INDIA                          Low               0      300     416
0-6 months    SAS-FoodSuppl    INDIA                          Low               1       31     416
0-6 months    SAS-FoodSuppl    INDIA                          Medium            0       45     416
0-6 months    SAS-FoodSuppl    INDIA                          Medium            1        0     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      619    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        2    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0       81    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        1    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0     1667    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1       16    2386
0-6 months    ZVITAMBO         ZIMBABWE                       High              0     7428   13826
0-6 months    ZVITAMBO         ZIMBABWE                       High              1       76   13826
0-6 months    ZVITAMBO         ZIMBABWE                       Low               0     2865   13826
0-6 months    ZVITAMBO         ZIMBABWE                       Low               1       38   13826
0-6 months    ZVITAMBO         ZIMBABWE                       Medium            0     3366   13826
0-6 months    ZVITAMBO         ZIMBABWE                       Medium            1       53   13826
6-24 months   CMC-V-BCS-2002   INDIA                          High              0      139     373
6-24 months   CMC-V-BCS-2002   INDIA                          High              1       19     373
6-24 months   CMC-V-BCS-2002   INDIA                          Low               0       81     373
6-24 months   CMC-V-BCS-2002   INDIA                          Low               1       25     373
6-24 months   CMC-V-BCS-2002   INDIA                          Medium            0       83     373
6-24 months   CMC-V-BCS-2002   INDIA                          Medium            1       26     373
6-24 months   COHORTS          GUATEMALA                      High              0      216    1197
6-24 months   COHORTS          GUATEMALA                      High              1       26    1197
6-24 months   COHORTS          GUATEMALA                      Low               0      502    1197
6-24 months   COHORTS          GUATEMALA                      Low               1       67    1197
6-24 months   COHORTS          GUATEMALA                      Medium            0      343    1197
6-24 months   COHORTS          GUATEMALA                      Medium            1       43    1197
6-24 months   COHORTS          INDIA                          High              0      739    5476
6-24 months   COHORTS          INDIA                          High              1       10    5476
6-24 months   COHORTS          INDIA                          Low               0     1499    5476
6-24 months   COHORTS          INDIA                          Low               1      296    5476
6-24 months   COHORTS          INDIA                          Medium            0     2758    5476
6-24 months   COHORTS          INDIA                          Medium            1      174    5476
6-24 months   COHORTS          PHILIPPINES                    High              0      932    2808
6-24 months   COHORTS          PHILIPPINES                    High              1      122    2808
6-24 months   COHORTS          PHILIPPINES                    Low               0      622    2808
6-24 months   COHORTS          PHILIPPINES                    Low               1      224    2808
6-24 months   COHORTS          PHILIPPINES                    Medium            0      718    2808
6-24 months   COHORTS          PHILIPPINES                    Medium            1      190    2808
6-24 months   EE               PAKISTAN                       High              0       12     369
6-24 months   EE               PAKISTAN                       High              1        3     369
6-24 months   EE               PAKISTAN                       Low               0      182     369
6-24 months   EE               PAKISTAN                       Low               1      139     369
6-24 months   EE               PAKISTAN                       Medium            0       22     369
6-24 months   EE               PAKISTAN                       Medium            1       11     369
6-24 months   GMS-Nepal        NEPAL                          High              0       58     587
6-24 months   GMS-Nepal        NEPAL                          High              1       13     587
6-24 months   GMS-Nepal        NEPAL                          Low               0      264     587
6-24 months   GMS-Nepal        NEPAL                          Low               1      150     587
6-24 months   GMS-Nepal        NEPAL                          Medium            0       73     587
6-24 months   GMS-Nepal        NEPAL                          Medium            1       29     587
6-24 months   Guatemala BSC    GUATEMALA                      High              0      104     266
6-24 months   Guatemala BSC    GUATEMALA                      High              1        7     266
6-24 months   Guatemala BSC    GUATEMALA                      Low               0       63     266
6-24 months   Guatemala BSC    GUATEMALA                      Low               1        8     266
6-24 months   Guatemala BSC    GUATEMALA                      Medium            0       81     266
6-24 months   Guatemala BSC    GUATEMALA                      Medium            1        3     266
6-24 months   IRC              INDIA                          High              0      108     410
6-24 months   IRC              INDIA                          High              1       16     410
6-24 months   IRC              INDIA                          Low               0      128     410
6-24 months   IRC              INDIA                          Low               1       19     410
6-24 months   IRC              INDIA                          Medium            0      110     410
6-24 months   IRC              INDIA                          Medium            1       29     410
6-24 months   JiVitA-3         BANGLADESH                     High              0     5708   17262
6-24 months   JiVitA-3         BANGLADESH                     High              1      380   17262
6-24 months   JiVitA-3         BANGLADESH                     Low               0     5148   17262
6-24 months   JiVitA-3         BANGLADESH                     Low               1      640   17262
6-24 months   JiVitA-3         BANGLADESH                     Medium            0     4907   17262
6-24 months   JiVitA-3         BANGLADESH                     Medium            1      479   17262
6-24 months   JiVitA-4         BANGLADESH                     High              0     1708    5415
6-24 months   JiVitA-4         BANGLADESH                     High              1      190    5415
6-24 months   JiVitA-4         BANGLADESH                     Low               0     1451    5415
6-24 months   JiVitA-4         BANGLADESH                     Low               1      334    5415
6-24 months   JiVitA-4         BANGLADESH                     Medium            0     1455    5415
6-24 months   JiVitA-4         BANGLADESH                     Medium            1      277    5415
6-24 months   LCNI-5           MALAWI                         High              0      287     803
6-24 months   LCNI-5           MALAWI                         High              1        6     803
6-24 months   LCNI-5           MALAWI                         Low               0      241     803
6-24 months   LCNI-5           MALAWI                         Low               1       18     803
6-24 months   LCNI-5           MALAWI                         Medium            0      234     803
6-24 months   LCNI-5           MALAWI                         Medium            1       17     803
6-24 months   MAL-ED           BANGLADESH                     High              0       63     194
6-24 months   MAL-ED           BANGLADESH                     High              1        8     194
6-24 months   MAL-ED           BANGLADESH                     Low               0       58     194
6-24 months   MAL-ED           BANGLADESH                     Low               1        6     194
6-24 months   MAL-ED           BANGLADESH                     Medium            0       53     194
6-24 months   MAL-ED           BANGLADESH                     Medium            1        6     194
6-24 months   MAL-ED           BRAZIL                         High              0       71     206
6-24 months   MAL-ED           BRAZIL                         High              1        0     206
6-24 months   MAL-ED           BRAZIL                         Low               0       53     206
6-24 months   MAL-ED           BRAZIL                         Low               1        2     206
6-24 months   MAL-ED           BRAZIL                         Medium            0       80     206
6-24 months   MAL-ED           BRAZIL                         Medium            1        0     206
6-24 months   MAL-ED           INDIA                          High              0       51     207
6-24 months   MAL-ED           INDIA                          High              1        7     207
6-24 months   MAL-ED           INDIA                          Low               0       59     207
6-24 months   MAL-ED           INDIA                          Low               1       13     207
6-24 months   MAL-ED           INDIA                          Medium            0       58     207
6-24 months   MAL-ED           INDIA                          Medium            1       19     207
6-24 months   MAL-ED           NEPAL                          High              0       51     220
6-24 months   MAL-ED           NEPAL                          High              1        1     220
6-24 months   MAL-ED           NEPAL                          Low               0       83     220
6-24 months   MAL-ED           NEPAL                          Low               1       10     220
6-24 months   MAL-ED           NEPAL                          Medium            0       72     220
6-24 months   MAL-ED           NEPAL                          Medium            1        3     220
6-24 months   MAL-ED           PERU                           High              0       80     269
6-24 months   MAL-ED           PERU                           High              1        1     269
6-24 months   MAL-ED           PERU                           Low               0       89     269
6-24 months   MAL-ED           PERU                           Low               1        4     269
6-24 months   MAL-ED           PERU                           Medium            0       89     269
6-24 months   MAL-ED           PERU                           Medium            1        6     269
6-24 months   MAL-ED           SOUTH AFRICA                   High              0       69     259
6-24 months   MAL-ED           SOUTH AFRICA                   High              1        5     259
6-24 months   MAL-ED           SOUTH AFRICA                   Low               0      117     259
6-24 months   MAL-ED           SOUTH AFRICA                   Low               1       12     259
6-24 months   MAL-ED           SOUTH AFRICA                   Medium            0       53     259
6-24 months   MAL-ED           SOUTH AFRICA                   Medium            1        3     259
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              0        8     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High              1        1     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               0       54     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low               1        8     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            0      123     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium            1        8     202
6-24 months   NIH-Birth        BANGLADESH                     High              0      139     542
6-24 months   NIH-Birth        BANGLADESH                     High              1       18     542
6-24 months   NIH-Birth        BANGLADESH                     Low               0      139     542
6-24 months   NIH-Birth        BANGLADESH                     Low               1       58     542
6-24 months   NIH-Birth        BANGLADESH                     Medium            0      150     542
6-24 months   NIH-Birth        BANGLADESH                     Medium            1       38     542
6-24 months   NIH-Crypto       BANGLADESH                     High              0      234     730
6-24 months   NIH-Crypto       BANGLADESH                     High              1       12     730
6-24 months   NIH-Crypto       BANGLADESH                     Low               0      213     730
6-24 months   NIH-Crypto       BANGLADESH                     Low               1       21     730
6-24 months   NIH-Crypto       BANGLADESH                     Medium            0      220     730
6-24 months   NIH-Crypto       BANGLADESH                     Medium            1       30     730
6-24 months   PROBIT           BELARUS                        High              0     2773   16598
6-24 months   PROBIT           BELARUS                        High              1        2   16598
6-24 months   PROBIT           BELARUS                        Low               0     5968   16598
6-24 months   PROBIT           BELARUS                        Low               1        4   16598
6-24 months   PROBIT           BELARUS                        Medium            0     7851   16598
6-24 months   PROBIT           BELARUS                        Medium            1        0   16598
6-24 months   PROVIDE          BANGLADESH                     High              0      192     614
6-24 months   PROVIDE          BANGLADESH                     High              1       19     614
6-24 months   PROVIDE          BANGLADESH                     Low               0      154     614
6-24 months   PROVIDE          BANGLADESH                     Low               1       31     614
6-24 months   PROVIDE          BANGLADESH                     Medium            0      193     614
6-24 months   PROVIDE          BANGLADESH                     Medium            1       25     614
6-24 months   SAS-CompFeed     INDIA                          High              0      273    1389
6-24 months   SAS-CompFeed     INDIA                          High              1       29    1389
6-24 months   SAS-CompFeed     INDIA                          Low               0      422    1389
6-24 months   SAS-CompFeed     INDIA                          Low               1      192    1389
6-24 months   SAS-CompFeed     INDIA                          Medium            0      380    1389
6-24 months   SAS-CompFeed     INDIA                          Medium            1       93    1389
6-24 months   SAS-FoodSuppl    INDIA                          High              0       33     401
6-24 months   SAS-FoodSuppl    INDIA                          High              1        7     401
6-24 months   SAS-FoodSuppl    INDIA                          Low               0      199     401
6-24 months   SAS-FoodSuppl    INDIA                          Low               1      120     401
6-24 months   SAS-FoodSuppl    INDIA                          Medium            0       24     401
6-24 months   SAS-FoodSuppl    INDIA                          Medium            1       18     401
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      489    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       25    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0       67    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        5    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0     1341    2010
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1       83    2010
6-24 months   ZVITAMBO         ZIMBABWE                       High              0     5639   10798
6-24 months   ZVITAMBO         ZIMBABWE                       High              1      184   10798
6-24 months   ZVITAMBO         ZIMBABWE                       Low               0     2154   10798
6-24 months   ZVITAMBO         ZIMBABWE                       Low               1      124   10798
6-24 months   ZVITAMBO         ZIMBABWE                       Medium            0     2561   10798
6-24 months   ZVITAMBO         ZIMBABWE                       Medium            1      136   10798


The following strata were considered:

* agecat: 0-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: IRC, country: INDIA
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: IRC, country: INDIA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
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
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: EE, country: PAKISTAN
* agecat: 0-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/7bf20f72-36de-429e-95c1-2ee5ad0e927b/476dc6d2-a7ca-4dea-b486-93e6ef629c4c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7bf20f72-36de-429e-95c1-2ee5ad0e927b/476dc6d2-a7ca-4dea-b486-93e6ef629c4c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7bf20f72-36de-429e-95c1-2ee5ad0e927b/476dc6d2-a7ca-4dea-b486-93e6ef629c4c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7bf20f72-36de-429e-95c1-2ee5ad0e927b/476dc6d2-a7ca-4dea-b486-93e6ef629c4c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                0.1738441   0.1165900   0.2310981
0-24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                0.2622176   0.1763945   0.3480408
0-24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                0.2812446   0.1957789   0.3667103
0-24 months   COHORTS          GUATEMALA                      High                 NA                0.0922414   0.0526568   0.1318261
0-24 months   COHORTS          GUATEMALA                      Low                  NA                0.1009214   0.0778324   0.1240104
0-24 months   COHORTS          GUATEMALA                      Medium               NA                0.1170014   0.0846835   0.1493192
0-24 months   COHORTS          INDIA                          High                 NA                0.0197768   0.0079537   0.0316000
0-24 months   COHORTS          INDIA                          Low                  NA                0.1535237   0.1368949   0.1701525
0-24 months   COHORTS          INDIA                          Medium               NA                0.0662968   0.0574427   0.0751509
0-24 months   COHORTS          PHILIPPINES                    High                 NA                0.1494561   0.1236417   0.1752704
0-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.2181111   0.1852589   0.2509634
0-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.1910615   0.1620431   0.2200799
0-24 months   GMS-Nepal        NEPAL                          High                 NA                0.2097061   0.1153439   0.3040684
0-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.3168224   0.2749858   0.3586590
0-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.2733106   0.1802299   0.3663914
0-24 months   IRC              INDIA                          High                 NA                0.1528082   0.0890090   0.2166073
0-24 months   IRC              INDIA                          Low                  NA                0.1666899   0.1055778   0.2278020
0-24 months   IRC              INDIA                          Medium               NA                0.2308157   0.1604503   0.3011810
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.0864835   0.0772855   0.0956815
0-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.0928406   0.0853369   0.1003444
0-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.0886449   0.0802705   0.0970193
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.1361982   0.1115807   0.1608157
0-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.1786140   0.1573872   0.1998408
0-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.1795098   0.1572640   0.2017557
0-24 months   LCNI-5           MALAWI                         High                 NA                0.0201342   0.0041770   0.0360915
0-24 months   LCNI-5           MALAWI                         Low                  NA                0.0689655   0.0382050   0.0997260
0-24 months   LCNI-5           MALAWI                         Medium               NA                0.0666667   0.0360317   0.0973017
0-24 months   MAL-ED           BANGLADESH                     High                 NA                0.1025641   0.0350768   0.1700514
0-24 months   MAL-ED           BANGLADESH                     Low                  NA                0.1285714   0.0499739   0.2071690
0-24 months   MAL-ED           BANGLADESH                     Medium               NA                0.1076923   0.0321547   0.1832299
0-24 months   MAL-ED           INDIA                          High                 NA                0.1428571   0.0562518   0.2294625
0-24 months   MAL-ED           INDIA                          Low                  NA                0.1973684   0.1076818   0.2870550
0-24 months   MAL-ED           INDIA                          Medium               NA                0.2592593   0.1636070   0.3549115
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                0.1537737   0.0995428   0.2080045
0-24 months   NIH-Birth        BANGLADESH                     Low                  NA                0.2747088   0.2161233   0.3332943
0-24 months   NIH-Birth        BANGLADESH                     Medium               NA                0.2105003   0.1537592   0.2672415
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.0578007   0.0295879   0.0860136
0-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.0918515   0.0548742   0.1288287
0-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.1282422   0.0873507   0.1691337
0-24 months   PROVIDE          BANGLADESH                     High                 NA                0.1179582   0.0614558   0.1744605
0-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.1324329   0.0828596   0.1820062
0-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.1283948   0.0864740   0.1703157
0-24 months   SAS-CompFeed     INDIA                          High                 NA                0.1327069   0.0861811   0.1792328
0-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.2789709   0.2234436   0.3344982
0-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.2197183   0.1787960   0.2606406
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.1951220   0.0736728   0.3165711
0-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.3885542   0.3360609   0.4410475
0-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.4000000   0.2566929   0.5433071
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0402576   0.0247946   0.0557207
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0609756   0.0091734   0.1127779
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0528818   0.0421875   0.0635761
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.0374141   0.0324156   0.0424125
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.0445404   0.0364667   0.0526141
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.0524443   0.0442401   0.0606484
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                0.0736839   0.0313591   0.1160088
0-6 months    CMC-V-BCS-2002   INDIA                          Low                  NA                0.0930990   0.0383490   0.1478490
0-6 months    CMC-V-BCS-2002   INDIA                          Medium               NA                0.0915469   0.0355437   0.1475500
0-6 months    COHORTS          INDIA                          High                 NA                0.0131515   0.0030653   0.0232377
0-6 months    COHORTS          INDIA                          Low                  NA                0.0350188   0.0266891   0.0433484
0-6 months    COHORTS          INDIA                          Medium               NA                0.0221198   0.0167725   0.0274671
0-6 months    COHORTS          PHILIPPINES                    High                 NA                0.0235454   0.0147533   0.0323374
0-6 months    COHORTS          PHILIPPINES                    Low                  NA                0.0256824   0.0154806   0.0358841
0-6 months    COHORTS          PHILIPPINES                    Medium               NA                0.0192182   0.0105584   0.0278779
0-6 months    IRC              INDIA                          High                 NA                0.0483871   0.0105721   0.0862021
0-6 months    IRC              INDIA                          Low                  NA                0.0544218   0.0177057   0.0911378
0-6 months    IRC              INDIA                          Medium               NA                0.0797101   0.0344663   0.1249540
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                0.0363932   0.0306909   0.0420955
0-6 months    JiVitA-3         BANGLADESH                     Low                  NA                0.0433215   0.0383599   0.0482832
0-6 months    JiVitA-3         BANGLADESH                     Medium               NA                0.0381620   0.0325562   0.0437678
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                0.0282584   0.0163799   0.0401368
0-6 months    JiVitA-4         BANGLADESH                     Low                  NA                0.0335383   0.0237237   0.0433530
0-6 months    JiVitA-4         BANGLADESH                     Medium               NA                0.0241519   0.0147467   0.0335571
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                0.0734712   0.0346775   0.1122649
0-6 months    NIH-Birth        BANGLADESH                     Low                  NA                0.0818420   0.0453865   0.1182975
0-6 months    NIH-Birth        BANGLADESH                     Medium               NA                0.0596847   0.0280385   0.0913309
0-6 months    PROVIDE          BANGLADESH                     High                 NA                0.0255319   0.0053506   0.0457133
0-6 months    PROVIDE          BANGLADESH                     Low                  NA                0.0467290   0.0184312   0.0750268
0-6 months    PROVIDE          BANGLADESH                     Medium               NA                0.0557769   0.0273659   0.0841879
0-6 months    SAS-CompFeed     INDIA                          High                 NA                0.0279503   0.0159038   0.0399969
0-6 months    SAS-CompFeed     INDIA                          Low                  NA                0.1002950   0.0728735   0.1277165
0-6 months    SAS-CompFeed     INDIA                          Medium               NA                0.0575397   0.0289884   0.0860910
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.0100629   0.0076540   0.0124717
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.0111482   0.0069910   0.0153053
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.0141828   0.0100760   0.0182895
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                0.1233334   0.0723851   0.1742817
6-24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                0.2326185   0.1509900   0.3142469
6-24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                0.2517585   0.1716159   0.3319012
6-24 months   COHORTS          GUATEMALA                      High                 NA                0.1011260   0.0614654   0.1407866
6-24 months   COHORTS          GUATEMALA                      Low                  NA                0.1055841   0.0808078   0.1303603
6-24 months   COHORTS          GUATEMALA                      Medium               NA                0.1100184   0.0778863   0.1421505
6-24 months   COHORTS          INDIA                          High                 NA                0.0165698   0.0043526   0.0287871
6-24 months   COHORTS          INDIA                          Low                  NA                0.1502902   0.1331081   0.1674724
6-24 months   COHORTS          INDIA                          Medium               NA                0.0601507   0.0514550   0.0688464
6-24 months   COHORTS          PHILIPPINES                    High                 NA                0.1605609   0.1321784   0.1889434
6-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.2282902   0.1941981   0.2623823
6-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.2036591   0.1735513   0.2337669
6-24 months   GMS-Nepal        NEPAL                          High                 NA                0.2392111   0.1282272   0.3501949
6-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.3546516   0.3080858   0.4012174
6-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.2964145   0.1976084   0.3952207
6-24 months   IRC              INDIA                          High                 NA                0.1333690   0.0743325   0.1924055
6-24 months   IRC              INDIA                          Low                  NA                0.1312424   0.0766952   0.1857895
6-24 months   IRC              INDIA                          Medium               NA                0.2154606   0.1472659   0.2836552
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.0825373   0.0709448   0.0941299
6-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.0883823   0.0784230   0.0983416
6-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.0845013   0.0754909   0.0935117
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.1255769   0.1010928   0.1500610
6-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.1718387   0.1515117   0.1921656
6-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.1665701   0.1443500   0.1887903
6-24 months   LCNI-5           MALAWI                         High                 NA                0.0204778   0.0042510   0.0367047
6-24 months   LCNI-5           MALAWI                         Low                  NA                0.0694981   0.0385086   0.1004875
6-24 months   LCNI-5           MALAWI                         Medium               NA                0.0677291   0.0366233   0.0988348
6-24 months   MAL-ED           BANGLADESH                     High                 NA                0.1126761   0.0389369   0.1864152
6-24 months   MAL-ED           BANGLADESH                     Low                  NA                0.0937500   0.0221538   0.1653462
6-24 months   MAL-ED           BANGLADESH                     Medium               NA                0.1016949   0.0243724   0.1790174
6-24 months   MAL-ED           INDIA                          High                 NA                0.1206897   0.0366485   0.2047308
6-24 months   MAL-ED           INDIA                          Low                  NA                0.1805556   0.0914923   0.2696188
6-24 months   MAL-ED           INDIA                          Medium               NA                0.2467532   0.1502250   0.3432815
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                0.1116409   0.0603283   0.1629534
6-24 months   NIH-Birth        BANGLADESH                     Low                  NA                0.2814549   0.2181855   0.3447244
6-24 months   NIH-Birth        BANGLADESH                     Medium               NA                0.2052180   0.1431968   0.2672393
6-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.0698265   0.0248896   0.1147635
6-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.0896240   0.0455407   0.1337073
6-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.1121949   0.0723675   0.1520224
6-24 months   PROVIDE          BANGLADESH                     High                 NA                0.1179722   0.0543148   0.1816295
6-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.1313617   0.0796455   0.1830779
6-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.1145516   0.0709035   0.1581998
6-24 months   SAS-CompFeed     INDIA                          High                 NA                0.1071053   0.0533228   0.1608878
6-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.3028665   0.2592175   0.3465156
6-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.1971524   0.1602338   0.2340710
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.1750000   0.0571020   0.2928980
6-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.3761755   0.3229498   0.4294013
6-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.4285714   0.2787209   0.5784219
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0486381   0.0300371   0.0672391
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0694444   0.0107118   0.1281771
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0582865   0.0461150   0.0704580
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.0355631   0.0301725   0.0409537
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.0453143   0.0357977   0.0548309
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.0517572   0.0419904   0.0615240


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1119516   0.0949484   0.1289548
0-24 months   COHORTS          INDIA                          NA                   NA                0.0934771   0.0860112   0.1009431
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1839080   0.1701456   0.1976705
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2957540   0.2615022   0.3300058
0-24 months   IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0888096   0.0848964   0.0927227
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1616534   0.1503308   0.1729761
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.0503686   0.0353351   0.0654020
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1126761   0.0701126   0.1552395
0-24 months   MAL-ED           INDIA                          NA                   NA                0.2045455   0.1511224   0.2579685
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2195513   0.1870467   0.2520558
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2319894   0.1917264   0.2722524
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0498743   0.0411379   0.0586107
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0424508   0.0391016   0.0458000
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.0842391   0.0558231   0.1126551
0-6 months    COHORTS          INDIA                          NA                   NA                0.0266667   0.0224561   0.0308772
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0236531   0.0182537   0.0290525
0-6 months    IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0396162   0.0371124   0.0421199
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.0264144   0.0210697   0.0317590
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.0723473   0.0519719   0.0927227
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0704787   0.0478990   0.0930584
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0120787   0.0102578   0.0138996
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1136174   0.0956322   0.1316026
6-24 months   COHORTS          INDIA                          NA                   NA                0.0876552   0.0801645   0.0951460
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.3270869   0.2891020   0.3650717
6-24 months   IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0868381   0.0821743   0.0915020
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1479224   0.1373344   0.1585105
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.0510585   0.0358245   0.0662926
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1030928   0.0601928   0.1459928
6-24 months   MAL-ED           INDIA                          NA                   NA                0.1884058   0.1350070   0.2418045
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0562189   0.0461465   0.0662914
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0411187   0.0373733   0.0448641


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   CMC-V-BCS-2002   INDIA                          Low                  High              1.5083498   0.9529146    2.387537
0-24 months   CMC-V-BCS-2002   INDIA                          Medium               High              1.6177984   1.0391581    2.518646
0-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.000000
0-24 months   COHORTS          GUATEMALA                      Low                  High              1.0941005   0.6721228    1.781008
0-24 months   COHORTS          GUATEMALA                      Medium               High              1.2684254   0.7617909    2.112001
0-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   COHORTS          INDIA                          Low                  High              7.7628042   4.2282461   14.252039
0-24 months   COHORTS          INDIA                          Medium               High              3.3522436   1.8167610    6.185479
0-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.000000
0-24 months   COHORTS          PHILIPPINES                    Low                  High              1.4593663   1.1625985    1.831888
0-24 months   COHORTS          PHILIPPINES                    Medium               High              1.2783788   1.0179512    1.605433
0-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   GMS-Nepal        NEPAL                          Low                  High              1.5107922   0.9455741    2.413870
0-24 months   GMS-Nepal        NEPAL                          Medium               High              1.3033030   0.7407484    2.293085
0-24 months   IRC              INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   IRC              INDIA                          Low                  High              1.0908441   0.6261362    1.900451
0-24 months   IRC              INDIA                          Medium               High              1.5104932   0.9010720    2.532084
0-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.0735070   0.9431625    1.221865
0-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.0249921   0.8992445    1.168324
0-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.3114270   1.0630411    1.617850
0-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.3180046   1.0565715    1.644125
0-24 months   LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000    1.000000
0-24 months   LCNI-5           MALAWI                         Low                  High              3.4252874   1.3795460    8.504677
0-24 months   LCNI-5           MALAWI                         Medium               High              3.3111111   1.3246625    8.276415
0-24 months   MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   MAL-ED           BANGLADESH                     Low                  High              1.2535714   0.5106086    3.077585
0-24 months   MAL-ED           BANGLADESH                     Medium               High              1.0500000   0.4013361    2.747074
0-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   MAL-ED           INDIA                          Low                  High              1.3815789   0.6476465    2.947226
0-24 months   MAL-ED           INDIA                          Medium               High              1.8148148   0.8925300    3.690131
0-24 months   NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   NIH-Birth        BANGLADESH                     Low                  High              1.7864486   1.1831508    2.697373
0-24 months   NIH-Birth        BANGLADESH                     Medium               High              1.3688970   0.8784592    2.133143
0-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Low                  High              1.5891059   0.8445696    2.989994
0-24 months   NIH-Crypto       BANGLADESH                     Medium               High              2.2186956   1.2387239    3.973937
0-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-24 months   PROVIDE          BANGLADESH                     Low                  High              1.1227106   0.6117477    2.060456
0-24 months   PROVIDE          BANGLADESH                     Medium               High              1.0884777   0.6098511    1.942743
0-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   SAS-CompFeed     INDIA                          Low                  High              2.1021576   1.3676083    3.231237
0-24 months   SAS-CompFeed     INDIA                          Medium               High              1.6556653   1.1336417    2.418072
0-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-24 months   SAS-FoodSuppl    INDIA                          Low                  High              1.9913404   1.0532579    3.764924
0-24 months   SAS-FoodSuppl    INDIA                          Medium               High              2.0500000   0.9996680    4.203896
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000    1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.5146341   0.5962002    3.847896
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.3135829   0.8510126    2.027585
0-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.1904732   0.9535189    1.486312
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.4017262   1.1449144    1.716143
0-6 months    CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    CMC-V-BCS-2002   INDIA                          Low                  High              1.2634916   0.5554753    2.873955
0-6 months    CMC-V-BCS-2002   INDIA                          Medium               High              1.2424270   0.5361645    2.879014
0-6 months    COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    COHORTS          INDIA                          Low                  High              2.6627118   1.1928279    5.943887
0-6 months    COHORTS          INDIA                          Medium               High              1.6819134   0.7525989    3.758752
0-6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.000000
0-6 months    COHORTS          PHILIPPINES                    Low                  High              1.0907606   0.6324998    1.881042
0-6 months    COHORTS          PHILIPPINES                    Medium               High              0.8162183   0.4546239    1.465414
0-6 months    IRC              INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    IRC              INDIA                          Low                  High              1.1247166   0.4005555    3.158082
0-6 months    IRC              INDIA                          Medium               High              1.6473430   0.6270556    4.327749
0-6 months    JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    JiVitA-3         BANGLADESH                     Low                  High              1.1903748   0.9850825    1.438450
0-6 months    JiVitA-3         BANGLADESH                     Medium               High              1.0486037   0.8518814    1.290754
0-6 months    JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    JiVitA-4         BANGLADESH                     Low                  High              1.1868470   0.7049032    1.998297
0-6 months    JiVitA-4         BANGLADESH                     Medium               High              0.8546811   0.4830530    1.512215
0-6 months    NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    NIH-Birth        BANGLADESH                     Low                  High              1.1139330   0.5581586    2.223108
0-6 months    NIH-Birth        BANGLADESH                     Medium               High              0.8123548   0.3846147    1.715796
0-6 months    PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
0-6 months    PROVIDE          BANGLADESH                     Low                  High              1.8302181   0.6761706    4.953925
0-6 months    PROVIDE          BANGLADESH                     Medium               High              2.1845950   0.8530709    5.594441
0-6 months    SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000    1.000000
0-6 months    SAS-CompFeed     INDIA                          Low                  High              3.5883317   2.1335409    6.035096
0-6 months    SAS-CompFeed     INDIA                          Medium               High              2.0586420   1.0888549    3.892168
0-6 months    ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  High              1.1078530   0.7112765    1.725543
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               High              1.4094161   0.9680145    2.052091
6-24 months   CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   CMC-V-BCS-2002   INDIA                          Low                  High              1.8860947   1.0974430    3.241493
6-24 months   CMC-V-BCS-2002   INDIA                          Medium               High              2.0412846   1.2118446    3.438430
6-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.000000
6-24 months   COHORTS          GUATEMALA                      Low                  High              1.0440844   0.6603773    1.650742
6-24 months   COHORTS          GUATEMALA                      Medium               High              1.0879339   0.6673405    1.773607
6-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   COHORTS          INDIA                          Low                  High              9.0701066   4.3013156   19.125970
6-24 months   COHORTS          INDIA                          Medium               High              3.6301324   1.7125257    7.694986
6-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.000000
6-24 months   COHORTS          PHILIPPINES                    Low                  High              1.4218292   1.1301123    1.788847
6-24 months   COHORTS          PHILIPPINES                    Medium               High              1.2684229   1.0093979    1.593917
6-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   GMS-Nepal        NEPAL                          Low                  High              1.4825886   0.9153814    2.401260
6-24 months   GMS-Nepal        NEPAL                          Medium               High              1.2391339   0.6997920    2.194156
6-24 months   IRC              INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   IRC              INDIA                          Low                  High              0.9840545   0.5360458    1.806494
6-24 months   IRC              INDIA                          Medium               High              1.6155221   0.9372648    2.784604
6-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.0708164   0.8940448    1.282539
6-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.0237949   0.8641707    1.212904
6-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.3683936   1.0947300    1.710469
6-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.3264389   1.0469179    1.680590
6-24 months   LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000    1.000000
6-24 months   LCNI-5           MALAWI                         Low                  High              3.3938224   1.3671140    8.425069
6-24 months   LCNI-5           MALAWI                         Medium               High              3.3074369   1.3235151    8.265216
6-24 months   MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6-24 months   MAL-ED           BANGLADESH                     Low                  High              0.8320313   0.3043355    2.274713
6-24 months   MAL-ED           BANGLADESH                     Medium               High              0.9025424   0.3309679    2.461214
6-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   MAL-ED           INDIA                          Low                  High              1.4960317   0.6372868    3.511937
6-24 months   MAL-ED           INDIA                          Medium               High              2.0445269   0.9198597    4.544269
6-24 months   NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6-24 months   NIH-Birth        BANGLADESH                     Low                  High              2.5210743   1.5114504    4.205110
6-24 months   NIH-Birth        BANGLADESH                     Medium               High              1.8381980   1.0593295    3.189727
6-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6-24 months   NIH-Crypto       BANGLADESH                     Low                  High              1.2835233   0.5708212    2.886074
6-24 months   NIH-Crypto       BANGLADESH                     Medium               High              1.6067664   0.7709276    3.348820
6-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6-24 months   PROVIDE          BANGLADESH                     Low                  High              1.1134972   0.5716218    2.169050
6-24 months   PROVIDE          BANGLADESH                     Medium               High              0.9710053   0.5017601    1.879088
6-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   SAS-CompFeed     INDIA                          Low                  High              2.8277454   1.6890750    4.734037
6-24 months   SAS-CompFeed     INDIA                          Medium               High              1.8407342   1.0922662    3.102085
6-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000    1.000000
6-24 months   SAS-FoodSuppl    INDIA                          Low                  High              2.1495746   1.0799012    4.278790
6-24 months   SAS-FoodSuppl    INDIA                          Medium               High              2.4489796   1.1464135    5.231534
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000    1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.4277778   0.5643511    3.612201
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1983708   0.7750939    1.852798
6-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.2741934   0.9844406    1.649230
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.4553632   1.1434655    1.852336


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0567190    0.0091791   0.1042588
0-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0197101   -0.0174497   0.0568700
0-24 months   COHORTS          INDIA                          High                 NA                 0.0737003    0.0605971   0.0868035
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0344520    0.0108590   0.0580450
0-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0860479   -0.0053695   0.1774653
0-24 months   IRC              INDIA                          High                 NA                 0.0325577   -0.0225302   0.0876456
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0023261   -0.0059258   0.0105779
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0254552    0.0030376   0.0478729
0-24 months   LCNI-5           MALAWI                         High                 NA                 0.0302343    0.0130821   0.0473866
0-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.0101120   -0.0449377   0.0651616
0-24 months   MAL-ED           INDIA                          High                 NA                 0.0616883   -0.0161498   0.1395264
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0657776    0.0165274   0.1150278
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0358668    0.0095035   0.0622301
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0106133   -0.0412818   0.0625084
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0992825    0.0428166   0.1557483
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.1756914    0.0573459   0.2940370
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0096166   -0.0042025   0.0234357
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0050367    0.0009368   0.0091367
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                 0.0105552   -0.0235071   0.0446176
0-6 months    COHORTS          INDIA                          High                 NA                 0.0135151    0.0033793   0.0236509
0-6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0001077   -0.0068721   0.0070875
0-6 months    IRC              INDIA                          High                 NA                 0.0127376   -0.0204773   0.0459525
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0032230   -0.0021021   0.0085481
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.0018440   -0.0122206   0.0085326
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                -0.0011240   -0.0338651   0.0316172
0-6 months    PROVIDE          BANGLADESH                     High                 NA                 0.0173252   -0.0016288   0.0362793
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.0425284    0.0188020   0.0662548
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0020158    0.0001193   0.0039123
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0643342    0.0198334   0.1088349
6-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0124914   -0.0239331   0.0489159
6-24 months   COHORTS          INDIA                          High                 NA                 0.0710854    0.0575242   0.0846465
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0303223    0.0043834   0.0562612
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0878758   -0.0195011   0.1952528
6-24 months   IRC              INDIA                          High                 NA                 0.0227286   -0.0284675   0.0739246
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0043008   -0.0061363   0.0147379
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0223455   -0.0001215   0.0448125
6-24 months   LCNI-5           MALAWI                         High                 NA                 0.0305807    0.0131672   0.0479943
6-24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0095833   -0.0670104   0.0478438
6-24 months   MAL-ED           INDIA                          High                 NA                 0.0677161   -0.0094614   0.1448937
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0986912    0.0494542   0.1479283
6-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0164748   -0.0253629   0.0583125
6-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0041777   -0.0543536   0.0627089
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.1189566    0.0626139   0.1752993
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.1865960    0.0710805   0.3021115
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0075808   -0.0088659   0.0240275
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0055556    0.0011330   0.0099782


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.2460020    0.0142618   0.4232616
0-24 months   COHORTS          GUATEMALA                      High                 NA                 0.1760596   -0.2310368   0.4485316
0-24 months   COHORTS          INDIA                          High                 NA                 0.7884313    0.6174324   0.8829976
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.1873327    0.0494858   0.3051885
0-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.2909442   -0.0941127   0.5404859
0-24 months   IRC              INDIA                          High                 NA                 0.1756402   -0.1805255   0.4243504
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0261916   -0.0713332   0.1148386
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.1574680    0.0068414   0.2852500
0-24 months   LCNI-5           MALAWI                         High                 NA                 0.6002619    0.1702459   0.8074242
0-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.0897436   -0.5553666   0.4672852
0-24 months   MAL-ED           INDIA                          High                 NA                 0.3015873   -0.1952913   0.5919151
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.2996001    0.0394994   0.4892663
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.3829162    0.0467284   0.6005415
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0825476   -0.4238274   0.4088336
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.4279612    0.1755112   0.6031136
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.4738002    0.0387627   0.7119481
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1928172   -0.1350977   0.4260018
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.1186488    0.0172296   0.2096017
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                 0.1253006   -0.3861390   0.4480359
0-6 months    COHORTS          INDIA                          High                 NA                 0.5068172   -0.0460918   0.7674876
0-6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0045542   -0.3389282   0.2599213
0-6 months    IRC              INDIA                          High                 NA                 0.2083871   -0.5623325   0.5989004
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0813550   -0.0630365   0.2061339
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.0698107   -0.5439495   0.2587226
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                -0.0155355   -0.5856768   0.3496075
0-6 months    PROVIDE          BANGLADESH                     High                 NA                 0.4042553   -0.2061957   0.7057594
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.6034220    0.3516107   0.7574388
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.1668920   -0.0034295   0.3083032
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.3428092    0.0697497   0.5357167
6-24 months   COHORTS          GUATEMALA                      High                 NA                 0.1099426   -0.2751932   0.3787591
6-24 months   COHORTS          INDIA                          High                 NA                 0.8109657    0.6068625   0.9091057
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.1588525    0.0122227   0.2837160
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.2686620   -0.1440771   0.5325007
6-24 months   IRC              INDIA                          High                 NA                 0.1456048   -0.2516274   0.4167665
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0495268   -0.0787418   0.1625436
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.1510623   -0.0152436   0.2901258
6-24 months   LCNI-5           MALAWI                         High                 NA                 0.5989345    0.1676110   0.8067568
6-24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0929577   -0.8178096   0.3428593
6-24 months   MAL-ED           INDIA                          High                 NA                 0.3594164   -0.1972763   0.6572660
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.4692162    0.1898656   0.6522411
6-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.1908987   -0.4698103   0.5546059
6-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0342010   -0.5861172   0.4119176
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.5262125    0.2291224   0.7088064
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.5160345    0.0697324   0.7482202
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1348438   -0.2119889   0.3824240
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.1351115    0.0216938   0.2353804
