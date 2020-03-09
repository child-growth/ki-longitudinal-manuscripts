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

agecat        studyid          country                        feducyrs    ever_wasted   n_cell       n
------------  ---------------  -----------------------------  ---------  ------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      High                  0      164    1234
0-24 months   COHORTS          GUATEMALA                      High                  1       67    1234
0-24 months   COHORTS          GUATEMALA                      Low                   0      419    1234
0-24 months   COHORTS          GUATEMALA                      Low                   1      139    1234
0-24 months   COHORTS          GUATEMALA                      Medium                0      330    1234
0-24 months   COHORTS          GUATEMALA                      Medium                1      115    1234
0-24 months   COHORTS          INDIA                          High                  0      386    1447
0-24 months   COHORTS          INDIA                          High                  1      181    1447
0-24 months   COHORTS          INDIA                          Low                   0      305    1447
0-24 months   COHORTS          INDIA                          Low                   1      167    1447
0-24 months   COHORTS          INDIA                          Medium                0      269    1447
0-24 months   COHORTS          INDIA                          Medium                1      139    1447
0-24 months   COHORTS          PHILIPPINES                    High                  0      640    2868
0-24 months   COHORTS          PHILIPPINES                    High                  1      388    2868
0-24 months   COHORTS          PHILIPPINES                    Low                   0      480    2868
0-24 months   COHORTS          PHILIPPINES                    Low                   1      346    2868
0-24 months   COHORTS          PHILIPPINES                    Medium                0      597    2868
0-24 months   COHORTS          PHILIPPINES                    Medium                1      417    2868
0-24 months   GMS-Nepal        NEPAL                          High                  0       65     684
0-24 months   GMS-Nepal        NEPAL                          High                  1      104     684
0-24 months   GMS-Nepal        NEPAL                          Low                   0      115     684
0-24 months   GMS-Nepal        NEPAL                          Low                   1      177     684
0-24 months   GMS-Nepal        NEPAL                          Medium                0      100     684
0-24 months   GMS-Nepal        NEPAL                          Medium                1      123     684
0-24 months   JiVitA-3         BANGLADESH                     High                  0     4908   25970
0-24 months   JiVitA-3         BANGLADESH                     High                  1     1569   25970
0-24 months   JiVitA-3         BANGLADESH                     Low                   0     7799   25970
0-24 months   JiVitA-3         BANGLADESH                     Low                   1     2838   25970
0-24 months   JiVitA-3         BANGLADESH                     Medium                0     6580   25970
0-24 months   JiVitA-3         BANGLADESH                     Medium                1     2276   25970
0-24 months   JiVitA-4         BANGLADESH                     High                  0      912    5277
0-24 months   JiVitA-4         BANGLADESH                     High                  1      335    5277
0-24 months   JiVitA-4         BANGLADESH                     Low                   0     1303    5277
0-24 months   JiVitA-4         BANGLADESH                     Low                   1      651    5277
0-24 months   JiVitA-4         BANGLADESH                     Medium                0     1426    5277
0-24 months   JiVitA-4         BANGLADESH                     Medium                1      650    5277
0-24 months   LCNI-5           MALAWI                         High                  0      235     813
0-24 months   LCNI-5           MALAWI                         High                  1       16     813
0-24 months   LCNI-5           MALAWI                         Low                   0      267     813
0-24 months   LCNI-5           MALAWI                         Low                   1       24     813
0-24 months   LCNI-5           MALAWI                         Medium                0      246     813
0-24 months   LCNI-5           MALAWI                         Medium                1       25     813
0-24 months   MAL-ED           BANGLADESH                     High                  0       41     147
0-24 months   MAL-ED           BANGLADESH                     High                  1       13     147
0-24 months   MAL-ED           BANGLADESH                     Low                   0       23     147
0-24 months   MAL-ED           BANGLADESH                     Low                   1       16     147
0-24 months   MAL-ED           BANGLADESH                     Medium                0       36     147
0-24 months   MAL-ED           BANGLADESH                     Medium                1       18     147
0-24 months   MAL-ED           INDIA                          High                  0       22     147
0-24 months   MAL-ED           INDIA                          High                  1       22     147
0-24 months   MAL-ED           INDIA                          Low                   0       29     147
0-24 months   MAL-ED           INDIA                          Low                   1       30     147
0-24 months   MAL-ED           INDIA                          Medium                0       27     147
0-24 months   MAL-ED           INDIA                          Medium                1       17     147
0-24 months   MAL-ED           NEPAL                          High                  0       31      98
0-24 months   MAL-ED           NEPAL                          High                  1       11      98
0-24 months   MAL-ED           NEPAL                          Low                   0       17      98
0-24 months   MAL-ED           NEPAL                          Low                   1       11      98
0-24 months   MAL-ED           NEPAL                          Medium                0       18      98
0-24 months   MAL-ED           NEPAL                          Medium                1       10      98
0-24 months   MAL-ED           PERU                           High                  0      111     250
0-24 months   MAL-ED           PERU                           High                  1        9     250
0-24 months   MAL-ED           PERU                           Low                   0       65     250
0-24 months   MAL-ED           PERU                           Low                   1        4     250
0-24 months   MAL-ED           PERU                           Medium                0       54     250
0-24 months   MAL-ED           PERU                           Medium                1        7     250
0-24 months   MAL-ED           SOUTH AFRICA                   High                  0       36     110
0-24 months   MAL-ED           SOUTH AFRICA                   High                  1        7     110
0-24 months   MAL-ED           SOUTH AFRICA                   Low                   0       29     110
0-24 months   MAL-ED           SOUTH AFRICA                   Low                   1        8     110
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                0       23     110
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                1        7     110
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  0      113     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  1       17     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   0       52     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   1        9     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                0       19     211
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                1        1     211
0-24 months   NIH-Crypto       BANGLADESH                     High                  0      202     758
0-24 months   NIH-Crypto       BANGLADESH                     High                  1       94     758
0-24 months   NIH-Crypto       BANGLADESH                     Low                   0      152     758
0-24 months   NIH-Crypto       BANGLADESH                     Low                   1       90     758
0-24 months   NIH-Crypto       BANGLADESH                     Medium                0      154     758
0-24 months   NIH-Crypto       BANGLADESH                     Medium                1       66     758
0-24 months   PROBIT           BELARUS                        High                  0     2071   16315
0-24 months   PROBIT           BELARUS                        High                  1      637   16315
0-24 months   PROBIT           BELARUS                        Low                   0     4755   16315
0-24 months   PROBIT           BELARUS                        Low                   1     1663   16315
0-24 months   PROBIT           BELARUS                        Medium                0     5346   16315
0-24 months   PROBIT           BELARUS                        Medium                1     1843   16315
0-24 months   PROVIDE          BANGLADESH                     High                  0      165     700
0-24 months   PROVIDE          BANGLADESH                     High                  1       67     700
0-24 months   PROVIDE          BANGLADESH                     Low                   0      136     700
0-24 months   PROVIDE          BANGLADESH                     Low                   1      102     700
0-24 months   PROVIDE          BANGLADESH                     Medium                0      153     700
0-24 months   PROVIDE          BANGLADESH                     Medium                1       77     700
0-24 months   SAS-CompFeed     INDIA                          High                  0      235    1510
0-24 months   SAS-CompFeed     INDIA                          High                  1      151    1510
0-24 months   SAS-CompFeed     INDIA                          Low                   0      352    1510
0-24 months   SAS-CompFeed     INDIA                          Low                   1      291    1510
0-24 months   SAS-CompFeed     INDIA                          Medium                0      297    1510
0-24 months   SAS-CompFeed     INDIA                          Medium                1      184    1510
0-24 months   SAS-FoodSuppl    INDIA                          High                  0       62     418
0-24 months   SAS-FoodSuppl    INDIA                          High                  1       48     418
0-24 months   SAS-FoodSuppl    INDIA                          Low                   0       79     418
0-24 months   SAS-FoodSuppl    INDIA                          Low                   1       68     418
0-24 months   SAS-FoodSuppl    INDIA                          Medium                0       80     418
0-24 months   SAS-FoodSuppl    INDIA                          Medium                1       81     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      355    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       94    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0      966    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      304    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0      498    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      166    2383
0-24 months   ZVITAMBO         ZIMBABWE                       High                  0      783   13568
0-24 months   ZVITAMBO         ZIMBABWE                       High                  1      209   13568
0-24 months   ZVITAMBO         ZIMBABWE                       Low                   0     1720   13568
0-24 months   ZVITAMBO         ZIMBABWE                       Low                   1      564   13568
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                0     7893   13568
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                1     2399   13568
0-6 months    COHORTS          GUATEMALA                      High                  0      146     997
0-6 months    COHORTS          GUATEMALA                      High                  1       44     997
0-6 months    COHORTS          GUATEMALA                      Low                   0      355     997
0-6 months    COHORTS          GUATEMALA                      Low                   1       88     997
0-6 months    COHORTS          GUATEMALA                      Medium                0      296     997
0-6 months    COHORTS          GUATEMALA                      Medium                1       68     997
0-6 months    COHORTS          INDIA                          High                  0      419    1417
0-6 months    COHORTS          INDIA                          High                  1      138    1417
0-6 months    COHORTS          INDIA                          Low                   0      357    1417
0-6 months    COHORTS          INDIA                          Low                   1      101    1417
0-6 months    COHORTS          INDIA                          Medium                0      292    1417
0-6 months    COHORTS          INDIA                          Medium                1      110    1417
0-6 months    COHORTS          PHILIPPINES                    High                  0      768    2867
0-6 months    COHORTS          PHILIPPINES                    High                  1      260    2867
0-6 months    COHORTS          PHILIPPINES                    Low                   0      649    2867
0-6 months    COHORTS          PHILIPPINES                    Low                   1      177    2867
0-6 months    COHORTS          PHILIPPINES                    Medium                0      793    2867
0-6 months    COHORTS          PHILIPPINES                    Medium                1      220    2867
0-6 months    GMS-Nepal        NEPAL                          High                  0       94     684
0-6 months    GMS-Nepal        NEPAL                          High                  1       75     684
0-6 months    GMS-Nepal        NEPAL                          Low                   0      198     684
0-6 months    GMS-Nepal        NEPAL                          Low                   1       94     684
0-6 months    GMS-Nepal        NEPAL                          Medium                0      134     684
0-6 months    GMS-Nepal        NEPAL                          Medium                1       89     684
0-6 months    JiVitA-3         BANGLADESH                     High                  0     5344   25882
0-6 months    JiVitA-3         BANGLADESH                     High                  1     1106   25882
0-6 months    JiVitA-3         BANGLADESH                     Low                   0     8696   25882
0-6 months    JiVitA-3         BANGLADESH                     Low                   1     1905   25882
0-6 months    JiVitA-3         BANGLADESH                     Medium                0     7293   25882
0-6 months    JiVitA-3         BANGLADESH                     Medium                1     1538   25882
0-6 months    JiVitA-4         BANGLADESH                     High                  0     1056    4948
0-6 months    JiVitA-4         BANGLADESH                     High                  1      119    4948
0-6 months    JiVitA-4         BANGLADESH                     Low                   0     1625    4948
0-6 months    JiVitA-4         BANGLADESH                     Low                   1      206    4948
0-6 months    JiVitA-4         BANGLADESH                     Medium                0     1733    4948
0-6 months    JiVitA-4         BANGLADESH                     Medium                1      209    4948
0-6 months    LCNI-5           MALAWI                         High                  0       72     267
0-6 months    LCNI-5           MALAWI                         High                  1        1     267
0-6 months    LCNI-5           MALAWI                         Low                   0      104     267
0-6 months    LCNI-5           MALAWI                         Low                   1        0     267
0-6 months    LCNI-5           MALAWI                         Medium                0       87     267
0-6 months    LCNI-5           MALAWI                         Medium                1        3     267
0-6 months    MAL-ED           BANGLADESH                     High                  0       45     147
0-6 months    MAL-ED           BANGLADESH                     High                  1        9     147
0-6 months    MAL-ED           BANGLADESH                     Low                   0       27     147
0-6 months    MAL-ED           BANGLADESH                     Low                   1       12     147
0-6 months    MAL-ED           BANGLADESH                     Medium                0       42     147
0-6 months    MAL-ED           BANGLADESH                     Medium                1       12     147
0-6 months    MAL-ED           INDIA                          High                  0       30     147
0-6 months    MAL-ED           INDIA                          High                  1       14     147
0-6 months    MAL-ED           INDIA                          Low                   0       41     147
0-6 months    MAL-ED           INDIA                          Low                   1       18     147
0-6 months    MAL-ED           INDIA                          Medium                0       33     147
0-6 months    MAL-ED           INDIA                          Medium                1       11     147
0-6 months    MAL-ED           NEPAL                          High                  0       33      98
0-6 months    MAL-ED           NEPAL                          High                  1        9      98
0-6 months    MAL-ED           NEPAL                          Low                   0       21      98
0-6 months    MAL-ED           NEPAL                          Low                   1        7      98
0-6 months    MAL-ED           NEPAL                          Medium                0       25      98
0-6 months    MAL-ED           NEPAL                          Medium                1        3      98
0-6 months    MAL-ED           PERU                           High                  0      118     250
0-6 months    MAL-ED           PERU                           High                  1        2     250
0-6 months    MAL-ED           PERU                           Low                   0       67     250
0-6 months    MAL-ED           PERU                           Low                   1        2     250
0-6 months    MAL-ED           PERU                           Medium                0       58     250
0-6 months    MAL-ED           PERU                           Medium                1        3     250
0-6 months    MAL-ED           SOUTH AFRICA                   High                  0       39     110
0-6 months    MAL-ED           SOUTH AFRICA                   High                  1        4     110
0-6 months    MAL-ED           SOUTH AFRICA                   Low                   0       33     110
0-6 months    MAL-ED           SOUTH AFRICA                   Low                   1        4     110
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                0       29     110
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                1        1     110
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  0      125     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  1        5     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   0       58     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   1        3     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                0       19     211
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                1        1     211
0-6 months    NIH-Crypto       BANGLADESH                     High                  0      219     758
0-6 months    NIH-Crypto       BANGLADESH                     High                  1       77     758
0-6 months    NIH-Crypto       BANGLADESH                     Low                   0      172     758
0-6 months    NIH-Crypto       BANGLADESH                     Low                   1       70     758
0-6 months    NIH-Crypto       BANGLADESH                     Medium                0      172     758
0-6 months    NIH-Crypto       BANGLADESH                     Medium                1       48     758
0-6 months    PROBIT           BELARUS                        High                  0     2083   16312
0-6 months    PROBIT           BELARUS                        High                  1      625   16312
0-6 months    PROBIT           BELARUS                        Low                   0     4793   16312
0-6 months    PROBIT           BELARUS                        Low                   1     1625   16312
0-6 months    PROBIT           BELARUS                        Medium                0     5381   16312
0-6 months    PROBIT           BELARUS                        Medium                1     1805   16312
0-6 months    PROVIDE          BANGLADESH                     High                  0      180     700
0-6 months    PROVIDE          BANGLADESH                     High                  1       52     700
0-6 months    PROVIDE          BANGLADESH                     Low                   0      167     700
0-6 months    PROVIDE          BANGLADESH                     Low                   1       71     700
0-6 months    PROVIDE          BANGLADESH                     Medium                0      172     700
0-6 months    PROVIDE          BANGLADESH                     Medium                1       58     700
0-6 months    SAS-CompFeed     INDIA                          High                  0      309    1502
0-6 months    SAS-CompFeed     INDIA                          High                  1       76    1502
0-6 months    SAS-CompFeed     INDIA                          Low                   0      491    1502
0-6 months    SAS-CompFeed     INDIA                          Low                   1      149    1502
0-6 months    SAS-CompFeed     INDIA                          Medium                0      372    1502
0-6 months    SAS-CompFeed     INDIA                          Medium                1      105    1502
0-6 months    SAS-FoodSuppl    INDIA                          High                  0       93     418
0-6 months    SAS-FoodSuppl    INDIA                          High                  1       17     418
0-6 months    SAS-FoodSuppl    INDIA                          Low                   0      121     418
0-6 months    SAS-FoodSuppl    INDIA                          Low                   1       26     418
0-6 months    SAS-FoodSuppl    INDIA                          Medium                0      126     418
0-6 months    SAS-FoodSuppl    INDIA                          Medium                1       35     418
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      395    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       54    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0     1088    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      182    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0      567    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1       97    2383
0-6 months    ZVITAMBO         ZIMBABWE                       High                  0      815   13478
0-6 months    ZVITAMBO         ZIMBABWE                       High                  1      170   13478
0-6 months    ZVITAMBO         ZIMBABWE                       Low                   0     1863   13478
0-6 months    ZVITAMBO         ZIMBABWE                       Low                   1      406   13478
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                0     8381   13478
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                1     1843   13478
6-24 months   COHORTS          GUATEMALA                      High                  0      181    1125
6-24 months   COHORTS          GUATEMALA                      High                  1       29    1125
6-24 months   COHORTS          GUATEMALA                      Low                   0      445    1125
6-24 months   COHORTS          GUATEMALA                      Low                   1       66    1125
6-24 months   COHORTS          GUATEMALA                      Medium                0      354    1125
6-24 months   COHORTS          GUATEMALA                      Medium                1       50    1125
6-24 months   COHORTS          INDIA                          High                  0      494    1405
6-24 months   COHORTS          INDIA                          High                  1       55    1405
6-24 months   COHORTS          INDIA                          Low                   0      375    1405
6-24 months   COHORTS          INDIA                          Low                   1       84    1405
6-24 months   COHORTS          INDIA                          Medium                0      350    1405
6-24 months   COHORTS          INDIA                          Medium                1       47    1405
6-24 months   COHORTS          PHILIPPINES                    High                  0      735    2655
6-24 months   COHORTS          PHILIPPINES                    High                  1      188    2655
6-24 months   COHORTS          PHILIPPINES                    Low                   0      526    2655
6-24 months   COHORTS          PHILIPPINES                    Low                   1      252    2655
6-24 months   COHORTS          PHILIPPINES                    Medium                0      686    2655
6-24 months   COHORTS          PHILIPPINES                    Medium                1      268    2655
6-24 months   GMS-Nepal        NEPAL                          High                  0       86     589
6-24 months   GMS-Nepal        NEPAL                          High                  1       59     589
6-24 months   GMS-Nepal        NEPAL                          Low                   0      118     589
6-24 months   GMS-Nepal        NEPAL                          Low                   1      135     589
6-24 months   GMS-Nepal        NEPAL                          Medium                0      107     589
6-24 months   GMS-Nepal        NEPAL                          Medium                1       84     589
6-24 months   JiVitA-3         BANGLADESH                     High                  0     3796   16606
6-24 months   JiVitA-3         BANGLADESH                     High                  1      595   16606
6-24 months   JiVitA-3         BANGLADESH                     Low                   0     5313   16606
6-24 months   JiVitA-3         BANGLADESH                     Low                   1     1183   16606
6-24 months   JiVitA-3         BANGLADESH                     Medium                0     4768   16606
6-24 months   JiVitA-3         BANGLADESH                     Medium                1      951   16606
6-24 months   JiVitA-4         BANGLADESH                     High                  0      985    5273
6-24 months   JiVitA-4         BANGLADESH                     High                  1      260    5273
6-24 months   JiVitA-4         BANGLADESH                     Low                   0     1425    5273
6-24 months   JiVitA-4         BANGLADESH                     Low                   1      528    5273
6-24 months   JiVitA-4         BANGLADESH                     Medium                0     1562    5273
6-24 months   JiVitA-4         BANGLADESH                     Medium                1      513    5273
6-24 months   LCNI-5           MALAWI                         High                  0      232     802
6-24 months   LCNI-5           MALAWI                         High                  1       15     802
6-24 months   LCNI-5           MALAWI                         Low                   0      265     802
6-24 months   LCNI-5           MALAWI                         Low                   1       24     802
6-24 months   LCNI-5           MALAWI                         Medium                0      243     802
6-24 months   LCNI-5           MALAWI                         Medium                1       23     802
6-24 months   MAL-ED           BANGLADESH                     High                  0       42     131
6-24 months   MAL-ED           BANGLADESH                     High                  1        6     131
6-24 months   MAL-ED           BANGLADESH                     Low                   0       28     131
6-24 months   MAL-ED           BANGLADESH                     Low                   1        9     131
6-24 months   MAL-ED           BANGLADESH                     Medium                0       36     131
6-24 months   MAL-ED           BANGLADESH                     Medium                1       10     131
6-24 months   MAL-ED           INDIA                          High                  0       32     137
6-24 months   MAL-ED           INDIA                          High                  1       11     137
6-24 months   MAL-ED           INDIA                          Low                   0       34     137
6-24 months   MAL-ED           INDIA                          Low                   1       20     137
6-24 months   MAL-ED           INDIA                          Medium                0       32     137
6-24 months   MAL-ED           INDIA                          Medium                1        8     137
6-24 months   MAL-ED           NEPAL                          High                  0       36      94
6-24 months   MAL-ED           NEPAL                          High                  1        3      94
6-24 months   MAL-ED           NEPAL                          Low                   0       23      94
6-24 months   MAL-ED           NEPAL                          Low                   1        4      94
6-24 months   MAL-ED           NEPAL                          Medium                0       20      94
6-24 months   MAL-ED           NEPAL                          Medium                1        8      94
6-24 months   MAL-ED           PERU                           High                  0       98     223
6-24 months   MAL-ED           PERU                           High                  1        8     223
6-24 months   MAL-ED           PERU                           Low                   0       58     223
6-24 months   MAL-ED           PERU                           Low                   1        2     223
6-24 months   MAL-ED           PERU                           Medium                0       53     223
6-24 months   MAL-ED           PERU                           Medium                1        4     223
6-24 months   MAL-ED           SOUTH AFRICA                   High                  0       33      96
6-24 months   MAL-ED           SOUTH AFRICA                   High                  1        3      96
6-24 months   MAL-ED           SOUTH AFRICA                   Low                   0       30      96
6-24 months   MAL-ED           SOUTH AFRICA                   Low                   1        6      96
6-24 months   MAL-ED           SOUTH AFRICA                   Medium                0       17      96
6-24 months   MAL-ED           SOUTH AFRICA                   Medium                1        7      96
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  0      115     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  1       13     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   0       47     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   1        8     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                0       19     202
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                1        0     202
6-24 months   NIH-Crypto       BANGLADESH                     High                  0      263     730
6-24 months   NIH-Crypto       BANGLADESH                     High                  1       23     730
6-24 months   NIH-Crypto       BANGLADESH                     Low                   0      188     730
6-24 months   NIH-Crypto       BANGLADESH                     Low                   1       41     730
6-24 months   NIH-Crypto       BANGLADESH                     Medium                0      183     730
6-24 months   NIH-Crypto       BANGLADESH                     Medium                1       32     730
6-24 months   PROBIT           BELARUS                        High                  0     2619   16027
6-24 months   PROBIT           BELARUS                        High                  1       17   16027
6-24 months   PROBIT           BELARUS                        Low                   0     6260   16027
6-24 months   PROBIT           BELARUS                        Low                   1       61   16027
6-24 months   PROBIT           BELARUS                        Medium                0     7014   16027
6-24 months   PROBIT           BELARUS                        Medium                1       56   16027
6-24 months   PROVIDE          BANGLADESH                     High                  0      191     615
6-24 months   PROVIDE          BANGLADESH                     High                  1       23     615
6-24 months   PROVIDE          BANGLADESH                     Low                   0      158     615
6-24 months   PROVIDE          BANGLADESH                     Low                   1       50     615
6-24 months   PROVIDE          BANGLADESH                     Medium                0      167     615
6-24 months   PROVIDE          BANGLADESH                     Medium                1       26     615
6-24 months   SAS-CompFeed     INDIA                          High                  0      263    1386
6-24 months   SAS-CompFeed     INDIA                          High                  1      107    1386
6-24 months   SAS-CompFeed     INDIA                          Low                   0      376    1386
6-24 months   SAS-CompFeed     INDIA                          Low                   1      196    1386
6-24 months   SAS-CompFeed     INDIA                          Medium                0      324    1386
6-24 months   SAS-CompFeed     INDIA                          Medium                1      120    1386
6-24 months   SAS-FoodSuppl    INDIA                          High                  0       71     402
6-24 months   SAS-FoodSuppl    INDIA                          High                  1       36     402
6-24 months   SAS-FoodSuppl    INDIA                          Low                   0       89     402
6-24 months   SAS-FoodSuppl    INDIA                          Low                   1       51     402
6-24 months   SAS-FoodSuppl    INDIA                          Medium                0       99     402
6-24 months   SAS-FoodSuppl    INDIA                          Medium                1       56     402
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      321    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       54    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0      906    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      166    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0      460    2009
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      102    2009
6-24 months   ZVITAMBO         ZIMBABWE                       High                  0      666   10504
6-24 months   ZVITAMBO         ZIMBABWE                       High                  1       51   10504
6-24 months   ZVITAMBO         ZIMBABWE                       Low                   0     1600   10504
6-24 months   ZVITAMBO         ZIMBABWE                       Low                   1      213   10504
6-24 months   ZVITAMBO         ZIMBABWE                       Medium                0     7244   10504
6-24 months   ZVITAMBO         ZIMBABWE                       Medium                1      730   10504


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

* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
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
![](/tmp/bb13edf8-0890-4698-a03a-c656a9b91e39/c837defa-7064-4a50-bdab-152b820e1a73/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bb13edf8-0890-4698-a03a-c656a9b91e39/c837defa-7064-4a50-bdab-152b820e1a73/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bb13edf8-0890-4698-a03a-c656a9b91e39/c837defa-7064-4a50-bdab-152b820e1a73/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bb13edf8-0890-4698-a03a-c656a9b91e39/c837defa-7064-4a50-bdab-152b820e1a73/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                0.2839805   0.2313864   0.3365746
0-24 months   COHORTS          GUATEMALA                      Low                  NA                0.2650086   0.2315237   0.2984935
0-24 months   COHORTS          GUATEMALA                      Medium               NA                0.2570972   0.2158600   0.2983344
0-24 months   COHORTS          INDIA                          High                 NA                0.3388277   0.3018766   0.3757788
0-24 months   COHORTS          INDIA                          Low                  NA                0.3552141   0.3154549   0.3949733
0-24 months   COHORTS          INDIA                          Medium               NA                0.3205796   0.2762283   0.3649309
0-24 months   COHORTS          PHILIPPINES                    High                 NA                0.3704275   0.3375708   0.4032842
0-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.4083766   0.3739750   0.4427783
0-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.4161530   0.3843949   0.4479111
0-24 months   GMS-Nepal        NEPAL                          High                 NA                0.6169414   0.5457299   0.6881529
0-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.6018028   0.5452715   0.6583340
0-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.5542398   0.4819513   0.6265284
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.2537265   0.2357837   0.2716693
0-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.2628994   0.2492906   0.2765081
0-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.2551850   0.2435862   0.2667838
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.2958830   0.2394541   0.3523118
0-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.3229301   0.2931837   0.3526766
0-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.3194405   0.2949919   0.3438891
0-24 months   LCNI-5           MALAWI                         High                 NA                0.0877765   0.0449090   0.1306440
0-24 months   LCNI-5           MALAWI                         Low                  NA                0.0776270   0.0459947   0.1092593
0-24 months   LCNI-5           MALAWI                         Medium               NA                0.0871828   0.0536395   0.1207261
0-24 months   MAL-ED           BANGLADESH                     High                 NA                0.2537027   0.1367308   0.3706745
0-24 months   MAL-ED           BANGLADESH                     Low                  NA                0.4255521   0.2655532   0.5855510
0-24 months   MAL-ED           BANGLADESH                     Medium               NA                0.3541213   0.2251255   0.4831172
0-24 months   MAL-ED           INDIA                          High                 NA                0.4939623   0.3456385   0.6422862
0-24 months   MAL-ED           INDIA                          Low                  NA                0.5063765   0.3763909   0.6363622
0-24 months   MAL-ED           INDIA                          Medium               NA                0.3728019   0.2253410   0.5202627
0-24 months   MAL-ED           NEPAL                          High                 NA                0.2733570   0.1334986   0.4132154
0-24 months   MAL-ED           NEPAL                          Low                  NA                0.3833500   0.1965392   0.5701608
0-24 months   MAL-ED           NEPAL                          Medium               NA                0.3421658   0.1620774   0.5222543
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.1627907   0.0519425   0.2736389
0-24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.2162162   0.0829646   0.3494679
0-24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.2333333   0.0812918   0.3853749
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.3212411   0.2691072   0.3733750
0-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.3639976   0.3029933   0.4250019
0-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.2975642   0.2346132   0.3605153
0-24 months   PROBIT           BELARUS                        High                 NA                0.2499095   0.1919365   0.3078826
0-24 months   PROBIT           BELARUS                        Low                  NA                0.2551297   0.1966356   0.3136238
0-24 months   PROBIT           BELARUS                        Medium               NA                0.2523044   0.1923704   0.3122385
0-24 months   PROVIDE          BANGLADESH                     High                 NA                0.3344937   0.2805676   0.3884198
0-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.4084354   0.3513811   0.4654898
0-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.3158543   0.2651499   0.3665586
0-24 months   SAS-CompFeed     INDIA                          High                 NA                0.4201199   0.3731993   0.4670405
0-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.4140646   0.3463071   0.4818222
0-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.3915474   0.3137316   0.4693632
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.4293660   0.3356581   0.5230739
0-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.4500865   0.3698104   0.5303627
0-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.5065610   0.4276312   0.5854907
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2268044   0.1845317   0.2690771
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2420444   0.2182814   0.2658074
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2551855   0.2186870   0.2916840
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.2196228   0.1984522   0.2407935
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.2445160   0.2258130   0.2632189
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.2350943   0.2270012   0.2431874
0-6 months    COHORTS          GUATEMALA                      High                 NA                0.2422014   0.1808635   0.3035393
0-6 months    COHORTS          GUATEMALA                      Low                  NA                0.2149034   0.1765095   0.2532973
0-6 months    COHORTS          GUATEMALA                      Medium               NA                0.1775397   0.1365148   0.2185647
0-6 months    COHORTS          INDIA                          High                 NA                0.2435340   0.2120444   0.2750235
0-6 months    COHORTS          INDIA                          Low                  NA                0.2502313   0.2161687   0.2842939
0-6 months    COHORTS          INDIA                          Medium               NA                0.2550635   0.2174965   0.2926305
0-6 months    COHORTS          PHILIPPINES                    High                 NA                0.2137254   0.1914393   0.2360116
0-6 months    COHORTS          PHILIPPINES                    Low                  NA                0.2308817   0.2053207   0.2564427
0-6 months    COHORTS          PHILIPPINES                    Medium               NA                0.2269458   0.2031621   0.2507294
0-6 months    GMS-Nepal        NEPAL                          High                 NA                0.4130163   0.3439317   0.4821009
0-6 months    GMS-Nepal        NEPAL                          Low                  NA                0.3379690   0.2888948   0.3870433
0-6 months    GMS-Nepal        NEPAL                          Medium               NA                0.3968293   0.3263833   0.4672754
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                0.1755235   0.1600812   0.1909659
0-6 months    JiVitA-3         BANGLADESH                     Low                  NA                0.1728236   0.1630604   0.1825868
0-6 months    JiVitA-3         BANGLADESH                     Medium               NA                0.1779661   0.1680189   0.1879133
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                0.0916441   0.0758846   0.1074037
0-6 months    JiVitA-4         BANGLADESH                     Low                  NA                0.1123042   0.0993297   0.1252786
0-6 months    JiVitA-4         BANGLADESH                     Medium               NA                0.1087865   0.0942917   0.1232813
0-6 months    MAL-ED           BANGLADESH                     High                 NA                0.1666667   0.0669272   0.2664062
0-6 months    MAL-ED           BANGLADESH                     Low                  NA                0.3076923   0.1623454   0.4530393
0-6 months    MAL-ED           BANGLADESH                     Medium               NA                0.2222222   0.1109581   0.3334863
0-6 months    MAL-ED           INDIA                          High                 NA                0.3406411   0.2028307   0.4784515
0-6 months    MAL-ED           INDIA                          Low                  NA                0.3184942   0.1986816   0.4383067
0-6 months    MAL-ED           INDIA                          Medium               NA                0.2721422   0.1414816   0.4028029
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                0.2511134   0.2021662   0.3000606
0-6 months    NIH-Crypto       BANGLADESH                     Low                  NA                0.3050280   0.2472880   0.3627680
0-6 months    NIH-Crypto       BANGLADESH                     Medium               NA                0.2216502   0.1661059   0.2771946
0-6 months    PROBIT           BELARUS                        High                 NA                0.2469129   0.1880854   0.3057404
0-6 months    PROBIT           BELARUS                        Low                  NA                0.2493879   0.1915767   0.3071990
0-6 months    PROBIT           BELARUS                        Medium               NA                0.2470398   0.1865222   0.3075574
0-6 months    PROVIDE          BANGLADESH                     High                 NA                0.2502397   0.1944814   0.3059979
0-6 months    PROVIDE          BANGLADESH                     Low                  NA                0.2895104   0.2281941   0.3508266
0-6 months    PROVIDE          BANGLADESH                     Medium               NA                0.2470218   0.1892260   0.3048175
0-6 months    SAS-CompFeed     INDIA                          High                 NA                0.1992701   0.1598155   0.2387246
0-6 months    SAS-CompFeed     INDIA                          Low                  NA                0.2241646   0.1699194   0.2784097
0-6 months    SAS-CompFeed     INDIA                          Medium               NA                0.2236152   0.1627505   0.2844799
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                0.1663269   0.0930716   0.2395822
0-6 months    SAS-FoodSuppl    INDIA                          Low                  NA                0.1689965   0.1071958   0.2307971
0-6 months    SAS-FoodSuppl    INDIA                          Medium               NA                0.2136370   0.1499049   0.2773691
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1209758   0.0906745   0.1512771
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1418000   0.1225948   0.1610052
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1479264   0.1208163   0.1750365
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.1630236   0.1508212   0.1752261
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.1831038   0.1698365   0.1963712
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.1807766   0.1736017   0.1879514
6-24 months   COHORTS          GUATEMALA                      High                 NA                0.1417676   0.0944454   0.1890898
6-24 months   COHORTS          GUATEMALA                      Low                  NA                0.1305871   0.1006741   0.1605001
6-24 months   COHORTS          GUATEMALA                      Medium               NA                0.1242257   0.0909836   0.1574677
6-24 months   COHORTS          INDIA                          High                 NA                0.1207374   0.0907412   0.1507336
6-24 months   COHORTS          INDIA                          Low                  NA                0.1619726   0.1251476   0.1987976
6-24 months   COHORTS          INDIA                          Medium               NA                0.1076443   0.0746974   0.1405912
6-24 months   COHORTS          PHILIPPINES                    High                 NA                0.2382685   0.2056784   0.2708587
6-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.2845959   0.2488721   0.3203196
6-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.2737081   0.2425785   0.3048376
6-24 months   GMS-Nepal        NEPAL                          High                 NA                0.4325329   0.3444863   0.5205795
6-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.5200151   0.4555021   0.5845281
6-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.4547324   0.3768311   0.5326337
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.1617321   0.1408330   0.1826312
6-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.1718501   0.1572243   0.1864759
6-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.1640985   0.1515989   0.1765981
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.2623889   0.2060354   0.3187424
6-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.2554664   0.2249828   0.2859500
6-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.2515426   0.2282212   0.2748640
6-24 months   LCNI-5           MALAWI                         High                 NA                0.0795307   0.0392737   0.1197877
6-24 months   LCNI-5           MALAWI                         Low                  NA                0.0798250   0.0474989   0.1121512
6-24 months   LCNI-5           MALAWI                         Medium               NA                0.0824185   0.0492057   0.1156313
6-24 months   MAL-ED           BANGLADESH                     High                 NA                0.1250000   0.0310816   0.2189184
6-24 months   MAL-ED           BANGLADESH                     Low                  NA                0.2432432   0.1044687   0.3820178
6-24 months   MAL-ED           BANGLADESH                     Medium               NA                0.2173913   0.0977375   0.3370451
6-24 months   MAL-ED           INDIA                          High                 NA                0.2558140   0.1249236   0.3867043
6-24 months   MAL-ED           INDIA                          Low                  NA                0.3703704   0.2410989   0.4996419
6-24 months   MAL-ED           INDIA                          Medium               NA                0.2000000   0.0755861   0.3244139
6-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.0838992   0.0521156   0.1156828
6-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.1784520   0.1283765   0.2285275
6-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.1425521   0.0953619   0.1897423
6-24 months   PROBIT           BELARUS                        High                 NA                0.0084412   0.0040450   0.0128374
6-24 months   PROBIT           BELARUS                        Low                  NA                0.0093415   0.0035705   0.0151125
6-24 months   PROBIT           BELARUS                        Medium               NA                0.0075411   0.0026591   0.0124230
6-24 months   PROVIDE          BANGLADESH                     High                 NA                0.1183766   0.0764712   0.1602820
6-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.2311048   0.1729265   0.2892830
6-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.1286810   0.0811505   0.1762114
6-24 months   SAS-CompFeed     INDIA                          High                 NA                0.3337945   0.2898984   0.3776907
6-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.2966150   0.2473712   0.3458587
6-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.2781182   0.2068824   0.3493540
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.3183644   0.2289358   0.4077930
6-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.3658213   0.2854250   0.4462176
6-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.3701178   0.2917512   0.4484843
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1473898   0.1113797   0.1833999
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1510425   0.1296229   0.1724622
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1851182   0.1533602   0.2168761
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.0757485   0.0536540   0.0978429
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.1175218   0.1010349   0.1340087
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.0922892   0.0858182   0.0987603


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.2601297   0.2356425   0.2846169
0-24 months   COHORTS          INDIA                          NA                   NA                0.3365584   0.3122030   0.3609138
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.4013250   0.3833827   0.4192673
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.5906433   0.5537666   0.6275199
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.2573354   0.2507501   0.2639207
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.3100246   0.2953385   0.3247108
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.0799508   0.0612962   0.0986054
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.3197279   0.2440789   0.3953769
0-24 months   MAL-ED           INDIA                          NA                   NA                0.4693878   0.3884360   0.5503395
0-24 months   MAL-ED           NEPAL                          NA                   NA                0.3265306   0.2332088   0.4198524
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2000000   0.1249078   0.2750922
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.3298153   0.2963239   0.3633067
0-24 months   PROBIT           BELARUS                        NA                   NA                0.2539381   0.1952340   0.3126422
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.4145695   0.3576236   0.4715155
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2366765   0.2196074   0.2537455
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.2337854   0.2266636   0.2409072
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.2006018   0.1757323   0.2254713
0-6 months    COHORTS          INDIA                          NA                   NA                0.2462950   0.2238538   0.2687361
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.2291594   0.2137721   0.2445467
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.3771930   0.3408437   0.4135423
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1757592   0.1700164   0.1815020
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.1079224   0.0978937   0.1179511
0-6 months    MAL-ED           BANGLADESH                     NA                   NA                0.2244898   0.1568093   0.2921703
0-6 months    MAL-ED           INDIA                          NA                   NA                0.2925170   0.2187257   0.3663083
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.2572559   0.2261171   0.2883948
0-6 months    PROBIT           BELARUS                        NA                   NA                0.2485900   0.1897185   0.3074615
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.2197071   0.1750081   0.2644060
0-6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.1866029   0.1492099   0.2239959
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1397398   0.1258162   0.1536634
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.1794777   0.1729988   0.1859566
6-24 months   COHORTS          GUATEMALA                      NA                   NA                0.1288889   0.1093000   0.1484778
6-24 months   COHORTS          INDIA                          NA                   NA                0.1323843   0.1146569   0.1501118
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.2666667   0.2498425   0.2834908
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4719864   0.4316361   0.5123367
6-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1643382   0.1581062   0.1705701
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.2467286   0.2329282   0.2605290
6-24 months   LCNI-5           MALAWI                         NA                   NA                0.0773067   0.0588111   0.0958024
6-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.1908397   0.1232893   0.2583901
6-24 months   MAL-ED           INDIA                          NA                   NA                0.2846715   0.2088306   0.3605124
6-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   PROBIT           BELARUS                        NA                   NA                0.0083609   0.0045540   0.0121678
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3051948   0.2633957   0.3469939
6-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1602787   0.1442326   0.1763249
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0946306   0.0890328   0.1002285


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      Low                  High              0.9331929   0.7569959   1.150401
0-24 months   COHORTS          GUATEMALA                      Medium               High              0.9053341   0.7168530   1.143372
0-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          Low                  High              1.0483619   0.9058817   1.213252
0-24 months   COHORTS          INDIA                          Medium               High              0.9461433   0.8025721   1.115398
0-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    Low                  High              1.1024468   0.9790371   1.241413
0-24 months   COHORTS          PHILIPPINES                    Medium               High              1.1234398   1.0034354   1.257796
0-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal        NEPAL                          Low                  High              0.9754619   0.8438597   1.127588
0-24 months   GMS-Nepal        NEPAL                          Medium               High              0.8983671   0.7578261   1.064972
0-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.0361524   0.9514432   1.128404
0-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.0057483   0.9278507   1.090186
0-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.0914117   0.8869296   1.343037
0-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.0796178   0.8796571   1.325033
0-24 months   LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         Low                  High              0.8843708   0.4684330   1.669634
0-24 months   LCNI-5           MALAWI                         Medium               High              0.9932360   0.5338042   1.848089
0-24 months   MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BANGLADESH                     Low                  High              1.6773654   0.9259724   3.038486
0-24 months   MAL-ED           BANGLADESH                     Medium               High              1.3958124   0.7746469   2.515071
0-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           INDIA                          Low                  High              1.0251319   0.6891683   1.524875
0-24 months   MAL-ED           INDIA                          Medium               High              0.7547172   0.4594053   1.239860
0-24 months   MAL-ED           NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           NEPAL                          Low                  High              1.4023784   0.6879062   2.858915
0-24 months   MAL-ED           NEPAL                          Medium               High              1.2517178   0.5994818   2.613587
0-24 months   MAL-ED           SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   Low                  High              1.3281853   0.5301512   3.327496
0-24 months   MAL-ED           SOUTH AFRICA                   Medium               High              1.4333333   0.5585186   3.678381
0-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Low                  High              1.1330979   0.9003425   1.426025
0-24 months   NIH-Crypto       BANGLADESH                     Medium               High              0.9262957   0.7121425   1.204848
0-24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        Low                  High              1.0208882   0.9642565   1.080846
0-24 months   PROBIT           BELARUS                        Medium               High              1.0095830   0.9444585   1.079198
0-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     Low                  High              1.2210558   1.0022677   1.487604
0-24 months   PROVIDE          BANGLADESH                     Medium               High              0.9442758   0.7688003   1.159803
0-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          Low                  High              0.9855869   0.8686603   1.118252
0-24 months   SAS-CompFeed     INDIA                          Medium               High              0.9319896   0.8136395   1.067555
0-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA                          Low                  High              1.0482584   0.7904671   1.390122
0-24 months   SAS-FoodSuppl    INDIA                          Medium               High              1.1797882   0.9017052   1.543631
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0671945   0.8648459   1.316887
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1251348   0.8899779   1.422427
0-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.1133449   0.9884006   1.254083
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.0704456   0.9713280   1.179677
0-6 months    COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-6 months    COHORTS          GUATEMALA                      Low                  High              0.8872922   0.6545942   1.202711
0-6 months    COHORTS          GUATEMALA                      Medium               High              0.7330251   0.5229676   1.027455
0-6 months    COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    COHORTS          INDIA                          Low                  High              1.0275007   0.8701434   1.213315
0-6 months    COHORTS          INDIA                          Medium               High              1.0473426   0.8807944   1.245383
0-6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    Low                  High              1.0802726   0.9428329   1.237747
0-6 months    COHORTS          PHILIPPINES                    Medium               High              1.0618566   0.9318428   1.210010
0-6 months    GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal        NEPAL                          Low                  High              0.8182946   0.6660324   1.005366
0-6 months    GMS-Nepal        NEPAL                          Medium               High              0.9608079   0.7597803   1.215025
0-6 months    JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     Low                  High              0.9846178   0.8937752   1.084693
0-6 months    JiVitA-3         BANGLADESH                     Medium               High              1.0139158   0.9231487   1.113607
0-6 months    JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4         BANGLADESH                     Low                  High              1.2254376   1.0229690   1.467979
0-6 months    JiVitA-4         BANGLADESH                     Medium               High              1.1870539   0.9758573   1.443958
0-6 months    MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           BANGLADESH                     Low                  High              1.8461538   0.8613068   3.957108
0-6 months    MAL-ED           BANGLADESH                     Medium               High              1.3333333   0.6110452   2.909405
0-6 months    MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           INDIA                          Low                  High              0.9349847   0.5373875   1.626752
0-6 months    MAL-ED           INDIA                          Medium               High              0.7989120   0.4273286   1.493606
0-6 months    NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     Low                  High              1.2147024   0.9290220   1.588232
0-6 months    NIH-Crypto       BANGLADESH                     Medium               High              0.8826700   0.6451309   1.207672
0-6 months    PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        Low                  High              1.0100235   0.9530288   1.070427
0-6 months    PROBIT           BELARUS                        Medium               High              1.0005138   0.9321448   1.073897
0-6 months    PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     Low                  High              1.1569323   0.8507349   1.573336
0-6 months    PROVIDE          BANGLADESH                     Medium               High              0.9871407   0.7150987   1.362675
0-6 months    SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          Low                  High              1.1249284   0.9771131   1.295105
0-6 months    SAS-CompFeed     INDIA                          Medium               High              1.1221716   0.9208554   1.367499
0-6 months    SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl    INDIA                          Low                  High              1.0160501   0.5733965   1.800426
0-6 months    SAS-FoodSuppl    INDIA                          Medium               High              1.2844406   0.7547435   2.185892
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1721356   0.8821903   1.557376
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2227770   0.8969470   1.666970
0-6 months    ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  High              1.1231736   1.0225898   1.233651
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               High              1.1088979   1.0326146   1.190817
6-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6-24 months   COHORTS          GUATEMALA                      Low                  High              0.9211347   0.6145539   1.380659
6-24 months   COHORTS          GUATEMALA                      Medium               High              0.8762625   0.5713222   1.343963
6-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   COHORTS          INDIA                          Low                  High              1.3415278   0.9580194   1.878560
6-24 months   COHORTS          INDIA                          Medium               High              0.8915570   0.6013745   1.321762
6-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6-24 months   COHORTS          PHILIPPINES                    Low                  High              1.1944333   0.9926693   1.437207
6-24 months   COHORTS          PHILIPPINES                    Medium               High              1.1487379   0.9625544   1.370934
6-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   GMS-Nepal        NEPAL                          Low                  High              1.2022555   0.9476473   1.525270
6-24 months   GMS-Nepal        NEPAL                          Medium               High              1.0513243   0.8070715   1.369498
6-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.0625603   0.9085775   1.242640
6-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.0146317   0.8752359   1.176229
6-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   JiVitA-4         BANGLADESH                     Low                  High              0.9736175   0.7649444   1.239216
6-24 months   JiVitA-4         BANGLADESH                     Medium               High              0.9586632   0.7595117   1.210034
6-24 months   LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
6-24 months   LCNI-5           MALAWI                         Low                  High              1.0037007   0.5251411   1.918370
6-24 months   LCNI-5           MALAWI                         Medium               High              1.0363103   0.5430607   1.977567
6-24 months   MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           BANGLADESH                     Low                  High              1.9459459   0.7575571   4.998575
6-24 months   MAL-ED           BANGLADESH                     Medium               High              1.7391304   0.6852334   4.413933
6-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   MAL-ED           INDIA                          Low                  High              1.4478114   0.7793310   2.689689
6-24 months   MAL-ED           INDIA                          Medium               High              0.7818182   0.3493801   1.749498
6-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   NIH-Crypto       BANGLADESH                     Low                  High              2.1269808   1.3275075   3.407926
6-24 months   NIH-Crypto       BANGLADESH                     Medium               High              1.6990880   1.0276455   2.809237
6-24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
6-24 months   PROBIT           BELARUS                        Low                  High              1.1066547   0.5300012   2.310721
6-24 months   PROBIT           BELARUS                        Medium               High              0.8933645   0.3993670   1.998413
6-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   PROVIDE          BANGLADESH                     Low                  High              1.9522851   1.2673351   3.007426
6-24 months   PROVIDE          BANGLADESH                     Medium               High              1.0870479   0.6543736   1.805808
6-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   SAS-CompFeed     INDIA                          Low                  High              0.8886154   0.7508750   1.051623
6-24 months   SAS-CompFeed     INDIA                          Medium               High              0.8332018   0.6370070   1.089824
6-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   SAS-FoodSuppl    INDIA                          Low                  High              1.1490647   0.8037390   1.642759
6-24 months   SAS-FoodSuppl    INDIA                          Medium               High              1.1625602   0.8172016   1.653871
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0247828   0.7730240   1.358534
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2559767   0.9321590   1.692284
6-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.5514744   1.1225998   2.144195
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.2183645   0.9026783   1.644453


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0238509   -0.0706666   0.0229649
0-24 months   COHORTS          INDIA                          High                 NA                -0.0022693   -0.0305866   0.0260479
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0308975    0.0027052   0.0590897
0-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0262981   -0.0891021   0.0365059
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0036089   -0.0133621   0.0205799
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0141417   -0.0389372   0.0672205
0-24 months   LCNI-5           MALAWI                         High                 NA                -0.0078257   -0.0456251   0.0299736
0-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.0660252   -0.0319337   0.1639841
0-24 months   MAL-ED           INDIA                          High                 NA                -0.0245746   -0.1491399   0.0999907
0-24 months   MAL-ED           NEPAL                          High                 NA                 0.0531736   -0.0594689   0.1658161
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.0372093   -0.0540031   0.1284218
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0085742   -0.0321718   0.0493202
0-24 months   PROBIT           BELARUS                        High                 NA                 0.0040285   -0.0089749   0.0170319
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0169349   -0.0242282   0.0580980
0-24 months   SAS-CompFeed     INDIA                          High                 NA                -0.0055504   -0.0392733   0.0281726
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0419259   -0.0394423   0.1232940
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0098721   -0.0291453   0.0488894
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0141625   -0.0059971   0.0343222
0-6 months    COHORTS          GUATEMALA                      High                 NA                -0.0415996   -0.0964537   0.0132545
0-6 months    COHORTS          INDIA                          High                 NA                 0.0027610   -0.0194403   0.0249624
0-6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0154340   -0.0016511   0.0325191
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0358233   -0.0947239   0.0230772
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0002357   -0.0136491   0.0141205
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0162783    0.0033130   0.0292435
0-6 months    MAL-ED           BANGLADESH                     High                 NA                 0.0578231   -0.0271469   0.1427932
0-6 months    MAL-ED           INDIA                          High                 NA                -0.0481241   -0.1629126   0.0666645
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0061426   -0.0317790   0.0440641
0-6 months    PROBIT           BELARUS                        High                 NA                 0.0016771   -0.0113221   0.0146762
0-6 months    PROVIDE          BANGLADESH                     High                 NA                 0.0083317   -0.0387961   0.0554596
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.0204370   -0.0049726   0.0458466
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                 0.0202760   -0.0448954   0.0854474
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0187640   -0.0089863   0.0465144
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0164540    0.0057327   0.0271754
6-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0128787   -0.0555715   0.0298140
6-24 months   COHORTS          INDIA                          High                 NA                 0.0116469   -0.0140741   0.0373680
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0283981   -0.0006827   0.0574790
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0394535   -0.0394204   0.1183274
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0026061   -0.0175513   0.0227634
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0156603   -0.0688699   0.0375493
6-24 months   LCNI-5           MALAWI                         High                 NA                -0.0022240   -0.0377263   0.0332783
6-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.0658397   -0.0173452   0.1490246
6-24 months   MAL-ED           INDIA                          High                 NA                 0.0288576   -0.0812767   0.1389918
6-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0476077    0.0189064   0.0763089
6-24 months   PROBIT           BELARUS                        High                 NA                -0.0000803   -0.0051303   0.0049697
6-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0425991    0.0055886   0.0796095
6-24 months   SAS-CompFeed     INDIA                          High                 NA                -0.0285997   -0.0675876   0.0103882
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0373570   -0.0400862   0.1148002
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0128889   -0.0198937   0.0456716
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0188822   -0.0027085   0.0404728


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0916883   -0.2876994   0.0744864
0-24 months   COHORTS          INDIA                          High                 NA                -0.0067428   -0.0945094   0.0739860
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0769886    0.0040438   0.1445909
0-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0445245   -0.1566517   0.0567330
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0140240   -0.0541654   0.0778025
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0456147   -0.1421785   0.2025315
0-24 months   LCNI-5           MALAWI                         High                 NA                -0.0978816   -0.6881262   0.2859870
0-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.2065044   -0.1652279   0.4596462
0-24 months   MAL-ED           INDIA                          High                 NA                -0.0523545   -0.3544308   0.1823503
0-24 months   MAL-ED           NEPAL                          High                 NA                 0.1628441   -0.2626559   0.4449557
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.1860465   -0.4198366   0.5333827
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0259970   -0.1056837   0.1419953
0-24 months   PROBIT           BELARUS                        High                 NA                 0.0158643   -0.0361907   0.0653042
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0481888   -0.0764944   0.1584307
0-24 months   SAS-CompFeed     INDIA                          High                 NA                -0.0133882   -0.0992327   0.0657522
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0889594   -0.1012301   0.2463020
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0417113   -0.1381343   0.1931381
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0605793   -0.0296926   0.1429371
0-6 months    COHORTS          GUATEMALA                      High                 NA                -0.2073740   -0.5141852   0.0372696
0-6 months    COHORTS          INDIA                          High                 NA                 0.0112103   -0.0831682   0.0973654
0-6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0673503   -0.0101165   0.1388761
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0949735   -0.2631650   0.0508231
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0013409   -0.0808704   0.0772993
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.1508331    0.0221042   0.2626163
0-6 months    MAL-ED           BANGLADESH                     High                 NA                 0.2575758   -0.2285454   0.5513444
0-6 months    MAL-ED           INDIA                          High                 NA                -0.1645172   -0.6329507   0.1695400
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0238772   -0.1352590   0.1607063
0-6 months    PROBIT           BELARUS                        High                 NA                 0.0067463   -0.0467800   0.0575357
0-6 months    PROVIDE          BANGLADESH                     High                 NA                 0.0322222   -0.1681228   0.1982061
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.0930193   -0.0215430   0.1947338
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                 0.1086585   -0.3180601   0.3972280
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1342783   -0.0885001   0.3114617
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0916773    0.0300391   0.1493985
6-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0999212   -0.4865064   0.1861275
6-24 months   COHORTS          INDIA                          High                 NA                 0.0879783   -0.1277837   0.2624618
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.1064930   -0.0092111   0.2089318
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0835903   -0.0997795   0.2363863
6-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0158581   -0.1147500   0.1311637
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0634717   -0.3021345   0.1314476
6-24 months   LCNI-5           MALAWI                         High                 NA                -0.0287682   -0.6075593   0.3416330
6-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.3450000   -0.2511462   0.6570944
6-24 months   MAL-ED           INDIA                          High                 NA                 0.1013715   -0.3817356   0.4155660
6-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.3620165    0.1153259   0.5399177
6-24 months   PROBIT           BELARUS                        High                 NA                -0.0096068   -0.8407245   0.4462475
6-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.2646305    0.0019134   0.4581950
6-24 months   SAS-CompFeed     INDIA                          High                 NA                -0.0937097   -0.2357433   0.0319988
6-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.1050176   -0.1415383   0.2983209
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0804158   -0.1485095   0.2637108
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.1995353   -0.0642610   0.3979450
