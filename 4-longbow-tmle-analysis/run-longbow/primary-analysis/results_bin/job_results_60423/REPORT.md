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

**Outcome Variable:** ever_wasted

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

agecat        studyid          country                        meducyrs    ever_wasted   n_cell       n
------------  ---------------  -----------------------------  ---------  ------------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          High                  0       69     373
0-24 months   CMC-V-BCS-2002   INDIA                          High                  1       89     373
0-24 months   CMC-V-BCS-2002   INDIA                          Low                   0       38     373
0-24 months   CMC-V-BCS-2002   INDIA                          Low                   1       68     373
0-24 months   CMC-V-BCS-2002   INDIA                          Medium                0       38     373
0-24 months   CMC-V-BCS-2002   INDIA                          Medium                1       71     373
0-24 months   COHORTS          GUATEMALA                      High                  0      218    1322
0-24 months   COHORTS          GUATEMALA                      High                  1       62    1322
0-24 months   COHORTS          GUATEMALA                      Low                   0      465    1322
0-24 months   COHORTS          GUATEMALA                      Low                   1      162    1322
0-24 months   COHORTS          GUATEMALA                      Medium                0      300    1322
0-24 months   COHORTS          GUATEMALA                      Medium                1      115    1322
0-24 months   COHORTS          INDIA                          High                  0      596    5844
0-24 months   COHORTS          INDIA                          High                  1      197    5844
0-24 months   COHORTS          INDIA                          Low                   0     1175    5844
0-24 months   COHORTS          INDIA                          Low                   1      776    5844
0-24 months   COHORTS          INDIA                          Medium                0     2127    5844
0-24 months   COHORTS          INDIA                          Medium                1      973    5844
0-24 months   COHORTS          PHILIPPINES                    High                  0      727    3045
0-24 months   COHORTS          PHILIPPINES                    High                  1      441    3045
0-24 months   COHORTS          PHILIPPINES                    Low                   0      496    3045
0-24 months   COHORTS          PHILIPPINES                    Low                   1      405    3045
0-24 months   COHORTS          PHILIPPINES                    Medium                0      593    3045
0-24 months   COHORTS          PHILIPPINES                    Medium                1      383    3045
0-24 months   EE               PAKISTAN                       High                  0        7     377
0-24 months   EE               PAKISTAN                       High                  1        8     377
0-24 months   EE               PAKISTAN                       Low                   0      129     377
0-24 months   EE               PAKISTAN                       Low                   1      200     377
0-24 months   EE               PAKISTAN                       Medium                0       18     377
0-24 months   EE               PAKISTAN                       Medium                1       15     377
0-24 months   GMS-Nepal        NEPAL                          High                  0       39     683
0-24 months   GMS-Nepal        NEPAL                          High                  1       45     683
0-24 months   GMS-Nepal        NEPAL                          Low                   0      194     683
0-24 months   GMS-Nepal        NEPAL                          Low                   1      286     683
0-24 months   GMS-Nepal        NEPAL                          Medium                0       47     683
0-24 months   GMS-Nepal        NEPAL                          Medium                1       72     683
0-24 months   Guatemala BSC    GUATEMALA                      High                  0      105     282
0-24 months   Guatemala BSC    GUATEMALA                      High                  1       13     282
0-24 months   Guatemala BSC    GUATEMALA                      Low                   0       65     282
0-24 months   Guatemala BSC    GUATEMALA                      Low                   1       11     282
0-24 months   Guatemala BSC    GUATEMALA                      Medium                0       82     282
0-24 months   Guatemala BSC    GUATEMALA                      Medium                1        6     282
0-24 months   IRC              INDIA                          High                  0       41     410
0-24 months   IRC              INDIA                          High                  1       83     410
0-24 months   IRC              INDIA                          Low                   0       50     410
0-24 months   IRC              INDIA                          Low                   1       97     410
0-24 months   IRC              INDIA                          Medium                0       50     410
0-24 months   IRC              INDIA                          Medium                1       89     410
0-24 months   JiVitA-3         BANGLADESH                     High                  0     6819   26922
0-24 months   JiVitA-3         BANGLADESH                     High                  1     2165   26922
0-24 months   JiVitA-3         BANGLADESH                     Low                   0     7049   26922
0-24 months   JiVitA-3         BANGLADESH                     Low                   1     2685   26922
0-24 months   JiVitA-3         BANGLADESH                     Medium                0     6107   26922
0-24 months   JiVitA-3         BANGLADESH                     Medium                1     2097   26922
0-24 months   JiVitA-4         BANGLADESH                     High                  0     1387    5420
0-24 months   JiVitA-4         BANGLADESH                     High                  1      514    5420
0-24 months   JiVitA-4         BANGLADESH                     Low                   0     1160    5420
0-24 months   JiVitA-4         BANGLADESH                     Low                   1      626    5420
0-24 months   JiVitA-4         BANGLADESH                     Medium                0     1190    5420
0-24 months   JiVitA-4         BANGLADESH                     Medium                1      543    5420
0-24 months   LCNI-5           MALAWI                         High                  0      287     814
0-24 months   LCNI-5           MALAWI                         High                  1       11     814
0-24 months   LCNI-5           MALAWI                         Low                   0      235     814
0-24 months   LCNI-5           MALAWI                         Low                   1       26     814
0-24 months   LCNI-5           MALAWI                         Medium                0      227     814
0-24 months   LCNI-5           MALAWI                         Medium                1       28     814
0-24 months   MAL-ED           BANGLADESH                     High                  0       59     213
0-24 months   MAL-ED           BANGLADESH                     High                  1       19     213
0-24 months   MAL-ED           BANGLADESH                     Low                   0       46     213
0-24 months   MAL-ED           BANGLADESH                     Low                   1       24     213
0-24 months   MAL-ED           BANGLADESH                     Medium                0       44     213
0-24 months   MAL-ED           BANGLADESH                     Medium                1       21     213
0-24 months   MAL-ED           BRAZIL                         High                  0       76     232
0-24 months   MAL-ED           BRAZIL                         High                  1        3     232
0-24 months   MAL-ED           BRAZIL                         Low                   0       55     232
0-24 months   MAL-ED           BRAZIL                         Low                   1        8     232
0-24 months   MAL-ED           BRAZIL                         Medium                0       81     232
0-24 months   MAL-ED           BRAZIL                         Medium                1        9     232
0-24 months   MAL-ED           INDIA                          High                  0       38     220
0-24 months   MAL-ED           INDIA                          High                  1       25     220
0-24 months   MAL-ED           INDIA                          Low                   0       34     220
0-24 months   MAL-ED           INDIA                          Low                   1       42     220
0-24 months   MAL-ED           INDIA                          Medium                0       44     220
0-24 months   MAL-ED           INDIA                          Medium                1       37     220
0-24 months   MAL-ED           NEPAL                          High                  0       39     225
0-24 months   MAL-ED           NEPAL                          High                  1       14     225
0-24 months   MAL-ED           NEPAL                          Low                   0       66     225
0-24 months   MAL-ED           NEPAL                          Low                   1       30     225
0-24 months   MAL-ED           NEPAL                          Medium                0       50     225
0-24 months   MAL-ED           NEPAL                          Medium                1       26     225
0-24 months   MAL-ED           PERU                           High                  0       87     301
0-24 months   MAL-ED           PERU                           High                  1        3     301
0-24 months   MAL-ED           PERU                           Low                   0       92     301
0-24 months   MAL-ED           PERU                           Low                   1       12     301
0-24 months   MAL-ED           PERU                           Medium                0       95     301
0-24 months   MAL-ED           PERU                           Medium                1       12     301
0-24 months   MAL-ED           SOUTH AFRICA                   High                  0       79     312
0-24 months   MAL-ED           SOUTH AFRICA                   High                  1       16     312
0-24 months   MAL-ED           SOUTH AFRICA                   Low                   0      116     312
0-24 months   MAL-ED           SOUTH AFRICA                   Low                   1       32     312
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                0       53     312
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                1       16     312
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  0        7     216
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  1        4     216
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   0       54     216
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   1       10     216
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                0      124     216
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                1       17     216
0-24 months   NIH-Birth        BANGLADESH                     High                  0      106     624
0-24 months   NIH-Birth        BANGLADESH                     High                  1       72     624
0-24 months   NIH-Birth        BANGLADESH                     Low                   0      106     624
0-24 months   NIH-Birth        BANGLADESH                     Low                   1      122     624
0-24 months   NIH-Birth        BANGLADESH                     Medium                0      114     624
0-24 months   NIH-Birth        BANGLADESH                     Medium                1      104     624
0-24 months   NIH-Crypto       BANGLADESH                     High                  0      167     758
0-24 months   NIH-Crypto       BANGLADESH                     High                  1       87     758
0-24 months   NIH-Crypto       BANGLADESH                     Low                   0      164     758
0-24 months   NIH-Crypto       BANGLADESH                     Low                   1       78     758
0-24 months   NIH-Crypto       BANGLADESH                     Medium                0      177     758
0-24 months   NIH-Crypto       BANGLADESH                     Medium                1       85     758
0-24 months   PROBIT           BELARUS                        High                  0     2156   16898
0-24 months   PROBIT           BELARUS                        High                  1      685   16898
0-24 months   PROBIT           BELARUS                        Low                   0     4539   16898
0-24 months   PROBIT           BELARUS                        Low                   1     1561   16898
0-24 months   PROBIT           BELARUS                        Medium                0     5887   16898
0-24 months   PROBIT           BELARUS                        Medium                1     2070   16898
0-24 months   PROVIDE          BANGLADESH                     High                  0      166     700
0-24 months   PROVIDE          BANGLADESH                     High                  1       69     700
0-24 months   PROVIDE          BANGLADESH                     Low                   0      131     700
0-24 months   PROVIDE          BANGLADESH                     Low                   1       83     700
0-24 months   PROVIDE          BANGLADESH                     Medium                0      157     700
0-24 months   PROVIDE          BANGLADESH                     Medium                1       94     700
0-24 months   SAS-CompFeed     INDIA                          High                  0      209    1513
0-24 months   SAS-CompFeed     INDIA                          High                  1      113    1513
0-24 months   SAS-CompFeed     INDIA                          Low                   0      360    1513
0-24 months   SAS-CompFeed     INDIA                          Low                   1      322    1513
0-24 months   SAS-CompFeed     INDIA                          Medium                0      316    1513
0-24 months   SAS-CompFeed     INDIA                          Medium                1      193    1513
0-24 months   SAS-FoodSuppl    INDIA                          High                  0       27     418
0-24 months   SAS-FoodSuppl    INDIA                          High                  1       14     418
0-24 months   SAS-FoodSuppl    INDIA                          Low                   0      172     418
0-24 months   SAS-FoodSuppl    INDIA                          Low                   1      160     418
0-24 months   SAS-FoodSuppl    INDIA                          Medium                0       22     418
0-24 months   SAS-FoodSuppl    INDIA                          Medium                1       23     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      474    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1      147    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       63    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1       19    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0     1284    2386
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      399    2386
0-24 months   ZVITAMBO         ZIMBABWE                       High                  0     5828   13926
0-24 months   ZVITAMBO         ZIMBABWE                       High                  1     1727   13926
0-24 months   ZVITAMBO         ZIMBABWE                       Low                   0     2223   13926
0-24 months   ZVITAMBO         ZIMBABWE                       Low                   1      703   13926
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                0     2580   13926
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                1      865   13926
0-6 months    CMC-V-BCS-2002   INDIA                          High                  0       78     368
0-6 months    CMC-V-BCS-2002   INDIA                          High                  1       79     368
0-6 months    CMC-V-BCS-2002   INDIA                          Low                   0       51     368
0-6 months    CMC-V-BCS-2002   INDIA                          Low                   1       53     368
0-6 months    CMC-V-BCS-2002   INDIA                          Medium                0       49     368
0-6 months    CMC-V-BCS-2002   INDIA                          Medium                1       58     368
0-6 months    COHORTS          GUATEMALA                      High                  0      179    1051
0-6 months    COHORTS          GUATEMALA                      High                  1       36    1051
0-6 months    COHORTS          GUATEMALA                      Low                   0      405    1051
0-6 months    COHORTS          GUATEMALA                      Low                   1      100    1051
0-6 months    COHORTS          GUATEMALA                      Medium                0      256    1051
0-6 months    COHORTS          GUATEMALA                      Medium                1       75    1051
0-6 months    COHORTS          INDIA                          High                  0      582    5626
0-6 months    COHORTS          INDIA                          High                  1      168    5626
0-6 months    COHORTS          INDIA                          Low                   0     1385    5626
0-6 months    COHORTS          INDIA                          Low                   1      508    5626
0-6 months    COHORTS          INDIA                          Medium                0     2246    5626
0-6 months    COHORTS          INDIA                          Medium                1      737    5626
0-6 months    COHORTS          PHILIPPINES                    High                  0      857    3044
0-6 months    COHORTS          PHILIPPINES                    High                  1      311    3044
0-6 months    COHORTS          PHILIPPINES                    Low                   0      700    3044
0-6 months    COHORTS          PHILIPPINES                    Low                   1      200    3044
0-6 months    COHORTS          PHILIPPINES                    Medium                0      770    3044
0-6 months    COHORTS          PHILIPPINES                    Medium                1      206    3044
0-6 months    EE               PAKISTAN                       High                  0       12     377
0-6 months    EE               PAKISTAN                       High                  1        3     377
0-6 months    EE               PAKISTAN                       Low                   0      216     377
0-6 months    EE               PAKISTAN                       Low                   1      113     377
0-6 months    EE               PAKISTAN                       Medium                0       25     377
0-6 months    EE               PAKISTAN                       Medium                1        8     377
0-6 months    GMS-Nepal        NEPAL                          High                  0       48     683
0-6 months    GMS-Nepal        NEPAL                          High                  1       36     683
0-6 months    GMS-Nepal        NEPAL                          Low                   0      308     683
0-6 months    GMS-Nepal        NEPAL                          Low                   1      172     683
0-6 months    GMS-Nepal        NEPAL                          Medium                0       70     683
0-6 months    GMS-Nepal        NEPAL                          Medium                1       49     683
0-6 months    Guatemala BSC    GUATEMALA                      High                  0      107     265
0-6 months    Guatemala BSC    GUATEMALA                      High                  1        5     265
0-6 months    Guatemala BSC    GUATEMALA                      Low                   0       73     265
0-6 months    Guatemala BSC    GUATEMALA                      Low                   1        1     265
0-6 months    Guatemala BSC    GUATEMALA                      Medium                0       76     265
0-6 months    Guatemala BSC    GUATEMALA                      Medium                1        3     265
0-6 months    IRC              INDIA                          High                  0       52     410
0-6 months    IRC              INDIA                          High                  1       72     410
0-6 months    IRC              INDIA                          Low                   0       69     410
0-6 months    IRC              INDIA                          Low                   1       78     410
0-6 months    IRC              INDIA                          Medium                0       66     410
0-6 months    IRC              INDIA                          Medium                1       73     410
0-6 months    JiVitA-3         BANGLADESH                     High                  0     7459   26825
0-6 months    JiVitA-3         BANGLADESH                     High                  1     1486   26825
0-6 months    JiVitA-3         BANGLADESH                     Low                   0     7835   26825
0-6 months    JiVitA-3         BANGLADESH                     Low                   1     1865   26825
0-6 months    JiVitA-3         BANGLADESH                     Medium                0     6804   26825
0-6 months    JiVitA-3         BANGLADESH                     Medium                1     1376   26825
0-6 months    JiVitA-4         BANGLADESH                     High                  0     1591    5077
0-6 months    JiVitA-4         BANGLADESH                     High                  1      191    5077
0-6 months    JiVitA-4         BANGLADESH                     Low                   0     1475    5077
0-6 months    JiVitA-4         BANGLADESH                     Low                   1      191    5077
0-6 months    JiVitA-4         BANGLADESH                     Medium                0     1463    5077
0-6 months    JiVitA-4         BANGLADESH                     Medium                1      166    5077
0-6 months    LCNI-5           MALAWI                         High                  0       87     267
0-6 months    LCNI-5           MALAWI                         High                  1        0     267
0-6 months    LCNI-5           MALAWI                         Low                   0       90     267
0-6 months    LCNI-5           MALAWI                         Low                   1        2     267
0-6 months    LCNI-5           MALAWI                         Medium                0       86     267
0-6 months    LCNI-5           MALAWI                         Medium                1        2     267
0-6 months    MAL-ED           BANGLADESH                     High                  0       64     213
0-6 months    MAL-ED           BANGLADESH                     High                  1       14     213
0-6 months    MAL-ED           BANGLADESH                     Low                   0       53     213
0-6 months    MAL-ED           BANGLADESH                     Low                   1       17     213
0-6 months    MAL-ED           BANGLADESH                     Medium                0       48     213
0-6 months    MAL-ED           BANGLADESH                     Medium                1       17     213
0-6 months    MAL-ED           BRAZIL                         High                  0       76     232
0-6 months    MAL-ED           BRAZIL                         High                  1        3     232
0-6 months    MAL-ED           BRAZIL                         Low                   0       58     232
0-6 months    MAL-ED           BRAZIL                         Low                   1        5     232
0-6 months    MAL-ED           BRAZIL                         Medium                0       83     232
0-6 months    MAL-ED           BRAZIL                         Medium                1        7     232
0-6 months    MAL-ED           INDIA                          High                  0       45     220
0-6 months    MAL-ED           INDIA                          High                  1       18     220
0-6 months    MAL-ED           INDIA                          Low                   0       47     220
0-6 months    MAL-ED           INDIA                          Low                   1       29     220
0-6 months    MAL-ED           INDIA                          Medium                0       58     220
0-6 months    MAL-ED           INDIA                          Medium                1       23     220
0-6 months    MAL-ED           NEPAL                          High                  0       41     225
0-6 months    MAL-ED           NEPAL                          High                  1       12     225
0-6 months    MAL-ED           NEPAL                          Low                   0       80     225
0-6 months    MAL-ED           NEPAL                          Low                   1       16     225
0-6 months    MAL-ED           NEPAL                          Medium                0       59     225
0-6 months    MAL-ED           NEPAL                          Medium                1       17     225
0-6 months    MAL-ED           PERU                           High                  0       88     301
0-6 months    MAL-ED           PERU                           High                  1        2     301
0-6 months    MAL-ED           PERU                           Low                   0      100     301
0-6 months    MAL-ED           PERU                           Low                   1        4     301
0-6 months    MAL-ED           PERU                           Medium                0      102     301
0-6 months    MAL-ED           PERU                           Medium                1        5     301
0-6 months    MAL-ED           SOUTH AFRICA                   High                  0       85     312
0-6 months    MAL-ED           SOUTH AFRICA                   High                  1       10     312
0-6 months    MAL-ED           SOUTH AFRICA                   Low                   0      133     312
0-6 months    MAL-ED           SOUTH AFRICA                   Low                   1       15     312
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                0       59     312
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                1       10     312
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  0       11     216
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  1        0     216
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   0       61     216
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   1        3     216
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                0      132     216
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                1        9     216
0-6 months    NIH-Birth        BANGLADESH                     High                  0      120     622
0-6 months    NIH-Birth        BANGLADESH                     High                  1       57     622
0-6 months    NIH-Birth        BANGLADESH                     Low                   0      141     622
0-6 months    NIH-Birth        BANGLADESH                     Low                   1       87     622
0-6 months    NIH-Birth        BANGLADESH                     Medium                0      139     622
0-6 months    NIH-Birth        BANGLADESH                     Medium                1       78     622
0-6 months    NIH-Crypto       BANGLADESH                     High                  0      184     758
0-6 months    NIH-Crypto       BANGLADESH                     High                  1       70     758
0-6 months    NIH-Crypto       BANGLADESH                     Low                   0      184     758
0-6 months    NIH-Crypto       BANGLADESH                     Low                   1       58     758
0-6 months    NIH-Crypto       BANGLADESH                     Medium                0      195     758
0-6 months    NIH-Crypto       BANGLADESH                     Medium                1       67     758
0-6 months    PROBIT           BELARUS                        High                  0     2164   16895
0-6 months    PROBIT           BELARUS                        High                  1      677   16895
0-6 months    PROBIT           BELARUS                        Low                   0     4573   16895
0-6 months    PROBIT           BELARUS                        Low                   1     1525   16895
0-6 months    PROBIT           BELARUS                        Medium                0     5934   16895
0-6 months    PROBIT           BELARUS                        Medium                1     2022   16895
0-6 months    PROVIDE          BANGLADESH                     High                  0      184     700
0-6 months    PROVIDE          BANGLADESH                     High                  1       51     700
0-6 months    PROVIDE          BANGLADESH                     Low                   0      157     700
0-6 months    PROVIDE          BANGLADESH                     Low                   1       57     700
0-6 months    PROVIDE          BANGLADESH                     Medium                0      178     700
0-6 months    PROVIDE          BANGLADESH                     Medium                1       73     700
0-6 months    SAS-CompFeed     INDIA                          High                  0      260    1505
0-6 months    SAS-CompFeed     INDIA                          High                  1       62    1505
0-6 months    SAS-CompFeed     INDIA                          Low                   0      505    1505
0-6 months    SAS-CompFeed     INDIA                          Low                   1      174    1505
0-6 months    SAS-CompFeed     INDIA                          Medium                0      409    1505
0-6 months    SAS-CompFeed     INDIA                          Medium                1       95    1505
0-6 months    SAS-FoodSuppl    INDIA                          High                  0       38     418
0-6 months    SAS-FoodSuppl    INDIA                          High                  1        3     418
0-6 months    SAS-FoodSuppl    INDIA                          Low                   0      264     418
0-6 months    SAS-FoodSuppl    INDIA                          Low                   1       68     418
0-6 months    SAS-FoodSuppl    INDIA                          Medium                0       38     418
0-6 months    SAS-FoodSuppl    INDIA                          Medium                1        7     418
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      530    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       91    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       74    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1        8    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0     1449    2386
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      234    2386
0-6 months    ZVITAMBO         ZIMBABWE                       High                  0     6132   13833
0-6 months    ZVITAMBO         ZIMBABWE                       High                  1     1375   13833
0-6 months    ZVITAMBO         ZIMBABWE                       Low                   0     2399   13833
0-6 months    ZVITAMBO         ZIMBABWE                       Low                   1      508   13833
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                0     2798   13833
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                1      621   13833
6-24 months   CMC-V-BCS-2002   INDIA                          High                  0      129     373
6-24 months   CMC-V-BCS-2002   INDIA                          High                  1       29     373
6-24 months   CMC-V-BCS-2002   INDIA                          Low                   0       70     373
6-24 months   CMC-V-BCS-2002   INDIA                          Low                   1       36     373
6-24 months   CMC-V-BCS-2002   INDIA                          Medium                0       75     373
6-24 months   CMC-V-BCS-2002   INDIA                          Medium                1       34     373
6-24 months   COHORTS          GUATEMALA                      High                  0      213    1198
6-24 months   COHORTS          GUATEMALA                      High                  1       29    1198
6-24 months   COHORTS          GUATEMALA                      Low                   0      495    1198
6-24 months   COHORTS          GUATEMALA                      Low                   1       74    1198
6-24 months   COHORTS          GUATEMALA                      Medium                0      337    1198
6-24 months   COHORTS          GUATEMALA                      Medium                1       50    1198
6-24 months   COHORTS          INDIA                          High                  0      713    5479
6-24 months   COHORTS          INDIA                          High                  1       37    5479
6-24 months   COHORTS          INDIA                          Low                   0     1447    5479
6-24 months   COHORTS          INDIA                          Low                   1      349    5479
6-24 months   COHORTS          INDIA                          Medium                0     2625    5479
6-24 months   COHORTS          INDIA                          Medium                1      308    5479
6-24 months   COHORTS          PHILIPPINES                    High                  0      852    2809
6-24 months   COHORTS          PHILIPPINES                    High                  1      202    2809
6-24 months   COHORTS          PHILIPPINES                    Low                   0      551    2809
6-24 months   COHORTS          PHILIPPINES                    Low                   1      296    2809
6-24 months   COHORTS          PHILIPPINES                    Medium                0      657    2809
6-24 months   COHORTS          PHILIPPINES                    Medium                1      251    2809
6-24 months   EE               PAKISTAN                       High                  0       10     371
6-24 months   EE               PAKISTAN                       High                  1        5     371
6-24 months   EE               PAKISTAN                       Low                   0      180     371
6-24 months   EE               PAKISTAN                       Low                   1      143     371
6-24 months   EE               PAKISTAN                       Medium                0       23     371
6-24 months   EE               PAKISTAN                       Medium                1       10     371
6-24 months   GMS-Nepal        NEPAL                          High                  0       45     587
6-24 months   GMS-Nepal        NEPAL                          High                  1       26     587
6-24 months   GMS-Nepal        NEPAL                          Low                   0      201     587
6-24 months   GMS-Nepal        NEPAL                          Low                   1      213     587
6-24 months   GMS-Nepal        NEPAL                          Medium                0       63     587
6-24 months   GMS-Nepal        NEPAL                          Medium                1       39     587
6-24 months   Guatemala BSC    GUATEMALA                      High                  0      101     266
6-24 months   Guatemala BSC    GUATEMALA                      High                  1       10     266
6-24 months   Guatemala BSC    GUATEMALA                      Low                   0       61     266
6-24 months   Guatemala BSC    GUATEMALA                      Low                   1       10     266
6-24 months   Guatemala BSC    GUATEMALA                      Medium                0       81     266
6-24 months   Guatemala BSC    GUATEMALA                      Medium                1        3     266
6-24 months   IRC              INDIA                          High                  0       86     410
6-24 months   IRC              INDIA                          High                  1       38     410
6-24 months   IRC              INDIA                          Low                   0      103     410
6-24 months   IRC              INDIA                          Low                   1       44     410
6-24 months   IRC              INDIA                          Medium                0       94     410
6-24 months   IRC              INDIA                          Medium                1       45     410
6-24 months   JiVitA-3         BANGLADESH                     High                  0     5215   17280
6-24 months   JiVitA-3         BANGLADESH                     High                  1      879   17280
6-24 months   JiVitA-3         BANGLADESH                     Low                   0     4739   17280
6-24 months   JiVitA-3         BANGLADESH                     Low                   1     1057   17280
6-24 months   JiVitA-3         BANGLADESH                     Medium                0     4494   17280
6-24 months   JiVitA-3         BANGLADESH                     Medium                1      896   17280
6-24 months   JiVitA-4         BANGLADESH                     High                  0     1517    5416
6-24 months   JiVitA-4         BANGLADESH                     High                  1      381    5416
6-24 months   JiVitA-4         BANGLADESH                     Low                   0     1273    5416
6-24 months   JiVitA-4         BANGLADESH                     Low                   1      513    5416
6-24 months   JiVitA-4         BANGLADESH                     Medium                0     1285    5416
6-24 months   JiVitA-4         BANGLADESH                     Medium                1      447    5416
6-24 months   LCNI-5           MALAWI                         High                  0      282     803
6-24 months   LCNI-5           MALAWI                         High                  1       11     803
6-24 months   LCNI-5           MALAWI                         Low                   0      235     803
6-24 months   LCNI-5           MALAWI                         Low                   1       24     803
6-24 months   LCNI-5           MALAWI                         Medium                0      224     803
6-24 months   LCNI-5           MALAWI                         Medium                1       27     803
6-24 months   MAL-ED           BANGLADESH                     High                  0       63     195
6-24 months   MAL-ED           BANGLADESH                     High                  1        8     195
6-24 months   MAL-ED           BANGLADESH                     Low                   0       54     195
6-24 months   MAL-ED           BANGLADESH                     Low                   1       11     195
6-24 months   MAL-ED           BANGLADESH                     Medium                0       51     195
6-24 months   MAL-ED           BANGLADESH                     Medium                1        8     195
6-24 months   MAL-ED           BRAZIL                         High                  0       71     206
6-24 months   MAL-ED           BRAZIL                         High                  1        0     206
6-24 months   MAL-ED           BRAZIL                         Low                   0       52     206
6-24 months   MAL-ED           BRAZIL                         Low                   1        3     206
6-24 months   MAL-ED           BRAZIL                         Medium                0       77     206
6-24 months   MAL-ED           BRAZIL                         Medium                1        3     206
6-24 months   MAL-ED           INDIA                          High                  0       48     207
6-24 months   MAL-ED           INDIA                          High                  1       10     207
6-24 months   MAL-ED           INDIA                          Low                   0       50     207
6-24 months   MAL-ED           INDIA                          Low                   1       22     207
6-24 months   MAL-ED           INDIA                          Medium                0       54     207
6-24 months   MAL-ED           INDIA                          Medium                1       23     207
6-24 months   MAL-ED           NEPAL                          High                  0       47     220
6-24 months   MAL-ED           NEPAL                          High                  1        5     220
6-24 months   MAL-ED           NEPAL                          Low                   0       77     220
6-24 months   MAL-ED           NEPAL                          Low                   1       16     220
6-24 months   MAL-ED           NEPAL                          Medium                0       62     220
6-24 months   MAL-ED           NEPAL                          Medium                1       13     220
6-24 months   MAL-ED           PERU                           High                  0       80     269
6-24 months   MAL-ED           PERU                           High                  1        1     269
6-24 months   MAL-ED           PERU                           Low                   0       83     269
6-24 months   MAL-ED           PERU                           Low                   1       10     269
6-24 months   MAL-ED           PERU                           Medium                0       88     269
6-24 months   MAL-ED           PERU                           Medium                1        7     269
6-24 months   MAL-ED           SOUTH AFRICA                   High                  0       66     259
6-24 months   MAL-ED           SOUTH AFRICA                   High                  1        8     259
6-24 months   MAL-ED           SOUTH AFRICA                   Low                   0      108     259
6-24 months   MAL-ED           SOUTH AFRICA                   Low                   1       21     259
6-24 months   MAL-ED           SOUTH AFRICA                   Medium                0       48     259
6-24 months   MAL-ED           SOUTH AFRICA                   Medium                1        8     259
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  0        5     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  1        4     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   0       54     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   1        8     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                0      120     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                1       11     202
6-24 months   NIH-Birth        BANGLADESH                     High                  0      126     542
6-24 months   NIH-Birth        BANGLADESH                     High                  1       31     542
6-24 months   NIH-Birth        BANGLADESH                     Low                   0      117     542
6-24 months   NIH-Birth        BANGLADESH                     Low                   1       80     542
6-24 months   NIH-Birth        BANGLADESH                     Medium                0      140     542
6-24 months   NIH-Birth        BANGLADESH                     Medium                1       48     542
6-24 months   NIH-Crypto       BANGLADESH                     High                  0      222     730
6-24 months   NIH-Crypto       BANGLADESH                     High                  1       24     730
6-24 months   NIH-Crypto       BANGLADESH                     Low                   0      199     730
6-24 months   NIH-Crypto       BANGLADESH                     Low                   1       35     730
6-24 months   NIH-Crypto       BANGLADESH                     Medium                0      213     730
6-24 months   NIH-Crypto       BANGLADESH                     Medium                1       37     730
6-24 months   PROBIT           BELARUS                        High                  0     2765   16598
6-24 months   PROBIT           BELARUS                        High                  1       10   16598
6-24 months   PROBIT           BELARUS                        Low                   0     5919   16598
6-24 months   PROBIT           BELARUS                        Low                   1       53   16598
6-24 months   PROBIT           BELARUS                        Medium                0     7775   16598
6-24 months   PROBIT           BELARUS                        Medium                1       76   16598
6-24 months   PROVIDE          BANGLADESH                     High                  0      181     615
6-24 months   PROVIDE          BANGLADESH                     High                  1       30     615
6-24 months   PROVIDE          BANGLADESH                     Low                   0      145     615
6-24 months   PROVIDE          BANGLADESH                     Low                   1       40     615
6-24 months   PROVIDE          BANGLADESH                     Medium                0      190     615
6-24 months   PROVIDE          BANGLADESH                     Medium                1       29     615
6-24 months   SAS-CompFeed     INDIA                          High                  0      233    1389
6-24 months   SAS-CompFeed     INDIA                          High                  1       69    1389
6-24 months   SAS-CompFeed     INDIA                          Low                   0      398    1389
6-24 months   SAS-CompFeed     INDIA                          Low                   1      216    1389
6-24 months   SAS-CompFeed     INDIA                          Medium                0      333    1389
6-24 months   SAS-CompFeed     INDIA                          Medium                1      140    1389
6-24 months   SAS-FoodSuppl    INDIA                          High                  0       27     402
6-24 months   SAS-FoodSuppl    INDIA                          High                  1       13     402
6-24 months   SAS-FoodSuppl    INDIA                          Low                   0      209     402
6-24 months   SAS-FoodSuppl    INDIA                          Low                   1      111     402
6-24 months   SAS-FoodSuppl    INDIA                          Medium                0       23     402
6-24 months   SAS-FoodSuppl    INDIA                          Medium                1       19     402
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      438    2011
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       76    2011
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       58    2011
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1       14    2011
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0     1192    2011
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      233    2011
6-24 months   ZVITAMBO         ZIMBABWE                       High                  0     5359   10800
6-24 months   ZVITAMBO         ZIMBABWE                       High                  1      466   10800
6-24 months   ZVITAMBO         ZIMBABWE                       Low                   0     2026   10800
6-24 months   ZVITAMBO         ZIMBABWE                       Low                   1      252   10800
6-24 months   ZVITAMBO         ZIMBABWE                       Medium                0     2379   10800
6-24 months   ZVITAMBO         ZIMBABWE                       Medium                1      318   10800


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

* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/7f81144a-3189-4dae-9d8c-c0b308c90f2b/180a41ed-0367-4e40-8434-fb4c17da92be/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7f81144a-3189-4dae-9d8c-c0b308c90f2b/180a41ed-0367-4e40-8434-fb4c17da92be/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7f81144a-3189-4dae-9d8c-c0b308c90f2b/180a41ed-0367-4e40-8434-fb4c17da92be/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7f81144a-3189-4dae-9d8c-c0b308c90f2b/180a41ed-0367-4e40-8434-fb4c17da92be/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                0.5535636    0.4753983   0.6317290
0-24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                0.6442377    0.5516777   0.7367976
0-24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                0.6654824    0.5760012   0.7549636
0-24 months   COHORTS          GUATEMALA                      High                 NA                0.2712625    0.2213037   0.3212213
0-24 months   COHORTS          GUATEMALA                      Low                  NA                0.2437361    0.2118547   0.2756176
0-24 months   COHORTS          GUATEMALA                      Medium               NA                0.2822616    0.2426765   0.3218468
0-24 months   COHORTS          INDIA                          High                 NA                0.2762977    0.2426731   0.3099223
0-24 months   COHORTS          INDIA                          Low                  NA                0.3602985    0.3375237   0.3830733
0-24 months   COHORTS          INDIA                          Medium               NA                0.3188008    0.3030099   0.3345917
0-24 months   COHORTS          PHILIPPINES                    High                 NA                0.3800158    0.3484949   0.4115367
0-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.4476623    0.4100842   0.4852403
0-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.3857456    0.3533732   0.4181181
0-24 months   EE               PAKISTAN                       High                 NA                0.5333333    0.2805305   0.7861362
0-24 months   EE               PAKISTAN                       Low                  NA                0.6079027    0.5550776   0.6607279
0-24 months   EE               PAKISTAN                       Medium               NA                0.4545455    0.2844331   0.6246578
0-24 months   GMS-Nepal        NEPAL                          High                 NA                0.5397608    0.4327801   0.6467415
0-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.5918502    0.5488229   0.6348775
0-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.6196326    0.5319530   0.7073123
0-24 months   Guatemala BSC    GUATEMALA                      High                 NA                0.1101695    0.0535765   0.1667625
0-24 months   Guatemala BSC    GUATEMALA                      Low                  NA                0.1447368    0.0654954   0.2239782
0-24 months   Guatemala BSC    GUATEMALA                      Medium               NA                0.0681818    0.0154251   0.1209386
0-24 months   IRC              INDIA                          High                 NA                0.6794008    0.5982182   0.7605834
0-24 months   IRC              INDIA                          Low                  NA                0.6573549    0.5863207   0.7283892
0-24 months   IRC              INDIA                          Medium               NA                0.6248319    0.5460127   0.7036511
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.2489217    0.2365360   0.2613074
0-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.2591372    0.2470793   0.2711951
0-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.2570110    0.2435311   0.2704910
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.2887857    0.2610555   0.3165158
0-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.3373313    0.3072924   0.3673702
0-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.3224561    0.2970507   0.3478614
0-24 months   LCNI-5           MALAWI                         High                 NA                0.0358036    0.0148604   0.0567468
0-24 months   LCNI-5           MALAWI                         Low                  NA                0.0997700    0.0634766   0.1360633
0-24 months   LCNI-5           MALAWI                         Medium               NA                0.1100401    0.0710895   0.1489907
0-24 months   MAL-ED           BANGLADESH                     High                 NA                0.2522091    0.1559849   0.3484332
0-24 months   MAL-ED           BANGLADESH                     Low                  NA                0.3476092    0.2351725   0.4600458
0-24 months   MAL-ED           BANGLADESH                     Medium               NA                0.3438399    0.2278485   0.4598314
0-24 months   MAL-ED           INDIA                          High                 NA                0.3905288    0.2674789   0.5135787
0-24 months   MAL-ED           INDIA                          Low                  NA                0.5445140    0.4310378   0.6579901
0-24 months   MAL-ED           INDIA                          Medium               NA                0.4467390    0.3358373   0.5576406
0-24 months   MAL-ED           NEPAL                          High                 NA                0.2600936    0.1398705   0.3803167
0-24 months   MAL-ED           NEPAL                          Low                  NA                0.3126938    0.2194397   0.4059478
0-24 months   MAL-ED           NEPAL                          Medium               NA                0.3386140    0.2305528   0.4466753
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.1590016    0.0824108   0.2355923
0-24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.2142615    0.1475186   0.2810044
0-24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.2220575    0.1206655   0.3234495
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                0.4266868    0.3620621   0.4913116
0-24 months   NIH-Birth        BANGLADESH                     Low                  NA                0.5130062    0.4535087   0.5725037
0-24 months   NIH-Birth        BANGLADESH                     Medium               NA                0.4615081    0.3979668   0.5250493
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.3346129    0.2820484   0.3871774
0-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.3472985    0.2963452   0.3982518
0-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.3094258    0.2591785   0.3596731
0-24 months   PROBIT           BELARUS                        High                 NA                0.2420255    0.1805446   0.3035064
0-24 months   PROBIT           BELARUS                        Low                  NA                0.2526853    0.1960909   0.3092797
0-24 months   PROBIT           BELARUS                        Medium               NA                0.2588957    0.1994941   0.3182973
0-24 months   PROVIDE          BANGLADESH                     High                 NA                0.3171046    0.2588580   0.3753513
0-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.3679573    0.3036237   0.4322910
0-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.3691215    0.3066311   0.4316119
0-24 months   SAS-CompFeed     INDIA                          High                 NA                0.3539437    0.2975892   0.4102982
0-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.4536313    0.3886084   0.5186542
0-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.3808293    0.3094341   0.4522245
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.3254551    0.1772428   0.4736673
0-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.4818885    0.4280694   0.5357077
0-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.4687346    0.3144321   0.6230370
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2379960    0.2043770   0.2716151
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2318825    0.1393683   0.3243966
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2368426    0.2165170   0.2571682
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.2270739    0.2179830   0.2361647
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.2474121    0.2328253   0.2619990
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.2530494    0.2404231   0.2656757
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                0.4948361    0.4166489   0.5730234
0-6 months    CMC-V-BCS-2002   INDIA                          Low                  NA                0.5052886    0.4083293   0.6022480
0-6 months    CMC-V-BCS-2002   INDIA                          Medium               NA                0.5500911    0.4522102   0.6479721
0-6 months    COHORTS          GUATEMALA                      High                 NA                0.1799229    0.1283761   0.2314697
0-6 months    COHORTS          GUATEMALA                      Low                  NA                0.1963771    0.1618234   0.2309309
0-6 months    COHORTS          GUATEMALA                      Medium               NA                0.2263524    0.1803811   0.2723237
0-6 months    COHORTS          INDIA                          High                 NA                0.2416050    0.2143596   0.2688503
0-6 months    COHORTS          INDIA                          Low                  NA                0.2510728    0.2336750   0.2684705
0-6 months    COHORTS          INDIA                          Medium               NA                0.2512187    0.2367245   0.2657130
0-6 months    COHORTS          PHILIPPINES                    High                 NA                0.2477058    0.2240449   0.2713667
0-6 months    COHORTS          PHILIPPINES                    Low                  NA                0.2308108    0.2027096   0.2589120
0-6 months    COHORTS          PHILIPPINES                    Medium               NA                0.2124493    0.1901139   0.2347848
0-6 months    GMS-Nepal        NEPAL                          High                 NA                0.4073619    0.3068508   0.5078730
0-6 months    GMS-Nepal        NEPAL                          Low                  NA                0.3616853    0.3212707   0.4020999
0-6 months    GMS-Nepal        NEPAL                          Medium               NA                0.3797441    0.3011591   0.4583291
0-6 months    IRC              INDIA                          High                 NA                0.5955937    0.5131129   0.6780744
0-6 months    IRC              INDIA                          Low                  NA                0.5181954    0.4427797   0.5936112
0-6 months    IRC              INDIA                          Medium               NA                0.5266271    0.4453209   0.6079334
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                0.1736651    0.1631041   0.1842261
0-6 months    JiVitA-3         BANGLADESH                     Low                  NA                0.1858496    0.1752699   0.1964293
0-6 months    JiVitA-3         BANGLADESH                     Medium               NA                0.1704123    0.1595769   0.1812477
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                0.1148727    0.0978711   0.1318744
0-6 months    JiVitA-4         BANGLADESH                     Low                  NA                0.0979582    0.0856202   0.1102961
0-6 months    JiVitA-4         BANGLADESH                     Medium               NA                0.1080119    0.0941134   0.1219103
0-6 months    MAL-ED           BANGLADESH                     High                 NA                0.1811814    0.0940995   0.2682633
0-6 months    MAL-ED           BANGLADESH                     Low                  NA                0.2424056    0.1397334   0.3450778
0-6 months    MAL-ED           BANGLADESH                     Medium               NA                0.2590204    0.1494074   0.3686334
0-6 months    MAL-ED           INDIA                          High                 NA                0.2847572    0.1707690   0.3987455
0-6 months    MAL-ED           INDIA                          Low                  NA                0.3811399    0.2705598   0.4917200
0-6 months    MAL-ED           INDIA                          Medium               NA                0.2812591    0.1814645   0.3810538
0-6 months    MAL-ED           NEPAL                          High                 NA                0.2216335    0.1077453   0.3355216
0-6 months    MAL-ED           NEPAL                          Low                  NA                0.1621654    0.0868919   0.2374390
0-6 months    MAL-ED           NEPAL                          Medium               NA                0.2102724    0.1148422   0.3057026
0-6 months    MAL-ED           SOUTH AFRICA                   High                 NA                0.0983478    0.0349297   0.1617660
0-6 months    MAL-ED           SOUTH AFRICA                   Low                  NA                0.0999426    0.0508405   0.1490448
0-6 months    MAL-ED           SOUTH AFRICA                   Medium               NA                0.1391862    0.0550792   0.2232932
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                0.3201389    0.2491919   0.3910858
0-6 months    NIH-Birth        BANGLADESH                     Low                  NA                0.3846808    0.3218987   0.4474628
0-6 months    NIH-Birth        BANGLADESH                     Medium               NA                0.3521318    0.2858986   0.4183651
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                0.2785678    0.2255234   0.3316122
0-6 months    NIH-Crypto       BANGLADESH                     Low                  NA                0.2493276    0.1960830   0.3025722
0-6 months    NIH-Crypto       BANGLADESH                     Medium               NA                0.2421328    0.1906322   0.2936335
0-6 months    PROBIT           BELARUS                        High                 NA                0.2380821    0.1780505   0.2981137
0-6 months    PROBIT           BELARUS                        Low                  NA                0.2473659    0.1901311   0.3046008
0-6 months    PROBIT           BELARUS                        Medium               NA                0.2533307    0.1940700   0.3125913
0-6 months    PROVIDE          BANGLADESH                     High                 NA                0.2408386    0.1863707   0.2953065
0-6 months    PROVIDE          BANGLADESH                     Low                  NA                0.2585438    0.1992314   0.3178561
0-6 months    PROVIDE          BANGLADESH                     Medium               NA                0.2881069    0.2289464   0.3472675
0-6 months    SAS-CompFeed     INDIA                          High                 NA                0.1990479    0.1669644   0.2311314
0-6 months    SAS-CompFeed     INDIA                          Low                  NA                0.2497153    0.1841166   0.3153141
0-6 months    SAS-CompFeed     INDIA                          Medium               NA                0.1921136    0.1460417   0.2381855
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1465378    0.1187176   0.1743580
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0975610    0.0333249   0.1617971
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1390374    0.1225043   0.1555706
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.1768744    0.1696479   0.1841010
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.1866303    0.1758374   0.1974231
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.1844753    0.1747943   0.1941563
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                0.1851466    0.1236399   0.2466533
6-24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                0.3303016    0.2398428   0.4207605
6-24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                0.3183490    0.2288302   0.4078677
6-24 months   COHORTS          GUATEMALA                      High                 NA                0.1072388    0.0701695   0.1443080
6-24 months   COHORTS          GUATEMALA                      Low                  NA                0.1260995    0.0985462   0.1536527
6-24 months   COHORTS          GUATEMALA                      Medium               NA                0.1314626    0.0970435   0.1658817
6-24 months   COHORTS          INDIA                          High                 NA                0.0616201    0.0423246   0.0809157
6-24 months   COHORTS          INDIA                          Low                  NA                0.1946387    0.1747996   0.2144778
6-24 months   COHORTS          INDIA                          Medium               NA                0.1043071    0.0928543   0.1157600
6-24 months   COHORTS          PHILIPPINES                    High                 NA                0.2180431    0.1851634   0.2509228
6-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.3310165    0.2926768   0.3693563
6-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.2686394    0.2348080   0.3024707
6-24 months   EE               PAKISTAN                       High                 NA                0.3333333    0.0944520   0.5722147
6-24 months   EE               PAKISTAN                       Low                  NA                0.4427245    0.3884826   0.4969663
6-24 months   EE               PAKISTAN                       Medium               NA                0.3030303    0.1460203   0.4600403
6-24 months   GMS-Nepal        NEPAL                          High                 NA                0.4103176    0.2874249   0.5332103
6-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.5046322    0.4556728   0.5535916
6-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.4127098    0.3028903   0.5225293
6-24 months   IRC              INDIA                          High                 NA                0.3101895    0.2290990   0.3912799
6-24 months   IRC              INDIA                          Low                  NA                0.3087704    0.2343554   0.3831855
6-24 months   IRC              INDIA                          Medium               NA                0.3274445    0.2489325   0.4059565
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.1555684    0.1411725   0.1699643
6-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.1531863    0.1395965   0.1667760
6-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.1647196    0.1511072   0.1783320
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.2190889    0.1930860   0.2450918
6-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.2798745    0.2491369   0.3106121
6-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.2632639    0.2377042   0.2888236
6-24 months   LCNI-5           MALAWI                         High                 NA                0.0361801    0.0150144   0.0573457
6-24 months   LCNI-5           MALAWI                         Low                  NA                0.0929885    0.0575540   0.1284231
6-24 months   LCNI-5           MALAWI                         Medium               NA                0.1080651    0.0692346   0.1468955
6-24 months   MAL-ED           BANGLADESH                     High                 NA                0.1126761    0.0389379   0.1864142
6-24 months   MAL-ED           BANGLADESH                     Low                  NA                0.1692308    0.0778431   0.2606185
6-24 months   MAL-ED           BANGLADESH                     Medium               NA                0.1355932    0.0480109   0.2231756
6-24 months   MAL-ED           INDIA                          High                 NA                0.1854045    0.0776795   0.2931294
6-24 months   MAL-ED           INDIA                          Low                  NA                0.2943445    0.1850069   0.4036822
6-24 months   MAL-ED           INDIA                          Medium               NA                0.2962452    0.1921609   0.4003295
6-24 months   MAL-ED           NEPAL                          High                 NA                0.0961538    0.0158445   0.1764632
6-24 months   MAL-ED           NEPAL                          Low                  NA                0.1720430    0.0951621   0.2489239
6-24 months   MAL-ED           NEPAL                          Medium               NA                0.1733333    0.0874690   0.2591977
6-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.1081081    0.0372226   0.1789936
6-24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.1627907    0.0989607   0.2266207
6-24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.1428571    0.0510299   0.2346844
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                0.2026862    0.1396418   0.2657307
6-24 months   NIH-Birth        BANGLADESH                     Low                  NA                0.4044509    0.3349125   0.4739894
6-24 months   NIH-Birth        BANGLADESH                     Medium               NA                0.2506238    0.1868214   0.3144261
6-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.1016363    0.0643918   0.1388808
6-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.1455887    0.0995613   0.1916160
6-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.1460460    0.1020225   0.1900695
6-24 months   PROBIT           BELARUS                        High                 NA                0.0036459   -0.0017719   0.0090637
6-24 months   PROBIT           BELARUS                        Low                  NA                0.0088754    0.0045823   0.0131685
6-24 months   PROBIT           BELARUS                        Medium               NA                0.0096452    0.0051231   0.0141673
6-24 months   PROVIDE          BANGLADESH                     High                 NA                0.1383899    0.0909062   0.1858735
6-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.2118674    0.1522793   0.2714555
6-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.1275792    0.0822847   0.1728737
6-24 months   SAS-CompFeed     INDIA                          High                 NA                0.2622473    0.1837616   0.3407330
6-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.3299244    0.2882644   0.3715844
6-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.2981119    0.2369556   0.3592683
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.3133646    0.1655141   0.4612151
6-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.3459042    0.2935874   0.3982210
6-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.4410065    0.2853069   0.5967061
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1479662    0.1171922   0.1787402
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1935915    0.1030645   0.2841184
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1633052    0.1440783   0.1825321
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.0850691    0.0767771   0.0933612
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.1049730    0.0904047   0.1195413
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.1169083    0.1034313   0.1303852


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6112601   0.5617242   0.6607959
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.2564297   0.2328823   0.2799770
0-24 months   COHORTS          INDIA                          NA                   NA                0.3329911   0.3209071   0.3450751
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   EE               PAKISTAN                       NA                   NA                0.5915119   0.5418269   0.6411970
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.5900439   0.5531320   0.6269559
0-24 months   Guatemala BSC    GUATEMALA                      NA                   NA                0.1063830   0.0703329   0.1424331
0-24 months   IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2580418   0.2515722   0.2645113
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.3105166   0.2961054   0.3249278
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.0798526   0.0612199   0.0984853
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.3004695   0.2387555   0.3621835
0-24 months   MAL-ED           INDIA                          NA                   NA                0.4727273   0.4066048   0.5388497
0-24 months   MAL-ED           NEPAL                          NA                   NA                0.3111111   0.2504855   0.3717368
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2051282   0.1602507   0.2500058
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.3298153   0.2963239   0.3633067
0-24 months   PROBIT           BELARUS                        NA                   NA                0.2554148   0.1971257   0.3137039
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.4150694   0.3581204   0.4720184
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2367980   0.2197367   0.2538593
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2366078   0.2295489   0.2436667
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.5163043   0.4651769   0.5674318
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.2007612   0.1765324   0.2249900
0-6 months    COHORTS          INDIA                          NA                   NA                0.2511554   0.2398221   0.2624886
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.3762811   0.3399226   0.4126397
0-6 months    IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1762162   0.1705869   0.1818456
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.1079378   0.0980978   0.1177778
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.2253521   0.1691098   0.2815944
0-6 months    MAL-ED           INDIA                          NA                   NA                0.3181818   0.2564942   0.3798694
0-6 months    MAL-ED           NEPAL                          NA                   NA                0.2000000   0.1476178   0.2523822
0-6 months    MAL-ED           SOUTH AFRICA                   NA                   NA                0.1121795   0.0771053   0.1472536
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2572559   0.2261171   0.2883948
0-6 months    PROBIT           BELARUS                        NA                   NA                0.2500148   0.1915461   0.3084835
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2199336   0.1753445   0.2645227
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1395641   0.1256566   0.1534717
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1810164   0.1745999   0.1874330
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1277129   0.1088047   0.1466210
6-24 months   COHORTS          INDIA                          NA                   NA                0.1266655   0.1178579   0.1354730
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   EE               PAKISTAN                       NA                   NA                0.4258760   0.3754921   0.4762599
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4735945   0.4331684   0.5140207
6-24 months   IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1638889   0.1577625   0.1700152
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.2475997   0.2340658   0.2611337
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.0772105   0.0587369   0.0956840
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1384615   0.0898601   0.1870630
6-24 months   MAL-ED           INDIA                          NA                   NA                0.2657005   0.2053824   0.3260185
6-24 months   MAL-ED           NEPAL                          NA                   NA                0.1545455   0.1066715   0.2024194
6-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.1428571   0.1001583   0.1855560
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.2933579   0.2549918   0.3317241
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0083745   0.0044130   0.0123360
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1606166   0.1445647   0.1766685
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0959259   0.0903717   0.1014802


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          Low                  High              1.1638006   0.9513645   1.4236729
0-24 months   CMC-V-BCS-2002   INDIA                          Medium               High              1.2021787   0.9891104   1.4611450
0-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      Low                  High              0.8985250   0.7261572   1.1118079
0-24 months   COHORTS          GUATEMALA                      Medium               High              1.0405479   0.8357421   1.2955432
0-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          Low                  High              1.3040228   1.1410122   1.4903219
0-24 months   COHORTS          INDIA                          Medium               High              1.1538307   1.0164497   1.3097799
0-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    Low                  High              1.1780096   1.0499898   1.3216382
0-24 months   COHORTS          PHILIPPINES                    Medium               High              1.0150779   0.9059863   1.1373054
0-24 months   EE               PAKISTAN                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   EE               PAKISTAN                       Low                  High              1.1398176   0.7039580   1.8455421
0-24 months   EE               PAKISTAN                       Medium               High              0.8522727   0.4658985   1.5590708
0-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          Low                  High              1.0965045   0.8906453   1.3499449
0-24 months   GMS-Nepal        NEPAL                          Medium               High              1.1479763   0.9022572   1.4606142
0-24 months   Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   Guatemala BSC    GUATEMALA                      Low                  High              1.3137652   0.6201163   2.7833150
0-24 months   Guatemala BSC    GUATEMALA                      Medium               High              0.6188811   0.2444853   1.5666127
0-24 months   IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          Low                  High              0.9675510   0.8274539   1.1313681
0-24 months   IRC              INDIA                          Medium               High              0.9196808   0.7750874   1.0912482
0-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.0410392   0.9778505   1.1083111
0-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.0324976   0.9633627   1.1065939
0-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.1681027   1.0275943   1.3278236
0-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.1165931   0.9866253   1.2636814
0-24 months   LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
0-24 months   LCNI-5           MALAWI                         Low                  High              2.7865925   1.4002380   5.5455554
0-24 months   LCNI-5           MALAWI                         Medium               High              3.0734382   1.5520131   6.0863034
0-24 months   MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     Low                  High              1.3782580   0.8351320   2.2746046
0-24 months   MAL-ED           BANGLADESH                     Medium               High              1.3633132   0.8178385   2.2726037
0-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          Low                  High              1.3942991   0.9549934   2.0356892
0-24 months   MAL-ED           INDIA                          Medium               High              1.1439333   0.7656081   1.7092079
0-24 months   MAL-ED           NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           NEPAL                          Low                  High              1.2022354   0.6935699   2.0839571
0-24 months   MAL-ED           NEPAL                          Medium               High              1.3018929   0.7423021   2.2833360
0-24 months   MAL-ED           SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           SOUTH AFRICA                   Low                  High              1.3475434   0.7585584   2.3938475
0-24 months   MAL-ED           SOUTH AFRICA                   Medium               High              1.3965743   0.7192350   2.7117976
0-24 months   NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     Low                  High              1.2023014   1.0038113   1.4400403
0-24 months   NIH-Birth        BANGLADESH                     Medium               High              1.0816084   0.8908367   1.3132337
0-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     Low                  High              1.0379114   0.8503944   1.2667771
0-24 months   NIH-Crypto       BANGLADESH                     Medium               High              0.9247278   0.7488145   1.1419670
0-24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        Low                  High              1.0440440   0.9742800   1.1188035
0-24 months   PROBIT           BELARUS                        Medium               High              1.0697042   0.9911221   1.1545166
0-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     Low                  High              1.1603657   0.9029051   1.4912403
0-24 months   PROVIDE          BANGLADESH                     Medium               High              1.1640368   0.9074367   1.4931970
0-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          Low                  High              1.2816482   1.0706610   1.5342131
0-24 months   SAS-CompFeed     INDIA                          Medium               High              1.0759602   0.9146595   1.2657063
0-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   SAS-FoodSuppl    INDIA                          Low                  High              1.4806607   0.9259632   2.3676493
0-24 months   SAS-FoodSuppl    INDIA                          Medium               High              1.4402435   0.8214704   2.5251079
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.9743123   0.6380892   1.4876987
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.9951536   0.8435343   1.1740253
0-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.0895669   1.0214958   1.1621741
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.1143925   1.0531976   1.1791431
0-6 months    CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          Low                  High              1.0211231   0.7968737   1.3084789
0-6 months    CMC-V-BCS-2002   INDIA                          Medium               High              1.1116633   0.8771655   1.4088507
0-6 months    COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      Low                  High              1.0914514   0.7839657   1.5195385
0-6 months    COHORTS          GUATEMALA                      Medium               High              1.2580523   0.8893294   1.7796504
0-6 months    COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          Low                  High              1.0391870   0.9181416   1.1761906
0-6 months    COHORTS          INDIA                          Medium               High              1.0397912   0.9241943   1.1698468
0-6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    Low                  High              0.9317941   0.8080050   1.0745480
0-6 months    COHORTS          PHILIPPINES                    Medium               High              0.8576680   0.7566153   0.9722171
0-6 months    GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          Low                  High              0.8878722   0.6836778   1.1530533
0-6 months    GMS-Nepal        NEPAL                          Medium               High              0.9322031   0.6815421   1.2750537
0-6 months    IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          Low                  High              0.8700486   0.7172517   1.0553961
0-6 months    IRC              INDIA                          Medium               High              0.8842054   0.7218175   1.0831259
0-6 months    JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     Low                  High              1.0701611   0.9943354   1.1517691
0-6 months    JiVitA-3         BANGLADESH                     Medium               High              0.9812698   0.9060052   1.0627868
0-6 months    JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH                     Low                  High              0.8527537   0.7185179   1.0120679
0-6 months    JiVitA-4         BANGLADESH                     Medium               High              0.9402741   0.7855514   1.1254711
0-6 months    MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           BANGLADESH                     Low                  High              1.3379165   0.7038167   2.5433051
0-6 months    MAL-ED           BANGLADESH                     Medium               High              1.4296190   0.7521697   2.7172198
0-6 months    MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           INDIA                          Low                  High              1.3384733   0.8156572   2.1964015
0-6 months    MAL-ED           INDIA                          Medium               High              0.9877156   0.5781761   1.6873441
0-6 months    MAL-ED           NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           NEPAL                          Low                  High              0.7316830   0.3656120   1.4642848
0-6 months    MAL-ED           NEPAL                          Medium               High              0.9487394   0.4770804   1.8866974
0-6 months    MAL-ED           SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           SOUTH AFRICA                   Low                  High              1.0162160   0.4516531   2.2864784
0-6 months    MAL-ED           SOUTH AFRICA                   Medium               High              1.4152447   0.5844258   3.4271549
0-6 months    NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     Low                  High              1.2016060   0.9130512   1.5813538
0-6 months    NIH-Birth        BANGLADESH                     Medium               High              1.0999347   0.8229325   1.4701769
0-6 months    NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     Low                  High              0.8950337   0.6753349   1.1862045
0-6 months    NIH-Crypto       BANGLADESH                     Medium               High              0.8692061   0.6560848   1.1515573
0-6 months    PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        Low                  High              1.0389944   0.9762637   1.1057559
0-6 months    PROBIT           BELARUS                        Medium               High              1.0640476   0.9870416   1.1470614
0-6 months    PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     Low                  High              1.0735147   0.7790870   1.4792106
0-6 months    PROVIDE          BANGLADESH                     Medium               High              1.1962656   0.8813196   1.6237598
0-6 months    SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          Low                  High              1.2545487   1.0165269   1.5483039
0-6 months    SAS-CompFeed     INDIA                          Medium               High              0.9651625   0.8302344   1.1220190
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.6657733   0.3355278   1.3210652
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.9488159   0.7583912   1.1870544
0-6 months    ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  High              1.0551570   0.9973201   1.1163480
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               High              1.0429734   0.9915366   1.0970784
6-24 months   CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   CMC-V-BCS-2002   INDIA                          Low                  High              1.7840005   1.1595627   2.7447052
6-24 months   CMC-V-BCS-2002   INDIA                          Medium               High              1.7194427   1.1123433   2.6578873
6-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      Low                  High              1.1758761   0.7804495   1.7716514
6-24 months   COHORTS          GUATEMALA                      Medium               High              1.2258873   0.7945248   1.8914444
6-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          Low                  High              3.1586862   2.2727222   4.3900209
6-24 months   COHORTS          INDIA                          Medium               High              1.6927440   1.2147470   2.3588306
6-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    Low                  High              1.5181245   1.2558454   1.8351797
6-24 months   COHORTS          PHILIPPINES                    Medium               High              1.2320473   1.0128460   1.4986885
6-24 months   EE               PAKISTAN                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   EE               PAKISTAN                       Low                  High              1.3281734   0.6419550   2.7479255
6-24 months   EE               PAKISTAN                       Medium               High              0.9090909   0.3754460   2.2012389
6-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          Low                  High              1.2298575   0.8978492   1.6846364
6-24 months   GMS-Nepal        NEPAL                          Medium               High              1.0058302   0.6737544   1.5015774
6-24 months   IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          Low                  High              0.9954253   0.6967412   1.4221516
6-24 months   IRC              INDIA                          Medium               High              1.0556275   0.7403037   1.5052597
6-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     Low                  High              0.9846878   0.8644801   1.1216106
6-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.0588245   0.9330974   1.2014922
6-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.2774472   1.0887354   1.4988687
6-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.2016304   1.0293673   1.4027215
6-24 months   LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
6-24 months   LCNI-5           MALAWI                         Low                  High              2.5701580   1.2798085   5.1614848
6-24 months   LCNI-5           MALAWI                         Medium               High              2.9868660   1.5043879   5.9302316
6-24 months   MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           BANGLADESH                     Low                  High              1.5019231   0.6429304   3.5085805
6-24 months   MAL-ED           BANGLADESH                     Medium               High              1.2033898   0.4798121   3.0181545
6-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          Low                  High              1.5875807   0.7943299   3.1730050
6-24 months   MAL-ED           INDIA                          Medium               High              1.5978321   0.8110510   3.1478506
6-24 months   MAL-ED           NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           NEPAL                          Low                  High              1.7892473   0.6938814   4.6137656
6-24 months   MAL-ED           NEPAL                          Medium               High              1.8026667   0.6826281   4.7604359
6-24 months   MAL-ED           SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           SOUTH AFRICA                   Low                  High              1.5058140   0.7014183   3.2327009
6-24 months   MAL-ED           SOUTH AFRICA                   Medium               High              1.3214286   0.5275576   3.3099202
6-24 months   NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     Low                  High              1.9954532   1.3986465   2.8469192
6-24 months   NIH-Birth        BANGLADESH                     Medium               High              1.2365110   0.8272659   1.8482079
6-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   NIH-Crypto       BANGLADESH                     Low                  High              1.4324474   0.8827863   2.3243515
6-24 months   NIH-Crypto       BANGLADESH                     Medium               High              1.4369474   0.8951572   2.3066538
6-24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6-24 months   PROBIT           BELARUS                        Low                  High              2.4343415   0.7379298   8.0305993
6-24 months   PROBIT           BELARUS                        Medium               High              2.6454871   0.7052016   9.9242569
6-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     Low                  High              1.5309458   0.9829221   2.3845176
6-24 months   PROVIDE          BANGLADESH                     Medium               High              0.9218823   0.5621069   1.5119314
6-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          Low                  High              1.2580658   0.9095313   1.7401595
6-24 months   SAS-CompFeed     INDIA                          Medium               High              1.1367587   0.8034258   1.6083880
6-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   SAS-FoodSuppl    INDIA                          Low                  High              1.1038394   0.6725844   1.8116113
6-24 months   SAS-FoodSuppl    INDIA                          Medium               High              1.4073270   0.7807426   2.5367763
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.3083491   0.7842455   2.1827059
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1036654   0.8690287   1.4016537
6-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.2339725   1.0418747   1.4614888
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.3742736   1.1820538   1.5977512


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0576964   -0.0013563   0.1167492
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0148328   -0.0587419   0.0290762
0-24 months   COHORTS          INDIA                          High                 NA                 0.0566934    0.0245113   0.0888755
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0235967   -0.0033459   0.0505392
0-24 months   EE               PAKISTAN                       High                 NA                 0.0581786   -0.1893941   0.3057514
0-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0502831   -0.0495451   0.1501113
0-24 months   Guatemala BSC    GUATEMALA                      High                 NA                -0.0037865   -0.0464720   0.0388989
0-24 months   IRC              INDIA                          High                 NA                -0.0233033   -0.0896990   0.0430925
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0091201   -0.0018017   0.0200418
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0217309   -0.0030179   0.0464798
0-24 months   LCNI-5           MALAWI                         High                 NA                 0.0440490    0.0226799   0.0654181
0-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.0482604   -0.0316841   0.1282049
0-24 months   MAL-ED           INDIA                          High                 NA                 0.0821984   -0.0227648   0.1871617
0-24 months   MAL-ED           NEPAL                          High                 NA                 0.0510175   -0.0558006   0.1578355
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.0461266   -0.0201028   0.1123561
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0508773   -0.0023506   0.1041051
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0047976   -0.0442347   0.0346396
0-24 months   PROBIT           BELARUS                        High                 NA                 0.0133893    0.0012914   0.0254872
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0343239   -0.0142758   0.0829237
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0611257    0.0136332   0.1086182
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.1458368    0.0040941   0.2875794
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0011981   -0.0301302   0.0277341
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0095339    0.0034509   0.0156169
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                 0.0214682   -0.0378441   0.0807805
0-6 months    COHORTS          GUATEMALA                      High                 NA                 0.0208383   -0.0259718   0.0676483
0-6 months    COHORTS          INDIA                          High                 NA                 0.0095504   -0.0157271   0.0348278
0-6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0121605   -0.0303658   0.0060449
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0310808   -0.1231827   0.0610211
0-6 months    IRC              INDIA                          High                 NA                -0.0516912   -0.1192509   0.0158685
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0025511   -0.0064294   0.0115317
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.0069350   -0.0207520   0.0068820
0-6 months    MAL-ED           BANGLADESH                     High                 NA                 0.0441707   -0.0288172   0.1171586
0-6 months    MAL-ED           INDIA                          High                 NA                 0.0334246   -0.0641474   0.1309967
0-6 months    MAL-ED           NEPAL                          High                 NA                -0.0216335   -0.1200682   0.0768013
0-6 months    MAL-ED           SOUTH AFRICA                   High                 NA                 0.0138317   -0.0397166   0.0673799
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                 0.0367743   -0.0243856   0.0979343
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0213119   -0.0636916   0.0210679
0-6 months    PROBIT           BELARUS                        High                 NA                 0.0119327    0.0001017   0.0237637
0-6 months    PROVIDE          BANGLADESH                     High                 NA                 0.0177328   -0.0282492   0.0637149
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.0208856   -0.0077576   0.0495289
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0069737   -0.0307331   0.0167856
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0041420    0.0005227   0.0077613
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0802689    0.0286834   0.1318544
6-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0204741   -0.0131485   0.0540967
6-24 months   COHORTS          INDIA                          High                 NA                 0.0650453    0.0456078   0.0844828
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0485999    0.0186915   0.0785082
6-24 months   EE               PAKISTAN                       High                 NA                 0.0925427   -0.1419536   0.3270389
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0632769   -0.0536911   0.1802449
6-24 months   IRC              INDIA                          High                 NA                -0.0004334   -0.0684955   0.0676288
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0083205   -0.0051010   0.0217421
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0285108    0.0048786   0.0521430
6-24 months   LCNI-5           MALAWI                         High                 NA                 0.0410304    0.0197721   0.0622886
6-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.0257855   -0.0361817   0.0877527
6-24 months   MAL-ED           INDIA                          High                 NA                 0.0802960   -0.0167942   0.1773863
6-24 months   MAL-ED           NEPAL                          High                 NA                 0.0583916   -0.0170578   0.1338410
6-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.0347490   -0.0283117   0.0978098
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0906717    0.0341496   0.1471938
6-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0298706   -0.0026188   0.0623599
6-24 months   PROBIT           BELARUS                        High                 NA                 0.0047286    0.0011805   0.0082767
6-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0225857   -0.0170134   0.0621849
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0437282   -0.0265478   0.1140042
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0423568   -0.0983783   0.1830919
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0126504   -0.0142308   0.0395316
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0108568    0.0041260   0.0175876


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.0943893   -0.0081411   0.1864922
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0578437   -0.2437702   0.1002893
0-24 months   COHORTS          INDIA                          High                 NA                 0.1702550    0.0679903   0.2612988
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0584637   -0.0106601   0.1228598
0-24 months   EE               PAKISTAN                       High                 NA                 0.0983558   -0.4344899   0.4332743
0-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0852193   -0.1008275   0.2398229
0-24 months   Guatemala BSC    GUATEMALA                      High                 NA                -0.0355932   -0.5254587   0.2969634
0-24 months   IRC              INDIA                          High                 NA                -0.0355180   -0.1418315   0.0608970
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0353434   -0.0078835   0.0767163
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0699832   -0.0130516   0.1462120
0-24 months   LCNI-5           MALAWI                         High                 NA                 0.5516291    0.2378315   0.7362310
0-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.1606167   -0.1509369   0.3878341
0-24 months   MAL-ED           INDIA                          High                 NA                 0.1738813   -0.0820302   0.3692671
0-24 months   MAL-ED           NEPAL                          High                 NA                 0.1639848   -0.2604843   0.4455135
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.2248673   -0.1746183   0.4884886
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.1065349   -0.0120978   0.2112622
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0145462   -0.1414072   0.0982150
0-24 months   PROBIT           BELARUS                        High                 NA                 0.0524219    0.0002816   0.1018429
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0976697   -0.0514504   0.2256411
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.1472662    0.0329155   0.2480958
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.3094405   -0.0684856   0.5536932
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0050594   -0.1349768   0.1099868
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0402943    0.0142689   0.0656324
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                 0.0415806   -0.0805352   0.1498955
0-6 months    COHORTS          GUATEMALA                      High                 NA                 0.1037963   -0.1620766   0.3088398
0-6 months    COHORTS          INDIA                          High                 NA                 0.0380257   -0.0680053   0.1335300
0-6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0516268   -0.1318972   0.0229510
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0826000   -0.3569660   0.1362918
0-6 months    IRC              INDIA                          High                 NA                -0.0950377   -0.2270218   0.0227497
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0144773   -0.0378249   0.0641436
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.0642498   -0.2003941   0.0564535
0-6 months    MAL-ED           BANGLADESH                     High                 NA                 0.1960075   -0.2002682   0.4614504
0-6 months    MAL-ED           INDIA                          High                 NA                 0.1050488   -0.2608566   0.3647670
0-6 months    MAL-ED           NEPAL                          High                 NA                -0.1081674   -0.7267559   0.2888196
0-6 months    MAL-ED           SOUTH AFRICA                   High                 NA                 0.1232994   -0.5125190   0.4918385
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                 0.1030344   -0.0858415   0.2590564
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0828431   -0.2609150   0.0700808
0-6 months    PROBIT           BELARUS                        High                 NA                 0.0477281   -0.0025268   0.0954637
0-6 months    PROVIDE          BANGLADESH                     High                 NA                 0.0685800   -0.1269108   0.2301580
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.0949633   -0.0306635   0.2052775
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0499678   -0.2347294   0.1071465
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0228819    0.0027013   0.0426541
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                 0.3024274    0.0824401   0.4696722
6-24 months   COHORTS          GUATEMALA                      High                 NA                 0.1603136   -0.1474519   0.3855313
6-24 months   COHORTS          INDIA                          High                 NA                 0.5135205    0.3393484   0.6417744
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.1822657    0.0624651   0.2867579
6-24 months   EE               PAKISTAN                       High                 NA                 0.2172996   -0.5818690   0.6127240
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.1336099   -0.1521781   0.3485107
6-24 months   IRC              INDIA                          High                 NA                -0.0013990   -0.2471008   0.1958950
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0507694   -0.0346540   0.1291399
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.1151488    0.0148537   0.2052332
6-24 months   LCNI-5           MALAWI                         High                 NA                 0.5314095    0.2055348   0.7236166
6-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.1862285   -0.4042934   0.5284290
6-24 months   MAL-ED           INDIA                          High                 NA                 0.3022051   -0.1744517   0.5854084
6-24 months   MAL-ED           NEPAL                          High                 NA                 0.3778281   -0.3397954   0.7110768
6-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.2432432   -0.3480406   0.5751754
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.3090821    0.0897964   0.4755377
6-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.2271406   -0.0590564   0.4359964
6-24 months   PROBIT           BELARUS                        High                 NA                 0.5646419   -0.4027343   0.8648805
6-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.1403054   -0.1439110   0.3539053
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.1429141   -0.1191641   0.3436206
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.1190729   -0.3805617   0.4378864
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0787614   -0.1046263   0.2317035
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.1131790    0.0405328   0.1803247
