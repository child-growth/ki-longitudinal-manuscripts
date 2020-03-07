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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid          country                        feducyrs    ever_swasted   n_cell       n
------------  ---------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      High                   0      214    1234
0-24 months   COHORTS          GUATEMALA                      High                   1       17    1234
0-24 months   COHORTS          GUATEMALA                      Low                    0      521    1234
0-24 months   COHORTS          GUATEMALA                      Low                    1       37    1234
0-24 months   COHORTS          GUATEMALA                      Medium                 0      411    1234
0-24 months   COHORTS          GUATEMALA                      Medium                 1       34    1234
0-24 months   COHORTS          INDIA                          High                   0      508    1447
0-24 months   COHORTS          INDIA                          High                   1       59    1447
0-24 months   COHORTS          INDIA                          Low                    0      434    1447
0-24 months   COHORTS          INDIA                          Low                    1       38    1447
0-24 months   COHORTS          INDIA                          Medium                 0      365    1447
0-24 months   COHORTS          INDIA                          Medium                 1       43    1447
0-24 months   COHORTS          PHILIPPINES                    High                   0      911    2868
0-24 months   COHORTS          PHILIPPINES                    High                   1      117    2868
0-24 months   COHORTS          PHILIPPINES                    Low                    0      726    2868
0-24 months   COHORTS          PHILIPPINES                    Low                    1      100    2868
0-24 months   COHORTS          PHILIPPINES                    Medium                 0      879    2868
0-24 months   COHORTS          PHILIPPINES                    Medium                 1      135    2868
0-24 months   GMS-Nepal        NEPAL                          High                   0      125     684
0-24 months   GMS-Nepal        NEPAL                          High                   1       44     684
0-24 months   GMS-Nepal        NEPAL                          Low                    0      210     684
0-24 months   GMS-Nepal        NEPAL                          Low                    1       82     684
0-24 months   GMS-Nepal        NEPAL                          Medium                 0      172     684
0-24 months   GMS-Nepal        NEPAL                          Medium                 1       51     684
0-24 months   JiVitA-3         BANGLADESH                     High                   0     6118   25970
0-24 months   JiVitA-3         BANGLADESH                     High                   1      359   25970
0-24 months   JiVitA-3         BANGLADESH                     Low                    0     9936   25970
0-24 months   JiVitA-3         BANGLADESH                     Low                    1      701   25970
0-24 months   JiVitA-3         BANGLADESH                     Medium                 0     8344   25970
0-24 months   JiVitA-3         BANGLADESH                     Medium                 1      512   25970
0-24 months   JiVitA-4         BANGLADESH                     High                   0     1184    5277
0-24 months   JiVitA-4         BANGLADESH                     High                   1       63    5277
0-24 months   JiVitA-4         BANGLADESH                     Low                    0     1819    5277
0-24 months   JiVitA-4         BANGLADESH                     Low                    1      135    5277
0-24 months   JiVitA-4         BANGLADESH                     Medium                 0     1947    5277
0-24 months   JiVitA-4         BANGLADESH                     Medium                 1      129    5277
0-24 months   LCNI-5           MALAWI                         High                   0      247     813
0-24 months   LCNI-5           MALAWI                         High                   1        4     813
0-24 months   LCNI-5           MALAWI                         Low                    0      289     813
0-24 months   LCNI-5           MALAWI                         Low                    1        2     813
0-24 months   LCNI-5           MALAWI                         Medium                 0      269     813
0-24 months   LCNI-5           MALAWI                         Medium                 1        2     813
0-24 months   MAL-ED           BANGLADESH                     High                   0       50     147
0-24 months   MAL-ED           BANGLADESH                     High                   1        4     147
0-24 months   MAL-ED           BANGLADESH                     Low                    0       33     147
0-24 months   MAL-ED           BANGLADESH                     Low                    1        6     147
0-24 months   MAL-ED           BANGLADESH                     Medium                 0       49     147
0-24 months   MAL-ED           BANGLADESH                     Medium                 1        5     147
0-24 months   MAL-ED           INDIA                          High                   0       43     147
0-24 months   MAL-ED           INDIA                          High                   1        1     147
0-24 months   MAL-ED           INDIA                          Low                    0       51     147
0-24 months   MAL-ED           INDIA                          Low                    1        8     147
0-24 months   MAL-ED           INDIA                          Medium                 0       37     147
0-24 months   MAL-ED           INDIA                          Medium                 1        7     147
0-24 months   MAL-ED           NEPAL                          High                   0       40      98
0-24 months   MAL-ED           NEPAL                          High                   1        2      98
0-24 months   MAL-ED           NEPAL                          Low                    0       28      98
0-24 months   MAL-ED           NEPAL                          Low                    1        0      98
0-24 months   MAL-ED           NEPAL                          Medium                 0       26      98
0-24 months   MAL-ED           NEPAL                          Medium                 1        2      98
0-24 months   MAL-ED           PERU                           High                   0      116     250
0-24 months   MAL-ED           PERU                           High                   1        4     250
0-24 months   MAL-ED           PERU                           Low                    0       69     250
0-24 months   MAL-ED           PERU                           Low                    1        0     250
0-24 months   MAL-ED           PERU                           Medium                 0       61     250
0-24 months   MAL-ED           PERU                           Medium                 1        0     250
0-24 months   MAL-ED           SOUTH AFRICA                   High                   0       43     110
0-24 months   MAL-ED           SOUTH AFRICA                   High                   1        0     110
0-24 months   MAL-ED           SOUTH AFRICA                   Low                    0       32     110
0-24 months   MAL-ED           SOUTH AFRICA                   Low                    1        5     110
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                 0       30     110
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                 1        0     110
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   0      125     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   1        5     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    0       58     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    1        3     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 0       20     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 1        0     211
0-24 months   NIH-Crypto       BANGLADESH                     High                   0      274     758
0-24 months   NIH-Crypto       BANGLADESH                     High                   1       22     758
0-24 months   NIH-Crypto       BANGLADESH                     Low                    0      213     758
0-24 months   NIH-Crypto       BANGLADESH                     Low                    1       29     758
0-24 months   NIH-Crypto       BANGLADESH                     Medium                 0      205     758
0-24 months   NIH-Crypto       BANGLADESH                     Medium                 1       15     758
0-24 months   PROBIT           BELARUS                        High                   0     2521   16315
0-24 months   PROBIT           BELARUS                        High                   1      187   16315
0-24 months   PROBIT           BELARUS                        Low                    0     5913   16315
0-24 months   PROBIT           BELARUS                        Low                    1      505   16315
0-24 months   PROBIT           BELARUS                        Medium                 0     6607   16315
0-24 months   PROBIT           BELARUS                        Medium                 1      582   16315
0-24 months   PROVIDE          BANGLADESH                     High                   0      219     700
0-24 months   PROVIDE          BANGLADESH                     High                   1       13     700
0-24 months   PROVIDE          BANGLADESH                     Low                    0      218     700
0-24 months   PROVIDE          BANGLADESH                     Low                    1       20     700
0-24 months   PROVIDE          BANGLADESH                     Medium                 0      221     700
0-24 months   PROVIDE          BANGLADESH                     Medium                 1        9     700
0-24 months   SAS-CompFeed     INDIA                          High                   0      352    1510
0-24 months   SAS-CompFeed     INDIA                          High                   1       34    1510
0-24 months   SAS-CompFeed     INDIA                          Low                    0      520    1510
0-24 months   SAS-CompFeed     INDIA                          Low                    1      123    1510
0-24 months   SAS-CompFeed     INDIA                          Medium                 0      415    1510
0-24 months   SAS-CompFeed     INDIA                          Medium                 1       66    1510
0-24 months   SAS-FoodSuppl    INDIA                          High                   0       93     418
0-24 months   SAS-FoodSuppl    INDIA                          High                   1       17     418
0-24 months   SAS-FoodSuppl    INDIA                          Low                    0      123     418
0-24 months   SAS-FoodSuppl    INDIA                          Low                    1       24     418
0-24 months   SAS-FoodSuppl    INDIA                          Medium                 0      131     418
0-24 months   SAS-FoodSuppl    INDIA                          Medium                 1       30     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      429    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       20    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0     1182    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       88    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      615    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1       49    2383
0-24 months   ZVITAMBO         ZIMBABWE                       High                   0      920   13568
0-24 months   ZVITAMBO         ZIMBABWE                       High                   1       72   13568
0-24 months   ZVITAMBO         ZIMBABWE                       Low                    0     2060   13568
0-24 months   ZVITAMBO         ZIMBABWE                       Low                    1      224   13568
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                 0     9350   13568
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                 1      942   13568
0-6 months    COHORTS          GUATEMALA                      High                   0      178     997
0-6 months    COHORTS          GUATEMALA                      High                   1       12     997
0-6 months    COHORTS          GUATEMALA                      Low                    0      418     997
0-6 months    COHORTS          GUATEMALA                      Low                    1       25     997
0-6 months    COHORTS          GUATEMALA                      Medium                 0      341     997
0-6 months    COHORTS          GUATEMALA                      Medium                 1       23     997
0-6 months    COHORTS          INDIA                          High                   0      513    1417
0-6 months    COHORTS          INDIA                          High                   1       44    1417
0-6 months    COHORTS          INDIA                          Low                    0      441    1417
0-6 months    COHORTS          INDIA                          Low                    1       17    1417
0-6 months    COHORTS          INDIA                          Medium                 0      372    1417
0-6 months    COHORTS          INDIA                          Medium                 1       30    1417
0-6 months    COHORTS          PHILIPPINES                    High                   0      946    2867
0-6 months    COHORTS          PHILIPPINES                    High                   1       82    2867
0-6 months    COHORTS          PHILIPPINES                    Low                    0      788    2867
0-6 months    COHORTS          PHILIPPINES                    Low                    1       38    2867
0-6 months    COHORTS          PHILIPPINES                    Medium                 0      941    2867
0-6 months    COHORTS          PHILIPPINES                    Medium                 1       72    2867
0-6 months    GMS-Nepal        NEPAL                          High                   0      148     684
0-6 months    GMS-Nepal        NEPAL                          High                   1       21     684
0-6 months    GMS-Nepal        NEPAL                          Low                    0      263     684
0-6 months    GMS-Nepal        NEPAL                          Low                    1       29     684
0-6 months    GMS-Nepal        NEPAL                          Medium                 0      194     684
0-6 months    GMS-Nepal        NEPAL                          Medium                 1       29     684
0-6 months    JiVitA-3         BANGLADESH                     High                   0     6187   25882
0-6 months    JiVitA-3         BANGLADESH                     High                   1      263   25882
0-6 months    JiVitA-3         BANGLADESH                     Low                    0    10141   25882
0-6 months    JiVitA-3         BANGLADESH                     Low                    1      460   25882
0-6 months    JiVitA-3         BANGLADESH                     Medium                 0     8490   25882
0-6 months    JiVitA-3         BANGLADESH                     Medium                 1      341   25882
0-6 months    JiVitA-4         BANGLADESH                     High                   0     1149    4948
0-6 months    JiVitA-4         BANGLADESH                     High                   1       26    4948
0-6 months    JiVitA-4         BANGLADESH                     Low                    0     1788    4948
0-6 months    JiVitA-4         BANGLADESH                     Low                    1       43    4948
0-6 months    JiVitA-4         BANGLADESH                     Medium                 0     1906    4948
0-6 months    JiVitA-4         BANGLADESH                     Medium                 1       36    4948
0-6 months    LCNI-5           MALAWI                         High                   0       73     267
0-6 months    LCNI-5           MALAWI                         High                   1        0     267
0-6 months    LCNI-5           MALAWI                         Low                    0      104     267
0-6 months    LCNI-5           MALAWI                         Low                    1        0     267
0-6 months    LCNI-5           MALAWI                         Medium                 0       90     267
0-6 months    LCNI-5           MALAWI                         Medium                 1        0     267
0-6 months    MAL-ED           BANGLADESH                     High                   0       51     147
0-6 months    MAL-ED           BANGLADESH                     High                   1        3     147
0-6 months    MAL-ED           BANGLADESH                     Low                    0       34     147
0-6 months    MAL-ED           BANGLADESH                     Low                    1        5     147
0-6 months    MAL-ED           BANGLADESH                     Medium                 0       50     147
0-6 months    MAL-ED           BANGLADESH                     Medium                 1        4     147
0-6 months    MAL-ED           INDIA                          High                   0       43     147
0-6 months    MAL-ED           INDIA                          High                   1        1     147
0-6 months    MAL-ED           INDIA                          Low                    0       52     147
0-6 months    MAL-ED           INDIA                          Low                    1        7     147
0-6 months    MAL-ED           INDIA                          Medium                 0       39     147
0-6 months    MAL-ED           INDIA                          Medium                 1        5     147
0-6 months    MAL-ED           NEPAL                          High                   0       40      98
0-6 months    MAL-ED           NEPAL                          High                   1        2      98
0-6 months    MAL-ED           NEPAL                          Low                    0       28      98
0-6 months    MAL-ED           NEPAL                          Low                    1        0      98
0-6 months    MAL-ED           NEPAL                          Medium                 0       28      98
0-6 months    MAL-ED           NEPAL                          Medium                 1        0      98
0-6 months    MAL-ED           PERU                           High                   0      119     250
0-6 months    MAL-ED           PERU                           High                   1        1     250
0-6 months    MAL-ED           PERU                           Low                    0       69     250
0-6 months    MAL-ED           PERU                           Low                    1        0     250
0-6 months    MAL-ED           PERU                           Medium                 0       61     250
0-6 months    MAL-ED           PERU                           Medium                 1        0     250
0-6 months    MAL-ED           SOUTH AFRICA                   High                   0       43     110
0-6 months    MAL-ED           SOUTH AFRICA                   High                   1        0     110
0-6 months    MAL-ED           SOUTH AFRICA                   Low                    0       35     110
0-6 months    MAL-ED           SOUTH AFRICA                   Low                    1        2     110
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                 0       30     110
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                 1        0     110
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   0      128     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   1        2     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    0       60     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    1        1     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 0       20     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 1        0     211
0-6 months    NIH-Crypto       BANGLADESH                     High                   0      278     758
0-6 months    NIH-Crypto       BANGLADESH                     High                   1       18     758
0-6 months    NIH-Crypto       BANGLADESH                     Low                    0      222     758
0-6 months    NIH-Crypto       BANGLADESH                     Low                    1       20     758
0-6 months    NIH-Crypto       BANGLADESH                     Medium                 0      208     758
0-6 months    NIH-Crypto       BANGLADESH                     Medium                 1       12     758
0-6 months    PROBIT           BELARUS                        High                   0     2521   16312
0-6 months    PROBIT           BELARUS                        High                   1      187   16312
0-6 months    PROBIT           BELARUS                        Low                    0     5921   16312
0-6 months    PROBIT           BELARUS                        Low                    1      497   16312
0-6 months    PROBIT           BELARUS                        Medium                 0     6608   16312
0-6 months    PROBIT           BELARUS                        Medium                 1      578   16312
0-6 months    PROVIDE          BANGLADESH                     High                   0      220     700
0-6 months    PROVIDE          BANGLADESH                     High                   1       12     700
0-6 months    PROVIDE          BANGLADESH                     Low                    0      228     700
0-6 months    PROVIDE          BANGLADESH                     Low                    1       10     700
0-6 months    PROVIDE          BANGLADESH                     Medium                 0      223     700
0-6 months    PROVIDE          BANGLADESH                     Medium                 1        7     700
0-6 months    SAS-CompFeed     INDIA                          High                   0      367    1502
0-6 months    SAS-CompFeed     INDIA                          High                   1       18    1502
0-6 months    SAS-CompFeed     INDIA                          Low                    0      585    1502
0-6 months    SAS-CompFeed     INDIA                          Low                    1       55    1502
0-6 months    SAS-CompFeed     INDIA                          Medium                 0      450    1502
0-6 months    SAS-CompFeed     INDIA                          Medium                 1       27    1502
0-6 months    SAS-FoodSuppl    INDIA                          High                   0      104     418
0-6 months    SAS-FoodSuppl    INDIA                          High                   1        6     418
0-6 months    SAS-FoodSuppl    INDIA                          Low                    0      140     418
0-6 months    SAS-FoodSuppl    INDIA                          Low                    1        7     418
0-6 months    SAS-FoodSuppl    INDIA                          Medium                 0      154     418
0-6 months    SAS-FoodSuppl    INDIA                          Medium                 1        7     418
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      438    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       11    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0     1227    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       43    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      639    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1       25    2383
0-6 months    ZVITAMBO         ZIMBABWE                       High                   0      929   13478
0-6 months    ZVITAMBO         ZIMBABWE                       High                   1       56   13478
0-6 months    ZVITAMBO         ZIMBABWE                       Low                    0     2124   13478
0-6 months    ZVITAMBO         ZIMBABWE                       Low                    1      145   13478
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                 0     9507   13478
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                 1      717   13478
6-24 months   COHORTS          GUATEMALA                      High                   0      205    1125
6-24 months   COHORTS          GUATEMALA                      High                   1        5    1125
6-24 months   COHORTS          GUATEMALA                      Low                    0      499    1125
6-24 months   COHORTS          GUATEMALA                      Low                    1       12    1125
6-24 months   COHORTS          GUATEMALA                      Medium                 0      393    1125
6-24 months   COHORTS          GUATEMALA                      Medium                 1       11    1125
6-24 months   COHORTS          INDIA                          High                   0      534    1405
6-24 months   COHORTS          INDIA                          High                   1       15    1405
6-24 months   COHORTS          INDIA                          Low                    0      436    1405
6-24 months   COHORTS          INDIA                          Low                    1       23    1405
6-24 months   COHORTS          INDIA                          Medium                 0      384    1405
6-24 months   COHORTS          INDIA                          Medium                 1       13    1405
6-24 months   COHORTS          PHILIPPINES                    High                   0      883    2655
6-24 months   COHORTS          PHILIPPINES                    High                   1       40    2655
6-24 months   COHORTS          PHILIPPINES                    Low                    0      710    2655
6-24 months   COHORTS          PHILIPPINES                    Low                    1       68    2655
6-24 months   COHORTS          PHILIPPINES                    Medium                 0      885    2655
6-24 months   COHORTS          PHILIPPINES                    Medium                 1       69    2655
6-24 months   GMS-Nepal        NEPAL                          High                   0      119     589
6-24 months   GMS-Nepal        NEPAL                          High                   1       26     589
6-24 months   GMS-Nepal        NEPAL                          Low                    0      194     589
6-24 months   GMS-Nepal        NEPAL                          Low                    1       59     589
6-24 months   GMS-Nepal        NEPAL                          Medium                 0      164     589
6-24 months   GMS-Nepal        NEPAL                          Medium                 1       27     589
6-24 months   JiVitA-3         BANGLADESH                     High                   0     4292   16606
6-24 months   JiVitA-3         BANGLADESH                     High                   1       99   16606
6-24 months   JiVitA-3         BANGLADESH                     Low                    0     6246   16606
6-24 months   JiVitA-3         BANGLADESH                     Low                    1      250   16606
6-24 months   JiVitA-3         BANGLADESH                     Medium                 0     5541   16606
6-24 months   JiVitA-3         BANGLADESH                     Medium                 1      178   16606
6-24 months   JiVitA-4         BANGLADESH                     High                   0     1206    5273
6-24 months   JiVitA-4         BANGLADESH                     High                   1       39    5273
6-24 months   JiVitA-4         BANGLADESH                     Low                    0     1857    5273
6-24 months   JiVitA-4         BANGLADESH                     Low                    1       96    5273
6-24 months   JiVitA-4         BANGLADESH                     Medium                 0     1981    5273
6-24 months   JiVitA-4         BANGLADESH                     Medium                 1       94    5273
6-24 months   LCNI-5           MALAWI                         High                   0      243     802
6-24 months   LCNI-5           MALAWI                         High                   1        4     802
6-24 months   LCNI-5           MALAWI                         Low                    0      287     802
6-24 months   LCNI-5           MALAWI                         Low                    1        2     802
6-24 months   LCNI-5           MALAWI                         Medium                 0      264     802
6-24 months   LCNI-5           MALAWI                         Medium                 1        2     802
6-24 months   MAL-ED           BANGLADESH                     High                   0       47     131
6-24 months   MAL-ED           BANGLADESH                     High                   1        1     131
6-24 months   MAL-ED           BANGLADESH                     Low                    0       36     131
6-24 months   MAL-ED           BANGLADESH                     Low                    1        1     131
6-24 months   MAL-ED           BANGLADESH                     Medium                 0       45     131
6-24 months   MAL-ED           BANGLADESH                     Medium                 1        1     131
6-24 months   MAL-ED           INDIA                          High                   0       43     137
6-24 months   MAL-ED           INDIA                          High                   1        0     137
6-24 months   MAL-ED           INDIA                          Low                    0       52     137
6-24 months   MAL-ED           INDIA                          Low                    1        2     137
6-24 months   MAL-ED           INDIA                          Medium                 0       38     137
6-24 months   MAL-ED           INDIA                          Medium                 1        2     137
6-24 months   MAL-ED           NEPAL                          High                   0       39      94
6-24 months   MAL-ED           NEPAL                          High                   1        0      94
6-24 months   MAL-ED           NEPAL                          Low                    0       27      94
6-24 months   MAL-ED           NEPAL                          Low                    1        0      94
6-24 months   MAL-ED           NEPAL                          Medium                 0       26      94
6-24 months   MAL-ED           NEPAL                          Medium                 1        2      94
6-24 months   MAL-ED           PERU                           High                   0      103     223
6-24 months   MAL-ED           PERU                           High                   1        3     223
6-24 months   MAL-ED           PERU                           Low                    0       60     223
6-24 months   MAL-ED           PERU                           Low                    1        0     223
6-24 months   MAL-ED           PERU                           Medium                 0       57     223
6-24 months   MAL-ED           PERU                           Medium                 1        0     223
6-24 months   MAL-ED           SOUTH AFRICA                   High                   0       36      96
6-24 months   MAL-ED           SOUTH AFRICA                   High                   1        0      96
6-24 months   MAL-ED           SOUTH AFRICA                   Low                    0       33      96
6-24 months   MAL-ED           SOUTH AFRICA                   Low                    1        3      96
6-24 months   MAL-ED           SOUTH AFRICA                   Medium                 0       24      96
6-24 months   MAL-ED           SOUTH AFRICA                   Medium                 1        0      96
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   0      125     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                   1        3     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    0       53     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                    1        2     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 0       19     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                 1        0     202
6-24 months   NIH-Crypto       BANGLADESH                     High                   0      282     730
6-24 months   NIH-Crypto       BANGLADESH                     High                   1        4     730
6-24 months   NIH-Crypto       BANGLADESH                     Low                    0      216     730
6-24 months   NIH-Crypto       BANGLADESH                     Low                    1       13     730
6-24 months   NIH-Crypto       BANGLADESH                     Medium                 0      212     730
6-24 months   NIH-Crypto       BANGLADESH                     Medium                 1        3     730
6-24 months   PROBIT           BELARUS                        High                   0     2636   16027
6-24 months   PROBIT           BELARUS                        High                   1        0   16027
6-24 months   PROBIT           BELARUS                        Low                    0     6313   16027
6-24 months   PROBIT           BELARUS                        Low                    1        8   16027
6-24 months   PROBIT           BELARUS                        Medium                 0     7066   16027
6-24 months   PROBIT           BELARUS                        Medium                 1        4   16027
6-24 months   PROVIDE          BANGLADESH                     High                   0      213     615
6-24 months   PROVIDE          BANGLADESH                     High                   1        1     615
6-24 months   PROVIDE          BANGLADESH                     Low                    0      198     615
6-24 months   PROVIDE          BANGLADESH                     Low                    1       10     615
6-24 months   PROVIDE          BANGLADESH                     Medium                 0      191     615
6-24 months   PROVIDE          BANGLADESH                     Medium                 1        2     615
6-24 months   SAS-CompFeed     INDIA                          High                   0      351    1386
6-24 months   SAS-CompFeed     INDIA                          High                   1       19    1386
6-24 months   SAS-CompFeed     INDIA                          Low                    0      499    1386
6-24 months   SAS-CompFeed     INDIA                          Low                    1       73    1386
6-24 months   SAS-CompFeed     INDIA                          Medium                 0      402    1386
6-24 months   SAS-CompFeed     INDIA                          Medium                 1       42    1386
6-24 months   SAS-FoodSuppl    INDIA                          High                   0       96     402
6-24 months   SAS-FoodSuppl    INDIA                          High                   1       11     402
6-24 months   SAS-FoodSuppl    INDIA                          Low                    0      123     402
6-24 months   SAS-FoodSuppl    INDIA                          Low                    1       17     402
6-24 months   SAS-FoodSuppl    INDIA                          Medium                 0      132     402
6-24 months   SAS-FoodSuppl    INDIA                          Medium                 1       23     402
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      365    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       10    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0     1025    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       47    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      537    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1       25    2009
6-24 months   ZVITAMBO         ZIMBABWE                       High                   0      700   10504
6-24 months   ZVITAMBO         ZIMBABWE                       High                   1       17   10504
6-24 months   ZVITAMBO         ZIMBABWE                       Low                    0     1729   10504
6-24 months   ZVITAMBO         ZIMBABWE                       Low                    1       84   10504
6-24 months   ZVITAMBO         ZIMBABWE                       Medium                 0     7734   10504
6-24 months   ZVITAMBO         ZIMBABWE                       Medium                 1      240   10504


The following strata were considered:

* agecat: 0-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: COHORTS, country: INDIA
* agecat: 0-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: COHORTS, country: INDIA
* agecat: 0-6 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: PROVIDE, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/1de95da9-003f-40e5-b623-9c2e7911f835/fc161219-72d7-4172-b598-6ffc3a778666/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1de95da9-003f-40e5-b623-9c2e7911f835/fc161219-72d7-4172-b598-6ffc3a778666/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1de95da9-003f-40e5-b623-9c2e7911f835/fc161219-72d7-4172-b598-6ffc3a778666/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1de95da9-003f-40e5-b623-9c2e7911f835/fc161219-72d7-4172-b598-6ffc3a778666/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                0.0735931   0.0399080   0.1072781
0-24 months   COHORTS          GUATEMALA                      Low                  NA                0.0663082   0.0456548   0.0869617
0-24 months   COHORTS          GUATEMALA                      Medium               NA                0.0764045   0.0517132   0.1010958
0-24 months   COHORTS          INDIA                          High                 NA                0.1040564   0.0789155   0.1291974
0-24 months   COHORTS          INDIA                          Low                  NA                0.0805085   0.0559545   0.1050625
0-24 months   COHORTS          INDIA                          Medium               NA                0.1053922   0.0755872   0.1351971
0-24 months   COHORTS          PHILIPPINES                    High                 NA                0.1138132   0.0943960   0.1332304
0-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.1210654   0.0988158   0.1433150
0-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.1331361   0.1122225   0.1540497
0-24 months   GMS-Nepal        NEPAL                          High                 NA                0.2603550   0.1941460   0.3265640
0-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.2808219   0.2292387   0.3324051
0-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.2286996   0.1735353   0.2838638
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.0554269   0.0492552   0.0615986
0-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.0659020   0.0605953   0.0712088
0-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.0578139   0.0521195   0.0635083
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.0505213   0.0353180   0.0657245
0-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.0690890   0.0569444   0.0812337
0-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.0621387   0.0506269   0.0736505
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.0743243   0.0444235   0.1042252
0-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.1198347   0.0788897   0.1607797
0-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.0681818   0.0348527   0.1015109
0-24 months   PROBIT           BELARUS                        High                 NA                0.0690547   0.0390576   0.0990517
0-24 months   PROBIT           BELARUS                        Low                  NA                0.0786849   0.0412409   0.1161290
0-24 months   PROBIT           BELARUS                        Medium               NA                0.0809570   0.0493354   0.1125787
0-24 months   PROVIDE          BANGLADESH                     High                 NA                0.0560345   0.0264189   0.0856501
0-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.0840336   0.0487611   0.1193061
0-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.0391304   0.0140529   0.0642079
0-24 months   SAS-CompFeed     INDIA                          High                 NA                0.0880829   0.0445052   0.1316607
0-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.1912908   0.1490863   0.2334953
0-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.1372141   0.0958366   0.1785916
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.1545455   0.0869146   0.2221763
0-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.1632653   0.1034448   0.2230859
0-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.1863354   0.1261175   0.2465533
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0445434   0.0254575   0.0636294
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0692913   0.0553217   0.0832609
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0737952   0.0539057   0.0936846
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.0725806   0.0564349   0.0887263
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.0980736   0.0858759   0.1102712
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.0915274   0.0859562   0.0970986
0-6 months    COHORTS          GUATEMALA                      High                 NA                0.0631579   0.0285531   0.0977627
0-6 months    COHORTS          GUATEMALA                      Low                  NA                0.0564334   0.0349344   0.0779324
0-6 months    COHORTS          GUATEMALA                      Medium               NA                0.0631868   0.0381802   0.0881934
0-6 months    COHORTS          INDIA                          High                 NA                0.0789946   0.0565866   0.1014026
0-6 months    COHORTS          INDIA                          Low                  NA                0.0371179   0.0197979   0.0544379
0-6 months    COHORTS          INDIA                          Medium               NA                0.0746269   0.0489292   0.1003246
0-6 months    COHORTS          PHILIPPINES                    High                 NA                0.0797665   0.0632017   0.0963314
0-6 months    COHORTS          PHILIPPINES                    Low                  NA                0.0460048   0.0317156   0.0602941
0-6 months    COHORTS          PHILIPPINES                    Medium               NA                0.0710760   0.0552500   0.0869020
0-6 months    GMS-Nepal        NEPAL                          High                 NA                0.1242604   0.0744894   0.1740313
0-6 months    GMS-Nepal        NEPAL                          Low                  NA                0.0993151   0.0649855   0.1336446
0-6 months    GMS-Nepal        NEPAL                          Medium               NA                0.1300448   0.0858666   0.1742231
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                0.0407752   0.0355172   0.0460332
0-6 months    JiVitA-3         BANGLADESH                     Low                  NA                0.0433921   0.0391520   0.0476322
0-6 months    JiVitA-3         BANGLADESH                     Medium               NA                0.0386140   0.0335329   0.0436950
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                0.0221277   0.0102476   0.0340077
0-6 months    JiVitA-4         BANGLADESH                     Low                  NA                0.0234844   0.0150969   0.0318720
0-6 months    JiVitA-4         BANGLADESH                     Medium               NA                0.0185376   0.0116028   0.0254724
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                0.0608108   0.0335678   0.0880539
0-6 months    NIH-Crypto       BANGLADESH                     Low                  NA                0.0826446   0.0479307   0.1173585
0-6 months    NIH-Crypto       BANGLADESH                     Medium               NA                0.0545455   0.0245177   0.0845732
0-6 months    PROBIT           BELARUS                        High                 NA                0.0690547   0.0390558   0.0990535
0-6 months    PROBIT           BELARUS                        Low                  NA                0.0774385   0.0396944   0.1151825
0-6 months    PROBIT           BELARUS                        Medium               NA                0.0804342   0.0489675   0.1119009
0-6 months    PROVIDE          BANGLADESH                     High                 NA                0.0517241   0.0232055   0.0802428
0-6 months    PROVIDE          BANGLADESH                     Low                  NA                0.0420168   0.0165097   0.0675239
0-6 months    PROVIDE          BANGLADESH                     Medium               NA                0.0304348   0.0082187   0.0526509
0-6 months    SAS-CompFeed     INDIA                          High                 NA                0.0467532   0.0128068   0.0806997
0-6 months    SAS-CompFeed     INDIA                          Low                  NA                0.0859375   0.0647047   0.1071703
0-6 months    SAS-CompFeed     INDIA                          Medium               NA                0.0566038   0.0216184   0.0915891
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                0.0545455   0.0120569   0.0970340
0-6 months    SAS-FoodSuppl    INDIA                          Low                  NA                0.0476190   0.0131519   0.0820862
0-6 months    SAS-FoodSuppl    INDIA                          Medium               NA                0.0434783   0.0119399   0.0750166
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0244989   0.0101967   0.0388011
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0338583   0.0239090   0.0438075
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0376506   0.0231693   0.0521319
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.0568528   0.0423913   0.0713142
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.0639048   0.0538407   0.0739689
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.0701291   0.0651790   0.0750792
6-24 months   COHORTS          GUATEMALA                      High                 NA                0.0238095   0.0031807   0.0444383
6-24 months   COHORTS          GUATEMALA                      Low                  NA                0.0234834   0.0103477   0.0366190
6-24 months   COHORTS          GUATEMALA                      Medium               NA                0.0272277   0.0113510   0.0431045
6-24 months   COHORTS          INDIA                          High                 NA                0.0273224   0.0136810   0.0409639
6-24 months   COHORTS          INDIA                          Low                  NA                0.0501089   0.0301429   0.0700749
6-24 months   COHORTS          INDIA                          Medium               NA                0.0327456   0.0152328   0.0502583
6-24 months   COHORTS          PHILIPPINES                    High                 NA                0.0433369   0.0301987   0.0564752
6-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.0874036   0.0675543   0.1072529
6-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.0723270   0.0558870   0.0887671
6-24 months   GMS-Nepal        NEPAL                          High                 NA                0.1793103   0.1168182   0.2418025
6-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.2332016   0.1810505   0.2853526
6-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.1413613   0.0919107   0.1908118
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.0225461   0.0175272   0.0275651
6-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.0384852   0.0335374   0.0434330
6-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.0311243   0.0266088   0.0356399
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.0313253   0.0191622   0.0434884
6-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.0491551   0.0386687   0.0596416
6-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.0453012   0.0361454   0.0544570
6-24 months   SAS-CompFeed     INDIA                          High                 NA                0.0513514   0.0267794   0.0759233
6-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.1276224   0.0907102   0.1645345
6-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.0945946   0.0704051   0.1187841
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.1028037   0.0451875   0.1604200
6-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.1214286   0.0672567   0.1756004
6-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.1483871   0.0923543   0.2044199
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0266667   0.0103566   0.0429767
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0438433   0.0315837   0.0561028
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0444840   0.0274346   0.0615334
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.0237099   0.0125730   0.0348468
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.0463320   0.0366557   0.0560083
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.0300978   0.0263476   0.0338481


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0713128   0.0569485   0.0856771
0-24 months   COHORTS          INDIA                          NA                   NA                0.0967519   0.0815150   0.1119888
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.1227336   0.1107225   0.1347447
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2587719   0.2259267   0.2916172
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0605314   0.0569870   0.0640758
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.0619670   0.0548012   0.0691329
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0780876   0.0455813   0.1105940
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.1476821   0.1188009   0.1765633
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1698565   0.1338154   0.2058975
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0658833   0.0559209   0.0758458
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0912441   0.0863987   0.0960895
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.0601805   0.0454109   0.0749501
0-6 months    COHORTS          INDIA                          NA                   NA                0.0642202   0.0514517   0.0769887
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0669690   0.0578174   0.0761205
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.1154971   0.0915268   0.1394673
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.0411097   0.0380745   0.0441448
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.0212207   0.0163071   0.0261342
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0773664   0.0448152   0.1099175
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0414286   0.0266555   0.0562017
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.0665779   0.0427569   0.0903989
0-6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.0478469   0.0273607   0.0683330
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0331515   0.0259618   0.0403411
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0681110   0.0638575   0.0723645
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.0248889   0.0157815   0.0339963
6-24 months   COHORTS          INDIA                          NA                   NA                0.0362989   0.0265157   0.0460822
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.0666667   0.0571766   0.0761568
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.1901528   0.1584343   0.2218713
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.0317355   0.0287378   0.0347333
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.0434288   0.0375191   0.0493385
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.0966811   0.0731505   0.1202117
6-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.1268657   0.0942904   0.1594410
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0408163   0.0321620   0.0494707
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0324638   0.0290744   0.0358532


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      Low                  High              0.9010120   0.5179460   1.5673887
0-24 months   COHORTS          GUATEMALA                      Medium               High              1.0382022   0.5928482   1.8181111
0-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          Low                  High              0.7737001   0.5243156   1.1417013
0-24 months   COHORTS          INDIA                          Medium               High              1.0128365   0.6982342   1.4691887
0-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    Low                  High              1.0637197   0.8277940   1.3668854
0-24 months   COHORTS          PHILIPPINES                    Medium               High              1.1697770   0.9276546   1.4750944
0-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          Low                  High              1.0786115   0.7881789   1.4760641
0-24 months   GMS-Nepal        NEPAL                          Medium               High              0.8784142   0.6186976   1.2471546
0-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.1889903   1.0412719   1.3576645
0-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.0430660   0.9004716   1.2082410
0-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.3675245   0.9606241   1.9467794
0-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.2299523   0.8596775   1.7597096
0-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     Low                  High              1.6123216   0.9510936   2.7332544
0-24 months   NIH-Crypto       BANGLADESH                     Medium               High              0.9173554   0.4870702   1.7277609
0-24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        Low                  High              1.1394590   0.8599564   1.5098056
0-24 months   PROBIT           BELARUS                        Medium               High              1.1723615   0.9942754   1.3823450
0-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     Low                  High              1.4996768   0.7636284   2.9451898
0-24 months   PROVIDE          BANGLADESH                     Medium               High              0.6983278   0.3042943   1.6025988
0-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          Low                  High              2.1717135   1.2591127   3.7457644
0-24 months   SAS-CompFeed     INDIA                          Medium               High              1.5577840   0.8510236   2.8514968
0-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   SAS-FoodSuppl    INDIA                          Low                  High              1.0564226   0.5969870   1.8694355
0-24 months   SAS-FoodSuppl    INDIA                          Medium               High              1.2056997   0.6998104   2.0772937
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.5555906   0.9688125   2.4977610
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.6567018   0.9986314   2.7484222
0-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.3512356   1.0472418   1.7434729
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.2610442   1.0013118   1.5881491
0-6 months    COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      Low                  High              0.8935290   0.4584463   1.7415215
0-6 months    COHORTS          GUATEMALA                      Medium               High              1.0004579   0.5089361   1.9666829
0-6 months    COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          Low                  High              0.4698789   0.2721621   0.8112305
0-6 months    COHORTS          INDIA                          Medium               High              0.9447083   0.6047012   1.4758921
0-6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    Low                  High              0.5767436   0.3969332   0.8380081
0-6 months    COHORTS          PHILIPPINES                    Medium               High              0.8910505   0.6571602   1.2081849
0-6 months    GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          Low                  High              0.7992498   0.4708807   1.3566074
0-6 months    GMS-Nepal        NEPAL                          Medium               High              1.0465514   0.6189680   1.7695095
0-6 months    JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     Low                  High              1.0641797   0.9127705   1.2407045
0-6 months    JiVitA-3         BANGLADESH                     Medium               High              0.9469967   0.7905805   1.1343598
0-6 months    JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH                     Low                  High              1.0613158   0.5565605   2.0238431
0-6 months    JiVitA-4         BANGLADESH                     Medium               High              0.8377565   0.4303876   1.6307067
0-6 months    NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     Low                  High              1.3590450   0.7354083   2.5115345
0-6 months    NIH-Crypto       BANGLADESH                     Medium               High              0.8969697   0.4410951   1.8239935
0-6 months    PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        Low                  High              1.1214082   0.8433807   1.4910899
0-6 months    PROBIT           BELARUS                        Medium               High              1.1647901   0.9871384   1.3744131
0-6 months    PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     Low                  High              0.8123249   0.3577453   1.8445294
0-6 months    PROVIDE          BANGLADESH                     Medium               High              0.5884058   0.2357163   1.4688054
0-6 months    SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          Low                  High              1.8381076   0.9039996   3.7374350
0-6 months    SAS-CompFeed     INDIA                          Medium               High              1.2106918   0.5969460   2.4554562
0-6 months    SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    SAS-FoodSuppl    INDIA                          Low                  High              0.8730159   0.3014555   2.5282558
0-6 months    SAS-FoodSuppl    INDIA                          Medium               High              0.7971014   0.2749475   2.3108800
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.3820329   0.7189106   2.6568184
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.5368291   0.7638511   3.0920214
0-6 months    ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  High              1.1240399   0.8333989   1.5160395
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               High              1.2335209   0.9473318   1.6061678
6-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      Low                  High              0.9863014   0.3516643   2.7662471
6-24 months   COHORTS          GUATEMALA                      Medium               High              1.1435644   0.4024405   3.2495222
6-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          Low                  High              1.8339869   0.9682269   3.4738841
6-24 months   COHORTS          INDIA                          Medium               High              1.1984887   0.5766142   2.4910504
6-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    Low                  High              2.0168380   1.3809055   2.9456293
6-24 months   COHORTS          PHILIPPINES                    Medium               High              1.6689465   1.1425691   2.4378241
6-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          Low                  High              1.3005473   0.8595835   1.9677241
6-24 months   GMS-Nepal        NEPAL                          Medium               High              0.7883609   0.4811413   1.2917471
6-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.7069556   1.3261732   2.1970716
6-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.3804737   1.0683478   1.7837896
6-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.5691835   1.0055249   2.4488074
6-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.4461538   0.9322605   2.2433225
6-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          Low                  High              2.4852779   1.5036047   4.1078657
6-24 months   SAS-CompFeed     INDIA                          Medium               High              1.8421053   1.1336131   2.9933949
6-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   SAS-FoodSuppl    INDIA                          Low                  High              1.1811688   0.5770509   2.4177413
6-24 months   SAS-FoodSuppl    INDIA                          Medium               High              1.4434018   0.7343357   2.8371340
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.6441231   0.8391984   3.2210986
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.6681495   0.8105214   3.4332501
6-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.9541222   1.1686977   3.2673920
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.2694197   0.7808281   2.0637404


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0022803   -0.0325491    0.0279885
0-24 months   COHORTS          INDIA                          High                 NA                -0.0073045   -0.0265109    0.0119019
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0089204   -0.0069230    0.0247637
0-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0015831   -0.0589962    0.0558300
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0051045   -0.0002994    0.0105084
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0114458   -0.0020230    0.0249146
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0127469   -0.0117311    0.0372250
0-24 months   PROBIT           BELARUS                        High                 NA                 0.0090330   -0.0035144    0.0215804
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0039655   -0.0206446    0.0285756
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0595992    0.0178521    0.1013464
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0153110   -0.0435580    0.0741800
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0213399    0.0032775    0.0394024
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0186635    0.0029777    0.0343492
0-6 months    COHORTS          GUATEMALA                      High                 NA                -0.0029774   -0.0339486    0.0279939
0-6 months    COHORTS          INDIA                          High                 NA                -0.0147744   -0.0312184    0.0016695
0-6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0127976   -0.0255007   -0.0000944
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0087633   -0.0515141    0.0339876
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0003345   -0.0041878    0.0048567
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.0009070   -0.0109590    0.0091451
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0051522   -0.0166466    0.0269511
0-6 months    PROBIT           BELARUS                        High                 NA                 0.0083117   -0.0042593    0.0208827
0-6 months    PROVIDE          BANGLADESH                     High                 NA                -0.0102956   -0.0324867    0.0118956
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.0198246   -0.0047758    0.0444251
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.0066986   -0.0424031    0.0290059
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0086526   -0.0047325    0.0220377
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0112582   -0.0027653    0.0252817
6-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0010794   -0.0176188    0.0197775
6-24 months   COHORTS          INDIA                          High                 NA                 0.0089765   -0.0027014    0.0206544
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0233297    0.0113857    0.0352737
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0108425   -0.0438250    0.0655099
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0091894    0.0048476    0.0135312
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0121035    0.0013923    0.0228147
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0453297    0.0224990    0.0681605
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0240619   -0.0270616    0.0751855
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0141497   -0.0013940    0.0296933
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0087539   -0.0021358    0.0196436


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0319756   -0.5569595    0.3159914
0-24 months   COHORTS          INDIA                          High                 NA                -0.0754976   -0.2931812    0.1055429
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0726808   -0.0656561    0.1930597
0-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0061177   -0.2543495    0.1929897
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0843279   -0.0090716    0.1690825
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.1847075   -0.0655102    0.3761657
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.1463964   -0.1841883    0.3846932
0-24 months   PROBIT           BELARUS                        High                 NA                 0.1156777   -0.0465110    0.2527303
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0660920   -0.4482931    0.3977847
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.4035642    0.0600654    0.6215315
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0901408   -0.3312088    0.3781264
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3239045   -0.0082177    0.5466206
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.2045443    0.0130028    0.3589143
0-6 months    COHORTS          GUATEMALA                      High                 NA                -0.0494737   -0.7135175    0.3572316
0-6 months    COHORTS          INDIA                          High                 NA                -0.2300590   -0.5105114   -0.0016774
0-6 months    COHORTS          PHILIPPINES                    High                 NA                -0.1910972   -0.3949698   -0.0170203
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0758745   -0.5173303    0.2371431
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0081357   -0.1081542    0.1122222
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.0427396   -0.6399924    0.3370055
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0781081   -0.3185292    0.3554298
0-6 months    PROBIT           BELARUS                        High                 NA                 0.1074330   -0.0568648    0.2461895
0-6 months    PROVIDE          BANGLADESH                     High                 NA                -0.2485137   -0.9073454    0.1827456
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.2977662   -0.2111830    0.5928507
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.1400000   -1.1896425    0.4064785
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2610019   -0.2696929    0.5698817
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.1652920   -0.0679245    0.3475780
6-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0433673   -1.0976561    0.5637292
6-24 months   COHORTS          INDIA                          High                 NA                 0.2472945   -0.1440653    0.5047787
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.3499458    0.1520490    0.5016571
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0570197   -0.2789933    0.3047565
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.2895620    0.1387473    0.4139674
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.2786973   -0.0187264    0.4892863
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.4688584    0.2075767    0.6439890
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.1896647   -0.3287005    0.5058003
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3466667   -0.1582084    0.6314614
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.2696516   -0.1543240    0.5379037
