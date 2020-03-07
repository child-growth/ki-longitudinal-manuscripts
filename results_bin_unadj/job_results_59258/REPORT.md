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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/e1e6786b-0a9b-4baf-901d-158ede354116/935724cf-a53b-43c3-8512-3e8f7141b200/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e1e6786b-0a9b-4baf-901d-158ede354116/935724cf-a53b-43c3-8512-3e8f7141b200/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e1e6786b-0a9b-4baf-901d-158ede354116/935724cf-a53b-43c3-8512-3e8f7141b200/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e1e6786b-0a9b-4baf-901d-158ede354116/935724cf-a53b-43c3-8512-3e8f7141b200/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   COHORTS          INDIA         High                 NA                0.0508197   0.0333887   0.0682506
0-24 months   COHORTS          INDIA         Low                  NA                0.1480978   0.1299505   0.1662451
0-24 months   COHORTS          INDIA         Medium               NA                0.0775544   0.0669339   0.0881748
0-24 months   COHORTS          PHILIPPINES   High                 NA                0.0398104   0.0280106   0.0516103
0-24 months   COHORTS          PHILIPPINES   Low                  NA                0.0719340   0.0545406   0.0893273
0-24 months   COHORTS          PHILIPPINES   Medium               NA                0.0451542   0.0316460   0.0586624
0-24 months   GMS-Nepal        NEPAL         High                 NA                0.1081081   0.0372999   0.1789163
0-24 months   GMS-Nepal        NEPAL         Low                  NA                0.1366906   0.1036918   0.1696895
0-24 months   GMS-Nepal        NEPAL         Medium               NA                0.1456311   0.0774529   0.2138092
0-24 months   IRC              INDIA         High                 NA                0.0887097   0.0386046   0.1388147
0-24 months   IRC              INDIA         Low                  NA                0.1088435   0.0584357   0.1592514
0-24 months   IRC              INDIA         Medium               NA                0.1510791   0.0914708   0.2106874
0-24 months   JiVitA-3         BANGLADESH    High                 NA                0.0506805   0.0442551   0.0571060
0-24 months   JiVitA-3         BANGLADESH    Low                  NA                0.0689851   0.0619612   0.0760089
0-24 months   JiVitA-3         BANGLADESH    Medium               NA                0.0506819   0.0439856   0.0573781
0-24 months   JiVitA-4         BANGLADESH    High                 NA                0.0567568   0.0430098   0.0705037
0-24 months   JiVitA-4         BANGLADESH    Low                  NA                0.1015580   0.0860700   0.1170460
0-24 months   JiVitA-4         BANGLADESH    Medium               NA                0.0858496   0.0706760   0.1010232
0-24 months   NIH-Birth        BANGLADESH    High                 NA                0.0709677   0.0305069   0.1114286
0-24 months   NIH-Birth        BANGLADESH    Low                  NA                0.0984456   0.0563758   0.1405154
0-24 months   NIH-Birth        BANGLADESH    Medium               NA                0.0913978   0.0499451   0.1328506
0-24 months   PROBIT           BELARUS       High                 NA                0.0075703   0.0028518   0.0122888
0-24 months   PROBIT           BELARUS       Low                  NA                0.0077078   0.0031093   0.0123063
0-24 months   PROBIT           BELARUS       Medium               NA                0.0085448   0.0051549   0.0119347
0-24 months   SAS-CompFeed     INDIA         High                 NA                0.0334448   0.0193394   0.0475503
0-24 months   SAS-CompFeed     INDIA         Low                  NA                0.1262458   0.0879874   0.1645043
0-24 months   SAS-CompFeed     INDIA         Medium               NA                0.0602151   0.0348628   0.0855673
0-24 months   ZVITAMBO         ZIMBABWE      High                 NA                0.0154629   0.0120794   0.0188464
0-24 months   ZVITAMBO         ZIMBABWE      Low                  NA                0.0239880   0.0172834   0.0306926
0-24 months   ZVITAMBO         ZIMBABWE      Medium               NA                0.0170620   0.0118839   0.0222401
0-6 months    CMC-V-BCS-2002   INDIA         High                 NA                0.1474359   0.0917227   0.2031491
0-6 months    CMC-V-BCS-2002   INDIA         Low                  NA                0.1340206   0.0661301   0.2019112
0-6 months    CMC-V-BCS-2002   INDIA         Medium               NA                0.1333333   0.0682220   0.1984446
0-6 months    COHORTS          PHILIPPINES   High                 NA                0.0474684   0.0240098   0.0709269
0-6 months    COHORTS          PHILIPPINES   Low                  NA                0.0725191   0.0410973   0.1039409
0-6 months    COHORTS          PHILIPPINES   Medium               NA                0.0654545   0.0362058   0.0947032
0-6 months    GMS-Nepal        NEPAL         High                 NA                0.0869565   0.0204130   0.1535000
0-6 months    GMS-Nepal        NEPAL         Low                  NA                0.1108312   0.0799239   0.1417386
0-6 months    GMS-Nepal        NEPAL         Medium               NA                0.1224490   0.0574907   0.1874072
0-6 months    IRC              INDIA         High                 NA                0.1475410   0.0845321   0.2105499
0-6 months    IRC              INDIA         Low                  NA                0.1678322   0.1065034   0.2291609
0-6 months    IRC              INDIA         Medium               NA                0.1605839   0.0990282   0.2221397
0-6 months    MAL-ED           INDIA         High                 NA                0.0847458   0.0135108   0.1559808
0-6 months    MAL-ED           INDIA         Low                  NA                0.0821918   0.0190352   0.1453483
0-6 months    MAL-ED           INDIA         Medium               NA                0.0649351   0.0097648   0.1201053
0-6 months    PROBIT           BELARUS       High                 NA                0.0756341   0.0450184   0.1062497
0-6 months    PROBIT           BELARUS       Low                  NA                0.0848861   0.0570015   0.1127708
0-6 months    PROBIT           BELARUS       Medium               NA                0.0800493   0.0552003   0.1048982
6-24 months   CMC-V-BCS-2002   INDIA         High                 NA                0.0506329   0.0164006   0.0848652
6-24 months   CMC-V-BCS-2002   INDIA         Low                  NA                0.0754717   0.0251181   0.1258253
6-24 months   CMC-V-BCS-2002   INDIA         Medium               NA                0.0642202   0.0181372   0.1103031
6-24 months   COHORTS          GUATEMALA     High                 NA                0.0287081   0.0060586   0.0513577
6-24 months   COHORTS          GUATEMALA     Low                  NA                0.0414938   0.0236814   0.0593061
6-24 months   COHORTS          GUATEMALA     Medium               NA                0.0280899   0.0109180   0.0452618
6-24 months   COHORTS          INDIA         High                 NA                0.0508197   0.0333887   0.0682506
6-24 months   COHORTS          INDIA         Low                  NA                0.1480978   0.1299505   0.1662451
6-24 months   COHORTS          INDIA         Medium               NA                0.0775544   0.0669339   0.0881748
6-24 months   COHORTS          PHILIPPINES   High                 NA                0.0398104   0.0280106   0.0516103
6-24 months   COHORTS          PHILIPPINES   Low                  NA                0.0719340   0.0545406   0.0893273
6-24 months   COHORTS          PHILIPPINES   Medium               NA                0.0451542   0.0316460   0.0586624
6-24 months   GMS-Nepal        NEPAL         High                 NA                0.1081081   0.0372999   0.1789163
6-24 months   GMS-Nepal        NEPAL         Low                  NA                0.1366906   0.1036918   0.1696895
6-24 months   GMS-Nepal        NEPAL         Medium               NA                0.1456311   0.0774529   0.2138092
6-24 months   IRC              INDIA         High                 NA                0.0887097   0.0386046   0.1388147
6-24 months   IRC              INDIA         Low                  NA                0.1088435   0.0584357   0.1592514
6-24 months   IRC              INDIA         Medium               NA                0.1510791   0.0914708   0.2106874
6-24 months   JiVitA-3         BANGLADESH    High                 NA                0.0506805   0.0442551   0.0571060
6-24 months   JiVitA-3         BANGLADESH    Low                  NA                0.0689851   0.0619612   0.0760089
6-24 months   JiVitA-3         BANGLADESH    Medium               NA                0.0506819   0.0439856   0.0573781
6-24 months   JiVitA-4         BANGLADESH    High                 NA                0.0567568   0.0430098   0.0705037
6-24 months   JiVitA-4         BANGLADESH    Low                  NA                0.1015580   0.0860700   0.1170460
6-24 months   JiVitA-4         BANGLADESH    Medium               NA                0.0858496   0.0706760   0.1010232
6-24 months   NIH-Birth        BANGLADESH    High                 NA                0.0709677   0.0305069   0.1114286
6-24 months   NIH-Birth        BANGLADESH    Low                  NA                0.0984456   0.0563758   0.1405154
6-24 months   NIH-Birth        BANGLADESH    Medium               NA                0.0913978   0.0499451   0.1328506
6-24 months   PROBIT           BELARUS       High                 NA                0.0075703   0.0028518   0.0122888
6-24 months   PROBIT           BELARUS       Low                  NA                0.0077078   0.0031093   0.0123063
6-24 months   PROBIT           BELARUS       Medium               NA                0.0085448   0.0051549   0.0119347
6-24 months   SAS-CompFeed     INDIA         High                 NA                0.0334448   0.0193394   0.0475503
6-24 months   SAS-CompFeed     INDIA         Low                  NA                0.1262458   0.0879874   0.1645043
6-24 months   SAS-CompFeed     INDIA         Medium               NA                0.0602151   0.0348628   0.0855673
6-24 months   ZVITAMBO         ZIMBABWE      High                 NA                0.0154629   0.0120794   0.0188464
6-24 months   ZVITAMBO         ZIMBABWE      Low                  NA                0.0239880   0.0172834   0.0306926
6-24 months   ZVITAMBO         ZIMBABWE      Medium               NA                0.0170620   0.0118839   0.0222401


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
0-24 months   COHORTS          INDIA         Low                  High              2.9141830   2.0245797   4.194679
0-24 months   COHORTS          INDIA         Medium               High              1.5260699   1.0548225   2.207849
0-24 months   COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES   Low                  High              1.8069126   1.2325721   2.648878
0-24 months   COHORTS          PHILIPPINES   Medium               High              1.1342301   0.7444023   1.728203
0-24 months   GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal        NEPAL         Low                  High              1.2643885   0.6291027   2.541204
0-24 months   GMS-Nepal        NEPAL         Medium               High              1.3470874   0.6022147   3.013285
0-24 months   IRC              INDIA         High                 High              1.0000000   1.0000000   1.000000
0-24 months   IRC              INDIA         Low                  High              1.2269635   0.5910402   2.547102
0-24 months   IRC              INDIA         Medium               High              1.7030739   0.8550937   3.391980
0-24 months   JiVitA-3         BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH    Low                  High              1.3611754   1.1611740   1.595625
0-24 months   JiVitA-3         BANGLADESH    Medium               High              1.0000266   0.8423906   1.187161
0-24 months   JiVitA-4         BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4         BANGLADESH    Low                  High              1.7893551   1.3472806   2.376485
0-24 months   JiVitA-4         BANGLADESH    Medium               High              1.5125885   1.1166992   2.048827
0-24 months   NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
0-24 months   NIH-Birth        BANGLADESH    Low                  High              1.3871879   0.6802941   2.828616
0-24 months   NIH-Birth        BANGLADESH    Medium               High              1.2878788   0.6215563   2.668514
0-24 months   PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS       Low                  High              1.0181603   0.6413291   1.616410
0-24 months   PROBIT           BELARUS       Medium               High              1.1287312   0.6485367   1.964475
0-24 months   SAS-CompFeed     INDIA         High                 High              1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA         Low                  High              3.7747508   2.7376990   5.204642
0-24 months   SAS-CompFeed     INDIA         Medium               High              1.8004301   1.0507403   3.085014
0-24 months   ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE      Low                  High              1.5513256   1.0877896   2.212387
0-24 months   ZVITAMBO         ZIMBABWE      Medium               High              1.1034150   0.7590141   1.604087
0-6 months    CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.000000
0-6 months    CMC-V-BCS-2002   INDIA         Low                  High              0.9090094   0.4831709   1.710157
0-6 months    CMC-V-BCS-2002   INDIA         Medium               High              0.9043478   0.4877230   1.676864
0-6 months    COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES   Low                  High              1.5277354   0.7917928   2.947710
0-6 months    COHORTS          PHILIPPINES   Medium               High              1.3789091   0.7082413   2.684665
0-6 months    GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal        NEPAL         Low                  High              1.2745592   0.5644642   2.877953
0-6 months    GMS-Nepal        NEPAL         Medium               High              1.4081633   0.5549605   3.573090
0-6 months    IRC              INDIA         High                 High              1.0000000   1.0000000   1.000000
0-6 months    IRC              INDIA         Low                  High              1.1375291   0.6484305   1.995545
0-6 months    IRC              INDIA         Medium               High              1.0884023   0.6131463   1.932034
0-6 months    MAL-ED           INDIA         High                 High              1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           INDIA         Low                  High              0.9698630   0.3105336   3.029090
0-6 months    MAL-ED           INDIA         Medium               High              0.7662338   0.2319037   2.531715
0-6 months    PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS       Low                  High              1.1223268   0.8776931   1.435146
0-6 months    PROBIT           BELARUS       Medium               High              1.0583759   0.8374199   1.337632
6-24 months   CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.000000
6-24 months   CMC-V-BCS-2002   INDIA         Low                  High              1.4905660   0.5765449   3.853624
6-24 months   CMC-V-BCS-2002   INDIA         Medium               High              1.2683486   0.4732218   3.399481
6-24 months   COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.000000
6-24 months   COHORTS          GUATEMALA     Low                  High              1.4453665   0.5887096   3.548582
6-24 months   COHORTS          GUATEMALA     Medium               High              0.9784644   0.3606476   2.654648
6-24 months   COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.000000
6-24 months   COHORTS          INDIA         Low                  High              2.9141830   2.0245797   4.194679
6-24 months   COHORTS          INDIA         Medium               High              1.5260699   1.0548225   2.207849
6-24 months   COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES   Low                  High              1.8069126   1.2325721   2.648878
6-24 months   COHORTS          PHILIPPINES   Medium               High              1.1342301   0.7444023   1.728203
6-24 months   GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal        NEPAL         Low                  High              1.2643885   0.6291027   2.541204
6-24 months   GMS-Nepal        NEPAL         Medium               High              1.3470874   0.6022147   3.013285
6-24 months   IRC              INDIA         High                 High              1.0000000   1.0000000   1.000000
6-24 months   IRC              INDIA         Low                  High              1.2269635   0.5910402   2.547102
6-24 months   IRC              INDIA         Medium               High              1.7030739   0.8550937   3.391980
6-24 months   JiVitA-3         BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH    Low                  High              1.3611754   1.1611740   1.595625
6-24 months   JiVitA-3         BANGLADESH    Medium               High              1.0000266   0.8423906   1.187161
6-24 months   JiVitA-4         BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4         BANGLADESH    Low                  High              1.7893551   1.3472806   2.376485
6-24 months   JiVitA-4         BANGLADESH    Medium               High              1.5125885   1.1166992   2.048827
6-24 months   NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
6-24 months   NIH-Birth        BANGLADESH    Low                  High              1.3871879   0.6802941   2.828616
6-24 months   NIH-Birth        BANGLADESH    Medium               High              1.2878788   0.6215563   2.668514
6-24 months   PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.000000
6-24 months   PROBIT           BELARUS       Low                  High              1.0181603   0.6413291   1.616410
6-24 months   PROBIT           BELARUS       Medium               High              1.1287312   0.6485367   1.964475
6-24 months   SAS-CompFeed     INDIA         High                 High              1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA         Low                  High              3.7747508   2.7376990   5.204642
6-24 months   SAS-CompFeed     INDIA         Medium               High              1.8004301   1.0507403   3.085014
6-24 months   ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE      Low                  High              1.5513256   1.0877896   2.212387
6-24 months   ZVITAMBO         ZIMBABWE      Medium               High              1.1034150   0.7590141   1.604087


### Parameter: PAR


agecat        studyid          country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA         High                 NA                 0.0110293   -0.0168377   0.0388962
0-24 months   COHORTS          GUATEMALA     High                 NA                 0.0056758   -0.0150637   0.0264153
0-24 months   COHORTS          INDIA         High                 NA                 0.0461044    0.0288930   0.0633159
0-24 months   COHORTS          PHILIPPINES   High                 NA                 0.0114169    0.0013588   0.0214750
0-24 months   GMS-Nepal        NEPAL         High                 NA                 0.0265720   -0.0406554   0.0937994
0-24 months   IRC              INDIA         High                 NA                 0.0283635   -0.0159402   0.0726672
0-24 months   JiVitA-3         BANGLADESH    High                 NA                 0.0061348    0.0011750   0.0110946
0-24 months   JiVitA-4         BANGLADESH    High                 NA                 0.0240475    0.0125927   0.0355023
0-24 months   NIH-Birth        BANGLADESH    High                 NA                 0.0170472   -0.0185228   0.0526173
0-24 months   PROBIT           BELARUS       High                 NA                 0.0005103   -0.0024718   0.0034923
0-24 months   SAS-CompFeed     INDIA         High                 NA                 0.0500105    0.0316609   0.0683602
0-24 months   ZVITAMBO         ZIMBABWE      High                 NA                 0.0021971   -0.0002843   0.0046786
0-6 months    CMC-V-BCS-2002   INDIA         High                 NA                -0.0077711   -0.0489024   0.0333602
0-6 months    COHORTS          PHILIPPINES   High                 NA                 0.0134930   -0.0065240   0.0335099
0-6 months    GMS-Nepal        NEPAL         High                 NA                 0.0229726   -0.0403693   0.0863145
0-6 months    IRC              INDIA         High                 NA                 0.0116630   -0.0416541   0.0649801
0-6 months    MAL-ED           INDIA         High                 NA                -0.0081907   -0.0674787   0.0510972
0-6 months    PROBIT           BELARUS       High                 NA                 0.0054211   -0.0083940   0.0192361
6-24 months   CMC-V-BCS-2002   INDIA         High                 NA                 0.0110293   -0.0168377   0.0388962
6-24 months   COHORTS          GUATEMALA     High                 NA                 0.0056758   -0.0150637   0.0264153
6-24 months   COHORTS          INDIA         High                 NA                 0.0461044    0.0288930   0.0633159
6-24 months   COHORTS          PHILIPPINES   High                 NA                 0.0114169    0.0013588   0.0214750
6-24 months   GMS-Nepal        NEPAL         High                 NA                 0.0265720   -0.0406554   0.0937994
6-24 months   IRC              INDIA         High                 NA                 0.0283635   -0.0159402   0.0726672
6-24 months   JiVitA-3         BANGLADESH    High                 NA                 0.0061348    0.0011750   0.0110946
6-24 months   JiVitA-4         BANGLADESH    High                 NA                 0.0240475    0.0125927   0.0355023
6-24 months   NIH-Birth        BANGLADESH    High                 NA                 0.0170472   -0.0185228   0.0526173
6-24 months   PROBIT           BELARUS       High                 NA                 0.0005103   -0.0024718   0.0034923
6-24 months   SAS-CompFeed     INDIA         High                 NA                 0.0500105    0.0316609   0.0683602
6-24 months   ZVITAMBO         ZIMBABWE      High                 NA                 0.0021971   -0.0002843   0.0046786


### Parameter: PAF


agecat        studyid          country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  ------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA         High                 NA                 0.1788663   -0.4151376   0.5235371
0-24 months   COHORTS          GUATEMALA     High                 NA                 0.1650718   -0.7149568   0.5935145
0-24 months   COHORTS          INDIA         High                 NA                 0.4756756    0.2706642   0.6230596
0-24 months   COHORTS          PHILIPPINES   High                 NA                 0.2228673    0.0032918   0.3940702
0-24 months   GMS-Nepal        NEPAL         High                 NA                 0.1972973   -0.4926666   0.5683352
0-24 months   IRC              INDIA         High                 NA                 0.2422715   -0.2413087   0.5374620
0-24 months   JiVitA-3         BANGLADESH    High                 NA                 0.1079777    0.0159359   0.1914107
0-24 months   JiVitA-4         BANGLADESH    High                 NA                 0.2976018    0.1394299   0.4267019
0-24 months   NIH-Birth        BANGLADESH    High                 NA                 0.1936857   -0.3261632   0.5097566
0-24 months   PROBIT           BELARUS       High                 NA                 0.0631477   -0.3924740   0.3696886
0-24 months   SAS-CompFeed     INDIA         High                 NA                 0.5992490    0.4407116   0.7128469
0-24 months   ZVITAMBO         ZIMBABWE      High                 NA                 0.1244128   -0.0265917   0.2532056
0-6 months    CMC-V-BCS-2002   INDIA         High                 NA                -0.0556410   -0.3950202   0.2011743
0-6 months    COHORTS          PHILIPPINES   High                 NA                 0.2213364   -0.1799720   0.4861599
0-6 months    GMS-Nepal        NEPAL         High                 NA                 0.2089762   -0.6353748   0.6173851
0-6 months    IRC              INDIA         High                 NA                 0.0732582   -0.3297719   0.3541371
0-6 months    MAL-ED           INDIA         High                 NA                -0.1069915   -1.2256042   0.4493944
0-6 months    PROBIT           BELARUS       High                 NA                 0.0668812   -0.1251486   0.2261371
6-24 months   CMC-V-BCS-2002   INDIA         High                 NA                 0.1788663   -0.4151376   0.5235371
6-24 months   COHORTS          GUATEMALA     High                 NA                 0.1650718   -0.7149568   0.5935145
6-24 months   COHORTS          INDIA         High                 NA                 0.4756756    0.2706642   0.6230596
6-24 months   COHORTS          PHILIPPINES   High                 NA                 0.2228673    0.0032918   0.3940702
6-24 months   GMS-Nepal        NEPAL         High                 NA                 0.1972973   -0.4926666   0.5683352
6-24 months   IRC              INDIA         High                 NA                 0.2422715   -0.2413087   0.5374620
6-24 months   JiVitA-3         BANGLADESH    High                 NA                 0.1079777    0.0159359   0.1914107
6-24 months   JiVitA-4         BANGLADESH    High                 NA                 0.2976018    0.1394299   0.4267019
6-24 months   NIH-Birth        BANGLADESH    High                 NA                 0.1936857   -0.3261632   0.5097566
6-24 months   PROBIT           BELARUS       High                 NA                 0.0631477   -0.3924740   0.3696886
6-24 months   SAS-CompFeed     INDIA         High                 NA                 0.5992490    0.4407116   0.7128469
6-24 months   ZVITAMBO         ZIMBABWE      High                 NA                 0.1244128   -0.0265917   0.2532056
