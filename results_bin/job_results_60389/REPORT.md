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

**Outcome Variable:** wast_rec90d

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

agecat        studyid          country                        meducyrs    wast_rec90d   n_cell      n
------------  ---------------  -----------------------------  ---------  ------------  -------  -----
0-24 months   CMC-V-BCS-2002   INDIA                          High                  0       40    324
0-24 months   CMC-V-BCS-2002   INDIA                          High                  1       82    324
0-24 months   CMC-V-BCS-2002   INDIA                          Low                   0       38    324
0-24 months   CMC-V-BCS-2002   INDIA                          Low                   1       62    324
0-24 months   CMC-V-BCS-2002   INDIA                          Medium                0       42    324
0-24 months   CMC-V-BCS-2002   INDIA                          Medium                1       60    324
0-24 months   COHORTS          GUATEMALA                      High                  0       36    377
0-24 months   COHORTS          GUATEMALA                      High                  1       30    377
0-24 months   COHORTS          GUATEMALA                      Low                   0      105    377
0-24 months   COHORTS          GUATEMALA                      Low                   1       76    377
0-24 months   COHORTS          GUATEMALA                      Medium                0       70    377
0-24 months   COHORTS          GUATEMALA                      Medium                1       60    377
0-24 months   COHORTS          INDIA                          High                  0      144   2119
0-24 months   COHORTS          INDIA                          High                  1       62   2119
0-24 months   COHORTS          INDIA                          Low                   0      696   2119
0-24 months   COHORTS          INDIA                          Low                   1      168   2119
0-24 months   COHORTS          INDIA                          Medium                0      771   2119
0-24 months   COHORTS          INDIA                          Medium                1      278   2119
0-24 months   COHORTS          PHILIPPINES                    High                  0      202   1689
0-24 months   COHORTS          PHILIPPINES                    High                  1      380   1689
0-24 months   COHORTS          PHILIPPINES                    Low                   0      255   1689
0-24 months   COHORTS          PHILIPPINES                    Low                   1      323   1689
0-24 months   COHORTS          PHILIPPINES                    Medium                0      207   1689
0-24 months   COHORTS          PHILIPPINES                    Medium                1      322   1689
0-24 months   EE               PAKISTAN                       High                  0        2    320
0-24 months   EE               PAKISTAN                       High                  1        7    320
0-24 months   EE               PAKISTAN                       Low                   0      146    320
0-24 months   EE               PAKISTAN                       Low                   1      144    320
0-24 months   EE               PAKISTAN                       Medium                0       10    320
0-24 months   EE               PAKISTAN                       Medium                1       11    320
0-24 months   GMS-Nepal        NEPAL                          High                  0       32    640
0-24 months   GMS-Nepal        NEPAL                          High                  1       39    640
0-24 months   GMS-Nepal        NEPAL                          Low                   0      214    640
0-24 months   GMS-Nepal        NEPAL                          Low                   1      249    640
0-24 months   GMS-Nepal        NEPAL                          Medium                0       49    640
0-24 months   GMS-Nepal        NEPAL                          Medium                1       57    640
0-24 months   Guatemala BSC    GUATEMALA                      High                  0       11     37
0-24 months   Guatemala BSC    GUATEMALA                      High                  1        7     37
0-24 months   Guatemala BSC    GUATEMALA                      Low                   0        5     37
0-24 months   Guatemala BSC    GUATEMALA                      Low                   1        7     37
0-24 months   Guatemala BSC    GUATEMALA                      Medium                0        4     37
0-24 months   Guatemala BSC    GUATEMALA                      Medium                1        3     37
0-24 months   IRC              INDIA                          High                  0       42    395
0-24 months   IRC              INDIA                          High                  1       85    395
0-24 months   IRC              INDIA                          Low                   0       57    395
0-24 months   IRC              INDIA                          Low                   1       81    395
0-24 months   IRC              INDIA                          Medium                0       63    395
0-24 months   IRC              INDIA                          Medium                1       67    395
0-24 months   JiVitA-3         BANGLADESH                     High                  0     1320   7561
0-24 months   JiVitA-3         BANGLADESH                     High                  1     1047   7561
0-24 months   JiVitA-3         BANGLADESH                     Low                   0     1731   7561
0-24 months   JiVitA-3         BANGLADESH                     Low                   1     1191   7561
0-24 months   JiVitA-3         BANGLADESH                     Medium                0     1316   7561
0-24 months   JiVitA-3         BANGLADESH                     Medium                1      956   7561
0-24 months   JiVitA-4         BANGLADESH                     High                  0      447   2062
0-24 months   JiVitA-4         BANGLADESH                     High                  1      178   2062
0-24 months   JiVitA-4         BANGLADESH                     Low                   0      582   2062
0-24 months   JiVitA-4         BANGLADESH                     Low                   1      196   2062
0-24 months   JiVitA-4         BANGLADESH                     Medium                0      501   2062
0-24 months   JiVitA-4         BANGLADESH                     Medium                1      158   2062
0-24 months   LCNI-5           MALAWI                         High                  0       12     77
0-24 months   LCNI-5           MALAWI                         High                  1        1     77
0-24 months   LCNI-5           MALAWI                         Low                   0       28     77
0-24 months   LCNI-5           MALAWI                         Low                   1        2     77
0-24 months   LCNI-5           MALAWI                         Medium                0       24     77
0-24 months   LCNI-5           MALAWI                         Medium                1       10     77
0-24 months   MAL-ED           BANGLADESH                     High                  0        7     87
0-24 months   MAL-ED           BANGLADESH                     High                  1       20     87
0-24 months   MAL-ED           BANGLADESH                     Low                   0       10     87
0-24 months   MAL-ED           BANGLADESH                     Low                   1       23     87
0-24 months   MAL-ED           BANGLADESH                     Medium                0        6     87
0-24 months   MAL-ED           BANGLADESH                     Medium                1       21     87
0-24 months   MAL-ED           BRAZIL                         High                  0        0     24
0-24 months   MAL-ED           BRAZIL                         High                  1        3     24
0-24 months   MAL-ED           BRAZIL                         Low                   0        4     24
0-24 months   MAL-ED           BRAZIL                         Low                   1        6     24
0-24 months   MAL-ED           BRAZIL                         Medium                0        2     24
0-24 months   MAL-ED           BRAZIL                         Medium                1        9     24
0-24 months   MAL-ED           INDIA                          High                  0       13    154
0-24 months   MAL-ED           INDIA                          High                  1       20    154
0-24 months   MAL-ED           INDIA                          Low                   0       20    154
0-24 months   MAL-ED           INDIA                          Low                   1       42    154
0-24 months   MAL-ED           INDIA                          Medium                0       25    154
0-24 months   MAL-ED           INDIA                          Medium                1       34    154
0-24 months   MAL-ED           NEPAL                          High                  0        2     93
0-24 months   MAL-ED           NEPAL                          High                  1       15     93
0-24 months   MAL-ED           NEPAL                          Low                   0        5     93
0-24 months   MAL-ED           NEPAL                          Low                   1       31     93
0-24 months   MAL-ED           NEPAL                          Medium                0       10     93
0-24 months   MAL-ED           NEPAL                          Medium                1       30     93
0-24 months   MAL-ED           PERU                           High                  0        0     35
0-24 months   MAL-ED           PERU                           High                  1        3     35
0-24 months   MAL-ED           PERU                           Low                   0        2     35
0-24 months   MAL-ED           PERU                           Low                   1       15     35
0-24 months   MAL-ED           PERU                           Medium                0        4     35
0-24 months   MAL-ED           PERU                           Medium                1       11     35
0-24 months   MAL-ED           SOUTH AFRICA                   High                  0        5     87
0-24 months   MAL-ED           SOUTH AFRICA                   High                  1       19     87
0-24 months   MAL-ED           SOUTH AFRICA                   Low                   0       13     87
0-24 months   MAL-ED           SOUTH AFRICA                   Low                   1       28     87
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                0        0     87
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                1       22     87
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  0        1     43
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  1        4     43
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   0        5     43
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   1       11     43
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                0        2     43
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                1       20     43
0-24 months   NIH-Birth        BANGLADESH                     High                  0       48    421
0-24 months   NIH-Birth        BANGLADESH                     High                  1       48    421
0-24 months   NIH-Birth        BANGLADESH                     Low                   0       96    421
0-24 months   NIH-Birth        BANGLADESH                     Low                   1       92    421
0-24 months   NIH-Birth        BANGLADESH                     Medium                0       58    421
0-24 months   NIH-Birth        BANGLADESH                     Medium                1       79    421
0-24 months   NIH-Crypto       BANGLADESH                     High                  0       33    310
0-24 months   NIH-Crypto       BANGLADESH                     High                  1       68    310
0-24 months   NIH-Crypto       BANGLADESH                     Low                   0       42    310
0-24 months   NIH-Crypto       BANGLADESH                     Low                   1       57    310
0-24 months   NIH-Crypto       BANGLADESH                     Medium                0       42    310
0-24 months   NIH-Crypto       BANGLADESH                     Medium                1       68    310
0-24 months   PROBIT           BELARUS                        High                  0       71   4408
0-24 months   PROBIT           BELARUS                        High                  1      621   4408
0-24 months   PROBIT           BELARUS                        Low                   0      211   4408
0-24 months   PROBIT           BELARUS                        Low                   1     1382   4408
0-24 months   PROBIT           BELARUS                        Medium                0      244   4408
0-24 months   PROBIT           BELARUS                        Medium                1     1879   4408
0-24 months   PROVIDE          BANGLADESH                     High                  0       34    308
0-24 months   PROVIDE          BANGLADESH                     High                  1       58    308
0-24 months   PROVIDE          BANGLADESH                     Low                   0       51    308
0-24 months   PROVIDE          BANGLADESH                     Low                   1       55    308
0-24 months   PROVIDE          BANGLADESH                     Medium                0       44    308
0-24 months   PROVIDE          BANGLADESH                     Medium                1       66    308
0-24 months   SAS-CompFeed     INDIA                          High                  0       82    814
0-24 months   SAS-CompFeed     INDIA                          High                  1       58    814
0-24 months   SAS-CompFeed     INDIA                          Low                   0      272    814
0-24 months   SAS-CompFeed     INDIA                          Low                   1      145    814
0-24 months   SAS-CompFeed     INDIA                          Medium                0      150    814
0-24 months   SAS-CompFeed     INDIA                          Medium                1      107    814
0-24 months   SAS-FoodSuppl    INDIA                          High                  0       14    234
0-24 months   SAS-FoodSuppl    INDIA                          High                  1        2    234
0-24 months   SAS-FoodSuppl    INDIA                          Low                   0      180    234
0-24 months   SAS-FoodSuppl    INDIA                          Low                   1        9    234
0-24 months   SAS-FoodSuppl    INDIA                          Medium                0       27    234
0-24 months   SAS-FoodSuppl    INDIA                          Medium                1        2    234
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       67    712
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1      111    712
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0        8    712
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1       16    712
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0      191    712
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      319    712
0-24 months   ZVITAMBO         ZIMBABWE                       High                  0      776   3609
0-24 months   ZVITAMBO         ZIMBABWE                       High                  1     1099   3609
0-24 months   ZVITAMBO         ZIMBABWE                       Low                   0      402   3609
0-24 months   ZVITAMBO         ZIMBABWE                       Low                   1      379   3609
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                0      471   3609
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                1      482   3609
0-6 months    CMC-V-BCS-2002   INDIA                          High                  0       26    201
0-6 months    CMC-V-BCS-2002   INDIA                          High                  1       59    201
0-6 months    CMC-V-BCS-2002   INDIA                          Low                   0       20    201
0-6 months    CMC-V-BCS-2002   INDIA                          Low                   1       34    201
0-6 months    CMC-V-BCS-2002   INDIA                          Medium                0       20    201
0-6 months    CMC-V-BCS-2002   INDIA                          Medium                1       42    201
0-6 months    COHORTS          GUATEMALA                      High                  0        7    212
0-6 months    COHORTS          GUATEMALA                      High                  1       29    212
0-6 months    COHORTS          GUATEMALA                      Low                   0       26    212
0-6 months    COHORTS          GUATEMALA                      Low                   1       74    212
0-6 months    COHORTS          GUATEMALA                      Medium                0       21    212
0-6 months    COHORTS          GUATEMALA                      Medium                1       55    212
0-6 months    COHORTS          INDIA                          High                  0      106   1413
0-6 months    COHORTS          INDIA                          High                  1       62   1413
0-6 months    COHORTS          INDIA                          Low                   0      340   1413
0-6 months    COHORTS          INDIA                          Low                   1      168   1413
0-6 months    COHORTS          INDIA                          Medium                0      459   1413
0-6 months    COHORTS          INDIA                          Medium                1      278   1413
0-6 months    COHORTS          PHILIPPINES                    High                  0       79    752
0-6 months    COHORTS          PHILIPPINES                    High                  1      245    752
0-6 months    COHORTS          PHILIPPINES                    Low                   0       65    752
0-6 months    COHORTS          PHILIPPINES                    Low                   1      144    752
0-6 months    COHORTS          PHILIPPINES                    Medium                0       54    752
0-6 months    COHORTS          PHILIPPINES                    Medium                1      165    752
0-6 months    EE               PAKISTAN                       High                  0        0    127
0-6 months    EE               PAKISTAN                       High                  1        3    127
0-6 months    EE               PAKISTAN                       Low                   0       51    127
0-6 months    EE               PAKISTAN                       Low                   1       65    127
0-6 months    EE               PAKISTAN                       Medium                0        4    127
0-6 months    EE               PAKISTAN                       Medium                1        4    127
0-6 months    GMS-Nepal        NEPAL                          High                  0       13    262
0-6 months    GMS-Nepal        NEPAL                          High                  1       23    262
0-6 months    GMS-Nepal        NEPAL                          Low                   0       69    262
0-6 months    GMS-Nepal        NEPAL                          Low                   1      107    262
0-6 months    GMS-Nepal        NEPAL                          Medium                0       22    262
0-6 months    GMS-Nepal        NEPAL                          Medium                1       28    262
0-6 months    Guatemala BSC    GUATEMALA                      High                  0        3      9
0-6 months    Guatemala BSC    GUATEMALA                      High                  1        2      9
0-6 months    Guatemala BSC    GUATEMALA                      Low                   0        0      9
0-6 months    Guatemala BSC    GUATEMALA                      Low                   1        1      9
0-6 months    Guatemala BSC    GUATEMALA                      Medium                0        2      9
0-6 months    Guatemala BSC    GUATEMALA                      Medium                1        1      9
0-6 months    IRC              INDIA                          High                  0       21    240
0-6 months    IRC              INDIA                          High                  1       59    240
0-6 months    IRC              INDIA                          Low                   0       31    240
0-6 months    IRC              INDIA                          Low                   1       51    240
0-6 months    IRC              INDIA                          Medium                0       35    240
0-6 months    IRC              INDIA                          Medium                1       43    240
0-6 months    JiVitA-3         BANGLADESH                     High                  0      441   4729
0-6 months    JiVitA-3         BANGLADESH                     High                  1     1047   4729
0-6 months    JiVitA-3         BANGLADESH                     Low                   0      674   4729
0-6 months    JiVitA-3         BANGLADESH                     Low                   1     1191   4729
0-6 months    JiVitA-3         BANGLADESH                     Medium                0      420   4729
0-6 months    JiVitA-3         BANGLADESH                     Medium                1      956   4729
0-6 months    JiVitA-4         BANGLADESH                     High                  0       76    548
0-6 months    JiVitA-4         BANGLADESH                     High                  1      115    548
0-6 months    JiVitA-4         BANGLADESH                     Low                   0       88    548
0-6 months    JiVitA-4         BANGLADESH                     Low                   1      103    548
0-6 months    JiVitA-4         BANGLADESH                     Medium                0       78    548
0-6 months    JiVitA-4         BANGLADESH                     Medium                1       88    548
0-6 months    LCNI-5           MALAWI                         High                  0        0      4
0-6 months    LCNI-5           MALAWI                         High                  1        0      4
0-6 months    LCNI-5           MALAWI                         Low                   0        2      4
0-6 months    LCNI-5           MALAWI                         Low                   1        0      4
0-6 months    LCNI-5           MALAWI                         Medium                0        2      4
0-6 months    LCNI-5           MALAWI                         Medium                1        0      4
0-6 months    MAL-ED           BANGLADESH                     High                  0        1     51
0-6 months    MAL-ED           BANGLADESH                     High                  1       14     51
0-6 months    MAL-ED           BANGLADESH                     Low                   0        5     51
0-6 months    MAL-ED           BANGLADESH                     Low                   1       13     51
0-6 months    MAL-ED           BANGLADESH                     Medium                0        1     51
0-6 months    MAL-ED           BANGLADESH                     Medium                1       17     51
0-6 months    MAL-ED           BRAZIL                         High                  0        0     15
0-6 months    MAL-ED           BRAZIL                         High                  1        3     15
0-6 months    MAL-ED           BRAZIL                         Low                   0        1     15
0-6 months    MAL-ED           BRAZIL                         Low                   1        4     15
0-6 months    MAL-ED           BRAZIL                         Medium                0        0     15
0-6 months    MAL-ED           BRAZIL                         Medium                1        7     15
0-6 months    MAL-ED           INDIA                          High                  0        7     74
0-6 months    MAL-ED           INDIA                          High                  1       11     74
0-6 months    MAL-ED           INDIA                          Low                   0       10     74
0-6 months    MAL-ED           INDIA                          Low                   1       22     74
0-6 months    MAL-ED           INDIA                          Medium                0        5     74
0-6 months    MAL-ED           INDIA                          Medium                1       19     74
0-6 months    MAL-ED           NEPAL                          High                  0        1     45
0-6 months    MAL-ED           NEPAL                          High                  1       11     45
0-6 months    MAL-ED           NEPAL                          Low                   0        2     45
0-6 months    MAL-ED           NEPAL                          Low                   1       14     45
0-6 months    MAL-ED           NEPAL                          Medium                0        5     45
0-6 months    MAL-ED           NEPAL                          Medium                1       12     45
0-6 months    MAL-ED           PERU                           High                  0        0     11
0-6 months    MAL-ED           PERU                           High                  1        2     11
0-6 months    MAL-ED           PERU                           Low                   0        0     11
0-6 months    MAL-ED           PERU                           Low                   1        4     11
0-6 months    MAL-ED           PERU                           Medium                0        0     11
0-6 months    MAL-ED           PERU                           Medium                1        5     11
0-6 months    MAL-ED           SOUTH AFRICA                   High                  0        2     36
0-6 months    MAL-ED           SOUTH AFRICA                   High                  1        8     36
0-6 months    MAL-ED           SOUTH AFRICA                   Low                   0        7     36
0-6 months    MAL-ED           SOUTH AFRICA                   Low                   1        9     36
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                0        0     36
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                1       10     36
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  0        0     13
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  1        0     13
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   0        0     13
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   1        4     13
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                0        1     13
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                1        8     13
0-6 months    NIH-Birth        BANGLADESH                     High                  0       18    223
0-6 months    NIH-Birth        BANGLADESH                     High                  1       40    223
0-6 months    NIH-Birth        BANGLADESH                     Low                   0       29    223
0-6 months    NIH-Birth        BANGLADESH                     Low                   1       58    223
0-6 months    NIH-Birth        BANGLADESH                     Medium                0       17    223
0-6 months    NIH-Birth        BANGLADESH                     Medium                1       61    223
0-6 months    NIH-Crypto       BANGLADESH                     High                  0        5    197
0-6 months    NIH-Crypto       BANGLADESH                     High                  1       67    197
0-6 months    NIH-Crypto       BANGLADESH                     Low                   0        8    197
0-6 months    NIH-Crypto       BANGLADESH                     Low                   1       50    197
0-6 months    NIH-Crypto       BANGLADESH                     Medium                0        8    197
0-6 months    NIH-Crypto       BANGLADESH                     Medium                1       59    197
0-6 months    PROBIT           BELARUS                        High                  0       65   4267
0-6 months    PROBIT           BELARUS                        High                  1      617   4267
0-6 months    PROBIT           BELARUS                        Low                   0      171   4267
0-6 months    PROBIT           BELARUS                        Low                   1     1367   4267
0-6 months    PROBIT           BELARUS                        Medium                0      187   4267
0-6 months    PROBIT           BELARUS                        Medium                1     1860   4267
0-6 months    PROVIDE          BANGLADESH                     High                  0        9    185
0-6 months    PROVIDE          BANGLADESH                     High                  1       43    185
0-6 months    PROVIDE          BANGLADESH                     Low                   0       14    185
0-6 months    PROVIDE          BANGLADESH                     Low                   1       45    185
0-6 months    PROVIDE          BANGLADESH                     Medium                0       17    185
0-6 months    PROVIDE          BANGLADESH                     Medium                1       57    185
0-6 months    SAS-CompFeed     INDIA                          High                  0       27    341
0-6 months    SAS-CompFeed     INDIA                          High                  1       37    341
0-6 months    SAS-CompFeed     INDIA                          Low                   0       95    341
0-6 months    SAS-CompFeed     INDIA                          Low                   1       86    341
0-6 months    SAS-CompFeed     INDIA                          Medium                0       44    341
0-6 months    SAS-CompFeed     INDIA                          Medium                1       52    341
0-6 months    SAS-FoodSuppl    INDIA                          High                  0        3     78
0-6 months    SAS-FoodSuppl    INDIA                          High                  1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          Low                   0       68     78
0-6 months    SAS-FoodSuppl    INDIA                          Low                   1        0     78
0-6 months    SAS-FoodSuppl    INDIA                          Medium                0        7     78
0-6 months    SAS-FoodSuppl    INDIA                          Medium                1        0     78
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       27    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       65    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0        3    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1        5    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0       71    340
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      169    340
0-6 months    ZVITAMBO         ZIMBABWE                       High                  0      314   2514
0-6 months    ZVITAMBO         ZIMBABWE                       High                  1     1067   2514
0-6 months    ZVITAMBO         ZIMBABWE                       Low                   0      155   2514
0-6 months    ZVITAMBO         ZIMBABWE                       Low                   1      355   2514
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                0      166   2514
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                1      457   2514
6-24 months   CMC-V-BCS-2002   INDIA                          High                  0       14    123
6-24 months   CMC-V-BCS-2002   INDIA                          High                  1       23    123
6-24 months   CMC-V-BCS-2002   INDIA                          Low                   0       18    123
6-24 months   CMC-V-BCS-2002   INDIA                          Low                   1       28    123
6-24 months   CMC-V-BCS-2002   INDIA                          Medium                0       22    123
6-24 months   CMC-V-BCS-2002   INDIA                          Medium                1       18    123
6-24 months   COHORTS          GUATEMALA                      High                  0       29    165
6-24 months   COHORTS          GUATEMALA                      High                  1        1    165
6-24 months   COHORTS          GUATEMALA                      Low                   0       79    165
6-24 months   COHORTS          GUATEMALA                      Low                   1        2    165
6-24 months   COHORTS          GUATEMALA                      Medium                0       49    165
6-24 months   COHORTS          GUATEMALA                      Medium                1        5    165
6-24 months   COHORTS          INDIA                          High                  0       38    706
6-24 months   COHORTS          INDIA                          High                  1        0    706
6-24 months   COHORTS          INDIA                          Low                   0      356    706
6-24 months   COHORTS          INDIA                          Low                   1        0    706
6-24 months   COHORTS          INDIA                          Medium                0      312    706
6-24 months   COHORTS          INDIA                          Medium                1        0    706
6-24 months   COHORTS          PHILIPPINES                    High                  0      123    937
6-24 months   COHORTS          PHILIPPINES                    High                  1      135    937
6-24 months   COHORTS          PHILIPPINES                    Low                   0      190    937
6-24 months   COHORTS          PHILIPPINES                    Low                   1      179    937
6-24 months   COHORTS          PHILIPPINES                    Medium                0      153    937
6-24 months   COHORTS          PHILIPPINES                    Medium                1      157    937
6-24 months   EE               PAKISTAN                       High                  0        2    193
6-24 months   EE               PAKISTAN                       High                  1        4    193
6-24 months   EE               PAKISTAN                       Low                   0       95    193
6-24 months   EE               PAKISTAN                       Low                   1       79    193
6-24 months   EE               PAKISTAN                       Medium                0        6    193
6-24 months   EE               PAKISTAN                       Medium                1        7    193
6-24 months   GMS-Nepal        NEPAL                          High                  0       19    378
6-24 months   GMS-Nepal        NEPAL                          High                  1       16    378
6-24 months   GMS-Nepal        NEPAL                          Low                   0      145    378
6-24 months   GMS-Nepal        NEPAL                          Low                   1      142    378
6-24 months   GMS-Nepal        NEPAL                          Medium                0       27    378
6-24 months   GMS-Nepal        NEPAL                          Medium                1       29    378
6-24 months   Guatemala BSC    GUATEMALA                      High                  0        8     28
6-24 months   Guatemala BSC    GUATEMALA                      High                  1        5     28
6-24 months   Guatemala BSC    GUATEMALA                      Low                   0        5     28
6-24 months   Guatemala BSC    GUATEMALA                      Low                   1        6     28
6-24 months   Guatemala BSC    GUATEMALA                      Medium                0        2     28
6-24 months   Guatemala BSC    GUATEMALA                      Medium                1        2     28
6-24 months   IRC              INDIA                          High                  0       21    155
6-24 months   IRC              INDIA                          High                  1       26    155
6-24 months   IRC              INDIA                          Low                   0       26    155
6-24 months   IRC              INDIA                          Low                   1       30    155
6-24 months   IRC              INDIA                          Medium                0       28    155
6-24 months   IRC              INDIA                          Medium                1       24    155
6-24 months   JiVitA-3         BANGLADESH                     High                  0      879   2832
6-24 months   JiVitA-3         BANGLADESH                     High                  1        0   2832
6-24 months   JiVitA-3         BANGLADESH                     Low                   0     1057   2832
6-24 months   JiVitA-3         BANGLADESH                     Low                   1        0   2832
6-24 months   JiVitA-3         BANGLADESH                     Medium                0      896   2832
6-24 months   JiVitA-3         BANGLADESH                     Medium                1        0   2832
6-24 months   JiVitA-4         BANGLADESH                     High                  0      371   1514
6-24 months   JiVitA-4         BANGLADESH                     High                  1       63   1514
6-24 months   JiVitA-4         BANGLADESH                     Low                   0      494   1514
6-24 months   JiVitA-4         BANGLADESH                     Low                   1       93   1514
6-24 months   JiVitA-4         BANGLADESH                     Medium                0      423   1514
6-24 months   JiVitA-4         BANGLADESH                     Medium                1       70   1514
6-24 months   LCNI-5           MALAWI                         High                  0       12     73
6-24 months   LCNI-5           MALAWI                         High                  1        1     73
6-24 months   LCNI-5           MALAWI                         Low                   0       26     73
6-24 months   LCNI-5           MALAWI                         Low                   1        2     73
6-24 months   LCNI-5           MALAWI                         Medium                0       22     73
6-24 months   LCNI-5           MALAWI                         Medium                1       10     73
6-24 months   MAL-ED           BANGLADESH                     High                  0        6     36
6-24 months   MAL-ED           BANGLADESH                     High                  1        6     36
6-24 months   MAL-ED           BANGLADESH                     Low                   0        5     36
6-24 months   MAL-ED           BANGLADESH                     Low                   1       10     36
6-24 months   MAL-ED           BANGLADESH                     Medium                0        5     36
6-24 months   MAL-ED           BANGLADESH                     Medium                1        4     36
6-24 months   MAL-ED           BRAZIL                         High                  0        0      9
6-24 months   MAL-ED           BRAZIL                         High                  1        0      9
6-24 months   MAL-ED           BRAZIL                         Low                   0        3      9
6-24 months   MAL-ED           BRAZIL                         Low                   1        2      9
6-24 months   MAL-ED           BRAZIL                         Medium                0        2      9
6-24 months   MAL-ED           BRAZIL                         Medium                1        2      9
6-24 months   MAL-ED           INDIA                          High                  0        6     80
6-24 months   MAL-ED           INDIA                          High                  1        9     80
6-24 months   MAL-ED           INDIA                          Low                   0       10     80
6-24 months   MAL-ED           INDIA                          Low                   1       20     80
6-24 months   MAL-ED           INDIA                          Medium                0       20     80
6-24 months   MAL-ED           INDIA                          Medium                1       15     80
6-24 months   MAL-ED           NEPAL                          High                  0        1     48
6-24 months   MAL-ED           NEPAL                          High                  1        4     48
6-24 months   MAL-ED           NEPAL                          Low                   0        3     48
6-24 months   MAL-ED           NEPAL                          Low                   1       17     48
6-24 months   MAL-ED           NEPAL                          Medium                0        5     48
6-24 months   MAL-ED           NEPAL                          Medium                1       18     48
6-24 months   MAL-ED           PERU                           High                  0        0     24
6-24 months   MAL-ED           PERU                           High                  1        1     24
6-24 months   MAL-ED           PERU                           Low                   0        2     24
6-24 months   MAL-ED           PERU                           Low                   1       11     24
6-24 months   MAL-ED           PERU                           Medium                0        4     24
6-24 months   MAL-ED           PERU                           Medium                1        6     24
6-24 months   MAL-ED           SOUTH AFRICA                   High                  0        3     51
6-24 months   MAL-ED           SOUTH AFRICA                   High                  1       11     51
6-24 months   MAL-ED           SOUTH AFRICA                   Low                   0        6     51
6-24 months   MAL-ED           SOUTH AFRICA                   Low                   1       19     51
6-24 months   MAL-ED           SOUTH AFRICA                   Medium                0        0     51
6-24 months   MAL-ED           SOUTH AFRICA                   Medium                1       12     51
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  0        1     30
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                  1        4     30
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   0        5     30
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                   1        7     30
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                0        1     30
6-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                1       12     30
6-24 months   NIH-Birth        BANGLADESH                     High                  0       30    198
6-24 months   NIH-Birth        BANGLADESH                     High                  1        8    198
6-24 months   NIH-Birth        BANGLADESH                     Low                   0       67    198
6-24 months   NIH-Birth        BANGLADESH                     Low                   1       34    198
6-24 months   NIH-Birth        BANGLADESH                     Medium                0       41    198
6-24 months   NIH-Birth        BANGLADESH                     Medium                1       18    198
6-24 months   NIH-Crypto       BANGLADESH                     High                  0       28    113
6-24 months   NIH-Crypto       BANGLADESH                     High                  1        1    113
6-24 months   NIH-Crypto       BANGLADESH                     Low                   0       34    113
6-24 months   NIH-Crypto       BANGLADESH                     Low                   1        7    113
6-24 months   NIH-Crypto       BANGLADESH                     Medium                0       34    113
6-24 months   NIH-Crypto       BANGLADESH                     Medium                1        9    113
6-24 months   PROBIT           BELARUS                        High                  0        6    141
6-24 months   PROBIT           BELARUS                        High                  1        4    141
6-24 months   PROBIT           BELARUS                        Low                   0       40    141
6-24 months   PROBIT           BELARUS                        Low                   1       15    141
6-24 months   PROBIT           BELARUS                        Medium                0       57    141
6-24 months   PROBIT           BELARUS                        Medium                1       19    141
6-24 months   PROVIDE          BANGLADESH                     High                  0       25    123
6-24 months   PROVIDE          BANGLADESH                     High                  1       15    123
6-24 months   PROVIDE          BANGLADESH                     Low                   0       37    123
6-24 months   PROVIDE          BANGLADESH                     Low                   1       10    123
6-24 months   PROVIDE          BANGLADESH                     Medium                0       27    123
6-24 months   PROVIDE          BANGLADESH                     Medium                1        9    123
6-24 months   SAS-CompFeed     INDIA                          High                  0       55    473
6-24 months   SAS-CompFeed     INDIA                          High                  1       21    473
6-24 months   SAS-CompFeed     INDIA                          Low                   0      177    473
6-24 months   SAS-CompFeed     INDIA                          Low                   1       59    473
6-24 months   SAS-CompFeed     INDIA                          Medium                0      106    473
6-24 months   SAS-CompFeed     INDIA                          Medium                1       55    473
6-24 months   SAS-FoodSuppl    INDIA                          High                  0       11    156
6-24 months   SAS-FoodSuppl    INDIA                          High                  1        2    156
6-24 months   SAS-FoodSuppl    INDIA                          Low                   0      112    156
6-24 months   SAS-FoodSuppl    INDIA                          Low                   1        9    156
6-24 months   SAS-FoodSuppl    INDIA                          Medium                0       20    156
6-24 months   SAS-FoodSuppl    INDIA                          Medium                1        2    156
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       40    372
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       46    372
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0        5    372
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1       11    372
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0      120    372
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      150    372
6-24 months   ZVITAMBO         ZIMBABWE                       High                  0      462   1095
6-24 months   ZVITAMBO         ZIMBABWE                       High                  1       32   1095
6-24 months   ZVITAMBO         ZIMBABWE                       Low                   0      247   1095
6-24 months   ZVITAMBO         ZIMBABWE                       Low                   1       24   1095
6-24 months   ZVITAMBO         ZIMBABWE                       Medium                0      305   1095
6-24 months   ZVITAMBO         ZIMBABWE                       Medium                1       25   1095


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
* agecat: 0-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: MAL-ED, country: PERU
* agecat: 0-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: EE, country: PAKISTAN
* agecat: 0-6 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: PERU
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: COHORTS, country: INDIA
* agecat: 6-24 months, studyid: EE, country: PAKISTAN
* agecat: 6-24 months, studyid: Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: MAL-ED, country: PERU
* agecat: 6-24 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: SAS-FoodSuppl, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/9fb1db32-c4ff-49a7-83f3-65c1aee003b3/49f45c1e-5261-495f-8a2d-8b4a8e051166/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9fb1db32-c4ff-49a7-83f3-65c1aee003b3/49f45c1e-5261-495f-8a2d-8b4a8e051166/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9fb1db32-c4ff-49a7-83f3-65c1aee003b3/49f45c1e-5261-495f-8a2d-8b4a8e051166/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9fb1db32-c4ff-49a7-83f3-65c1aee003b3/49f45c1e-5261-495f-8a2d-8b4a8e051166/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                0.6740124   0.5788514   0.7691734
0-24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                0.6011559   0.5043983   0.6979135
0-24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                0.6035705   0.4968580   0.7102830
0-24 months   COHORTS          GUATEMALA                      High                 NA                0.4946009   0.3833945   0.6058074
0-24 months   COHORTS          GUATEMALA                      Low                  NA                0.4241003   0.3525013   0.4956993
0-24 months   COHORTS          GUATEMALA                      Medium               NA                0.4205880   0.3326878   0.5084882
0-24 months   COHORTS          INDIA                          High                 NA                0.3048704   0.2488428   0.3608980
0-24 months   COHORTS          INDIA                          Low                  NA                0.2160276   0.1900398   0.2420153
0-24 months   COHORTS          INDIA                          Medium               NA                0.2559961   0.2309392   0.2810530
0-24 months   COHORTS          PHILIPPINES                    High                 NA                0.6320231   0.5866955   0.6773506
0-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.5790749   0.5320604   0.6260895
0-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.6065159   0.5519994   0.6610324
0-24 months   GMS-Nepal        NEPAL                          High                 NA                0.5403268   0.4135492   0.6671044
0-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.5386564   0.4897544   0.5875583
0-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.5402921   0.4228237   0.6577604
0-24 months   IRC              INDIA                          High                 NA                0.6689462   0.5863608   0.7515316
0-24 months   IRC              INDIA                          Low                  NA                0.5878154   0.4921747   0.6834561
0-24 months   IRC              INDIA                          Medium               NA                0.5083135   0.4145875   0.6020394
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.4343715   0.4073785   0.4613644
0-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.4209635   0.3966945   0.4452325
0-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.4396880   0.4127469   0.4666291
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.2454309   0.2085449   0.2823169
0-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.2635325   0.2310481   0.2960170
0-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.2520464   0.2128348   0.2912579
0-24 months   MAL-ED           BANGLADESH                     High                 NA                0.7407407   0.6159882   0.8654933
0-24 months   MAL-ED           BANGLADESH                     Low                  NA                0.6969697   0.5338973   0.8600421
0-24 months   MAL-ED           BANGLADESH                     Medium               NA                0.7777778   0.5967442   0.9588114
0-24 months   MAL-ED           INDIA                          High                 NA                0.5193689   0.3028030   0.7359347
0-24 months   MAL-ED           INDIA                          Low                  NA                0.6356639   0.5015724   0.7697553
0-24 months   MAL-ED           INDIA                          Medium               NA                0.5379544   0.4088819   0.6670270
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                0.4874819   0.3769754   0.5979884
0-24 months   NIH-Birth        BANGLADESH                     Low                  NA                0.4948942   0.4227389   0.5670496
0-24 months   NIH-Birth        BANGLADESH                     Medium               NA                0.5794223   0.4872664   0.6715783
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.6551843   0.5569476   0.7534210
0-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.5733197   0.4725703   0.6740691
0-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.6416835   0.5600417   0.7233252
0-24 months   PROBIT           BELARUS                        High                 NA                0.9046938   0.8807091   0.9286784
0-24 months   PROBIT           BELARUS                        Low                  NA                0.8640218   0.8468150   0.8812285
0-24 months   PROBIT           BELARUS                        Medium               NA                0.8850028   0.8711802   0.8988254
0-24 months   PROVIDE          BANGLADESH                     High                 NA                0.6333039   0.5351522   0.7314556
0-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.5218886   0.4269621   0.6168151
0-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.5892002   0.4867569   0.6916435
0-24 months   SAS-CompFeed     INDIA                          High                 NA                0.3900608   0.2996037   0.4805179
0-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.3531744   0.3053428   0.4010059
0-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.4167874   0.3538242   0.4797505
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.6235955   0.5481204   0.6990706
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6666667   0.4628279   0.8705055
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.6254902   0.5809696   0.6700108
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.5567426   0.5344609   0.5790244
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.5145074   0.4793676   0.5496472
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.5257601   0.4938348   0.5576855
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                0.6982165   0.5978744   0.7985587
0-6 months    CMC-V-BCS-2002   INDIA                          Low                  NA                0.6393752   0.5034041   0.7753463
0-6 months    CMC-V-BCS-2002   INDIA                          Medium               NA                0.6905178   0.5721401   0.8088955
0-6 months    COHORTS          GUATEMALA                      High                 NA                0.8055556   0.6753507   0.9357605
0-6 months    COHORTS          GUATEMALA                      Low                  NA                0.7400000   0.6534164   0.8265836
0-6 months    COHORTS          GUATEMALA                      Medium               NA                0.7236842   0.6242822   0.8230862
0-6 months    COHORTS          INDIA                          High                 NA                0.3825280   0.3179740   0.4470821
0-6 months    COHORTS          INDIA                          Low                  NA                0.3343529   0.2941625   0.3745434
0-6 months    COHORTS          INDIA                          Medium               NA                0.3783731   0.3448677   0.4118785
0-6 months    COHORTS          PHILIPPINES                    High                 NA                0.7612410   0.7144770   0.8080049
0-6 months    COHORTS          PHILIPPINES                    Low                  NA                0.7017113   0.6401282   0.7632945
0-6 months    COHORTS          PHILIPPINES                    Medium               NA                0.7462314   0.6888938   0.8035690
0-6 months    GMS-Nepal        NEPAL                          High                 NA                0.6494079   0.4995845   0.7992313
0-6 months    GMS-Nepal        NEPAL                          Low                  NA                0.6058021   0.5326491   0.6789551
0-6 months    GMS-Nepal        NEPAL                          Medium               NA                0.5357989   0.3905116   0.6810863
0-6 months    IRC              INDIA                          High                 NA                0.7432671   0.6458592   0.8406750
0-6 months    IRC              INDIA                          Low                  NA                0.6347499   0.5219265   0.7475733
0-6 months    IRC              INDIA                          Medium               NA                0.5611063   0.4464822   0.6757305
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                0.7028071   0.6678184   0.7377957
0-6 months    JiVitA-3         BANGLADESH                     Low                  NA                0.6568804   0.6277561   0.6860047
0-6 months    JiVitA-3         BANGLADESH                     Medium               NA                0.7064344   0.6718771   0.7409916
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                0.5181200   0.4497132   0.5865267
0-6 months    JiVitA-4         BANGLADESH                     Low                  NA                0.5614162   0.4958094   0.6270230
0-6 months    JiVitA-4         BANGLADESH                     Medium               NA                0.5761876   0.5001588   0.6522163
0-6 months    MAL-ED           INDIA                          High                 NA                0.6111111   0.3713146   0.8509076
0-6 months    MAL-ED           INDIA                          Low                  NA                0.6875000   0.5258767   0.8491233
0-6 months    MAL-ED           INDIA                          Medium               NA                0.7916667   0.6196294   0.9637040
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                0.6861181   0.5658352   0.8064010
0-6 months    NIH-Birth        BANGLADESH                     Low                  NA                0.6697570   0.5683854   0.7711286
0-6 months    NIH-Birth        BANGLADESH                     Medium               NA                0.7853753   0.6918076   0.8789430
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                0.9305556   0.8711449   0.9899662
0-6 months    NIH-Crypto       BANGLADESH                     Low                  NA                0.8620690   0.7721846   0.9519533
0-6 months    NIH-Crypto       BANGLADESH                     Medium               NA                0.8805970   0.8019549   0.9592391
0-6 months    PROBIT           BELARUS                        High                 NA                0.9058399   0.8838497   0.9278301
0-6 months    PROBIT           BELARUS                        Low                  NA                0.8896370   0.8739707   0.9053033
0-6 months    PROBIT           BELARUS                        Medium               NA                0.9081094   0.8955257   0.9206930
0-6 months    PROVIDE          BANGLADESH                     High                 NA                0.8269231   0.7259269   0.9279193
0-6 months    PROVIDE          BANGLADESH                     Low                  NA                0.7627119   0.6575568   0.8678669
0-6 months    PROVIDE          BANGLADESH                     Medium               NA                0.7702703   0.6742120   0.8663285
0-6 months    SAS-CompFeed     INDIA                          High                 NA                0.5650944   0.4422077   0.6879812
0-6 months    SAS-CompFeed     INDIA                          Low                  NA                0.4823157   0.4095505   0.5550808
0-6 months    SAS-CompFeed     INDIA                          Medium               NA                0.5376725   0.4341221   0.6412228
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.7712743   0.7499852   0.7925634
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.7164957   0.6766187   0.7563728
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.7383759   0.7025234   0.7742283
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                0.6270575   0.4662181   0.7878970
6-24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                0.6007625   0.4538813   0.7476438
6-24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                0.4757856   0.2893785   0.6621928
6-24 months   COHORTS          PHILIPPINES                    High                 NA                0.5018628   0.4380649   0.5656607
6-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.5081277   0.4501511   0.5661044
6-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.4973471   0.4308457   0.5638485
6-24 months   GMS-Nepal        NEPAL                          High                 NA                0.4418572   0.2294864   0.6542280
6-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.4966177   0.4330808   0.5601546
6-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.5154397   0.3729576   0.6579218
6-24 months   IRC              INDIA                          High                 NA                0.5595645   0.4064451   0.7126840
6-24 months   IRC              INDIA                          Low                  NA                0.5355293   0.3985185   0.6725402
6-24 months   IRC              INDIA                          Medium               NA                0.4571700   0.3102732   0.6040667
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.1357404   0.1018823   0.1695985
6-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.1576499   0.1266269   0.1886729
6-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.1450119   0.1078665   0.1821574
6-24 months   MAL-ED           INDIA                          High                 NA                0.6000000   0.3314261   0.8685739
6-24 months   MAL-ED           INDIA                          Low                  NA                0.6666667   0.4614494   0.8718839
6-24 months   MAL-ED           INDIA                          Medium               NA                0.4285714   0.2479229   0.6092200
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                0.2105263   0.0841686   0.3368840
6-24 months   NIH-Birth        BANGLADESH                     Low                  NA                0.3366337   0.2406100   0.4326573
6-24 months   NIH-Birth        BANGLADESH                     Medium               NA                0.3050847   0.1875637   0.4226058
6-24 months   PROVIDE          BANGLADESH                     High                 NA                0.3750000   0.2362295   0.5137705
6-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.2127660   0.0922165   0.3333154
6-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.2500000   0.0863142   0.4136858
6-24 months   SAS-CompFeed     INDIA                          High                 NA                0.2614623   0.1613164   0.3616082
6-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.2543330   0.1958291   0.3128369
6-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.3412769   0.2674682   0.4150856
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5348837   0.4257515   0.6440159
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6875000   0.4523318   0.9226682
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.5555556   0.4941981   0.6169130
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.0647540   0.0435662   0.0859419
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.0899403   0.0562302   0.1236503
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.0750058   0.0456943   0.1043174


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.6296296   0.5734927   0.6857666
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4403183   0.3884516   0.4921850
0-24 months   COHORTS          INDIA                          NA                   NA                0.2397357   0.2214428   0.2580286
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.5390625   0.4966112   0.5815138
0-24 months   IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.4224309   0.4113024   0.4335594
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.2580019   0.2386523   0.2773515
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.7356322   0.6433278   0.8279366
0-24 months   MAL-ED           INDIA                          NA                   NA                0.6233766   0.5382453   0.7085080
0-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   PROBIT           BELARUS                        NA                   NA                0.8806715   0.8711794   0.8901636
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3808354   0.3457640   0.4159068
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6264045   0.5887191   0.6640899
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.5430867   0.5266769   0.5594965
0-6 months    CMC-V-BCS-2002   INDIA                          NA                   NA                0.6716418   0.6057305   0.7375531
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.7452830   0.6866274   0.8039386
0-6 months    COHORTS          INDIA                          NA                   NA                0.3595188   0.3344897   0.3845478
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.6030534   0.5432663   0.6628406
0-6 months    IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.6754071   0.6620619   0.6887522
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.5583942   0.5167799   0.6000084
0-6 months    MAL-ED           INDIA                          NA                   NA                0.7027027   0.5947731   0.8106323
0-6 months    NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.8934010   0.8497799   0.9370221
0-6 months    PROBIT           BELARUS                        NA                   NA                0.9008671   0.8918443   0.9098900
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.5131965   0.4596632   0.5667297
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.7474145   0.7304420   0.7643869
6-24 months   CMC-V-BCS-2002   INDIA                          NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984
6-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.4947090   0.4399319   0.5494861
6-24 months   IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.1492734   0.1316631   0.1668838
6-24 months   MAL-ED           INDIA                          NA                   NA                0.5500000   0.4255057   0.6744943
6-24 months   NIH-Birth        BANGLADESH                     NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5564516   0.5041613   0.6087419
6-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.0739726   0.0585427   0.0894025


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   CMC-V-BCS-2002   INDIA                          Low                  High              0.8919063   0.7190756   1.1062771
0-24 months   CMC-V-BCS-2002   INDIA                          Medium               High              0.8954887   0.7140151   1.1230855
0-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      Low                  High              0.8574596   0.6563832   1.1201337
0-24 months   COHORTS          GUATEMALA                      Medium               High              0.8503583   0.6334046   1.1416231
0-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          Low                  High              0.7085882   0.5736001   0.8753436
0-24 months   COHORTS          INDIA                          Medium               High              0.8396882   0.6880004   1.0248194
0-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    Low                  High              0.9162244   0.8223141   1.0208595
0-24 months   COHORTS          PHILIPPINES                    Medium               High              0.9596420   0.8556056   1.0763287
0-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          Low                  High              0.9969084   0.7751459   1.2821152
0-24 months   GMS-Nepal        NEPAL                          Medium               High              0.9999356   0.7266554   1.3759911
0-24 months   IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          Low                  High              0.8787185   0.7165032   1.0776592
0-24 months   IRC              INDIA                          Medium               High              0.7598720   0.6089054   0.9482679
0-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     Low                  High              0.9691326   0.8916199   1.0533838
0-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.0122396   0.9290079   1.1029283
0-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.0737545   0.8889339   1.2970015
0-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.0269545   0.8314718   1.2683959
0-24 months   MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     Low                  High              0.9409091   0.7050517   1.2556667
0-24 months   MAL-ED           BANGLADESH                     Medium               High              1.0500000   0.7881118   1.3989132
0-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          Low                  High              1.2239160   0.7647333   1.9588140
0-24 months   MAL-ED           INDIA                          Medium               High              1.0357849   0.6418920   1.6713877
0-24 months   NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     Low                  High              1.0152053   0.7759350   1.3282579
0-24 months   NIH-Birth        BANGLADESH                     Medium               High              1.1886027   0.9010015   1.5680069
0-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     Low                  High              0.8750510   0.6947139   1.1022008
0-24 months   NIH-Crypto       BANGLADESH                     Medium               High              0.9793939   0.8062363   1.1897410
0-24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        Low                  High              0.9550434   0.9240095   0.9871196
0-24 months   PROBIT           BELARUS                        Medium               High              0.9782347   0.9486696   1.0087212
0-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     Low                  High              0.8240729   0.6497069   1.0452347
0-24 months   PROVIDE          BANGLADESH                     Medium               High              0.9303593   0.7362531   1.1756398
0-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          Low                  High              0.9054342   0.6924688   1.1838960
0-24 months   SAS-CompFeed     INDIA                          Medium               High              1.0685191   0.8104149   1.4088252
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0690691   0.7694770   1.4853058
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0030383   0.8716480   1.1542341
0-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              0.9241386   0.8568705   0.9966875
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              0.9443504   0.8811638   1.0120680
0-6 months    CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          Low                  High              0.9157263   0.7078213   1.1846982
0-6 months    CMC-V-BCS-2002   INDIA                          Medium               High              0.9889737   0.7909937   1.2365066
0-6 months    COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      Low                  High              0.9186207   0.7524502   1.1214881
0-6 months    COHORTS          GUATEMALA                      Medium               High              0.8983666   0.7266646   1.1106396
0-6 months    COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          Low                  High              0.8740613   0.7148465   1.0687375
0-6 months    COHORTS          INDIA                          Medium               High              0.9891382   0.8233816   1.1882637
0-6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    Low                  High              0.9217992   0.8285457   1.0255485
0-6 months    COHORTS          PHILIPPINES                    Medium               High              0.9802828   0.8888232   1.0811535
0-6 months    GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          Low                  High              0.9328530   0.7182854   1.2115166
0-6 months    GMS-Nepal        NEPAL                          Medium               High              0.8250576   0.5773220   1.1790995
0-6 months    IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          Low                  High              0.8539997   0.6845659   1.0653693
0-6 months    IRC              INDIA                          Medium               High              0.7549188   0.5921293   0.9624627
0-6 months    JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     Low                  High              0.9346526   0.8745488   0.9988870
0-6 months    JiVitA-3         BANGLADESH                     Medium               High              1.0051612   0.9375541   1.0776433
0-6 months    JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH                     Low                  High              1.0835642   0.9180742   1.2788849
0-6 months    JiVitA-4         BANGLADESH                     Medium               High              1.1120737   0.9322010   1.3266537
0-6 months    MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           INDIA                          Low                  High              1.1250000   0.7120235   1.7775046
0-6 months    MAL-ED           INDIA                          Medium               High              1.2954545   0.8272169   2.0287332
0-6 months    NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     Low                  High              0.9761541   0.7742290   1.2307428
0-6 months    NIH-Birth        BANGLADESH                     Medium               High              1.1446648   0.9260559   1.4148793
0-6 months    NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     Low                  High              0.9264025   0.8197906   1.0468790
0-6 months    NIH-Crypto       BANGLADESH                     Medium               High              0.9463132   0.8479266   1.0561159
0-6 months    PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        Low                  High              0.9821129   0.9531635   1.0119414
0-6 months    PROBIT           BELARUS                        Medium               High              1.0025054   0.9749141   1.0308775
0-6 months    PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     Low                  High              0.9223492   0.7671832   1.1088983
0-6 months    PROVIDE          BANGLADESH                     Medium               High              0.9314896   0.7822913   1.1091429
0-6 months    SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          Low                  High              0.8535134   0.6549677   1.1122458
0-6 months    SAS-CompFeed     INDIA                          Medium               High              0.9514736   0.7114245   1.2725203
0-6 months    ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  High              0.9289765   0.8747638   0.9865491
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               High              0.9573454   0.9071938   1.0102694
6-24 months   CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   CMC-V-BCS-2002   INDIA                          Low                  High              0.9580660   0.6723503   1.3651968
6-24 months   CMC-V-BCS-2002   INDIA                          Medium               High              0.7587591   0.4746089   1.2130312
6-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    Low                  High              1.0124834   0.8536826   1.2008240
6-24 months   COHORTS          PHILIPPINES                    Medium               High              0.9910021   0.8241983   1.1915642
6-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          Low                  High              1.1239325   0.6832317   1.8488957
6-24 months   GMS-Nepal        NEPAL                          Medium               High              1.1665300   0.6699808   2.0310914
6-24 months   IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          Low                  High              0.9570466   0.6610954   1.3854859
6-24 months   IRC              INDIA                          Medium               High              0.8170103   0.5373304   1.2422633
6-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.1614070   0.8453201   1.5956869
6-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.0683031   0.7471609   1.5274776
6-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   MAL-ED           INDIA                          Low                  High              1.1111111   0.6453128   1.9131311
6-24 months   MAL-ED           INDIA                          Medium               High              0.7142857   0.3861885   1.3211271
6-24 months   NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   NIH-Birth        BANGLADESH                     Low                  High              1.5990099   0.8225830   3.1082974
6-24 months   NIH-Birth        BANGLADESH                     Medium               High              1.4491525   0.7098893   2.9582685
6-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   PROVIDE          BANGLADESH                     Low                  High              0.5673759   0.2882551   1.1167727
6-24 months   PROVIDE          BANGLADESH                     Medium               High              0.6666667   0.3144313   1.4134865
6-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   SAS-CompFeed     INDIA                          Low                  High              0.9727328   0.6227444   1.5194180
6-24 months   SAS-CompFeed     INDIA                          Medium               High              1.3052622   0.8408186   2.0262509
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2853261   0.8630574   1.9141984
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0386473   0.8235760   1.3098831
6-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.3889526   0.8450032   2.2830554
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.1583192   0.6964133   1.9265908


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.0443828   -0.1195739    0.0308084
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0542826   -0.1528784    0.0443131
0-24 months   COHORTS          INDIA                          High                 NA                -0.0651347   -0.1172990   -0.0129704
0-24 months   COHORTS          PHILIPPINES                    High                 NA                -0.0251551   -0.0643043    0.0139941
0-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0012643   -0.1215109    0.1189823
0-24 months   IRC              INDIA                          High                 NA                -0.0790728   -0.1519534   -0.0061921
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0119406   -0.0367850    0.0129039
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0125710   -0.0189530    0.0440950
0-24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0051086   -0.1250382    0.1148211
0-24 months   MAL-ED           INDIA                          High                 NA                 0.1040077   -0.0835959    0.2916114
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0327081   -0.0631699    0.1285861
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0326036   -0.1116126    0.0464053
0-24 months   PROBIT           BELARUS                        High                 NA                -0.0240223   -0.0466015   -0.0014430
0-24 months   PROVIDE          BANGLADESH                     High                 NA                -0.0521351   -0.1370237    0.0327536
0-24 months   SAS-CompFeed     INDIA                          High                 NA                -0.0092254   -0.0908790    0.0724282
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0028090   -0.0625216    0.0681396
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0136559   -0.0289942    0.0016824
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                -0.0265747   -0.1039572    0.0508078
0-6 months    COHORTS          GUATEMALA                      High                 NA                -0.0602725   -0.1812521    0.0607071
0-6 months    COHORTS          INDIA                          High                 NA                -0.0230093   -0.0830890    0.0370705
0-6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0245389   -0.0602421    0.0111644
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0463545   -0.1863887    0.0936798
0-6 months    IRC              INDIA                          High                 NA                -0.1057671   -0.1906420   -0.0208923
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0274000   -0.0602347    0.0054347
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0402742   -0.0145890    0.0951374
0-6 months    MAL-ED           INDIA                          High                 NA                 0.0915916   -0.1113297    0.2945128
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                 0.0268863   -0.0765092    0.1302818
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0371545   -0.0905895    0.0162804
0-6 months    PROBIT           BELARUS                        High                 NA                -0.0049728   -0.0251716    0.0152260
0-6 months    PROVIDE          BANGLADESH                     High                 NA                -0.0431393   -0.1318940    0.0456154
0-6 months    SAS-CompFeed     INDIA                          High                 NA                -0.0518980   -0.1630981    0.0593022
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0238598   -0.0384867   -0.0092329
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.0660819   -0.2043314    0.0721675
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0008053   -0.0559439    0.0575545
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0528518   -0.1500049    0.2557084
6-24 months   IRC              INDIA                          High                 NA                -0.0434355   -0.1711770    0.0843060
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0135330   -0.0163460    0.0434120
6-24 months   MAL-ED           INDIA                          High                 NA                -0.0500000   -0.2964156    0.1964156
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0925040   -0.0259710    0.2109790
6-24 months   PROVIDE          BANGLADESH                     High                 NA                -0.0985772   -0.2149020    0.0177476
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0239499   -0.0684901    0.1163900
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0215679   -0.0739879    0.1171237
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0092186   -0.0075295    0.0259667


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.0704903   -0.1968038    0.0424918
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.1232804   -0.3717292    0.0801691
0-24 months   COHORTS          INDIA                          High                 NA                -0.2716938   -0.5091059   -0.0716313
0-24 months   COHORTS          PHILIPPINES                    High                 NA                -0.0414507   -0.1080966    0.0211869
0-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0023454   -0.2521854    0.1976457
0-24 months   IRC              INDIA                          High                 NA                -0.1340504   -0.2673054   -0.0148069
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0282663   -0.0888166    0.0289166
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0487245   -0.0816909    0.1634163
0-24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0069444   -0.1842556    0.1438190
0-24 months   MAL-ED           INDIA                          High                 NA                 0.1668458   -0.2014131    0.4222254
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0628773   -0.1412855    0.2305176
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0523685   -0.1870476    0.0670302
0-24 months   PROBIT           BELARUS                        High                 NA                -0.0272772   -0.0532575   -0.0019377
0-24 months   PROVIDE          BANGLADESH                     High                 NA                -0.0897073   -0.2471199    0.0478365
0-24 months   SAS-CompFeed     INDIA                          High                 NA                -0.0242241   -0.2626008    0.1691476
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0044843   -0.1054703    0.1035023
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0251450   -0.0538034    0.0027341
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                -0.0395668   -0.1615930    0.0696404
0-6 months    COHORTS          GUATEMALA                      High                 NA                -0.0808720   -0.2567513    0.0703934
0-6 months    COHORTS          INDIA                          High                 NA                -0.0640001   -0.2451386    0.0907869
0-6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0333091   -0.0830054    0.0141068
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0768663   -0.3365827    0.1323837
0-6 months    IRC              INDIA                          High                 NA                -0.1659092   -0.3107669   -0.0370603
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0405681   -0.0903739    0.0069626
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0721250   -0.0315991    0.1654200
0-6 months    MAL-ED           INDIA                          High                 NA                 0.1303419   -0.2160862    0.3780825
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                 0.0377085   -0.1189150    0.1724082
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0415878   -0.1037496    0.0170732
0-6 months    PROBIT           BELARUS                        High                 NA                -0.0055200   -0.0281943    0.0166543
0-6 months    PROVIDE          BANGLADESH                     High                 NA                -0.0550398   -0.1751448    0.0527900
0-6 months    SAS-CompFeed     INDIA                          High                 NA                -0.1011269   -0.3410505    0.0958727
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0319231   -0.0517659   -0.0124547
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.1177982   -0.3962084    0.1050957
6-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0016021   -0.1179152    0.1083416
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.1068340   -0.4146381    0.4360781
6-24 months   IRC              INDIA                          High                 NA                -0.0841563   -0.3625840    0.1373781
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0906592   -0.1328829    0.2700917
6-24 months   MAL-ED           INDIA                          High                 NA                -0.0909091   -0.6477166    0.2777383
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.3052632   -0.2119312    0.6017437
6-24 months   PROVIDE          BANGLADESH                     High                 NA                -0.3566176   -0.8742527    0.0180559
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0839134   -0.3043508    0.3566036
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0387597   -0.1493241    0.1960641
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.1246215   -0.1311502    0.3225591
