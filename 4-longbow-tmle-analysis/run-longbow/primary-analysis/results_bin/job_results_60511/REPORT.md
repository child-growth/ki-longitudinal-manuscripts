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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        meducyrs    pers_wast   n_cell       n
------------  ---------------  -----------------------------  ---------  ----------  -------  ------
0-24 months   CMC-V-BCS-2002   INDIA                          High                0      150     373
0-24 months   CMC-V-BCS-2002   INDIA                          High                1        8     373
0-24 months   CMC-V-BCS-2002   INDIA                          Low                 0       98     373
0-24 months   CMC-V-BCS-2002   INDIA                          Low                 1        8     373
0-24 months   CMC-V-BCS-2002   INDIA                          Medium              0      102     373
0-24 months   CMC-V-BCS-2002   INDIA                          Medium              1        7     373
0-24 months   COHORTS          GUATEMALA                      High                0      203    1047
0-24 months   COHORTS          GUATEMALA                      High                1        6    1047
0-24 months   COHORTS          GUATEMALA                      Low                 0      462    1047
0-24 months   COHORTS          GUATEMALA                      Low                 1       20    1047
0-24 months   COHORTS          GUATEMALA                      Medium              0      346    1047
0-24 months   COHORTS          GUATEMALA                      Medium              1       10    1047
0-24 months   COHORTS          INDIA                          High                0      579    4519
0-24 months   COHORTS          INDIA                          High                1       31    4519
0-24 months   COHORTS          INDIA                          Low                 0     1254    4519
0-24 months   COHORTS          INDIA                          Low                 1      218    4519
0-24 months   COHORTS          INDIA                          Medium              0     2248    4519
0-24 months   COHORTS          INDIA                          Medium              1      189    4519
0-24 months   COHORTS          PHILIPPINES                    High                0     1013    2811
0-24 months   COHORTS          PHILIPPINES                    High                1       42    2811
0-24 months   COHORTS          PHILIPPINES                    Low                 0      787    2811
0-24 months   COHORTS          PHILIPPINES                    Low                 1       61    2811
0-24 months   COHORTS          PHILIPPINES                    Medium              0      867    2811
0-24 months   COHORTS          PHILIPPINES                    Medium              1       41    2811
0-24 months   EE               PAKISTAN                       High                0       15     374
0-24 months   EE               PAKISTAN                       High                1        0     374
0-24 months   EE               PAKISTAN                       Low                 0      295     374
0-24 months   EE               PAKISTAN                       Low                 1       31     374
0-24 months   EE               PAKISTAN                       Medium              0       31     374
0-24 months   EE               PAKISTAN                       Medium              1        2     374
0-24 months   GMS-Nepal        NEPAL                          High                0       66     594
0-24 months   GMS-Nepal        NEPAL                          High                1        8     594
0-24 months   GMS-Nepal        NEPAL                          Low                 0      360     594
0-24 months   GMS-Nepal        NEPAL                          Low                 1       57     594
0-24 months   GMS-Nepal        NEPAL                          Medium              0       88     594
0-24 months   GMS-Nepal        NEPAL                          Medium              1       15     594
0-24 months   Guatemala BSC    GUATEMALA                      High                0      105     251
0-24 months   Guatemala BSC    GUATEMALA                      High                1        1     251
0-24 months   Guatemala BSC    GUATEMALA                      Low                 0       66     251
0-24 months   Guatemala BSC    GUATEMALA                      Low                 1        1     251
0-24 months   Guatemala BSC    GUATEMALA                      Medium              0       76     251
0-24 months   Guatemala BSC    GUATEMALA                      Medium              1        2     251
0-24 months   IRC              INDIA                          High                0      113     410
0-24 months   IRC              INDIA                          High                1       11     410
0-24 months   IRC              INDIA                          Low                 0      131     410
0-24 months   IRC              INDIA                          Low                 1       16     410
0-24 months   IRC              INDIA                          Medium              0      118     410
0-24 months   IRC              INDIA                          Medium              1       21     410
0-24 months   JiVitA-3         BANGLADESH                     High                0     5301   15788
0-24 months   JiVitA-3         BANGLADESH                     High                1      283   15788
0-24 months   JiVitA-3         BANGLADESH                     Low                 0     4926   15788
0-24 months   JiVitA-3         BANGLADESH                     Low                 1      365   15788
0-24 months   JiVitA-3         BANGLADESH                     Medium              0     4664   15788
0-24 months   JiVitA-3         BANGLADESH                     Medium              1      249   15788
0-24 months   JiVitA-4         BANGLADESH                     High                0     1745    5272
0-24 months   JiVitA-4         BANGLADESH                     High                1      105    5272
0-24 months   JiVitA-4         BANGLADESH                     Low                 0     1557    5272
0-24 months   JiVitA-4         BANGLADESH                     Low                 1      176    5272
0-24 months   JiVitA-4         BANGLADESH                     Medium              0     1544    5272
0-24 months   JiVitA-4         BANGLADESH                     Medium              1      145    5272
0-24 months   LCNI-5           MALAWI                         High                0      262     713
0-24 months   LCNI-5           MALAWI                         High                1        1     713
0-24 months   LCNI-5           MALAWI                         Low                 0      225     713
0-24 months   LCNI-5           MALAWI                         Low                 1        2     713
0-24 months   LCNI-5           MALAWI                         Medium              0      220     713
0-24 months   LCNI-5           MALAWI                         Medium              1        3     713
0-24 months   MAL-ED           BANGLADESH                     High                0       71     202
0-24 months   MAL-ED           BANGLADESH                     High                1        4     202
0-24 months   MAL-ED           BANGLADESH                     Low                 0       62     202
0-24 months   MAL-ED           BANGLADESH                     Low                 1        4     202
0-24 months   MAL-ED           BANGLADESH                     Medium              0       59     202
0-24 months   MAL-ED           BANGLADESH                     Medium              1        2     202
0-24 months   MAL-ED           BRAZIL                         High                0       74     217
0-24 months   MAL-ED           BRAZIL                         High                1        0     217
0-24 months   MAL-ED           BRAZIL                         Low                 0       59     217
0-24 months   MAL-ED           BRAZIL                         Low                 1        1     217
0-24 months   MAL-ED           BRAZIL                         Medium              0       82     217
0-24 months   MAL-ED           BRAZIL                         Medium              1        1     217
0-24 months   MAL-ED           INDIA                          High                0       56     210
0-24 months   MAL-ED           INDIA                          High                1        4     210
0-24 months   MAL-ED           INDIA                          Low                 0       63     210
0-24 months   MAL-ED           INDIA                          Low                 1       10     210
0-24 months   MAL-ED           INDIA                          Medium              0       72     210
0-24 months   MAL-ED           INDIA                          Medium              1        5     210
0-24 months   MAL-ED           NEPAL                          High                0       53     223
0-24 months   MAL-ED           NEPAL                          High                1        0     223
0-24 months   MAL-ED           NEPAL                          Low                 0       93     223
0-24 months   MAL-ED           NEPAL                          Low                 1        1     223
0-24 months   MAL-ED           NEPAL                          Medium              0       74     223
0-24 months   MAL-ED           NEPAL                          Medium              1        2     223
0-24 months   MAL-ED           PERU                           High                0       85     283
0-24 months   MAL-ED           PERU                           High                1        0     283
0-24 months   MAL-ED           PERU                           Low                 0       98     283
0-24 months   MAL-ED           PERU                           Low                 1        0     283
0-24 months   MAL-ED           PERU                           Medium              0       99     283
0-24 months   MAL-ED           PERU                           Medium              1        1     283
0-24 months   MAL-ED           SOUTH AFRICA                   High                0       79     275
0-24 months   MAL-ED           SOUTH AFRICA                   High                1        0     275
0-24 months   MAL-ED           SOUTH AFRICA                   Low                 0      133     275
0-24 months   MAL-ED           SOUTH AFRICA                   Low                 1        2     275
0-24 months   MAL-ED           SOUTH AFRICA                   Medium              0       61     275
0-24 months   MAL-ED           SOUTH AFRICA                   Medium              1        0     275
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                0        9     208
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                1        0     208
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                 0       63     208
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                 1        0     208
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium              0      136     208
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium              1        0     208
0-24 months   NIH-Birth        BANGLADESH                     High                0      144     534
0-24 months   NIH-Birth        BANGLADESH                     High                1       11     534
0-24 months   NIH-Birth        BANGLADESH                     Low                 0      174     534
0-24 months   NIH-Birth        BANGLADESH                     Low                 1       19     534
0-24 months   NIH-Birth        BANGLADESH                     Medium              0      169     534
0-24 months   NIH-Birth        BANGLADESH                     Medium              1       17     534
0-24 months   NIH-Crypto       BANGLADESH                     High                0      246     730
0-24 months   NIH-Crypto       BANGLADESH                     High                1        0     730
0-24 months   NIH-Crypto       BANGLADESH                     Low                 0      220     730
0-24 months   NIH-Crypto       BANGLADESH                     Low                 1       14     730
0-24 months   NIH-Crypto       BANGLADESH                     Medium              0      238     730
0-24 months   NIH-Crypto       BANGLADESH                     Medium              1       12     730
0-24 months   PROBIT           BELARUS                        High                0     2753   16583
0-24 months   PROBIT           BELARUS                        High                1       21   16583
0-24 months   PROBIT           BELARUS                        Low                 0     5922   16583
0-24 months   PROBIT           BELARUS                        Low                 1       46   16583
0-24 months   PROBIT           BELARUS                        Medium              0     7774   16583
0-24 months   PROBIT           BELARUS                        Medium              1       67   16583
0-24 months   PROVIDE          BANGLADESH                     High                0      218     641
0-24 months   PROVIDE          BANGLADESH                     High                1        2     641
0-24 months   PROVIDE          BANGLADESH                     Low                 0      187     641
0-24 months   PROVIDE          BANGLADESH                     Low                 1        9     641
0-24 months   PROVIDE          BANGLADESH                     Medium              0      221     641
0-24 months   PROVIDE          BANGLADESH                     Medium              1        4     641
0-24 months   SAS-CompFeed     INDIA                          High                0      289    1366
0-24 months   SAS-CompFeed     INDIA                          High                1       10    1366
0-24 months   SAS-CompFeed     INDIA                          Low                 0      526    1366
0-24 months   SAS-CompFeed     INDIA                          Low                 1       76    1366
0-24 months   SAS-CompFeed     INDIA                          Medium              0      437    1366
0-24 months   SAS-CompFeed     INDIA                          Medium              1       28    1366
0-24 months   SAS-FoodSuppl    INDIA                          High                0       36     375
0-24 months   SAS-FoodSuppl    INDIA                          High                1        2     375
0-24 months   SAS-FoodSuppl    INDIA                          Low                 0      242     375
0-24 months   SAS-FoodSuppl    INDIA                          Low                 1       55     375
0-24 months   SAS-FoodSuppl    INDIA                          Medium              0       32     375
0-24 months   SAS-FoodSuppl    INDIA                          Medium              1        8     375
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      535    2158
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1       18    2158
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0       75    2158
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1        1    2158
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0     1490    2158
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       39    2158
0-24 months   ZVITAMBO         ZIMBABWE                       High                0     5030    9513
0-24 months   ZVITAMBO         ZIMBABWE                       High                1       79    9513
0-24 months   ZVITAMBO         ZIMBABWE                       Low                 0     1953    9513
0-24 months   ZVITAMBO         ZIMBABWE                       Low                 1       48    9513
0-24 months   ZVITAMBO         ZIMBABWE                       Medium              0     2362    9513
0-24 months   ZVITAMBO         ZIMBABWE                       Medium              1       41    9513
0-6 months    CMC-V-BCS-2002   INDIA                          High                0      133     358
0-6 months    CMC-V-BCS-2002   INDIA                          High                1       23     358
0-6 months    CMC-V-BCS-2002   INDIA                          Low                 0       84     358
0-6 months    CMC-V-BCS-2002   INDIA                          Low                 1       13     358
0-6 months    CMC-V-BCS-2002   INDIA                          Medium              0       91     358
0-6 months    CMC-V-BCS-2002   INDIA                          Medium              1       14     358
0-6 months    COHORTS          PHILIPPINES                    High                0      301     853
0-6 months    COHORTS          PHILIPPINES                    High                1       15     853
0-6 months    COHORTS          PHILIPPINES                    Low                 0      243     853
0-6 months    COHORTS          PHILIPPINES                    Low                 1       19     853
0-6 months    COHORTS          PHILIPPINES                    Medium              0      257     853
0-6 months    COHORTS          PHILIPPINES                    Medium              1       18     853
0-6 months    EE               PAKISTAN                       High                0       15     368
0-6 months    EE               PAKISTAN                       High                1        0     368
0-6 months    EE               PAKISTAN                       Low                 0      296     368
0-6 months    EE               PAKISTAN                       Low                 1       24     368
0-6 months    EE               PAKISTAN                       Medium              0       32     368
0-6 months    EE               PAKISTAN                       Medium              1        1     368
0-6 months    GMS-Nepal        NEPAL                          High                0       63     564
0-6 months    GMS-Nepal        NEPAL                          High                1        6     564
0-6 months    GMS-Nepal        NEPAL                          Low                 0      353     564
0-6 months    GMS-Nepal        NEPAL                          Low                 1       44     564
0-6 months    GMS-Nepal        NEPAL                          Medium              0       86     564
0-6 months    GMS-Nepal        NEPAL                          Medium              1       12     564
0-6 months    IRC              INDIA                          High                0      104     402
0-6 months    IRC              INDIA                          High                1       18     402
0-6 months    IRC              INDIA                          Low                 0      119     402
0-6 months    IRC              INDIA                          Low                 1       24     402
0-6 months    IRC              INDIA                          Medium              0      115     402
0-6 months    IRC              INDIA                          Medium              1       22     402
0-6 months    JiVitA-3         BANGLADESH                     High                0       22      50
0-6 months    JiVitA-3         BANGLADESH                     High                1        1      50
0-6 months    JiVitA-3         BANGLADESH                     Low                 0       15      50
0-6 months    JiVitA-3         BANGLADESH                     Low                 1        1      50
0-6 months    JiVitA-3         BANGLADESH                     Medium              0       11      50
0-6 months    JiVitA-3         BANGLADESH                     Medium              1        0      50
0-6 months    MAL-ED           BANGLADESH                     High                0       75     202
0-6 months    MAL-ED           BANGLADESH                     High                1        0     202
0-6 months    MAL-ED           BANGLADESH                     Low                 0       61     202
0-6 months    MAL-ED           BANGLADESH                     Low                 1        5     202
0-6 months    MAL-ED           BANGLADESH                     Medium              0       61     202
0-6 months    MAL-ED           BANGLADESH                     Medium              1        0     202
0-6 months    MAL-ED           BRAZIL                         High                0       74     217
0-6 months    MAL-ED           BRAZIL                         High                1        0     217
0-6 months    MAL-ED           BRAZIL                         Low                 0       59     217
0-6 months    MAL-ED           BRAZIL                         Low                 1        1     217
0-6 months    MAL-ED           BRAZIL                         Medium              0       83     217
0-6 months    MAL-ED           BRAZIL                         Medium              1        0     217
0-6 months    MAL-ED           INDIA                          High                0       54     209
0-6 months    MAL-ED           INDIA                          High                1        5     209
0-6 months    MAL-ED           INDIA                          Low                 0       67     209
0-6 months    MAL-ED           INDIA                          Low                 1        6     209
0-6 months    MAL-ED           INDIA                          Medium              0       72     209
0-6 months    MAL-ED           INDIA                          Medium              1        5     209
0-6 months    MAL-ED           NEPAL                          High                0       52     223
0-6 months    MAL-ED           NEPAL                          High                1        1     223
0-6 months    MAL-ED           NEPAL                          Low                 0       92     223
0-6 months    MAL-ED           NEPAL                          Low                 1        2     223
0-6 months    MAL-ED           NEPAL                          Medium              0       72     223
0-6 months    MAL-ED           NEPAL                          Medium              1        4     223
0-6 months    MAL-ED           PERU                           High                0       85     283
0-6 months    MAL-ED           PERU                           High                1        0     283
0-6 months    MAL-ED           PERU                           Low                 0       98     283
0-6 months    MAL-ED           PERU                           Low                 1        0     283
0-6 months    MAL-ED           PERU                           Medium              0      100     283
0-6 months    MAL-ED           PERU                           Medium              1        0     283
0-6 months    MAL-ED           SOUTH AFRICA                   High                0       79     274
0-6 months    MAL-ED           SOUTH AFRICA                   High                1        0     274
0-6 months    MAL-ED           SOUTH AFRICA                   Low                 0      132     274
0-6 months    MAL-ED           SOUTH AFRICA                   Low                 1        2     274
0-6 months    MAL-ED           SOUTH AFRICA                   Medium              0       61     274
0-6 months    MAL-ED           SOUTH AFRICA                   Medium              1        0     274
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                0        9     208
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                1        0     208
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                 0       63     208
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                 1        0     208
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium              0      136     208
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium              1        0     208
0-6 months    NIH-Birth        BANGLADESH                     High                0       36     169
0-6 months    NIH-Birth        BANGLADESH                     High                1        5     169
0-6 months    NIH-Birth        BANGLADESH                     Low                 0       67     169
0-6 months    NIH-Birth        BANGLADESH                     Low                 1        2     169
0-6 months    NIH-Birth        BANGLADESH                     Medium              0       55     169
0-6 months    NIH-Birth        BANGLADESH                     Medium              1        4     169
0-6 months    NIH-Crypto       BANGLADESH                     High                0       57     250
0-6 months    NIH-Crypto       BANGLADESH                     High                1        0     250
0-6 months    NIH-Crypto       BANGLADESH                     Low                 0      105     250
0-6 months    NIH-Crypto       BANGLADESH                     Low                 1        2     250
0-6 months    NIH-Crypto       BANGLADESH                     Medium              0       83     250
0-6 months    NIH-Crypto       BANGLADESH                     Medium              1        3     250
0-6 months    PROBIT           BELARUS                        High                0     2041   13534
0-6 months    PROBIT           BELARUS                        High                1      167   13534
0-6 months    PROBIT           BELARUS                        Low                 0     4420   13534
0-6 months    PROBIT           BELARUS                        Low                 1      410   13534
0-6 months    PROBIT           BELARUS                        Medium              0     5976   13534
0-6 months    PROBIT           BELARUS                        Medium              1      520   13534
0-6 months    PROVIDE          BANGLADESH                     High                0      216     638
0-6 months    PROVIDE          BANGLADESH                     High                1        4     638
0-6 months    PROVIDE          BANGLADESH                     Low                 0      190     638
0-6 months    PROVIDE          BANGLADESH                     Low                 1        5     638
0-6 months    PROVIDE          BANGLADESH                     Medium              0      218     638
0-6 months    PROVIDE          BANGLADESH                     Medium              1        5     638
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      506    2054
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1       17    2054
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0       72    2054
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1        1    2054
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0     1424    2054
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       34    2054
0-6 months    ZVITAMBO         ZIMBABWE                       High                0      347     630
0-6 months    ZVITAMBO         ZIMBABWE                       High                1        9     630
0-6 months    ZVITAMBO         ZIMBABWE                       Low                 0      118     630
0-6 months    ZVITAMBO         ZIMBABWE                       Low                 1        1     630
0-6 months    ZVITAMBO         ZIMBABWE                       Medium              0      151     630
0-6 months    ZVITAMBO         ZIMBABWE                       Medium              1        4     630
6-24 months   CMC-V-BCS-2002   INDIA                          High                0      150     373
6-24 months   CMC-V-BCS-2002   INDIA                          High                1        8     373
6-24 months   CMC-V-BCS-2002   INDIA                          Low                 0       98     373
6-24 months   CMC-V-BCS-2002   INDIA                          Low                 1        8     373
6-24 months   CMC-V-BCS-2002   INDIA                          Medium              0      102     373
6-24 months   CMC-V-BCS-2002   INDIA                          Medium              1        7     373
6-24 months   COHORTS          GUATEMALA                      High                0      203    1047
6-24 months   COHORTS          GUATEMALA                      High                1        6    1047
6-24 months   COHORTS          GUATEMALA                      Low                 0      462    1047
6-24 months   COHORTS          GUATEMALA                      Low                 1       20    1047
6-24 months   COHORTS          GUATEMALA                      Medium              0      346    1047
6-24 months   COHORTS          GUATEMALA                      Medium              1       10    1047
6-24 months   COHORTS          INDIA                          High                0      579    4519
6-24 months   COHORTS          INDIA                          High                1       31    4519
6-24 months   COHORTS          INDIA                          Low                 0     1254    4519
6-24 months   COHORTS          INDIA                          Low                 1      218    4519
6-24 months   COHORTS          INDIA                          Medium              0     2248    4519
6-24 months   COHORTS          INDIA                          Medium              1      189    4519
6-24 months   COHORTS          PHILIPPINES                    High                0     1013    2811
6-24 months   COHORTS          PHILIPPINES                    High                1       42    2811
6-24 months   COHORTS          PHILIPPINES                    Low                 0      787    2811
6-24 months   COHORTS          PHILIPPINES                    Low                 1       61    2811
6-24 months   COHORTS          PHILIPPINES                    Medium              0      867    2811
6-24 months   COHORTS          PHILIPPINES                    Medium              1       41    2811
6-24 months   EE               PAKISTAN                       High                0       15     374
6-24 months   EE               PAKISTAN                       High                1        0     374
6-24 months   EE               PAKISTAN                       Low                 0      295     374
6-24 months   EE               PAKISTAN                       Low                 1       31     374
6-24 months   EE               PAKISTAN                       Medium              0       31     374
6-24 months   EE               PAKISTAN                       Medium              1        2     374
6-24 months   GMS-Nepal        NEPAL                          High                0       66     594
6-24 months   GMS-Nepal        NEPAL                          High                1        8     594
6-24 months   GMS-Nepal        NEPAL                          Low                 0      360     594
6-24 months   GMS-Nepal        NEPAL                          Low                 1       57     594
6-24 months   GMS-Nepal        NEPAL                          Medium              0       88     594
6-24 months   GMS-Nepal        NEPAL                          Medium              1       15     594
6-24 months   Guatemala BSC    GUATEMALA                      High                0      105     251
6-24 months   Guatemala BSC    GUATEMALA                      High                1        1     251
6-24 months   Guatemala BSC    GUATEMALA                      Low                 0       66     251
6-24 months   Guatemala BSC    GUATEMALA                      Low                 1        1     251
6-24 months   Guatemala BSC    GUATEMALA                      Medium              0       76     251
6-24 months   Guatemala BSC    GUATEMALA                      Medium              1        2     251
6-24 months   IRC              INDIA                          High                0      113     410
6-24 months   IRC              INDIA                          High                1       11     410
6-24 months   IRC              INDIA                          Low                 0      131     410
6-24 months   IRC              INDIA                          Low                 1       16     410
6-24 months   IRC              INDIA                          Medium              0      118     410
6-24 months   IRC              INDIA                          Medium              1       21     410
6-24 months   JiVitA-3         BANGLADESH                     High                0     5301   15788
6-24 months   JiVitA-3         BANGLADESH                     High                1      283   15788
6-24 months   JiVitA-3         BANGLADESH                     Low                 0     4926   15788
6-24 months   JiVitA-3         BANGLADESH                     Low                 1      365   15788
6-24 months   JiVitA-3         BANGLADESH                     Medium              0     4664   15788
6-24 months   JiVitA-3         BANGLADESH                     Medium              1      249   15788
6-24 months   JiVitA-4         BANGLADESH                     High                0     1745    5272
6-24 months   JiVitA-4         BANGLADESH                     High                1      105    5272
6-24 months   JiVitA-4         BANGLADESH                     Low                 0     1557    5272
6-24 months   JiVitA-4         BANGLADESH                     Low                 1      176    5272
6-24 months   JiVitA-4         BANGLADESH                     Medium              0     1544    5272
6-24 months   JiVitA-4         BANGLADESH                     Medium              1      145    5272
6-24 months   LCNI-5           MALAWI                         High                0      262     713
6-24 months   LCNI-5           MALAWI                         High                1        1     713
6-24 months   LCNI-5           MALAWI                         Low                 0      225     713
6-24 months   LCNI-5           MALAWI                         Low                 1        2     713
6-24 months   LCNI-5           MALAWI                         Medium              0      220     713
6-24 months   LCNI-5           MALAWI                         Medium              1        3     713
6-24 months   MAL-ED           BANGLADESH                     High                0       71     202
6-24 months   MAL-ED           BANGLADESH                     High                1        4     202
6-24 months   MAL-ED           BANGLADESH                     Low                 0       62     202
6-24 months   MAL-ED           BANGLADESH                     Low                 1        4     202
6-24 months   MAL-ED           BANGLADESH                     Medium              0       59     202
6-24 months   MAL-ED           BANGLADESH                     Medium              1        2     202
6-24 months   MAL-ED           BRAZIL                         High                0       74     217
6-24 months   MAL-ED           BRAZIL                         High                1        0     217
6-24 months   MAL-ED           BRAZIL                         Low                 0       59     217
6-24 months   MAL-ED           BRAZIL                         Low                 1        1     217
6-24 months   MAL-ED           BRAZIL                         Medium              0       82     217
6-24 months   MAL-ED           BRAZIL                         Medium              1        1     217
6-24 months   MAL-ED           INDIA                          High                0       56     210
6-24 months   MAL-ED           INDIA                          High                1        4     210
6-24 months   MAL-ED           INDIA                          Low                 0       63     210
6-24 months   MAL-ED           INDIA                          Low                 1       10     210
6-24 months   MAL-ED           INDIA                          Medium              0       72     210
6-24 months   MAL-ED           INDIA                          Medium              1        5     210
6-24 months   MAL-ED           NEPAL                          High                0       53     223
6-24 months   MAL-ED           NEPAL                          High                1        0     223
6-24 months   MAL-ED           NEPAL                          Low                 0       93     223
6-24 months   MAL-ED           NEPAL                          Low                 1        1     223
6-24 months   MAL-ED           NEPAL                          Medium              0       74     223
6-24 months   MAL-ED           NEPAL                          Medium              1        2     223
6-24 months   MAL-ED           PERU                           High                0       85     283
6-24 months   MAL-ED           PERU                           High                1        0     283
6-24 months   MAL-ED           PERU                           Low                 0       98     283
6-24 months   MAL-ED           PERU                           Low                 1        0     283
6-24 months   MAL-ED           PERU                           Medium              0       99     283
6-24 months   MAL-ED           PERU                           Medium              1        1     283
6-24 months   MAL-ED           SOUTH AFRICA                   High                0       79     275
6-24 months   MAL-ED           SOUTH AFRICA                   High                1        0     275
6-24 months   MAL-ED           SOUTH AFRICA                   Low                 0      133     275
6-24 months   MAL-ED           SOUTH AFRICA                   Low                 1        2     275
6-24 months   MAL-ED           SOUTH AFRICA                   Medium              0       61     275
6-24 months   MAL-ED           SOUTH AFRICA                   Medium              1        0     275
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                0        9     208
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                1        0     208
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                 0       63     208
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                 1        0     208
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium              0      136     208
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium              1        0     208
6-24 months   NIH-Birth        BANGLADESH                     High                0      144     534
6-24 months   NIH-Birth        BANGLADESH                     High                1       11     534
6-24 months   NIH-Birth        BANGLADESH                     Low                 0      174     534
6-24 months   NIH-Birth        BANGLADESH                     Low                 1       19     534
6-24 months   NIH-Birth        BANGLADESH                     Medium              0      169     534
6-24 months   NIH-Birth        BANGLADESH                     Medium              1       17     534
6-24 months   NIH-Crypto       BANGLADESH                     High                0      246     730
6-24 months   NIH-Crypto       BANGLADESH                     High                1        0     730
6-24 months   NIH-Crypto       BANGLADESH                     Low                 0      220     730
6-24 months   NIH-Crypto       BANGLADESH                     Low                 1       14     730
6-24 months   NIH-Crypto       BANGLADESH                     Medium              0      238     730
6-24 months   NIH-Crypto       BANGLADESH                     Medium              1       12     730
6-24 months   PROBIT           BELARUS                        High                0     2753   16583
6-24 months   PROBIT           BELARUS                        High                1       21   16583
6-24 months   PROBIT           BELARUS                        Low                 0     5922   16583
6-24 months   PROBIT           BELARUS                        Low                 1       46   16583
6-24 months   PROBIT           BELARUS                        Medium              0     7774   16583
6-24 months   PROBIT           BELARUS                        Medium              1       67   16583
6-24 months   PROVIDE          BANGLADESH                     High                0      218     641
6-24 months   PROVIDE          BANGLADESH                     High                1        2     641
6-24 months   PROVIDE          BANGLADESH                     Low                 0      187     641
6-24 months   PROVIDE          BANGLADESH                     Low                 1        9     641
6-24 months   PROVIDE          BANGLADESH                     Medium              0      221     641
6-24 months   PROVIDE          BANGLADESH                     Medium              1        4     641
6-24 months   SAS-CompFeed     INDIA                          High                0      289    1366
6-24 months   SAS-CompFeed     INDIA                          High                1       10    1366
6-24 months   SAS-CompFeed     INDIA                          Low                 0      526    1366
6-24 months   SAS-CompFeed     INDIA                          Low                 1       76    1366
6-24 months   SAS-CompFeed     INDIA                          Medium              0      437    1366
6-24 months   SAS-CompFeed     INDIA                          Medium              1       28    1366
6-24 months   SAS-FoodSuppl    INDIA                          High                0       36     375
6-24 months   SAS-FoodSuppl    INDIA                          High                1        2     375
6-24 months   SAS-FoodSuppl    INDIA                          Low                 0      242     375
6-24 months   SAS-FoodSuppl    INDIA                          Low                 1       55     375
6-24 months   SAS-FoodSuppl    INDIA                          Medium              0       32     375
6-24 months   SAS-FoodSuppl    INDIA                          Medium              1        8     375
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                0      535    2158
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                1       18    2158
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 0       75    2158
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                 1        1    2158
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              0     1490    2158
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium              1       39    2158
6-24 months   ZVITAMBO         ZIMBABWE                       High                0     5030    9513
6-24 months   ZVITAMBO         ZIMBABWE                       High                1       79    9513
6-24 months   ZVITAMBO         ZIMBABWE                       Low                 0     1953    9513
6-24 months   ZVITAMBO         ZIMBABWE                       Low                 1       48    9513
6-24 months   ZVITAMBO         ZIMBABWE                       Medium              0     2362    9513
6-24 months   ZVITAMBO         ZIMBABWE                       Medium              1       41    9513


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
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: IRC, country: INDIA
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
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
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/71b15c14-eeca-4ac8-a887-e054d9c26f83/9d7e3971-eb33-4547-a0ee-9da56249a4f1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/71b15c14-eeca-4ac8-a887-e054d9c26f83/9d7e3971-eb33-4547-a0ee-9da56249a4f1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/71b15c14-eeca-4ac8-a887-e054d9c26f83/9d7e3971-eb33-4547-a0ee-9da56249a4f1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/71b15c14-eeca-4ac8-a887-e054d9c26f83/9d7e3971-eb33-4547-a0ee-9da56249a4f1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA         High                 NA                0.0506329   0.0164006   0.0848652
0-24 months   CMC-V-BCS-2002   INDIA         Low                  NA                0.0754717   0.0251181   0.1258253
0-24 months   CMC-V-BCS-2002   INDIA         Medium               NA                0.0642202   0.0181372   0.1103031
0-24 months   COHORTS          GUATEMALA     High                 NA                0.0287081   0.0060586   0.0513577
0-24 months   COHORTS          GUATEMALA     Low                  NA                0.0414938   0.0236814   0.0593061
0-24 months   COHORTS          GUATEMALA     Medium               NA                0.0280899   0.0109180   0.0452618
0-24 months   COHORTS          INDIA         High                 NA                0.0519666   0.0344908   0.0694425
0-24 months   COHORTS          INDIA         Low                  NA                0.1439133   0.1259370   0.1618895
0-24 months   COHORTS          INDIA         Medium               NA                0.0775004   0.0668615   0.0881394
0-24 months   COHORTS          PHILIPPINES   High                 NA                0.0422684   0.0298156   0.0547211
0-24 months   COHORTS          PHILIPPINES   Low                  NA                0.0708192   0.0531760   0.0884624
0-24 months   COHORTS          PHILIPPINES   Medium               NA                0.0431586   0.0298069   0.0565103
0-24 months   GMS-Nepal        NEPAL         High                 NA                0.1081081   0.0372999   0.1789163
0-24 months   GMS-Nepal        NEPAL         Low                  NA                0.1366906   0.1036918   0.1696895
0-24 months   GMS-Nepal        NEPAL         Medium               NA                0.1456311   0.0774529   0.2138092
0-24 months   IRC              INDIA         High                 NA                0.0900762   0.0391359   0.1410166
0-24 months   IRC              INDIA         Low                  NA                0.1065079   0.0567231   0.1562927
0-24 months   IRC              INDIA         Medium               NA                0.1524562   0.0921757   0.2127367
0-24 months   JiVitA-3         BANGLADESH    High                 NA                0.0551490   0.0455654   0.0647325
0-24 months   JiVitA-3         BANGLADESH    Low                  NA                0.0652476   0.0537051   0.0767901
0-24 months   JiVitA-3         BANGLADESH    Medium               NA                0.0491459   0.0405143   0.0577776
0-24 months   JiVitA-4         BANGLADESH    High                 NA                0.0606582   0.0420729   0.0792435
0-24 months   JiVitA-4         BANGLADESH    Low                  NA                0.1004795   0.0811772   0.1197818
0-24 months   JiVitA-4         BANGLADESH    Medium               NA                0.0868445   0.0701103   0.1035787
0-24 months   NIH-Birth        BANGLADESH    High                 NA                0.0715472   0.0307048   0.1123896
0-24 months   NIH-Birth        BANGLADESH    Low                  NA                0.0987938   0.0563081   0.1412795
0-24 months   NIH-Birth        BANGLADESH    Medium               NA                0.0905021   0.0492227   0.1317816
0-24 months   PROBIT           BELARUS       High                 NA                0.0066975   0.0020058   0.0113891
0-24 months   PROBIT           BELARUS       Low                  NA                0.0083159   0.0035171   0.0131146
0-24 months   PROBIT           BELARUS       Medium               NA                0.0082735   0.0051481   0.0113989
0-24 months   SAS-CompFeed     INDIA         High                 NA                0.0375958   0.0215488   0.0536428
0-24 months   SAS-CompFeed     INDIA         Low                  NA                0.1256370   0.0819409   0.1693331
0-24 months   SAS-CompFeed     INDIA         Medium               NA                0.0588288   0.0304520   0.0872055
0-24 months   ZVITAMBO         ZIMBABWE      High                 NA                0.0155872   0.0119424   0.0192320
0-24 months   ZVITAMBO         ZIMBABWE      Low                  NA                0.0213670   0.0143157   0.0284182
0-24 months   ZVITAMBO         ZIMBABWE      Medium               NA                0.0165110   0.0110098   0.0220123
0-6 months    CMC-V-BCS-2002   INDIA         High                 NA                0.1460141   0.0893156   0.2027125
0-6 months    CMC-V-BCS-2002   INDIA         Low                  NA                0.1423837   0.0730998   0.2116676
0-6 months    CMC-V-BCS-2002   INDIA         Medium               NA                0.1288893   0.0620405   0.1957380
0-6 months    COHORTS          PHILIPPINES   High                 NA                0.0475220   0.0239422   0.0711018
0-6 months    COHORTS          PHILIPPINES   Low                  NA                0.0717465   0.0404368   0.1030561
0-6 months    COHORTS          PHILIPPINES   Medium               NA                0.0661865   0.0366054   0.0957676
0-6 months    GMS-Nepal        NEPAL         High                 NA                0.0869565   0.0204130   0.1535000
0-6 months    GMS-Nepal        NEPAL         Low                  NA                0.1108312   0.0799239   0.1417386
0-6 months    GMS-Nepal        NEPAL         Medium               NA                0.1224490   0.0574907   0.1874072
0-6 months    IRC              INDIA         High                 NA                0.1506041   0.0874126   0.2137957
0-6 months    IRC              INDIA         Low                  NA                0.1687437   0.1074093   0.2300780
0-6 months    IRC              INDIA         Medium               NA                0.1594660   0.0987938   0.2201382
0-6 months    MAL-ED           INDIA         High                 NA                0.0847458   0.0135108   0.1559808
0-6 months    MAL-ED           INDIA         Low                  NA                0.0821918   0.0190352   0.1453483
0-6 months    MAL-ED           INDIA         Medium               NA                0.0649351   0.0097648   0.1201053
0-6 months    PROBIT           BELARUS       High                 NA                0.0788349   0.0465896   0.1110801
0-6 months    PROBIT           BELARUS       Low                  NA                0.0832766   0.0566721   0.1098811
0-6 months    PROBIT           BELARUS       Medium               NA                0.0811769   0.0567004   0.1056534
6-24 months   CMC-V-BCS-2002   INDIA         High                 NA                0.0506329   0.0164006   0.0848652
6-24 months   CMC-V-BCS-2002   INDIA         Low                  NA                0.0754717   0.0251181   0.1258253
6-24 months   CMC-V-BCS-2002   INDIA         Medium               NA                0.0642202   0.0181372   0.1103031
6-24 months   COHORTS          GUATEMALA     High                 NA                0.0287081   0.0060586   0.0513577
6-24 months   COHORTS          GUATEMALA     Low                  NA                0.0414938   0.0236814   0.0593061
6-24 months   COHORTS          GUATEMALA     Medium               NA                0.0280899   0.0109180   0.0452618
6-24 months   COHORTS          INDIA         High                 NA                0.0522521   0.0346482   0.0698560
6-24 months   COHORTS          INDIA         Low                  NA                0.1453756   0.1273422   0.1634089
6-24 months   COHORTS          INDIA         Medium               NA                0.0777821   0.0670944   0.0884697
6-24 months   COHORTS          PHILIPPINES   High                 NA                0.0415389   0.0292836   0.0537942
6-24 months   COHORTS          PHILIPPINES   Low                  NA                0.0693706   0.0520879   0.0866533
6-24 months   COHORTS          PHILIPPINES   Medium               NA                0.0441459   0.0305280   0.0577637
6-24 months   GMS-Nepal        NEPAL         High                 NA                0.1081081   0.0372999   0.1789163
6-24 months   GMS-Nepal        NEPAL         Low                  NA                0.1366906   0.1036918   0.1696895
6-24 months   GMS-Nepal        NEPAL         Medium               NA                0.1456311   0.0774529   0.2138092
6-24 months   IRC              INDIA         High                 NA                0.0905955   0.0403385   0.1408525
6-24 months   IRC              INDIA         Low                  NA                0.1115158   0.0609826   0.1620491
6-24 months   IRC              INDIA         Medium               NA                0.1607416   0.1000005   0.2214828
6-24 months   JiVitA-3         BANGLADESH    High                 NA                0.0559578   0.0460423   0.0658732
6-24 months   JiVitA-3         BANGLADESH    Low                  NA                0.0664758   0.0554473   0.0775042
6-24 months   JiVitA-3         BANGLADESH    Medium               NA                0.0478283   0.0399313   0.0557252
6-24 months   JiVitA-4         BANGLADESH    High                 NA                0.0591642   0.0380617   0.0802668
6-24 months   JiVitA-4         BANGLADESH    Low                  NA                0.0968573   0.0789646   0.1147501
6-24 months   JiVitA-4         BANGLADESH    Medium               NA                0.0891600   0.0717010   0.1066191
6-24 months   NIH-Birth        BANGLADESH    High                 NA                0.0733062   0.0322200   0.1143923
6-24 months   NIH-Birth        BANGLADESH    Low                  NA                0.1000080   0.0575643   0.1424517
6-24 months   NIH-Birth        BANGLADESH    Medium               NA                0.0909317   0.0497429   0.1321206
6-24 months   PROBIT           BELARUS       High                 NA                0.0068823   0.0019832   0.0117814
6-24 months   PROBIT           BELARUS       Low                  NA                0.0084285   0.0035854   0.0132716
6-24 months   PROBIT           BELARUS       Medium               NA                0.0082587   0.0050297   0.0114877
6-24 months   SAS-CompFeed     INDIA         High                 NA                0.0375958   0.0215488   0.0536428
6-24 months   SAS-CompFeed     INDIA         Low                  NA                0.1256370   0.0819409   0.1693331
6-24 months   SAS-CompFeed     INDIA         Medium               NA                0.0588288   0.0304520   0.0872055
6-24 months   ZVITAMBO         ZIMBABWE      High                 NA                0.0153248   0.0117464   0.0189032
6-24 months   ZVITAMBO         ZIMBABWE      Low                  NA                0.0218534   0.0145789   0.0291278
6-24 months   ZVITAMBO         ZIMBABWE      Medium               NA                0.0168360   0.0111531   0.0225188


### Parameter: E(Y)


agecat        studyid          country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA         NA                   NA                0.0616622   0.0372186   0.0861058
0-24 months   COHORTS          GUATEMALA     NA                   NA                0.0343840   0.0233416   0.0454263
0-24 months   COHORTS          INDIA         NA                   NA                0.0969241   0.0882972   0.1055510
0-24 months   COHORTS          PHILIPPINES   NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   GMS-Nepal        NEPAL         NA                   NA                0.1346801   0.1072037   0.1621566
0-24 months   IRC              INDIA         NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   JiVitA-3         BANGLADESH    NA                   NA                0.0568153   0.0526983   0.0609323
0-24 months   JiVitA-4         BANGLADESH    NA                   NA                0.0808042   0.0721841   0.0894244
0-24 months   NIH-Birth        BANGLADESH    NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   PROBIT           BELARUS       NA                   NA                0.0080806   0.0045539   0.0116073
0-24 months   SAS-CompFeed     INDIA         NA                   NA                0.0834553   0.0601989   0.1067118
0-24 months   ZVITAMBO         ZIMBABWE      NA                   NA                0.0176600   0.0150131   0.0203070
0-6 months    CMC-V-BCS-2002   INDIA         NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    COHORTS          PHILIPPINES   NA                   NA                0.0609613   0.0448957   0.0770269
0-6 months    GMS-Nepal        NEPAL         NA                   NA                0.1099291   0.0840909   0.1357673
0-6 months    IRC              INDIA         NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    MAL-ED           INDIA         NA                   NA                0.0765550   0.0404216   0.1126884
0-6 months    PROBIT           BELARUS       NA                   NA                0.0810551   0.0555982   0.1065120
6-24 months   CMC-V-BCS-2002   INDIA         NA                   NA                0.0616622   0.0372186   0.0861058
6-24 months   COHORTS          GUATEMALA     NA                   NA                0.0343840   0.0233416   0.0454263
6-24 months   COHORTS          INDIA         NA                   NA                0.0969241   0.0882972   0.1055510
6-24 months   COHORTS          PHILIPPINES   NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   GMS-Nepal        NEPAL         NA                   NA                0.1346801   0.1072037   0.1621566
6-24 months   IRC              INDIA         NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   JiVitA-3         BANGLADESH    NA                   NA                0.0568153   0.0526983   0.0609323
6-24 months   JiVitA-4         BANGLADESH    NA                   NA                0.0808042   0.0721841   0.0894244
6-24 months   NIH-Birth        BANGLADESH    NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   PROBIT           BELARUS       NA                   NA                0.0080806   0.0045539   0.0116073
6-24 months   SAS-CompFeed     INDIA         NA                   NA                0.0834553   0.0601989   0.1067118
6-24 months   ZVITAMBO         ZIMBABWE      NA                   NA                0.0176600   0.0150131   0.0203070


### Parameter: RR


agecat        studyid          country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  ------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.000000
0-24 months   CMC-V-BCS-2002   INDIA         Low                  High              1.4905660   0.5765449   3.853624
0-24 months   CMC-V-BCS-2002   INDIA         Medium               High              1.2683486   0.4732218   3.399481
0-24 months   COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA     Low                  High              1.4453665   0.5887096   3.548582
0-24 months   COHORTS          GUATEMALA     Medium               High              0.9784644   0.3606476   2.654648
0-24 months   COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA         Low                  High              2.7693391   1.9351758   3.963071
0-24 months   COHORTS          INDIA         Medium               High              1.4913498   1.0375442   2.143643
0-24 months   COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES   Low                  High              1.6754659   1.1393775   2.463789
0-24 months   COHORTS          PHILIPPINES   Medium               High              1.0210616   0.6664046   1.564465
0-24 months   GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal        NEPAL         Low                  High              1.2643885   0.6291027   2.541204
0-24 months   GMS-Nepal        NEPAL         Medium               High              1.3470874   0.6022147   3.013285
0-24 months   IRC              INDIA         High                 High              1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA         Low                  High              1.1824198   0.5675313   2.463506
0-24 months   IRC              INDIA         Medium               High              1.6925242   0.8486959   3.375341
0-24 months   JiVitA-3         BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH    Low                  High              1.1831154   0.9252210   1.512895
0-24 months   JiVitA-3         BANGLADESH    Medium               High              0.8911487   0.7038401   1.128305
0-24 months   JiVitA-4         BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4         BANGLADESH    Low                  High              1.6564875   1.1508869   2.384205
0-24 months   JiVitA-4         BANGLADESH    Medium               High              1.4317039   0.9946558   2.060789
0-24 months   NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH    Low                  High              1.3808191   0.6753800   2.823095
0-24 months   NIH-Birth        BANGLADESH    Medium               High              1.2649289   0.6090212   2.627240
0-24 months   PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS       Low                  High              1.2416404   0.7422883   2.076916
0-24 months   PROBIT           BELARUS       Medium               High              1.2353166   0.6400826   2.384079
0-24 months   SAS-CompFeed     INDIA         High                 High              1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA         Low                  High              3.3417837   2.4756821   4.510885
0-24 months   SAS-CompFeed     INDIA         Medium               High              1.5647706   0.8438352   2.901641
0-24 months   ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE      Low                  High              1.3708027   0.9148131   2.054081
0-24 months   ZVITAMBO         ZIMBABWE      Medium               High              1.0592673   0.7050790   1.591378
0-6 months    CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.000000
0-6 months    CMC-V-BCS-2002   INDIA         Low                  High              0.9751371   0.5219616   1.821767
0-6 months    CMC-V-BCS-2002   INDIA         Medium               High              0.8827182   0.4611024   1.689845
0-6 months    COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES   Low                  High              1.5097527   0.7795241   2.924032
0-6 months    COHORTS          PHILIPPINES   Medium               High              1.3927543   0.7140563   2.716543
0-6 months    GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal        NEPAL         Low                  High              1.2745592   0.5644642   2.877953
0-6 months    GMS-Nepal        NEPAL         Medium               High              1.4081633   0.5549605   3.573090
0-6 months    IRC              INDIA         High                 High              1.0000000   1.0000000   1.000000
0-6 months    IRC              INDIA         Low                  High              1.1204450   0.6434170   1.951140
0-6 months    IRC              INDIA         Medium               High              1.0588420   0.6004917   1.867047
0-6 months    MAL-ED           INDIA         High                 High              1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           INDIA         Low                  High              0.9698630   0.3105336   3.029090
0-6 months    MAL-ED           INDIA         Medium               High              0.7662338   0.2319037   2.531715
0-6 months    PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS       Low                  High              1.0563419   0.8628453   1.293231
0-6 months    PROBIT           BELARUS       Medium               High              1.0297080   0.8260770   1.283535
6-24 months   CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.000000
6-24 months   CMC-V-BCS-2002   INDIA         Low                  High              1.4905660   0.5765449   3.853624
6-24 months   CMC-V-BCS-2002   INDIA         Medium               High              1.2683486   0.4732218   3.399481
6-24 months   COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.000000
6-24 months   COHORTS          GUATEMALA     Low                  High              1.4453665   0.5887096   3.548582
6-24 months   COHORTS          GUATEMALA     Medium               High              0.9784644   0.3606476   2.654648
6-24 months   COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.000000
6-24 months   COHORTS          INDIA         Low                  High              2.7821951   1.9435603   3.982696
6-24 months   COHORTS          INDIA         Medium               High              1.4885913   1.0349471   2.141080
6-24 months   COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES   Low                  High              1.6700161   1.1352696   2.456644
6-24 months   COHORTS          PHILIPPINES   Medium               High              1.0627599   0.6936882   1.628193
6-24 months   GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal        NEPAL         Low                  High              1.2643885   0.6291027   2.541204
6-24 months   GMS-Nepal        NEPAL         Medium               High              1.3470874   0.6022147   3.013285
6-24 months   IRC              INDIA         High                 High              1.0000000   1.0000000   1.000000
6-24 months   IRC              INDIA         Low                  High              1.2309204   0.6008835   2.521562
6-24 months   IRC              INDIA         Medium               High              1.7742786   0.9068468   3.471440
6-24 months   JiVitA-3         BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH    Low                  High              1.1879633   0.9345246   1.510133
6-24 months   JiVitA-3         BANGLADESH    Medium               High              0.8547209   0.6754270   1.081609
6-24 months   JiVitA-4         BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4         BANGLADESH    Low                  High              1.6370925   1.0922705   2.453670
6-24 months   JiVitA-4         BANGLADESH    Medium               High              1.5069921   0.9995057   2.272148
6-24 months   NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth        BANGLADESH    Low                  High              1.3642506   0.6748227   2.758028
6-24 months   NIH-Birth        BANGLADESH    Medium               High              1.2404378   0.6029803   2.551801
6-24 months   PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.000000
6-24 months   PROBIT           BELARUS       Low                  High              1.2246690   0.7245219   2.070074
6-24 months   PROBIT           BELARUS       Medium               High              1.1999925   0.6110382   2.356616
6-24 months   SAS-CompFeed     INDIA         High                 High              1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA         Low                  High              3.3417837   2.4756821   4.510885
6-24 months   SAS-CompFeed     INDIA         Medium               High              1.5647706   0.8438352   2.901641
6-24 months   ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE      Low                  High              1.4260133   0.9496188   2.141400
6-24 months   ZVITAMBO         ZIMBABWE      Medium               High              1.0986090   0.7287387   1.656206


### Parameter: PAR


agecat        studyid          country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA         High                 NA                 0.0110293   -0.0168377   0.0388962
0-24 months   COHORTS          GUATEMALA     High                 NA                 0.0056758   -0.0150637   0.0264153
0-24 months   COHORTS          INDIA         High                 NA                 0.0449575    0.0276807   0.0622342
0-24 months   COHORTS          PHILIPPINES   High                 NA                 0.0089590   -0.0016738   0.0195917
0-24 months   GMS-Nepal        NEPAL         High                 NA                 0.0265720   -0.0406554   0.0937994
0-24 months   IRC              INDIA         High                 NA                 0.0269969   -0.0180002   0.0719940
0-24 months   JiVitA-3         BANGLADESH    High                 NA                 0.0016663   -0.0069196   0.0102523
0-24 months   JiVitA-4         BANGLADESH    High                 NA                 0.0201461    0.0031758   0.0371164
0-24 months   NIH-Birth        BANGLADESH    High                 NA                 0.0164678   -0.0194407   0.0523762
0-24 months   PROBIT           BELARUS       High                 NA                 0.0013831   -0.0019527   0.0047189
0-24 months   SAS-CompFeed     INDIA         High                 NA                 0.0458596    0.0250560   0.0666631
0-24 months   ZVITAMBO         ZIMBABWE      High                 NA                 0.0020728   -0.0007612   0.0049068
0-6 months    CMC-V-BCS-2002   INDIA         High                 NA                -0.0063493   -0.0486493   0.0359508
0-6 months    COHORTS          PHILIPPINES   High                 NA                 0.0134393   -0.0066787   0.0335574
0-6 months    GMS-Nepal        NEPAL         High                 NA                 0.0229726   -0.0403693   0.0863145
0-6 months    IRC              INDIA         High                 NA                 0.0085998   -0.0449827   0.0621824
0-6 months    MAL-ED           INDIA         High                 NA                -0.0081907   -0.0674787   0.0510972
0-6 months    PROBIT           BELARUS       High                 NA                 0.0022202   -0.0114611   0.0159016
6-24 months   CMC-V-BCS-2002   INDIA         High                 NA                 0.0110293   -0.0168377   0.0388962
6-24 months   COHORTS          GUATEMALA     High                 NA                 0.0056758   -0.0150637   0.0264153
6-24 months   COHORTS          INDIA         High                 NA                 0.0446720    0.0272911   0.0620528
6-24 months   COHORTS          PHILIPPINES   High                 NA                 0.0096884   -0.0007928   0.0201697
6-24 months   GMS-Nepal        NEPAL         High                 NA                 0.0265720   -0.0406554   0.0937994
6-24 months   IRC              INDIA         High                 NA                 0.0264777   -0.0179322   0.0708876
6-24 months   JiVitA-3         BANGLADESH    High                 NA                 0.0008576   -0.0081707   0.0098858
6-24 months   JiVitA-4         BANGLADESH    High                 NA                 0.0216400    0.0021821   0.0410979
6-24 months   NIH-Birth        BANGLADESH    High                 NA                 0.0147088   -0.0214262   0.0508439
6-24 months   PROBIT           BELARUS       High                 NA                 0.0011983   -0.0023801   0.0047767
6-24 months   SAS-CompFeed     INDIA         High                 NA                 0.0458596    0.0250560   0.0666631
6-24 months   ZVITAMBO         ZIMBABWE      High                 NA                 0.0023353   -0.0004445   0.0051150


### Parameter: PAF


agecat        studyid          country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA         High                 NA                 0.1788663   -0.4151376   0.5235371
0-24 months   COHORTS          GUATEMALA     High                 NA                 0.1650718   -0.7149568   0.5935145
0-24 months   COHORTS          INDIA         High                 NA                 0.4638418    0.2588115   0.6121559
0-24 months   COHORTS          PHILIPPINES   High                 NA                 0.1748865   -0.0584594   0.3567895
0-24 months   GMS-Nepal        NEPAL         High                 NA                 0.1972973   -0.4926666   0.5683352
0-24 months   IRC              INDIA         High                 NA                 0.2305988   -0.2615575   0.5307560
0-24 months   JiVitA-3         BANGLADESH    High                 NA                 0.0293288   -0.1342490   0.1693160
0-24 months   JiVitA-4         BANGLADESH    High                 NA                 0.2493196    0.0067842   0.4326298
0-24 months   NIH-Birth        BANGLADESH    High                 NA                 0.1871018   -0.3382857   0.5062313
0-24 months   PROBIT           BELARUS       High                 NA                 0.1711607   -0.3668870   0.4974167
0-24 months   SAS-CompFeed     INDIA         High                 NA                 0.5495101    0.3421911   0.6914892
0-24 months   ZVITAMBO         ZIMBABWE      High                 NA                 0.1173742   -0.0573036   0.2631933
0-6 months    CMC-V-BCS-2002   INDIA         High                 NA                -0.0454607   -0.3963825   0.2172718
0-6 months    COHORTS          PHILIPPINES   High                 NA                 0.2204565   -0.1835262   0.4865445
0-6 months    GMS-Nepal        NEPAL         High                 NA                 0.2089762   -0.6353748   0.6173851
0-6 months    IRC              INDIA         High                 NA                 0.0540178   -0.3497885   0.3370203
0-6 months    MAL-ED           INDIA         High                 NA                -0.1069915   -1.2256042   0.4493944
0-6 months    PROBIT           BELARUS       High                 NA                 0.0273918   -0.1601745   0.1846341
6-24 months   CMC-V-BCS-2002   INDIA         High                 NA                 0.1788663   -0.4151376   0.5235371
6-24 months   COHORTS          GUATEMALA     High                 NA                 0.1650718   -0.7149568   0.5935145
6-24 months   COHORTS          INDIA         High                 NA                 0.4608965    0.2543642   0.6102218
6-24 months   COHORTS          PHILIPPINES   High                 NA                 0.1891262   -0.0405216   0.3680897
6-24 months   GMS-Nepal        NEPAL         High                 NA                 0.1972973   -0.4926666   0.5683352
6-24 months   IRC              INDIA         High                 NA                 0.2261636   -0.2563553   0.5233651
6-24 months   JiVitA-3         BANGLADESH    High                 NA                 0.0150937   -0.1573503   0.1618437
6-24 months   JiVitA-4         BANGLADESH    High                 NA                 0.2678078   -0.0187691   0.4737713
6-24 months   NIH-Birth        BANGLADESH    High                 NA                 0.1671172   -0.3592350   0.4896439
6-24 months   PROBIT           BELARUS       High                 NA                 0.1482907   -0.4351137   0.4945287
6-24 months   SAS-CompFeed     INDIA         High                 NA                 0.5495101    0.3421911   0.6914892
6-24 months   ZVITAMBO         ZIMBABWE      High                 NA                 0.1322339   -0.0387282   0.2750576
