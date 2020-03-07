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

unadjusted

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/666697db-a371-4f00-8dcc-5e2d31f087a5/072c6118-24e1-4b77-9005-d9e1faaa3538/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/666697db-a371-4f00-8dcc-5e2d31f087a5/072c6118-24e1-4b77-9005-d9e1faaa3538/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/666697db-a371-4f00-8dcc-5e2d31f087a5/072c6118-24e1-4b77-9005-d9e1faaa3538/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/666697db-a371-4f00-8dcc-5e2d31f087a5/072c6118-24e1-4b77-9005-d9e1faaa3538/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                0.6721311   0.5789287   0.7653336
0-24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                0.6200000   0.5237291   0.7162709
0-24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                0.5882353   0.4859084   0.6905622
0-24 months   COHORTS          GUATEMALA                      High                 NA                0.4545455   0.3266883   0.5824027
0-24 months   COHORTS          GUATEMALA                      Low                  NA                0.4198895   0.3454911   0.4942879
0-24 months   COHORTS          GUATEMALA                      Medium               NA                0.4615385   0.3739109   0.5491661
0-24 months   COHORTS          INDIA                          High                 NA                0.3009709   0.2344732   0.3674685
0-24 months   COHORTS          INDIA                          Low                  NA                0.1944444   0.1688299   0.2200590
0-24 months   COHORTS          INDIA                          Medium               NA                0.2650143   0.2378943   0.2921343
0-24 months   COHORTS          PHILIPPINES                    High                 NA                0.6529210   0.6106166   0.6952253
0-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.5588235   0.5176247   0.6000224
0-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.6086957   0.5652393   0.6521520
0-24 months   GMS-Nepal        NEPAL                          High                 NA                0.5492958   0.4259305   0.6726610
0-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.5377970   0.4887087   0.5868852
0-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.5377358   0.4243427   0.6511290
0-24 months   IRC              INDIA                          High                 NA                0.6692913   0.5896499   0.7489328
0-24 months   IRC              INDIA                          Low                  NA                0.5869565   0.4931739   0.6807391
0-24 months   IRC              INDIA                          Medium               NA                0.5153846   0.4237477   0.6070216
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.4423321   0.4224084   0.4622558
0-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.4075975   0.3898047   0.4253903
0-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.4207746   0.4003880   0.4411612
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.2848000   0.2471131   0.3224869
0-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.2519280   0.2213192   0.2825369
0-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.2397572   0.2071069   0.2724075
0-24 months   MAL-ED           BANGLADESH                     High                 NA                0.7407407   0.6159882   0.8654933
0-24 months   MAL-ED           BANGLADESH                     Low                  NA                0.6969697   0.5338973   0.8600421
0-24 months   MAL-ED           BANGLADESH                     Medium               NA                0.7777778   0.5967442   0.9588114
0-24 months   MAL-ED           INDIA                          High                 NA                0.6060606   0.3939753   0.8181459
0-24 months   MAL-ED           INDIA                          Low                  NA                0.6774194   0.5469030   0.8079357
0-24 months   MAL-ED           INDIA                          Medium               NA                0.5762712   0.4493613   0.7031810
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                0.5000000   0.3889094   0.6110906
0-24 months   NIH-Birth        BANGLADESH                     Low                  NA                0.4893617   0.4177406   0.5609828
0-24 months   NIH-Birth        BANGLADESH                     Medium               NA                0.5766423   0.4855823   0.6677024
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.6732673   0.5763800   0.7701546
0-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.5757576   0.4780742   0.6734410
0-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.6181818   0.5318955   0.7044682
0-24 months   PROBIT           BELARUS                        High                 NA                0.8973988   0.8743195   0.9204781
0-24 months   PROBIT           BELARUS                        Low                  NA                0.8675455   0.8510699   0.8840212
0-24 months   PROBIT           BELARUS                        Medium               NA                0.8850683   0.8717022   0.8984344
0-24 months   PROVIDE          BANGLADESH                     High                 NA                0.6304348   0.5347873   0.7260822
0-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.5188679   0.4238240   0.6139118
0-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.6000000   0.5001435   0.6998565
0-24 months   SAS-CompFeed     INDIA                          High                 NA                0.4142857   0.3239783   0.5045931
0-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.3477218   0.2996925   0.3957511
0-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.4163424   0.3547950   0.4778898
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.6235955   0.5481204   0.6990706
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6666667   0.4628279   0.8705055
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.6254902   0.5809696   0.6700108
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.5861333   0.5635752   0.6086914
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.4852753   0.4500276   0.5205230
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.5057712   0.4738340   0.5377085
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                0.6941176   0.5944877   0.7937476
0-6 months    CMC-V-BCS-2002   INDIA                          Low                  NA                0.6296296   0.4958473   0.7634120
0-6 months    CMC-V-BCS-2002   INDIA                          Medium               NA                0.6774194   0.5619949   0.7928438
0-6 months    COHORTS          GUATEMALA                      High                 NA                0.8055556   0.6753507   0.9357605
0-6 months    COHORTS          GUATEMALA                      Low                  NA                0.7400000   0.6534164   0.8265836
0-6 months    COHORTS          GUATEMALA                      Medium               NA                0.7236842   0.6242822   0.8230862
0-6 months    COHORTS          INDIA                          High                 NA                0.3690476   0.2960537   0.4420415
0-6 months    COHORTS          INDIA                          Low                  NA                0.3307087   0.2897826   0.3716348
0-6 months    COHORTS          INDIA                          Medium               NA                0.3772049   0.3421999   0.4122098
0-6 months    COHORTS          PHILIPPINES                    High                 NA                0.7561728   0.7089074   0.8034383
0-6 months    COHORTS          PHILIPPINES                    Low                  NA                0.6889952   0.6260954   0.7518950
0-6 months    COHORTS          PHILIPPINES                    Medium               NA                0.7534247   0.6967772   0.8100721
0-6 months    GMS-Nepal        NEPAL                          High                 NA                0.6388889   0.4786217   0.7991561
0-6 months    GMS-Nepal        NEPAL                          Low                  NA                0.6079545   0.5351444   0.6807647
0-6 months    GMS-Nepal        NEPAL                          Medium               NA                0.5600000   0.4223630   0.6976370
0-6 months    IRC              INDIA                          High                 NA                0.7375000   0.6422683   0.8327317
0-6 months    IRC              INDIA                          Low                  NA                0.6219512   0.5115625   0.7323399
0-6 months    IRC              INDIA                          Medium               NA                0.5512821   0.4382808   0.6642833
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                0.7036290   0.6804547   0.7268033
0-6 months    JiVitA-3         BANGLADESH                     Low                  NA                0.6386059   0.6167914   0.6604204
0-6 months    JiVitA-3         BANGLADESH                     Medium               NA                0.6947674   0.6704228   0.7191121
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                0.6020942   0.5326158   0.6715727
0-6 months    JiVitA-4         BANGLADESH                     Low                  NA                0.5392670   0.4685124   0.6100216
0-6 months    JiVitA-4         BANGLADESH                     Medium               NA                0.5301205   0.4541279   0.6061131
0-6 months    MAL-ED           INDIA                          High                 NA                0.6111111   0.3713146   0.8509076
0-6 months    MAL-ED           INDIA                          Low                  NA                0.6875000   0.5258767   0.8491233
0-6 months    MAL-ED           INDIA                          Medium               NA                0.7916667   0.6196294   0.9637040
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                0.6896552   0.5724038   0.8069065
0-6 months    NIH-Birth        BANGLADESH                     Low                  NA                0.6666667   0.5669393   0.7663941
0-6 months    NIH-Birth        BANGLADESH                     Medium               NA                0.7820513   0.6898095   0.8742931
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                0.9305556   0.8711449   0.9899662
0-6 months    NIH-Crypto       BANGLADESH                     Low                  NA                0.8620690   0.7721846   0.9519533
0-6 months    NIH-Crypto       BANGLADESH                     Medium               NA                0.8805970   0.8019549   0.9592391
0-6 months    PROBIT           BELARUS                        High                 NA                0.9046921   0.8824358   0.9269484
0-6 months    PROBIT           BELARUS                        Low                  NA                0.8888166   0.8730194   0.9046139
0-6 months    PROBIT           BELARUS                        Medium               NA                0.9086468   0.8960940   0.9211996
0-6 months    PROVIDE          BANGLADESH                     High                 NA                0.8269231   0.7259269   0.9279193
0-6 months    PROVIDE          BANGLADESH                     Low                  NA                0.7627119   0.6575568   0.8678669
0-6 months    PROVIDE          BANGLADESH                     Medium               NA                0.7702703   0.6742120   0.8663285
0-6 months    SAS-CompFeed     INDIA                          High                 NA                0.5781250   0.4560553   0.7001947
0-6 months    SAS-CompFeed     INDIA                          Low                  NA                0.4751381   0.4024728   0.5478034
0-6 months    SAS-CompFeed     INDIA                          Medium               NA                0.5416667   0.4392845   0.6440489
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.7726285   0.7505884   0.7946687
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.6960784   0.6561100   0.7360469
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.7335474   0.6987755   0.7683192
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                0.6216216   0.4611766   0.7820666
6-24 months   CMC-V-BCS-2002   INDIA                          Low                  NA                0.6086957   0.4653431   0.7520482
6-24 months   CMC-V-BCS-2002   INDIA                          Medium               NA                0.4500000   0.2740346   0.6259654
6-24 months   COHORTS          PHILIPPINES                    High                 NA                0.5232558   0.4603242   0.5861875
6-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.4850949   0.4311031   0.5390866
6-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.5064516   0.4466304   0.5662729
6-24 months   GMS-Nepal        NEPAL                          High                 NA                0.4571429   0.2781887   0.6360970
6-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.4947735   0.4314080   0.5581390
6-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.5178571   0.3805212   0.6551931
6-24 months   IRC              INDIA                          High                 NA                0.5531915   0.4050577   0.7013253
6-24 months   IRC              INDIA                          Low                  NA                0.5357143   0.3966184   0.6748102
6-24 months   IRC              INDIA                          Medium               NA                0.4615385   0.3153270   0.6077499
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.1451613   0.1117264   0.1785962
6-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.1584327   0.1302380   0.1866275
6-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.1419878   0.1114541   0.1725216
6-24 months   MAL-ED           INDIA                          High                 NA                0.6000000   0.3314261   0.8685739
6-24 months   MAL-ED           INDIA                          Low                  NA                0.6666667   0.4614494   0.8718839
6-24 months   MAL-ED           INDIA                          Medium               NA                0.4285714   0.2479229   0.6092200
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                0.2105263   0.0841686   0.3368840
6-24 months   NIH-Birth        BANGLADESH                     Low                  NA                0.3366337   0.2406100   0.4326573
6-24 months   NIH-Birth        BANGLADESH                     Medium               NA                0.3050847   0.1875637   0.4226058
6-24 months   PROVIDE          BANGLADESH                     High                 NA                0.3750000   0.2362295   0.5137705
6-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.2127660   0.0922165   0.3333154
6-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.2500000   0.0863142   0.4136858
6-24 months   SAS-CompFeed     INDIA                          High                 NA                0.2763158   0.1754623   0.3771692
6-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.2500000   0.1918425   0.3081575
6-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.3416149   0.2682685   0.4149613
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5348837   0.4257515   0.6440159
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6875000   0.4523318   0.9226682
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.5555556   0.4941981   0.6169130
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.0647773   0.0435581   0.0859965
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.0885609   0.0551546   0.1219672
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.0757576   0.0465083   0.1050068


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
0-24 months   CMC-V-BCS-2002   INDIA                          Low                  High              0.9224390   0.7490783   1.1359210
0-24 months   CMC-V-BCS-2002   INDIA                          Medium               High              0.8751793   0.7006785   1.0931389
0-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          GUATEMALA                      Low                  High              0.9237569   0.6624539   1.2881302
0-24 months   COHORTS          GUATEMALA                      Medium               High              1.0153846   0.7231559   1.4257035
0-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          INDIA                          Low                  High              0.6460573   0.4995258   0.8355727
0-24 months   COHORTS          INDIA                          Medium               High              0.8805314   0.6902368   1.1232892
0-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   COHORTS          PHILIPPINES                    Low                  High              0.8558824   0.7758588   0.9441597
0-24 months   COHORTS          PHILIPPINES                    Medium               High              0.9322654   0.8465726   1.0266324
0-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   GMS-Nepal        NEPAL                          Low                  High              0.9790663   0.7683654   1.2475455
0-24 months   GMS-Nepal        NEPAL                          Medium               High              0.9789550   0.7194659   1.3320339
0-24 months   IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   IRC              INDIA                          Low                  High              0.8769821   0.7185221   1.0703883
0-24 months   IRC              INDIA                          Medium               High              0.7700452   0.6217733   0.9536751
0-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-3         BANGLADESH                     Low                  High              0.9214741   0.8654502   0.9811246
0-24 months   JiVitA-3         BANGLADESH                     Medium               High              0.9512642   0.8903714   1.0163215
0-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   JiVitA-4         BANGLADESH                     Low                  High              0.8845787   0.7391386   1.0586371
0-24 months   JiVitA-4         BANGLADESH                     Medium               High              0.8418441   0.6962684   1.0178568
0-24 months   MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           BANGLADESH                     Low                  High              0.9409091   0.7050517   1.2556667
0-24 months   MAL-ED           BANGLADESH                     Medium               High              1.0500000   0.7881118   1.3989132
0-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   MAL-ED           INDIA                          Low                  High              1.1177419   0.7494905   1.6669284
0-24 months   MAL-ED           INDIA                          Medium               High              0.9508475   0.6289270   1.4375451
0-24 months   NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   NIH-Birth        BANGLADESH                     Low                  High              0.9787234   0.7500485   1.2771168
0-24 months   NIH-Birth        BANGLADESH                     Medium               High              1.1532847   0.8780300   1.5148292
0-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   NIH-Crypto       BANGLADESH                     Low                  High              0.8551693   0.6845327   1.0683414
0-24 months   NIH-Crypto       BANGLADESH                     Medium               High              0.9181818   0.7509961   1.1225862
0-24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   PROBIT           BELARUS                        Low                  High              0.9667335   0.9363160   0.9981391
0-24 months   PROBIT           BELARUS                        Medium               High              0.9862597   0.9572798   1.0161169
0-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   PROVIDE          BANGLADESH                     Low                  High              0.8230319   0.6487939   1.0440627
0-24 months   PROVIDE          BANGLADESH                     Medium               High              0.9517241   0.7595895   1.1924583
0-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   SAS-CompFeed     INDIA                          Low                  High              0.8393285   0.6484205   1.0864438
0-24 months   SAS-CompFeed     INDIA                          Medium               High              1.0049644   0.7722604   1.3077888
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0690691   0.7694770   1.4853058
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0030383   0.8716480   1.1542341
0-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              0.8279264   0.7625855   0.8988660
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              0.8628945   0.8013799   0.9291311
0-6 months    CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    CMC-V-BCS-2002   INDIA                          Low                  High              0.9070935   0.7019306   1.1722222
0-6 months    CMC-V-BCS-2002   INDIA                          Medium               High              0.9759431   0.7810379   1.2194863
0-6 months    COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          GUATEMALA                      Low                  High              0.9186207   0.7524502   1.1214881
0-6 months    COHORTS          GUATEMALA                      Medium               High              0.8983666   0.7266646   1.1106396
0-6 months    COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          INDIA                          Low                  High              0.8961138   0.7096366   1.1315932
0-6 months    COHORTS          INDIA                          Medium               High              1.0221036   0.8215063   1.2716832
0-6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    COHORTS          PHILIPPINES                    Low                  High              0.9111610   0.8157265   1.0177608
0-6 months    COHORTS          PHILIPPINES                    Medium               High              0.9963657   0.9035566   1.0987076
0-6 months    GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    GMS-Nepal        NEPAL                          Low                  High              0.9515810   0.7206470   1.2565187
0-6 months    GMS-Nepal        NEPAL                          Medium               High              0.8765217   0.6169391   1.2453260
0-6 months    IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    IRC              INDIA                          Low                  High              0.8433237   0.6771263   1.0503134
0-6 months    IRC              INDIA                          Medium               High              0.7475011   0.5866758   0.9524134
0-6 months    JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-3         BANGLADESH                     Low                  High              0.9075889   0.8655285   0.9516932
0-6 months    JiVitA-3         BANGLADESH                     Medium               High              0.9874059   0.9410462   1.0360494
0-6 months    JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    JiVitA-4         BANGLADESH                     Low                  High              0.8956522   0.7520642   1.0666547
0-6 months    JiVitA-4         BANGLADESH                     Medium               High              0.8804610   0.7324690   1.0583541
0-6 months    MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    MAL-ED           INDIA                          Low                  High              1.1250000   0.7120235   1.7775046
0-6 months    MAL-ED           INDIA                          Medium               High              1.2954545   0.8272169   2.0287332
0-6 months    NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    NIH-Birth        BANGLADESH                     Low                  High              0.9666667   0.7707758   1.2123427
0-6 months    NIH-Birth        BANGLADESH                     Medium               High              1.1339744   0.9220152   1.3946601
0-6 months    NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    NIH-Crypto       BANGLADESH                     Low                  High              0.9264025   0.8197906   1.0468790
0-6 months    NIH-Crypto       BANGLADESH                     Medium               High              0.9463132   0.8479266   1.0561159
0-6 months    PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    PROBIT           BELARUS                        Low                  High              0.9824521   0.9530830   1.0127262
0-6 months    PROBIT           BELARUS                        Medium               High              1.0043713   0.9764296   1.0331127
0-6 months    PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    PROVIDE          BANGLADESH                     Low                  High              0.9223492   0.7671832   1.1088983
0-6 months    PROVIDE          BANGLADESH                     Medium               High              0.9314896   0.7822913   1.1091429
0-6 months    SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    SAS-CompFeed     INDIA                          Low                  High              0.8218605   0.6332384   1.0666674
0-6 months    SAS-CompFeed     INDIA                          Medium               High              0.9369369   0.7057235   1.2439020
0-6 months    ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  High              0.9009225   0.8449726   0.9605771
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               High              0.9494179   0.8983190   1.0034234
6-24 months   CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   CMC-V-BCS-2002   INDIA                          Low                  High              0.9792060   0.6904424   1.3887392
6-24 months   CMC-V-BCS-2002   INDIA                          Medium               High              0.7239130   0.4531142   1.1565518
6-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   COHORTS          PHILIPPINES                    Low                  High              0.9270702   0.7869502   1.0921392
6-24 months   COHORTS          PHILIPPINES                    Medium               High              0.9678853   0.8177326   1.1456091
6-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   GMS-Nepal        NEPAL                          Low                  High              1.0823171   0.7169718   1.6338303
6-24 months   GMS-Nepal        NEPAL                          Medium               High              1.1328125   0.7060292   1.8175795
6-24 months   IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   IRC              INDIA                          Low                  High              0.9684066   0.6669252   1.4061716
6-24 months   IRC              INDIA                          Medium               High              0.8343195   0.5510671   1.2631657
6-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.0914253   0.8157951   1.4601819
6-24 months   JiVitA-4         BANGLADESH                     Medium               High              0.9781384   0.7137503   1.3404613
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
6-24 months   SAS-CompFeed     INDIA                          Low                  High              0.9047619   0.5869090   1.3947547
6-24 months   SAS-CompFeed     INDIA                          Medium               High              1.2363206   0.8095446   1.8880847
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2853261   0.8630574   1.9141984
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0386473   0.8235760   1.3098831
6-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.3671587   0.8295580   2.2531552
6-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.1695076   0.7048663   1.9404361


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.0425015   -0.1153464    0.0303434
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0142272   -0.1296158    0.1011615
0-24 months   COHORTS          INDIA                          High                 NA                -0.0612351   -0.1236466    0.0011763
0-24 months   COHORTS          PHILIPPINES                    High                 NA                -0.0460530   -0.0800300   -0.0120759
0-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0102333   -0.1269649    0.1064984
0-24 months   IRC              INDIA                          High                 NA                -0.0794179   -0.1496332   -0.0092026
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0199012   -0.0364019   -0.0034004
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.0267981   -0.0573297    0.0037336
0-24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0051086   -0.1250382    0.1148211
0-24 months   MAL-ED           INDIA                          High                 NA                 0.0173160   -0.1640166    0.1986487
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0201900   -0.0762664    0.1166465
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0506867   -0.1292269    0.0278535
0-24 months   PROBIT           BELARUS                        High                 NA                -0.0167273   -0.0380708    0.0046161
0-24 months   PROVIDE          BANGLADESH                     High                 NA                -0.0492660   -0.1320918    0.0335599
0-24 months   SAS-CompFeed     INDIA                          High                 NA                -0.0334503   -0.1145728    0.0476722
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0028090   -0.0625216    0.0681396
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0430466   -0.0587924   -0.0273009
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                -0.0224759   -0.0991844    0.0542326
0-6 months    COHORTS          GUATEMALA                      High                 NA                -0.0602725   -0.1812521    0.0607071
0-6 months    COHORTS          INDIA                          High                 NA                -0.0095289   -0.0779948    0.0589371
0-6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0194707   -0.0556037    0.0166623
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0358355   -0.1848370    0.1131660
0-6 months    IRC              INDIA                          High                 NA                -0.1000000   -0.1831640   -0.0168360
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0282220   -0.0476426   -0.0088014
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.0437001   -0.1002157    0.0128156
0-6 months    MAL-ED           INDIA                          High                 NA                 0.0915916   -0.1113297    0.2945128
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                 0.0233493   -0.0772956    0.1239942
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0371545   -0.0905895    0.0162804
0-6 months    PROBIT           BELARUS                        High                 NA                -0.0038250   -0.0242802    0.0166303
0-6 months    PROVIDE          BANGLADESH                     High                 NA                -0.0431393   -0.1318940    0.0456154
0-6 months    SAS-CompFeed     INDIA                          High                 NA                -0.0649285   -0.1753035    0.0454464
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0252141   -0.0407077   -0.0097204
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.0606460   -0.1979452    0.0766532
6-24 months   COHORTS          PHILIPPINES                    High                 NA                -0.0205877   -0.0746697    0.0334943
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0375661   -0.1330119    0.2081442
6-24 months   IRC              INDIA                          High                 NA                -0.0370625   -0.1621908    0.0880659
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0041122   -0.0239439    0.0321682
6-24 months   MAL-ED           INDIA                          High                 NA                -0.0500000   -0.2964156    0.1964156
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0925040   -0.0259710    0.2109790
6-24 months   PROVIDE          BANGLADESH                     High                 NA                -0.0985772   -0.2149020    0.0177476
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0090965   -0.0838805    0.1020735
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0215679   -0.0739879    0.1171237
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0091953   -0.0075944    0.0259849


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.0675024   -0.1896862    0.0421328
0-24 months   COHORTS          GUATEMALA                      High                 NA                -0.0323111   -0.3305284    0.1990655
0-24 months   COHORTS          INDIA                          High                 NA                -0.2554277   -0.5435995   -0.0210542
0-24 months   COHORTS          PHILIPPINES                    High                 NA                -0.0758863   -0.1333771   -0.0213118
0-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0189835   -0.2603042    0.1761296
0-24 months   IRC              INDIA                          High                 NA                -0.1346355   -0.2631337   -0.0192094
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                -0.0471111   -0.0869277   -0.0087530
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                -0.1038677   -0.2282322    0.0079044
0-24 months   MAL-ED           BANGLADESH                     High                 NA                -0.0069444   -0.1842556    0.1438190
0-24 months   MAL-ED           INDIA                          High                 NA                 0.0277778   -0.3121485    0.2796425
0-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.0388128   -0.1659758    0.2076329
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                -0.0814138   -0.2151719    0.0376210
0-24 months   PROBIT           BELARUS                        High                 NA                -0.0189938   -0.0435274    0.0049629
0-24 months   PROVIDE          BANGLADESH                     High                 NA                -0.0847705   -0.2382630    0.0496955
0-24 months   SAS-CompFeed     INDIA                          High                 NA                -0.0878341   -0.3227226    0.1053430
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0044843   -0.1054703    0.1035023
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                -0.0792629   -0.1087899   -0.0505221
0-6 months    CMC-V-BCS-2002   INDIA                          High                 NA                -0.0334641   -0.1543867    0.0747918
0-6 months    COHORTS          GUATEMALA                      High                 NA                -0.0808720   -0.2567513    0.0703934
0-6 months    COHORTS          INDIA                          High                 NA                -0.0265045   -0.2357540    0.1473129
0-6 months    COHORTS          PHILIPPINES                    High                 NA                -0.0264296   -0.0767165    0.0215088
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0594233   -0.3378167    0.1610377
0-6 months    IRC              INDIA                          High                 NA                -0.1568627   -0.2987948   -0.0304410
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                -0.0417851   -0.0709815   -0.0133847
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                -0.0782603   -0.1846919    0.0186097
0-6 months    MAL-ED           INDIA                          High                 NA                 0.1303419   -0.2160862    0.3780825
0-6 months    NIH-Birth        BANGLADESH                     High                 NA                 0.0327478   -0.1192818    0.1641275
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                -0.0415878   -0.1037496    0.0170732
0-6 months    PROBIT           BELARUS                        High                 NA                -0.0042459   -0.0272113    0.0182061
0-6 months    PROVIDE          BANGLADESH                     High                 NA                -0.0550398   -0.1751448    0.0527900
0-6 months    SAS-CompFeed     INDIA                          High                 NA                -0.1265179   -0.3641821    0.0697412
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                -0.0337350   -0.0547511   -0.0131377
6-24 months   CMC-V-BCS-2002   INDIA                          High                 NA                -0.1081081   -0.3842876    0.1129708
6-24 months   COHORTS          PHILIPPINES                    High                 NA                -0.0409569   -0.1544335    0.0613654
6-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0759358   -0.3421075    0.3637659
6-24 months   IRC              INDIA                          High                 NA                -0.0718085   -0.3447259    0.1457192
6-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0275478   -0.1799116    0.1985304
6-24 months   MAL-ED           INDIA                          High                 NA                -0.0909091   -0.6477166    0.2777383
6-24 months   NIH-Birth        BANGLADESH                     High                 NA                 0.3052632   -0.2119312    0.6017437
6-24 months   PROVIDE          BANGLADESH                     High                 NA                -0.3566176   -0.8742527    0.0180559
6-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0318713   -0.3552642    0.3084204
6-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0387597   -0.1493241    0.1960641
6-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.1243065   -0.1321830    0.3226898
