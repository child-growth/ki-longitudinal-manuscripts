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

**Outcome Variable:** ever_sstunted

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

agecat        studyid          country                        feducyrs    ever_sstunted   n_cell       n
------------  ---------------  -----------------------------  ---------  --------------  -------  ------
0-24 months   COHORTS          GUATEMALA                      High                    0      128    1250
0-24 months   COHORTS          GUATEMALA                      High                    1      106    1250
0-24 months   COHORTS          GUATEMALA                      Low                     0      294    1250
0-24 months   COHORTS          GUATEMALA                      Low                     1      273    1250
0-24 months   COHORTS          GUATEMALA                      Medium                  0      237    1250
0-24 months   COHORTS          GUATEMALA                      Medium                  1      212    1250
0-24 months   COHORTS          INDIA                          High                    0      525    1447
0-24 months   COHORTS          INDIA                          High                    1       42    1447
0-24 months   COHORTS          INDIA                          Low                     0      397    1447
0-24 months   COHORTS          INDIA                          Low                     1       75    1447
0-24 months   COHORTS          INDIA                          Medium                  0      365    1447
0-24 months   COHORTS          INDIA                          Medium                  1       43    1447
0-24 months   COHORTS          PHILIPPINES                    High                    0      794    2880
0-24 months   COHORTS          PHILIPPINES                    High                    1      237    2880
0-24 months   COHORTS          PHILIPPINES                    Low                     0      424    2880
0-24 months   COHORTS          PHILIPPINES                    Low                     1      404    2880
0-24 months   COHORTS          PHILIPPINES                    Medium                  0      625    2880
0-24 months   COHORTS          PHILIPPINES                    Medium                  1      396    2880
0-24 months   GMS-Nepal        NEPAL                          High                    0      135     696
0-24 months   GMS-Nepal        NEPAL                          High                    1       38     696
0-24 months   GMS-Nepal        NEPAL                          Low                     0      217     696
0-24 months   GMS-Nepal        NEPAL                          Low                     1       79     696
0-24 months   GMS-Nepal        NEPAL                          Medium                  0      175     696
0-24 months   GMS-Nepal        NEPAL                          Medium                  1       52     696
0-24 months   JiVitA-3         BANGLADESH                     High                    0     5711   26233
0-24 months   JiVitA-3         BANGLADESH                     High                    1      793   26233
0-24 months   JiVitA-3         BANGLADESH                     Low                     0     8589   26233
0-24 months   JiVitA-3         BANGLADESH                     Low                     1     2196   26233
0-24 months   JiVitA-3         BANGLADESH                     Medium                  0     7136   26233
0-24 months   JiVitA-3         BANGLADESH                     Medium                  1     1808   26233
0-24 months   JiVitA-4         BANGLADESH                     High                    0     1086    5276
0-24 months   JiVitA-4         BANGLADESH                     High                    1      161    5276
0-24 months   JiVitA-4         BANGLADESH                     Low                     0     1469    5276
0-24 months   JiVitA-4         BANGLADESH                     Low                     1      484    5276
0-24 months   JiVitA-4         BANGLADESH                     Medium                  0     1653    5276
0-24 months   JiVitA-4         BANGLADESH                     Medium                  1      423    5276
0-24 months   LCNI-5           MALAWI                         High                    0      199     813
0-24 months   LCNI-5           MALAWI                         High                    1       52     813
0-24 months   LCNI-5           MALAWI                         Low                     0      226     813
0-24 months   LCNI-5           MALAWI                         Low                     1       65     813
0-24 months   LCNI-5           MALAWI                         Medium                  0      219     813
0-24 months   LCNI-5           MALAWI                         Medium                  1       52     813
0-24 months   MAL-ED           BANGLADESH                     High                    0       47     149
0-24 months   MAL-ED           BANGLADESH                     High                    1        7     149
0-24 months   MAL-ED           BANGLADESH                     Low                     0       32     149
0-24 months   MAL-ED           BANGLADESH                     Low                     1        8     149
0-24 months   MAL-ED           BANGLADESH                     Medium                  0       39     149
0-24 months   MAL-ED           BANGLADESH                     Medium                  1       16     149
0-24 months   MAL-ED           INDIA                          High                    0       37     147
0-24 months   MAL-ED           INDIA                          High                    1        7     147
0-24 months   MAL-ED           INDIA                          Low                     0       44     147
0-24 months   MAL-ED           INDIA                          Low                     1       15     147
0-24 months   MAL-ED           INDIA                          Medium                  0       36     147
0-24 months   MAL-ED           INDIA                          Medium                  1        8     147
0-24 months   MAL-ED           NEPAL                          High                    0       39      98
0-24 months   MAL-ED           NEPAL                          High                    1        3      98
0-24 months   MAL-ED           NEPAL                          Low                     0       26      98
0-24 months   MAL-ED           NEPAL                          Low                     1        2      98
0-24 months   MAL-ED           NEPAL                          Medium                  0       24      98
0-24 months   MAL-ED           NEPAL                          Medium                  1        4      98
0-24 months   MAL-ED           PERU                           High                    0       98     250
0-24 months   MAL-ED           PERU                           High                    1       22     250
0-24 months   MAL-ED           PERU                           Low                     0       53     250
0-24 months   MAL-ED           PERU                           Low                     1       16     250
0-24 months   MAL-ED           PERU                           Medium                  0       49     250
0-24 months   MAL-ED           PERU                           Medium                  1       12     250
0-24 months   MAL-ED           SOUTH AFRICA                   High                    0       35     110
0-24 months   MAL-ED           SOUTH AFRICA                   High                    1        8     110
0-24 months   MAL-ED           SOUTH AFRICA                   Low                     0       30     110
0-24 months   MAL-ED           SOUTH AFRICA                   Low                     1        7     110
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                  0       20     110
0-24 months   MAL-ED           SOUTH AFRICA                   Medium                  1       10     110
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                    0       64     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                    1       66     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                     0       28     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                     1       33     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                  0       12     212
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                  1        9     212
0-24 months   NIH-Crypto       BANGLADESH                     High                    0      267     758
0-24 months   NIH-Crypto       BANGLADESH                     High                    1       29     758
0-24 months   NIH-Crypto       BANGLADESH                     Low                     0      210     758
0-24 months   NIH-Crypto       BANGLADESH                     Low                     1       32     758
0-24 months   NIH-Crypto       BANGLADESH                     Medium                  0      182     758
0-24 months   NIH-Crypto       BANGLADESH                     Medium                  1       38     758
0-24 months   PROBIT           BELARUS                        High                    0     2665   16314
0-24 months   PROBIT           BELARUS                        High                    1       42   16314
0-24 months   PROBIT           BELARUS                        Low                     0     6196   16314
0-24 months   PROBIT           BELARUS                        Low                     1      222   16314
0-24 months   PROBIT           BELARUS                        Medium                  0     7013   16314
0-24 months   PROBIT           BELARUS                        Medium                  1      176   16314
0-24 months   PROVIDE          BANGLADESH                     High                    0      210     700
0-24 months   PROVIDE          BANGLADESH                     High                    1       22     700
0-24 months   PROVIDE          BANGLADESH                     Low                     0      192     700
0-24 months   PROVIDE          BANGLADESH                     Low                     1       46     700
0-24 months   PROVIDE          BANGLADESH                     Medium                  0      203     700
0-24 months   PROVIDE          BANGLADESH                     Medium                  1       27     700
0-24 months   SAS-CompFeed     INDIA                          High                    0      284    1530
0-24 months   SAS-CompFeed     INDIA                          High                    1      105    1530
0-24 months   SAS-CompFeed     INDIA                          Low                     0      388    1530
0-24 months   SAS-CompFeed     INDIA                          Low                     1      266    1530
0-24 months   SAS-CompFeed     INDIA                          Medium                  0      353    1530
0-24 months   SAS-CompFeed     INDIA                          Medium                  1      134    1530
0-24 months   SAS-FoodSuppl    INDIA                          High                    0       62     418
0-24 months   SAS-FoodSuppl    INDIA                          High                    1       48     418
0-24 months   SAS-FoodSuppl    INDIA                          Low                     0       81     418
0-24 months   SAS-FoodSuppl    INDIA                          Low                     1       66     418
0-24 months   SAS-FoodSuppl    INDIA                          Medium                  0       74     418
0-24 months   SAS-FoodSuppl    INDIA                          Medium                  1       87     418
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    0      414    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    1       35    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     0     1130    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     1      140    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  0      602    2383
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  1       62    2383
0-24 months   ZVITAMBO         ZIMBABWE                       High                    0      872   13694
0-24 months   ZVITAMBO         ZIMBABWE                       High                    1      128   13694
0-24 months   ZVITAMBO         ZIMBABWE                       Low                     0     1838   13694
0-24 months   ZVITAMBO         ZIMBABWE                       Low                     1      474   13694
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                  0     8710   13694
0-24 months   ZVITAMBO         ZIMBABWE                       Medium                  1     1672   13694
0-6 months    COHORTS          GUATEMALA                      High                    0      174    1020
0-6 months    COHORTS          GUATEMALA                      High                    1       20    1020
0-6 months    COHORTS          GUATEMALA                      Low                     0      405    1020
0-6 months    COHORTS          GUATEMALA                      Low                     1       51    1020
0-6 months    COHORTS          GUATEMALA                      Medium                  0      335    1020
0-6 months    COHORTS          GUATEMALA                      Medium                  1       35    1020
0-6 months    COHORTS          INDIA                          High                    0      541    1421
0-6 months    COHORTS          INDIA                          High                    1       18    1421
0-6 months    COHORTS          INDIA                          Low                     0      440    1421
0-6 months    COHORTS          INDIA                          Low                     1       18    1421
0-6 months    COHORTS          INDIA                          Medium                  0      386    1421
0-6 months    COHORTS          INDIA                          Medium                  1       18    1421
0-6 months    COHORTS          PHILIPPINES                    High                    0      990    2880
0-6 months    COHORTS          PHILIPPINES                    High                    1       41    2880
0-6 months    COHORTS          PHILIPPINES                    Low                     0      753    2880
0-6 months    COHORTS          PHILIPPINES                    Low                     1       75    2880
0-6 months    COHORTS          PHILIPPINES                    Medium                  0      959    2880
0-6 months    COHORTS          PHILIPPINES                    Medium                  1       62    2880
0-6 months    GMS-Nepal        NEPAL                          High                    0      158     696
0-6 months    GMS-Nepal        NEPAL                          High                    1       15     696
0-6 months    GMS-Nepal        NEPAL                          Low                     0      262     696
0-6 months    GMS-Nepal        NEPAL                          Low                     1       34     696
0-6 months    GMS-Nepal        NEPAL                          Medium                  0      216     696
0-6 months    GMS-Nepal        NEPAL                          Medium                  1       11     696
0-6 months    JiVitA-3         BANGLADESH                     High                    0     5863   26171
0-6 months    JiVitA-3         BANGLADESH                     High                    1      615   26171
0-6 months    JiVitA-3         BANGLADESH                     Low                     0     9013   26171
0-6 months    JiVitA-3         BANGLADESH                     Low                     1     1751   26171
0-6 months    JiVitA-3         BANGLADESH                     Medium                  0     7472   26171
0-6 months    JiVitA-3         BANGLADESH                     Medium                  1     1457   26171
0-6 months    JiVitA-4         BANGLADESH                     High                    0     1097    4980
0-6 months    JiVitA-4         BANGLADESH                     High                    1       84    4980
0-6 months    JiVitA-4         BANGLADESH                     Low                     0     1626    4980
0-6 months    JiVitA-4         BANGLADESH                     Low                     1      219    4980
0-6 months    JiVitA-4         BANGLADESH                     Medium                  0     1755    4980
0-6 months    JiVitA-4         BANGLADESH                     Medium                  1      199    4980
0-6 months    LCNI-5           MALAWI                         High                    0       69     267
0-6 months    LCNI-5           MALAWI                         High                    1        4     267
0-6 months    LCNI-5           MALAWI                         Low                     0       94     267
0-6 months    LCNI-5           MALAWI                         Low                     1       10     267
0-6 months    LCNI-5           MALAWI                         Medium                  0       85     267
0-6 months    LCNI-5           MALAWI                         Medium                  1        5     267
0-6 months    MAL-ED           BANGLADESH                     High                    0       50     149
0-6 months    MAL-ED           BANGLADESH                     High                    1        4     149
0-6 months    MAL-ED           BANGLADESH                     Low                     0       38     149
0-6 months    MAL-ED           BANGLADESH                     Low                     1        2     149
0-6 months    MAL-ED           BANGLADESH                     Medium                  0       49     149
0-6 months    MAL-ED           BANGLADESH                     Medium                  1        6     149
0-6 months    MAL-ED           INDIA                          High                    0       44     147
0-6 months    MAL-ED           INDIA                          High                    1        0     147
0-6 months    MAL-ED           INDIA                          Low                     0       55     147
0-6 months    MAL-ED           INDIA                          Low                     1        4     147
0-6 months    MAL-ED           INDIA                          Medium                  0       42     147
0-6 months    MAL-ED           INDIA                          Medium                  1        2     147
0-6 months    MAL-ED           NEPAL                          High                    0       42      98
0-6 months    MAL-ED           NEPAL                          High                    1        0      98
0-6 months    MAL-ED           NEPAL                          Low                     0       27      98
0-6 months    MAL-ED           NEPAL                          Low                     1        1      98
0-6 months    MAL-ED           NEPAL                          Medium                  0       24      98
0-6 months    MAL-ED           NEPAL                          Medium                  1        4      98
0-6 months    MAL-ED           PERU                           High                    0      107     250
0-6 months    MAL-ED           PERU                           High                    1       13     250
0-6 months    MAL-ED           PERU                           Low                     0       62     250
0-6 months    MAL-ED           PERU                           Low                     1        7     250
0-6 months    MAL-ED           PERU                           Medium                  0       52     250
0-6 months    MAL-ED           PERU                           Medium                  1        9     250
0-6 months    MAL-ED           SOUTH AFRICA                   High                    0       38     110
0-6 months    MAL-ED           SOUTH AFRICA                   High                    1        5     110
0-6 months    MAL-ED           SOUTH AFRICA                   Low                     0       35     110
0-6 months    MAL-ED           SOUTH AFRICA                   Low                     1        2     110
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                  0       27     110
0-6 months    MAL-ED           SOUTH AFRICA                   Medium                  1        3     110
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                    0      113     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                    1       17     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                     0       52     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                     1        9     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                  0       17     212
0-6 months    MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium                  1        4     212
0-6 months    NIH-Crypto       BANGLADESH                     High                    0      284     758
0-6 months    NIH-Crypto       BANGLADESH                     High                    1       12     758
0-6 months    NIH-Crypto       BANGLADESH                     Low                     0      227     758
0-6 months    NIH-Crypto       BANGLADESH                     Low                     1       15     758
0-6 months    NIH-Crypto       BANGLADESH                     Medium                  0      200     758
0-6 months    NIH-Crypto       BANGLADESH                     Medium                  1       20     758
0-6 months    PROBIT           BELARUS                        High                    0     2694   16309
0-6 months    PROBIT           BELARUS                        High                    1       13   16309
0-6 months    PROBIT           BELARUS                        Low                     0     6330   16309
0-6 months    PROBIT           BELARUS                        Low                     1       88   16309
0-6 months    PROBIT           BELARUS                        Medium                  0     7118   16309
0-6 months    PROBIT           BELARUS                        Medium                  1       66   16309
0-6 months    PROVIDE          BANGLADESH                     High                    0      223     700
0-6 months    PROVIDE          BANGLADESH                     High                    1        9     700
0-6 months    PROVIDE          BANGLADESH                     Low                     0      222     700
0-6 months    PROVIDE          BANGLADESH                     Low                     1       16     700
0-6 months    PROVIDE          BANGLADESH                     Medium                  0      224     700
0-6 months    PROVIDE          BANGLADESH                     Medium                  1        6     700
0-6 months    SAS-CompFeed     INDIA                          High                    0      344    1527
0-6 months    SAS-CompFeed     INDIA                          High                    1       45    1527
0-6 months    SAS-CompFeed     INDIA                          Low                     0      538    1527
0-6 months    SAS-CompFeed     INDIA                          Low                     1      115    1527
0-6 months    SAS-CompFeed     INDIA                          Medium                  0      417    1527
0-6 months    SAS-CompFeed     INDIA                          Medium                  1       68    1527
0-6 months    SAS-FoodSuppl    INDIA                          High                    0      102     416
0-6 months    SAS-FoodSuppl    INDIA                          High                    1        8     416
0-6 months    SAS-FoodSuppl    INDIA                          Low                     0      128     416
0-6 months    SAS-FoodSuppl    INDIA                          Low                     1       18     416
0-6 months    SAS-FoodSuppl    INDIA                          Medium                  0      136     416
0-6 months    SAS-FoodSuppl    INDIA                          Medium                  1       24     416
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    0      432    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    1       17    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     0     1210    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     1       60    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  0      638    2383
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  1       26    2383
0-6 months    ZVITAMBO         ZIMBABWE                       High                    0      919   13679
0-6 months    ZVITAMBO         ZIMBABWE                       High                    1       79   13679
0-6 months    ZVITAMBO         ZIMBABWE                       Low                     0     2067   13679
0-6 months    ZVITAMBO         ZIMBABWE                       Low                     1      242   13679
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                  0     9460   13679
0-6 months    ZVITAMBO         ZIMBABWE                       Medium                  1      912   13679


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/bfa8f440-02a2-4e10-b59a-f5036ecbe127/0730eb7f-2ee0-4957-a9dd-0876069e0a65/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bfa8f440-02a2-4e10-b59a-f5036ecbe127/0730eb7f-2ee0-4957-a9dd-0876069e0a65/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bfa8f440-02a2-4e10-b59a-f5036ecbe127/0730eb7f-2ee0-4957-a9dd-0876069e0a65/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bfa8f440-02a2-4e10-b59a-f5036ecbe127/0730eb7f-2ee0-4957-a9dd-0876069e0a65/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                0.4183238   0.3398426   0.4968050
0-24 months   COHORTS          GUATEMALA                      Low                  NA                0.4601186   0.4148419   0.5053953
0-24 months   COHORTS          GUATEMALA                      Medium               NA                0.4855930   0.4322566   0.5389294
0-24 months   COHORTS          INDIA                          High                 NA                0.0839920   0.0589549   0.1090290
0-24 months   COHORTS          INDIA                          Low                  NA                0.1159066   0.0881999   0.1436133
0-24 months   COHORTS          INDIA                          Medium               NA                0.1159165   0.0806305   0.1512024
0-24 months   COHORTS          PHILIPPINES                    High                 NA                0.2877297   0.2556201   0.3198393
0-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.4358052   0.3989232   0.4726872
0-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.3752898   0.3435504   0.4070292
0-24 months   GMS-Nepal        NEPAL                          High                 NA                0.2623331   0.1982821   0.3263842
0-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.2482355   0.2002601   0.2962109
0-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.2467611   0.1842427   0.3092795
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.1816514   0.1670531   0.1962497
0-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.1875211   0.1788431   0.1961991
0-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.1895715   0.1808175   0.1983255
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.1491480   0.1212713   0.1770247
0-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.2244281   0.1999347   0.2489216
0-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.2134298   0.1918133   0.2350463
0-24 months   LCNI-5           MALAWI                         High                 NA                0.2143476   0.1632777   0.2654175
0-24 months   LCNI-5           MALAWI                         Low                  NA                0.2132010   0.1673602   0.2590417
0-24 months   LCNI-5           MALAWI                         Medium               NA                0.2002418   0.1528449   0.2476387
0-24 months   MAL-ED           BANGLADESH                     High                 NA                0.1296296   0.0397383   0.2195209
0-24 months   MAL-ED           BANGLADESH                     Low                  NA                0.2000000   0.0756229   0.3243771
0-24 months   MAL-ED           BANGLADESH                     Medium               NA                0.2909091   0.1704725   0.4113457
0-24 months   MAL-ED           INDIA                          High                 NA                0.1590909   0.0506480   0.2675338
0-24 months   MAL-ED           INDIA                          Low                  NA                0.2542373   0.1427503   0.3657243
0-24 months   MAL-ED           INDIA                          Medium               NA                0.1818182   0.0674652   0.2961712
0-24 months   MAL-ED           PERU                           High                 NA                0.1763691   0.1081283   0.2446099
0-24 months   MAL-ED           PERU                           Low                  NA                0.2247478   0.1289122   0.3205834
0-24 months   MAL-ED           PERU                           Medium               NA                0.1818958   0.0821560   0.2816357
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.1860465   0.0692022   0.3028908
0-24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.1891892   0.0624128   0.3159655
0-24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.3333333   0.1638745   0.5027922
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5076923   0.4215490   0.5938357
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.5409836   0.4156360   0.6663312
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.4285714   0.2164143   0.6407286
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.1240182   0.0827566   0.1652798
0-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.1111810   0.0690371   0.1533249
0-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.1760444   0.1190041   0.2330847
0-24 months   PROBIT           BELARUS                        High                 NA                0.0152466   0.0089996   0.0214936
0-24 months   PROBIT           BELARUS                        Low                  NA                0.0310802   0.0214293   0.0407311
0-24 months   PROBIT           BELARUS                        Medium               NA                0.0266187   0.0169878   0.0362497
0-24 months   PROVIDE          BANGLADESH                     High                 NA                0.1071539   0.0578269   0.1564809
0-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.1942997   0.1376640   0.2509354
0-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.1151102   0.0710917   0.1591288
0-24 months   SAS-CompFeed     INDIA                          High                 NA                0.3582737   0.2868678   0.4296796
0-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.3485992   0.3101665   0.3870319
0-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.2827470   0.2345766   0.3309173
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.4445667   0.3523223   0.5368112
0-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.4284327   0.3475099   0.5093556
0-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.5497413   0.4720969   0.6273856
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0788635   0.0541532   0.1035738
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1080480   0.0908995   0.1251965
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0975820   0.0751299   0.1200341
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.1485638   0.1261770   0.1709506
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.1774956   0.1583600   0.1966312
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.1659828   0.1584964   0.1734692
0-6 months    COHORTS          GUATEMALA                      High                 NA                0.1212737   0.0699866   0.1725608
0-6 months    COHORTS          GUATEMALA                      Low                  NA                0.1044270   0.0757500   0.1331041
0-6 months    COHORTS          GUATEMALA                      Medium               NA                0.1044791   0.0715746   0.1373835
0-6 months    COHORTS          INDIA                          High                 NA                0.0305731   0.0165722   0.0445740
0-6 months    COHORTS          INDIA                          Low                  NA                0.0371715   0.0198277   0.0545153
0-6 months    COHORTS          INDIA                          Medium               NA                0.0452122   0.0245597   0.0658647
0-6 months    COHORTS          PHILIPPINES                    High                 NA                0.0581913   0.0396370   0.0767456
0-6 months    COHORTS          PHILIPPINES                    Low                  NA                0.0657091   0.0488607   0.0825575
0-6 months    COHORTS          PHILIPPINES                    Medium               NA                0.0636647   0.0448488   0.0824805
0-6 months    GMS-Nepal        NEPAL                          High                 NA                0.0949048   0.0442280   0.1455816
0-6 months    GMS-Nepal        NEPAL                          Low                  NA                0.1072661   0.0602389   0.1542934
0-6 months    GMS-Nepal        NEPAL                          Medium               NA                0.0528437   0.0205958   0.0850916
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                0.1435822   0.1314641   0.1557004
0-6 months    JiVitA-3         BANGLADESH                     Low                  NA                0.1480573   0.1407813   0.1553333
0-6 months    JiVitA-3         BANGLADESH                     Medium               NA                0.1512519   0.1439988   0.1585050
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                0.0781785   0.0595580   0.0967991
0-6 months    JiVitA-4         BANGLADESH                     Low                  NA                0.1017355   0.0847060   0.1187650
0-6 months    JiVitA-4         BANGLADESH                     Medium               NA                0.1084758   0.0928269   0.1241247
0-6 months    MAL-ED           PERU                           High                 NA                0.1083333   0.0526135   0.1640532
0-6 months    MAL-ED           PERU                           Low                  NA                0.1014493   0.0300671   0.1728314
0-6 months    MAL-ED           PERU                           Medium               NA                0.1475410   0.0583653   0.2367167
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                0.0407566   0.0182553   0.0632579
0-6 months    NIH-Crypto       BANGLADESH                     Low                  NA                0.0600078   0.0296421   0.0903736
0-6 months    NIH-Crypto       BANGLADESH                     Medium               NA                0.0918678   0.0536455   0.1300900
0-6 months    PROBIT           BELARUS                        High                 NA                0.0052350   0.0028640   0.0076060
0-6 months    PROBIT           BELARUS                        Low                  NA                0.0122716   0.0072902   0.0172530
0-6 months    PROBIT           BELARUS                        Medium               NA                0.0094264   0.0053360   0.0135169
0-6 months    PROVIDE          BANGLADESH                     High                 NA                0.0387931   0.0139274   0.0636588
0-6 months    PROVIDE          BANGLADESH                     Low                  NA                0.0672269   0.0353901   0.0990637
0-6 months    PROVIDE          BANGLADESH                     Medium               NA                0.0260870   0.0054728   0.0467012
0-6 months    SAS-CompFeed     INDIA                          High                 NA                0.1526024   0.1223176   0.1828872
0-6 months    SAS-CompFeed     INDIA                          Low                  NA                0.1475504   0.1322530   0.1628478
0-6 months    SAS-CompFeed     INDIA                          Medium               NA                0.1493414   0.0931529   0.2055299
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                0.0727273   0.0241395   0.1213150
0-6 months    SAS-FoodSuppl    INDIA                          Low                  NA                0.1232877   0.0698949   0.1766805
0-6 months    SAS-FoodSuppl    INDIA                          Medium               NA                0.1500000   0.0946056   0.2053944
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0385478   0.0206263   0.0564693
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0467651   0.0350861   0.0584440
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0400879   0.0251634   0.0550125
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.0867740   0.0717170   0.1018309
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.0908846   0.0801437   0.1016255
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.0901619   0.0847632   0.0955607


### Parameter: E(Y)


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      NA                   NA                0.4728000   0.4451119   0.5004881
0-24 months   COHORTS          INDIA                          NA                   NA                0.1105736   0.0944098   0.1267374
0-24 months   COHORTS          PHILIPPINES                    NA                   NA                0.3600694   0.3425352   0.3776037
0-24 months   GMS-Nepal        NEPAL                          NA                   NA                0.2428161   0.2109378   0.2746944
0-24 months   JiVitA-3         BANGLADESH                     NA                   NA                0.1828613   0.1771578   0.1885648
0-24 months   JiVitA-4         BANGLADESH                     NA                   NA                0.2024261   0.1900868   0.2147654
0-24 months   LCNI-5           MALAWI                         NA                   NA                0.2078721   0.1799617   0.2357825
0-24 months   MAL-ED           BANGLADESH                     NA                   NA                0.2080537   0.1426574   0.2734499
0-24 months   MAL-ED           INDIA                          NA                   NA                0.2040816   0.1387072   0.2694561
0-24 months   MAL-ED           PERU                           NA                   NA                0.2000000   0.1503169   0.2496831
0-24 months   MAL-ED           SOUTH AFRICA                   NA                   NA                0.2272727   0.1486005   0.3059450
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5094340   0.4419812   0.5768867
0-24 months   NIH-Crypto       BANGLADESH                     NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   PROBIT           BELARUS                        NA                   NA                0.0269707   0.0195564   0.0343850
0-24 months   PROVIDE          BANGLADESH                     NA                   NA                0.1357143   0.1103250   0.1611036
0-24 months   SAS-CompFeed     INDIA                          NA                   NA                0.3300654   0.3020915   0.3580392
0-24 months   SAS-FoodSuppl    INDIA                          NA                   NA                0.4808612   0.4329065   0.5288160
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0994545   0.0874362   0.1114727
0-24 months   ZVITAMBO         ZIMBABWE                       NA                   NA                0.1660581   0.1598251   0.1722911
0-6 months    COHORTS          GUATEMALA                      NA                   NA                0.1039216   0.0851851   0.1226580
0-6 months    COHORTS          INDIA                          NA                   NA                0.0380014   0.0280567   0.0479461
0-6 months    COHORTS          PHILIPPINES                    NA                   NA                0.0618056   0.0530095   0.0706016
0-6 months    GMS-Nepal        NEPAL                          NA                   NA                0.0862069   0.0653403   0.1070734
0-6 months    JiVitA-3         BANGLADESH                     NA                   NA                0.1460777   0.1409301   0.1512254
0-6 months    JiVitA-4         BANGLADESH                     NA                   NA                0.1008032   0.0917342   0.1098723
0-6 months    MAL-ED           PERU                           NA                   NA                0.1160000   0.0762256   0.1557744
0-6 months    NIH-Crypto       BANGLADESH                     NA                   NA                0.0620053   0.0448256   0.0791849
0-6 months    PROBIT           BELARUS                        NA                   NA                0.0102397   0.0068687   0.0136108
0-6 months    PROVIDE          BANGLADESH                     NA                   NA                0.0442857   0.0290345   0.0595370
0-6 months    SAS-CompFeed     INDIA                          NA                   NA                0.1493124   0.1303783   0.1682465
0-6 months    SAS-FoodSuppl    INDIA                          NA                   NA                0.1201923   0.0889059   0.1514788
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0432228   0.0350563   0.0513894
0-6 months    ZVITAMBO         ZIMBABWE                       NA                   NA                0.0901382   0.0853389   0.0949375


### Parameter: RR


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          GUATEMALA                      Low                  High              1.0999103   0.8922750   1.355863
0-24 months   COHORTS          GUATEMALA                      Medium               High              1.1608065   0.9364003   1.438991
0-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          Low                  High              1.3799721   0.9430732   2.019274
0-24 months   COHORTS          INDIA                          Medium               High              1.3800897   0.9033311   2.108471
0-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    Low                  High              1.5146340   1.3194450   1.738698
0-24 months   COHORTS          PHILIPPINES                    Medium               High              1.3043137   1.1367711   1.496549
0-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal        NEPAL                          Low                  High              0.9462606   0.7003058   1.278597
0-24 months   GMS-Nepal        NEPAL                          Medium               High              0.9406402   0.6657751   1.328983
0-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.0323133   0.9479751   1.124155
0-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.0436009   0.9568535   1.138213
0-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.5047346   1.2156951   1.862495
0-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.4309935   1.1622517   1.761875
0-24 months   LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         Low                  High              0.9946504   0.7248021   1.364965
0-24 months   LCNI-5           MALAWI                         Medium               High              0.9341917   0.6697218   1.303100
0-24 months   MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BANGLADESH                     Low                  High              1.5428571   0.6078543   3.916084
0-24 months   MAL-ED           BANGLADESH                     Medium               High              2.2441558   1.0006999   5.032713
0-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           INDIA                          Low                  High              1.5980630   0.7105469   3.594140
0-24 months   MAL-ED           INDIA                          Medium               High              1.1428571   0.4520604   2.889265
0-24 months   MAL-ED           PERU                           High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           PERU                           Low                  High              1.2743038   0.7153831   2.269903
0-24 months   MAL-ED           PERU                           Medium               High              1.0313362   0.5285076   2.012562
0-24 months   MAL-ED           SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   Low                  High              1.0168919   0.4058970   2.547614
0-24 months   MAL-ED           SOUTH AFRICA                   Medium               High              1.7916667   0.7986258   4.019491
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0655738   0.7995761   1.420062
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              0.8441558   0.5002121   1.424594
0-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Low                  High              0.8964895   0.5417975   1.483383
0-24 months   NIH-Crypto       BANGLADESH                     Medium               High              1.4195046   0.8942171   2.253360
0-24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        Low                  High              2.0385029   1.2433416   3.342198
0-24 months   PROBIT           BELARUS                        Medium               High              1.7458814   1.1142190   2.735640
0-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     Low                  High              1.8132768   1.0520153   3.125404
0-24 months   PROVIDE          BANGLADESH                     Medium               High              1.0742516   0.5906256   1.953888
0-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          Low                  High              0.9729968   0.7678102   1.233017
0-24 months   SAS-CompFeed     INDIA                          Medium               High              0.7891926   0.5582725   1.115629
0-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA                          Low                  High              0.9637085   0.7290586   1.273881
0-24 months   SAS-FoodSuppl    INDIA                          Medium               High              1.2365776   0.9643623   1.585632
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.3700638   0.9651603   1.944832
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2373537   0.8399449   1.822791
0-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.1947435   0.9945061   1.435297
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.1172497   0.9568565   1.304529
0-6 months    COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-6 months    COHORTS          GUATEMALA                      Low                  High              0.8610856   0.5205457   1.424406
0-6 months    COHORTS          GUATEMALA                      Medium               High              0.8615148   0.5089868   1.458206
0-6 months    COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    COHORTS          INDIA                          Low                  High              1.2158246   0.6321442   2.338437
0-6 months    COHORTS          INDIA                          Medium               High              1.4788228   0.7741182   2.825042
0-6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    Low                  High              1.1291902   0.7521140   1.695315
0-6 months    COHORTS          PHILIPPINES                    Medium               High              1.0940584   0.7098709   1.686171
0-6 months    GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal        NEPAL                          Low                  High              1.1302501   0.5661870   2.256260
0-6 months    GMS-Nepal        NEPAL                          Medium               High              0.5568076   0.2473511   1.253420
0-6 months    JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     Low                  High              1.0311673   0.9417490   1.129076
0-6 months    JiVitA-3         BANGLADESH                     Medium               High              1.0534162   0.9645334   1.150490
0-6 months    JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4         BANGLADESH                     Low                  High              1.3013224   0.9888375   1.712556
0-6 months    JiVitA-4         BANGLADESH                     Medium               High              1.3875392   1.0662313   1.805673
0-6 months    MAL-ED           PERU                           High                 High              1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           PERU                           Low                  High              0.9364548   0.3917148   2.238741
0-6 months    MAL-ED           PERU                           Medium               High              1.3619168   0.6158555   3.011773
0-6 months    NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     Low                  High              1.4723463   0.6969527   3.110403
0-6 months    NIH-Crypto       BANGLADESH                     Medium               High              2.2540587   1.1296781   4.497547
0-6 months    PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        Low                  High              2.3441431   1.2863647   4.271733
0-6 months    PROBIT           BELARUS                        Medium               High              1.8006539   0.9849707   3.291828
0-6 months    PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     Low                  High              1.7329599   0.7810479   3.845026
0-6 months    PROVIDE          BANGLADESH                     Medium               High              0.6724638   0.2430958   1.860203
0-6 months    SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          Low                  High              0.9668942   0.7644861   1.222893
0-6 months    SAS-CompFeed     INDIA                          Medium               High              0.9786307   0.6996407   1.368871
0-6 months    SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl    INDIA                          Low                  High              1.6952055   0.7646278   3.758328
0-6 months    SAS-FoodSuppl    INDIA                          Medium               High              2.0625000   0.9613303   4.425020
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2131696   0.7158574   2.055969
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0399523   0.5736412   1.885326
0-6 months    ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  High              1.0473717   0.8535428   1.285217
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               High              1.0390436   0.8702167   1.240624


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0544762   -0.0189310   0.1278834
0-24 months   COHORTS          INDIA                          High                 NA                 0.0265816    0.0041947   0.0489685
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.0723397    0.0439263   0.1007531
0-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0195170   -0.0758214   0.0367873
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0012099   -0.0123580   0.0147778
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0532781    0.0267824   0.0797738
0-24 months   LCNI-5           MALAWI                         High                 NA                -0.0064756   -0.0486807   0.0357296
0-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.0784241   -0.0021994   0.1590476
0-24 months   MAL-ED           INDIA                          High                 NA                 0.0449907   -0.0498447   0.1398262
0-24 months   MAL-ED           PERU                           High                 NA                 0.0236309   -0.0279306   0.0751925
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.0412262   -0.0545238   0.1369763
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0017417   -0.0518281   0.0553114
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0065887   -0.0289671   0.0421445
0-24 months   PROBIT           BELARUS                        High                 NA                 0.0117241    0.0036413   0.0198069
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0285604   -0.0166836   0.0738043
0-24 months   SAS-CompFeed     INDIA                          High                 NA                -0.0282084   -0.0988878   0.0424710
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0362945   -0.0430453   0.1156343
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0205910   -0.0023002   0.0434821
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0174943   -0.0042629   0.0392516
0-6 months    COHORTS          GUATEMALA                      High                 NA                -0.0173521   -0.0641369   0.0294327
0-6 months    COHORTS          INDIA                          High                 NA                 0.0074283   -0.0041923   0.0190490
0-6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0036142   -0.0134392   0.0206677
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0086979   -0.0542249   0.0368291
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0024955   -0.0086704   0.0136614
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0226247    0.0056272   0.0396222
0-6 months    MAL-ED           PERU                           High                 NA                 0.0076667   -0.0336394   0.0489727
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0212487    0.0011283   0.0413690
0-6 months    PROBIT           BELARUS                        High                 NA                 0.0050047    0.0011191   0.0088904
0-6 months    PROVIDE          BANGLADESH                     High                 NA                 0.0054926   -0.0155087   0.0264940
0-6 months    SAS-CompFeed     INDIA                          High                 NA                -0.0032900   -0.0260624   0.0194823
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                 0.0474650    0.0017362   0.0931939
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0046750   -0.0117191   0.0210691
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0033642   -0.0109899   0.0177183


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                 0.1152204   -0.0546783   0.2577501
0-24 months   COHORTS          INDIA                          High                 NA                 0.2403974    0.0130323   0.4153851
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.2009050    0.1182048   0.2758490
0-24 months   GMS-Nepal        NEPAL                          High                 NA                -0.0803779   -0.3396252   0.1286993
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0066166   -0.0704176   0.0781069
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.2631978    0.1210512   0.3823559
0-24 months   LCNI-5           MALAWI                         High                 NA                -0.0311516   -0.2555026   0.1531091
0-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.3769415   -0.1376520   0.6587692
0-24 months   MAL-ED           INDIA                          High                 NA                 0.2204545   -0.4090534   0.5687239
0-24 months   MAL-ED           PERU                           High                 NA                 0.1181546   -0.1799235   0.3409307
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.1813953   -0.3655131   0.5092588
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0034188   -0.1074860   0.1032175
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0504466   -0.2640383   0.2866896
0-24 months   PROBIT           BELARUS                        High                 NA                 0.4346983    0.1423608   0.6273888
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.2104450   -0.2011428   0.4809966
0-24 months   SAS-CompFeed     INDIA                          High                 NA                -0.0854630   -0.3238439   0.1099933
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0754781   -0.1052606   0.2266614
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2070393   -0.0583114   0.4058585
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.1053508   -0.0356334   0.2271423
0-6 months    COHORTS          GUATEMALA                      High                 NA                -0.1669732   -0.7155313   0.2061781
0-6 months    COHORTS          INDIA                          High                 NA                 0.1954748   -0.1705162   0.4470296
0-6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0584777   -0.2614082   0.2972423
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.1008954   -0.7782826   0.3184600
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0170832   -0.0623837   0.0906059
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.2244441    0.0365757   0.3756779
0-6 months    MAL-ED           PERU                           High                 NA                 0.0660920   -0.3666002   0.3617854
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.3426915   -0.0558471   0.5907983
0-6 months    PROBIT           BELARUS                        High                 NA                 0.4887559    0.1335658   0.6983377
0-6 months    PROVIDE          BANGLADESH                     High                 NA                 0.1240267   -0.5021944   0.4891945
0-6 months    SAS-CompFeed     INDIA                          High                 NA                -0.0220346   -0.1863958   0.1195563
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                 0.3949091   -0.1128652   0.6709979
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1081600   -0.3637228   0.4167593
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0373227   -0.1358258   0.1840759
