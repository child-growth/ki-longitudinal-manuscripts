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

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
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




# Results Detail

## Results Plots
![](/tmp/03bb1d63-ed05-43e2-a94a-df293ff9154f/babf196b-30e8-4ca8-b113-e654def4ebee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/03bb1d63-ed05-43e2-a94a-df293ff9154f/babf196b-30e8-4ca8-b113-e654def4ebee/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/03bb1d63-ed05-43e2-a94a-df293ff9154f/babf196b-30e8-4ca8-b113-e654def4ebee/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/03bb1d63-ed05-43e2-a94a-df293ff9154f/babf196b-30e8-4ca8-b113-e654def4ebee/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                0.0752212   0.0414547   0.1089877
0-24 months   COHORTS          GUATEMALA                      Low                  NA                0.0666798   0.0459968   0.0873628
0-24 months   COHORTS          GUATEMALA                      Medium               NA                0.0738496   0.0491509   0.0985483
0-24 months   COHORTS          INDIA                          High                 NA                0.1016868   0.0768716   0.1265019
0-24 months   COHORTS          INDIA                          Low                  NA                0.0786919   0.0543017   0.1030821
0-24 months   COHORTS          INDIA                          Medium               NA                0.1047093   0.0750342   0.1343844
0-24 months   COHORTS          PHILIPPINES                    High                 NA                0.1118003   0.0888864   0.1347141
0-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.1233663   0.0984631   0.1482695
0-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.1310539   0.1093030   0.1528047
0-24 months   GMS-Nepal        NEPAL                          High                 NA                0.2560100   0.1841672   0.3278528
0-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.2553321   0.2053223   0.3053419
0-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.2386471   0.1728349   0.3044592
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.0585092   0.0475193   0.0694990
0-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.0601277   0.0540169   0.0662385
0-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.0592648   0.0526033   0.0659264
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.0585948   0.0345759   0.0826137
0-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.0595335   0.0456533   0.0734137
0-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.0648075   0.0515256   0.0780895
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.0734718   0.0435511   0.1033925
0-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.1206878   0.0793013   0.1620743
0-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.0693317   0.0348714   0.1037919
0-24 months   PROBIT           BELARUS                        High                 NA                0.0754417   0.0401653   0.1107181
0-24 months   PROBIT           BELARUS                        Low                  NA                0.0771584   0.0460037   0.1083131
0-24 months   PROBIT           BELARUS                        Medium               NA                0.0788483   0.0451409   0.1125557
0-24 months   PROVIDE          BANGLADESH                     High                 NA                0.0560345   0.0264189   0.0856501
0-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.0840336   0.0487611   0.1193061
0-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.0391304   0.0140529   0.0642079
0-24 months   SAS-CompFeed     INDIA                          High                 NA                0.1038832   0.0591772   0.1485891
0-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.1719590   0.1296650   0.2142529
0-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.1388890   0.0945510   0.1832271
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.1628030   0.0933069   0.2322991
0-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.1610836   0.1004001   0.2217672
0-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.1867775   0.1261637   0.2473912
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0446047   0.0254769   0.0637325
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0677491   0.0539350   0.0815632
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0754629   0.0551586   0.0957672
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.0821644   0.0673616   0.0969673
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.0992085   0.0887869   0.1096300
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.0905972   0.0853690   0.0958254
0-6 months    COHORTS          GUATEMALA                      High                 NA                0.0686473   0.0342584   0.1030362
0-6 months    COHORTS          GUATEMALA                      Low                  NA                0.0578070   0.0366294   0.0789846
0-6 months    COHORTS          GUATEMALA                      Medium               NA                0.0618037   0.0367520   0.0868555
0-6 months    COHORTS          INDIA                          High                 NA                0.0782867   0.0558576   0.1007158
0-6 months    COHORTS          INDIA                          Low                  NA                0.0366916   0.0197039   0.0536792
0-6 months    COHORTS          INDIA                          Medium               NA                0.0744013   0.0488195   0.0999832
0-6 months    COHORTS          PHILIPPINES                    High                 NA                0.0755729   0.0593485   0.0917973
0-6 months    COHORTS          PHILIPPINES                    Low                  NA                0.0473654   0.0329576   0.0617732
0-6 months    COHORTS          PHILIPPINES                    Medium               NA                0.0719131   0.0559408   0.0878853
0-6 months    GMS-Nepal        NEPAL                          High                 NA                0.1251277   0.0743794   0.1758760
0-6 months    GMS-Nepal        NEPAL                          Low                  NA                0.0984109   0.0639461   0.1328757
0-6 months    GMS-Nepal        NEPAL                          Medium               NA                0.1315670   0.0849549   0.1781790
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                0.0408106   0.0307701   0.0508510
0-6 months    JiVitA-3         BANGLADESH                     Low                  NA                0.0412742   0.0362924   0.0462561
0-6 months    JiVitA-3         BANGLADESH                     Medium               NA                0.0393869   0.0339423   0.0448315
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                0.0177499   0.0072782   0.0282216
0-6 months    JiVitA-4         BANGLADESH                     Low                  NA                0.0224867   0.0151158   0.0298577
0-6 months    JiVitA-4         BANGLADESH                     Medium               NA                0.0200062   0.0130228   0.0269895
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                0.0583539   0.0312778   0.0854300
0-6 months    NIH-Crypto       BANGLADESH                     Low                  NA                0.0849135   0.0493725   0.1204545
0-6 months    NIH-Crypto       BANGLADESH                     Medium               NA                0.0555675   0.0249377   0.0861973
0-6 months    PROBIT           BELARUS                        High                 NA                0.0746675   0.0397348   0.1096003
0-6 months    PROBIT           BELARUS                        Low                  NA                0.0754082   0.0443322   0.1064842
0-6 months    PROBIT           BELARUS                        Medium               NA                0.0782351   0.0448034   0.1116668
0-6 months    PROVIDE          BANGLADESH                     High                 NA                0.0517241   0.0232055   0.0802428
0-6 months    PROVIDE          BANGLADESH                     Low                  NA                0.0420168   0.0165097   0.0675239
0-6 months    PROVIDE          BANGLADESH                     Medium               NA                0.0304348   0.0082187   0.0526509
0-6 months    SAS-CompFeed     INDIA                          High                 NA                0.0449233   0.0131587   0.0766879
0-6 months    SAS-CompFeed     INDIA                          Low                  NA                0.0855898   0.0639929   0.1071866
0-6 months    SAS-CompFeed     INDIA                          Medium               NA                0.0567937   0.0216242   0.0919633
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                0.0545455   0.0120569   0.0970340
0-6 months    SAS-FoodSuppl    INDIA                          Low                  NA                0.0476190   0.0131519   0.0820862
0-6 months    SAS-FoodSuppl    INDIA                          Medium               NA                0.0434783   0.0119399   0.0750166
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0246466   0.0104429   0.0388503
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0337267   0.0237656   0.0436878
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0376294   0.0231794   0.0520793
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.0516213   0.0369949   0.0662477
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.0667458   0.0552684   0.0782231
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.0695562   0.0645554   0.0745570
6-24 months   COHORTS          GUATEMALA                      High                 NA                0.0238095   0.0031807   0.0444383
6-24 months   COHORTS          GUATEMALA                      Low                  NA                0.0234834   0.0103477   0.0366190
6-24 months   COHORTS          GUATEMALA                      Medium               NA                0.0272277   0.0113510   0.0431045
6-24 months   COHORTS          INDIA                          High                 NA                0.0305071   0.0133443   0.0476699
6-24 months   COHORTS          INDIA                          Low                  NA                0.0316401   0.0178405   0.0454396
6-24 months   COHORTS          INDIA                          Medium               NA                0.0318695   0.0141338   0.0496051
6-24 months   COHORTS          PHILIPPINES                    High                 NA                0.0497866   0.0358178   0.0637553
6-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.0802394   0.0607376   0.0997411
6-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.0686421   0.0523096   0.0849745
6-24 months   GMS-Nepal        NEPAL                          High                 NA                0.1910399   0.1211207   0.2609591
6-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.2134704   0.1622036   0.2647371
6-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.1387353   0.0821855   0.1952851
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.0296602   0.0177852   0.0415353
6-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.0312152   0.0265154   0.0359149
6-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.0324126   0.0258532   0.0389720
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.0416804   0.0203345   0.0630263
6-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.0413799   0.0289507   0.0538091
6-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.0487316   0.0377740   0.0596891
6-24 months   SAS-CompFeed     INDIA                          High                 NA                0.0705512   0.0316248   0.1094776
6-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.1113638   0.0725663   0.1501613
6-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.0936171   0.0689938   0.1182405
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.1146637   0.0492861   0.1800412
6-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.1060444   0.0581660   0.1539228
6-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.1445717   0.0893278   0.1998156
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0261204   0.0100106   0.0422303
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0436898   0.0313594   0.0560201
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0454057   0.0277196   0.0630918
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.0262954   0.0137038   0.0388871
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.0473104   0.0361906   0.0584303
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.0301953   0.0263398   0.0340507


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
0-24 months   COHORTS          GUATEMALA                      Low                  High              0.8864494   0.5142308   1.5280933
0-24 months   COHORTS          GUATEMALA                      Medium               High              0.9817656   0.5611999   1.7175051
0-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          Low                  High              0.7738655   0.5214848   1.1483898
0-24 months   COHORTS          INDIA                          Medium               High              1.0297241   0.7082515   1.4971118
0-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    Low                  High              1.1034526   0.8313158   1.4646751
0-24 months   COHORTS          PHILIPPINES                    Medium               High              1.1722141   0.9065447   1.5157399
0-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          Low                  High              0.9973521   0.7080819   1.4047970
0-24 months   GMS-Nepal        NEPAL                          Medium               High              0.9321788   0.6288556   1.3818075
0-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.0276627   0.8364057   1.2626536
0-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.0129153   0.8245612   1.2442949
0-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.0160203   0.6450402   1.6003612
0-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.1060286   0.6980506   1.7524508
0-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     Low                  High              1.6426406   0.9642289   2.7983692
0-24 months   NIH-Crypto       BANGLADESH                     Medium               High              0.9436498   0.4962045   1.7945723
0-24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        Low                  High              1.0227553   0.8891935   1.1763789
0-24 months   PROBIT           BELARUS                        Medium               High              1.0451556   0.9286044   1.1763354
0-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     Low                  High              1.4996768   0.7636284   2.9451898
0-24 months   PROVIDE          BANGLADESH                     Medium               High              0.6983278   0.3042943   1.6025988
0-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          Low                  High              1.6553113   0.9713904   2.8207564
0-24 months   SAS-CompFeed     INDIA                          Medium               High              1.3369736   0.7388163   2.4194086
0-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   SAS-FoodSuppl    INDIA                          Low                  High              0.9894388   0.5605444   1.7464973
0-24 months   SAS-FoodSuppl    INDIA                          Medium               High              1.1472605   0.6716460   1.9596732
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.5188781   0.9447415   2.4419279
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.6918156   1.0197431   2.8068246
0-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.2074382   0.9867567   1.4774736
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.1026332   0.9201287   1.3213368
0-6 months    COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      Low                  High              0.8420872   0.4542352   1.5611093
0-6 months    COHORTS          GUATEMALA                      Medium               High              0.9003083   0.4738382   1.7106158
0-6 months    COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          Low                  High              0.4686817   0.2719280   0.8077968
0-6 months    COHORTS          INDIA                          Medium               High              0.9503698   0.6075246   1.4866936
0-6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    Low                  High              0.6267506   0.4320213   0.9092524
0-6 months    COHORTS          PHILIPPINES                    Medium               High              0.9515719   0.6990568   1.2953012
0-6 months    GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          Low                  High              0.7864838   0.4604230   1.3434534
0-6 months    GMS-Nepal        NEPAL                          Medium               High              1.0514620   0.6135709   1.8018658
0-6 months    JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     Low                  High              1.0113615   0.7812394   1.3092684
0-6 months    JiVitA-3         BANGLADESH                     Medium               High              0.9651156   0.7442886   1.2514609
0-6 months    JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH                     Low                  High              1.2668645   0.6442656   2.4911245
0-6 months    JiVitA-4         BANGLADESH                     Medium               High              1.1271131   0.5613511   2.2630825
0-6 months    NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     Low                  High              1.4551481   0.7789734   2.7182649
0-6 months    NIH-Crypto       BANGLADESH                     Medium               High              0.9522512   0.4637418   1.9553601
0-6 months    PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        Low                  High              1.0099193   0.8875160   1.1492041
0-6 months    PROBIT           BELARUS                        Medium               High              1.0477787   0.9364240   1.1723750
0-6 months    PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     Low                  High              0.8123249   0.3577453   1.8445294
0-6 months    PROVIDE          BANGLADESH                     Medium               High              0.5884058   0.2357163   1.4688054
0-6 months    SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          Low                  High              1.9052434   0.9556866   3.7982665
0-6 months    SAS-CompFeed     INDIA                          Medium               High              1.2642387   0.5954525   2.6841763
0-6 months    SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    SAS-FoodSuppl    INDIA                          Low                  High              0.8730159   0.3014555   2.5282558
0-6 months    SAS-FoodSuppl    INDIA                          Medium               High              0.7971014   0.2749475   2.3108800
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.3684120   0.7161720   2.6146669
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.5267583   0.7637750   3.0519342
0-6 months    ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  High              1.2929901   0.9285747   1.8004189
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               High              1.3474332   1.0062086   1.8043735
6-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          GUATEMALA                      Low                  High              0.9863014   0.3516643   2.7662471
6-24 months   COHORTS          GUATEMALA                      Medium               High              1.1435644   0.4024405   3.2495222
6-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          INDIA                          Low                  High              1.0371397   0.5091575   2.1126251
6-24 months   COHORTS          INDIA                          Medium               High              1.0446593   0.4734642   2.3049537
6-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    Low                  High              1.6116672   1.1122795   2.3352684
6-24 months   COHORTS          PHILIPPINES                    Medium               High              1.3787270   0.9547423   1.9909961
6-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          Low                  High              1.1174126   0.7218853   1.7296529
6-24 months   GMS-Nepal        NEPAL                          Medium               High              0.7262113   0.4202450   1.2549412
6-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.0524244   0.6833178   1.6209107
6-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.0927958   0.6993377   1.7076196
6-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH                     Low                  High              0.9927903   0.5568701   1.7699505
6-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.1691716   0.6628959   2.0621069
6-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          Low                  High              1.5784821   0.8741284   2.8503890
6-24 months   SAS-CompFeed     INDIA                          Medium               High              1.3269392   0.7082828   2.4859670
6-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   SAS-FoodSuppl    INDIA                          Low                  High              0.9248302   0.4473600   1.9119072
6-24 months   SAS-FoodSuppl    INDIA                          Medium               High              1.2608329   0.6356015   2.5010951
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.6726279   0.8487840   3.2961085
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.7383213   0.8380641   3.6056441
6-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.7991903   1.0553819   3.0672171
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.1483098   0.6995536   1.8849381


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0039084   -0.0342169   0.0264001
0-24 months   COHORTS          INDIA                          High                 NA                -0.0049349   -0.0240088   0.0141391
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0109333   -0.0092155   0.0310822
0-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0027619   -0.0617435   0.0672674
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0020222   -0.0083180   0.0123624
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0033722   -0.0191945   0.0259389
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0135994   -0.0109370   0.0381358
0-24 months   PROBIT           BELARUS                        High                 NA                 0.0026460   -0.0048583   0.0101502
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0039655   -0.0206446   0.0285756
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0437990   -0.0027863   0.0903842
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0070534   -0.0535047   0.0676116
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0212787    0.0031492   0.0394081
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0090797   -0.0049691   0.0231285
0-6 months    COHORTS          GUATEMALA                      High                 NA                -0.0084668   -0.0391399   0.0222064
0-6 months    COHORTS          INDIA                          High                 NA                -0.0140665   -0.0305506   0.0024175
0-6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0086040   -0.0210328   0.0038249
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0096306   -0.0535155   0.0342543
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0002991   -0.0089545   0.0095526
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0034708   -0.0056274   0.0125690
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0076092   -0.0140891   0.0293075
0-6 months    PROBIT           BELARUS                        High                 NA                 0.0026988   -0.0044398   0.0098374
0-6 months    PROVIDE          BANGLADESH                     High                 NA                -0.0102956   -0.0324867   0.0118956
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.0216546   -0.0018794   0.0451886
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.0066986   -0.0424031   0.0290059
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0085049   -0.0047977   0.0218075
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0164897    0.0022631   0.0307164
6-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0010794   -0.0176188   0.0197775
6-24 months   COHORTS          INDIA                          High                 NA                 0.0057919   -0.0093177   0.0209015
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0168801    0.0042666   0.0294937
6-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0008871   -0.0640400   0.0622658
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0020753   -0.0094319   0.0135825
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0017484   -0.0181802   0.0216769
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0261299   -0.0105669   0.0628267
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0122020   -0.0462138   0.0706178
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0146959   -0.0007098   0.0301016
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0061684   -0.0061446   0.0184814


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0548065   -0.5781202   0.2949734
0-24 months   COHORTS          INDIA                          High                 NA                -0.0510054   -0.2677173   0.1286604
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0890819   -0.0905426   0.2391202
0-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0106732   -0.2727913   0.2310071
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0334076   -0.1534959   0.1900268
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0544196   -0.3903668   0.3569163
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.1561871   -0.1759578   0.3945190
0-24 months   PROBIT           BELARUS                        High                 NA                 0.0338846   -0.0723835   0.1296220
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0660920   -0.4482931   0.3977847
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.2965759   -0.0754859   0.5399238
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0415259   -0.3901128   0.3391381
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3229747   -0.0104185   0.5463630
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0995097   -0.0684347   0.2410554
0-6 months    COHORTS          GUATEMALA                      High                 NA                -0.1406893   -0.7837030   0.2705220
0-6 months    COHORTS          INDIA                          High                 NA                -0.2190360   -0.5005553   0.0096675
0-6 months    COHORTS          PHILIPPINES                    High                 NA                -0.1284770   -0.3289028   0.0417205
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0833837   -0.5381879   0.2369461
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0072750   -0.2454545   0.2087202
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.1635562   -0.4012375   0.5006998
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.1153555   -0.2822542   0.3896718
0-6 months    PROBIT           BELARUS                        High                 NA                 0.0348836   -0.0669293   0.1269808
0-6 months    PROVIDE          BANGLADESH                     High                 NA                -0.2485137   -0.9073454   0.1827456
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.3252524   -0.1519484   0.6047703
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                -0.1400000   -1.1896425   0.4064785
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2565465   -0.2686091   0.5643078
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.2421009    0.0019656   0.4244577
6-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0433673   -1.0976561   0.5637292
6-24 months   COHORTS          INDIA                          High                 NA                 0.1595606   -0.3757409   0.4865760
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.2532017    0.0439873   0.4166315
6-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0046651   -0.3982903   0.2781527
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0653929   -0.3776195   0.3659422
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0402583   -0.5490483   0.4053741
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.2702691   -0.2124309   0.5607937
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0961806   -0.5032495   0.4565842
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3600494   -0.1408801   0.6410344
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.1900089   -0.2928262   0.4925184
