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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE is not
## a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/6f1c832e-d8d5-4fea-8aa7-4d32261c01df/f37cf900-29ac-4a0c-ae75-ab1924c3d7da/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6f1c832e-d8d5-4fea-8aa7-4d32261c01df/f37cf900-29ac-4a0c-ae75-ab1924c3d7da/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6f1c832e-d8d5-4fea-8aa7-4d32261c01df/f37cf900-29ac-4a0c-ae75-ab1924c3d7da/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6f1c832e-d8d5-4fea-8aa7-4d32261c01df/f37cf900-29ac-4a0c-ae75-ab1924c3d7da/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid          country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                0.4529915   0.3891863   0.5167966
0-24 months   COHORTS          GUATEMALA                      Low                  NA                0.4814815   0.4403379   0.5226251
0-24 months   COHORTS          GUATEMALA                      Medium               NA                0.4721604   0.4259654   0.5183553
0-24 months   COHORTS          INDIA                          High                 NA                0.0740741   0.0525101   0.0956380
0-24 months   COHORTS          INDIA                          Low                  NA                0.1588983   0.1259061   0.1918905
0-24 months   COHORTS          INDIA                          Medium               NA                0.1053922   0.0755872   0.1351971
0-24 months   COHORTS          PHILIPPINES                    High                 NA                0.2298739   0.2041865   0.2555613
0-24 months   COHORTS          PHILIPPINES                    Low                  NA                0.4879227   0.4538700   0.5219754
0-24 months   COHORTS          PHILIPPINES                    Medium               NA                0.3878550   0.3579618   0.4177482
0-24 months   GMS-Nepal        NEPAL                          High                 NA                0.2196532   0.1579156   0.2813908
0-24 months   GMS-Nepal        NEPAL                          Low                  NA                0.2668919   0.2164645   0.3173192
0-24 months   GMS-Nepal        NEPAL                          Medium               NA                0.2290749   0.1743680   0.2837818
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                0.1219250   0.1129626   0.1308874
0-24 months   JiVitA-3         BANGLADESH                     Low                  NA                0.2036161   0.1956826   0.2115497
0-24 months   JiVitA-3         BANGLADESH                     Medium               NA                0.2021467   0.1925534   0.2117400
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                0.1291099   0.1072339   0.1509858
0-24 months   JiVitA-4         BANGLADESH                     Low                  NA                0.2478239   0.2258198   0.2698279
0-24 months   JiVitA-4         BANGLADESH                     Medium               NA                0.2037572   0.1836939   0.2238205
0-24 months   LCNI-5           MALAWI                         High                 NA                0.2071713   0.1570026   0.2573400
0-24 months   LCNI-5           MALAWI                         Low                  NA                0.2233677   0.1754841   0.2712513
0-24 months   LCNI-5           MALAWI                         Medium               NA                0.1918819   0.1449698   0.2387940
0-24 months   MAL-ED           BANGLADESH                     High                 NA                0.1296296   0.0397383   0.2195209
0-24 months   MAL-ED           BANGLADESH                     Low                  NA                0.2000000   0.0756229   0.3243771
0-24 months   MAL-ED           BANGLADESH                     Medium               NA                0.2909091   0.1704725   0.4113457
0-24 months   MAL-ED           INDIA                          High                 NA                0.1590909   0.0506480   0.2675338
0-24 months   MAL-ED           INDIA                          Low                  NA                0.2542373   0.1427503   0.3657243
0-24 months   MAL-ED           INDIA                          Medium               NA                0.1818182   0.0674652   0.2961712
0-24 months   MAL-ED           PERU                           High                 NA                0.1833333   0.1139635   0.2527032
0-24 months   MAL-ED           PERU                           Low                  NA                0.2318841   0.1321042   0.3316639
0-24 months   MAL-ED           PERU                           Medium               NA                0.1967213   0.0967645   0.2966781
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                0.1860465   0.0692022   0.3028908
0-24 months   MAL-ED           SOUTH AFRICA                   Low                  NA                0.1891892   0.0624128   0.3159655
0-24 months   MAL-ED           SOUTH AFRICA                   Medium               NA                0.3333333   0.1638745   0.5027922
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5076923   0.4215490   0.5938357
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.5409836   0.4156360   0.6663312
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.4285714   0.2164143   0.6407286
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                0.0979730   0.0640845   0.1318614
0-24 months   NIH-Crypto       BANGLADESH                     Low                  NA                0.1322314   0.0895247   0.1749381
0-24 months   NIH-Crypto       BANGLADESH                     Medium               NA                0.1727273   0.1227436   0.2227110
0-24 months   PROBIT           BELARUS                        High                 NA                0.0155153   0.0097159   0.0213148
0-24 months   PROBIT           BELARUS                        Low                  NA                0.0345902   0.0246698   0.0445106
0-24 months   PROBIT           BELARUS                        Medium               NA                0.0244818   0.0161380   0.0328257
0-24 months   PROVIDE          BANGLADESH                     High                 NA                0.0948276   0.0571010   0.1325542
0-24 months   PROVIDE          BANGLADESH                     Low                  NA                0.1932773   0.1430751   0.2434795
0-24 months   PROVIDE          BANGLADESH                     Medium               NA                0.1173913   0.0757622   0.1590204
0-24 months   SAS-CompFeed     INDIA                          High                 NA                0.2699229   0.1965991   0.3432467
0-24 months   SAS-CompFeed     INDIA                          Low                  NA                0.4067278   0.3613521   0.4521035
0-24 months   SAS-CompFeed     INDIA                          Medium               NA                0.2751540   0.2206836   0.3296245
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                0.4363636   0.3435748   0.5291525
0-24 months   SAS-FoodSuppl    INDIA                          Low                  NA                0.4489796   0.3684776   0.5294816
0-24 months   SAS-FoodSuppl    INDIA                          Medium               NA                0.5403727   0.4632992   0.6174461
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0779510   0.0531480   0.1027540
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1102362   0.0930081   0.1274643
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0933735   0.0712384   0.1155086
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                0.1280000   0.1072925   0.1487075
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  NA                0.2050173   0.1885605   0.2214741
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               NA                0.1610480   0.1539772   0.1681188
0-6 months    COHORTS          GUATEMALA                      High                 NA                0.1030928   0.0602825   0.1459031
0-6 months    COHORTS          GUATEMALA                      Low                  NA                0.1118421   0.0829002   0.1407840
0-6 months    COHORTS          GUATEMALA                      Medium               NA                0.0945946   0.0647604   0.1244288
0-6 months    COHORTS          INDIA                          High                 NA                0.0322004   0.0175611   0.0468396
0-6 months    COHORTS          INDIA                          Low                  NA                0.0393013   0.0214995   0.0571032
0-6 months    COHORTS          INDIA                          Medium               NA                0.0445545   0.0244284   0.0646805
0-6 months    COHORTS          PHILIPPINES                    High                 NA                0.0397672   0.0278371   0.0516973
0-6 months    COHORTS          PHILIPPINES                    Low                  NA                0.0905797   0.0710270   0.1101324
0-6 months    COHORTS          PHILIPPINES                    Medium               NA                0.0607248   0.0460730   0.0753765
0-6 months    GMS-Nepal        NEPAL                          High                 NA                0.0867052   0.0447423   0.1286681
0-6 months    GMS-Nepal        NEPAL                          Low                  NA                0.1148649   0.0785142   0.1512156
0-6 months    GMS-Nepal        NEPAL                          Medium               NA                0.0484581   0.0205041   0.0764122
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                0.0949367   0.0870793   0.1027941
0-6 months    JiVitA-3         BANGLADESH                     Low                  NA                0.1626719   0.1552242   0.1701196
0-6 months    JiVitA-3         BANGLADESH                     Medium               NA                0.1631762   0.1545052   0.1718472
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                0.0711262   0.0533161   0.0889362
0-6 months    JiVitA-4         BANGLADESH                     Low                  NA                0.1186992   0.1027850   0.1346134
0-6 months    JiVitA-4         BANGLADESH                     Medium               NA                0.1018424   0.0884181   0.1152666
0-6 months    MAL-ED           PERU                           High                 NA                0.1083333   0.0526135   0.1640532
0-6 months    MAL-ED           PERU                           Low                  NA                0.1014493   0.0300671   0.1728314
0-6 months    MAL-ED           PERU                           Medium               NA                0.1475410   0.0583653   0.2367167
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                0.0405405   0.0180579   0.0630232
0-6 months    NIH-Crypto       BANGLADESH                     Low                  NA                0.0619835   0.0315837   0.0923832
0-6 months    NIH-Crypto       BANGLADESH                     Medium               NA                0.0909091   0.0528962   0.1289220
0-6 months    PROBIT           BELARUS                        High                 NA                0.0048024   0.0022311   0.0073737
0-6 months    PROBIT           BELARUS                        Low                  NA                0.0137114   0.0081529   0.0192699
0-6 months    PROBIT           BELARUS                        Medium               NA                0.0091871   0.0056834   0.0126907
0-6 months    PROVIDE          BANGLADESH                     High                 NA                0.0387931   0.0139274   0.0636588
0-6 months    PROVIDE          BANGLADESH                     Low                  NA                0.0672269   0.0353901   0.0990637
0-6 months    PROVIDE          BANGLADESH                     Medium               NA                0.0260870   0.0054728   0.0467012
0-6 months    SAS-CompFeed     INDIA                          High                 NA                0.1156812   0.0830125   0.1483500
0-6 months    SAS-CompFeed     INDIA                          Low                  NA                0.1761103   0.1572521   0.1949685
0-6 months    SAS-CompFeed     INDIA                          Medium               NA                0.1402062   0.0923975   0.1880149
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                0.0727273   0.0241395   0.1213150
0-6 months    SAS-FoodSuppl    INDIA                          Low                  NA                0.1232877   0.0698949   0.1766805
0-6 months    SAS-FoodSuppl    INDIA                          Medium               NA                0.1500000   0.0946056   0.2053944
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0378619   0.0202041   0.0555197
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0472441   0.0355733   0.0589149
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0391566   0.0244001   0.0539132
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                0.0791583   0.0624074   0.0959093
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  NA                0.1048073   0.0923131   0.1173014
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               NA                0.0879290   0.0824788   0.0933792


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
0-24 months   COHORTS          GUATEMALA                      Low                  High              1.0628931   0.9014483   1.253252
0-24 months   COHORTS          GUATEMALA                      Medium               High              1.0423163   0.8780489   1.237315
0-24 months   COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          INDIA                          Low                  High              2.1451271   1.5002433   3.067216
0-24 months   COHORTS          INDIA                          Medium               High              1.4227941   0.9481542   2.135036
0-24 months   COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   COHORTS          PHILIPPINES                    Low                  High              2.1225667   1.8605586   2.421471
0-24 months   COHORTS          PHILIPPINES                    Medium               High              1.6872513   1.4730770   1.932565
0-24 months   GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   GMS-Nepal        NEPAL                          Low                  High              1.2150605   0.8659929   1.704832
0-24 months   GMS-Nepal        NEPAL                          Medium               High              1.0428936   0.7212082   1.508062
0-24 months   JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   JiVitA-3         BANGLADESH                     Low                  High              1.6700118   1.5405848   1.810312
0-24 months   JiVitA-3         BANGLADESH                     Medium               High              1.6579597   1.5221158   1.805927
0-24 months   JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   JiVitA-4         BANGLADESH                     Low                  High              1.9194805   1.5832299   2.327145
0-24 months   JiVitA-4         BANGLADESH                     Medium               High              1.5781693   1.2949494   1.923332
0-24 months   LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-24 months   LCNI-5           MALAWI                         Low                  High              1.0781787   0.7802500   1.489868
0-24 months   LCNI-5           MALAWI                         Medium               High              0.9261993   0.6565347   1.306626
0-24 months   MAL-ED           BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           BANGLADESH                     Low                  High              1.5428571   0.6078543   3.916084
0-24 months   MAL-ED           BANGLADESH                     Medium               High              2.2441558   1.0006999   5.032713
0-24 months   MAL-ED           INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           INDIA                          Low                  High              1.5980630   0.7105469   3.594140
0-24 months   MAL-ED           INDIA                          Medium               High              1.1428571   0.4520604   2.889265
0-24 months   MAL-ED           PERU                           High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           PERU                           Low                  High              1.2648221   0.7131453   2.243266
0-24 months   MAL-ED           PERU                           Medium               High              1.0730253   0.5694745   2.021835
0-24 months   MAL-ED           SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           SOUTH AFRICA                   Low                  High              1.0168919   0.4058970   2.547614
0-24 months   MAL-ED           SOUTH AFRICA                   Medium               High              1.7916667   0.7986258   4.019491
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0655738   0.7995761   1.420062
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   Medium               High              0.8441558   0.5002121   1.424594
0-24 months   NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   NIH-Crypto       BANGLADESH                     Low                  High              1.3496723   0.8408219   2.166470
0-24 months   NIH-Crypto       BANGLADESH                     Medium               High              1.7630094   1.1230416   2.767664
0-24 months   PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-24 months   PROBIT           BELARUS                        Low                  High              2.2294217   1.4545697   3.417039
0-24 months   PROBIT           BELARUS                        Medium               High              1.5779133   1.0337293   2.408571
0-24 months   PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   PROVIDE          BANGLADESH                     Low                  High              2.0381971   1.2673634   3.277866
0-24 months   PROVIDE          BANGLADESH                     Medium               High              1.2379447   0.7265153   2.109394
0-24 months   SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   SAS-CompFeed     INDIA                          Low                  High              1.5068298   1.1783999   1.926796
0-24 months   SAS-CompFeed     INDIA                          Medium               High              1.0193801   0.6765857   1.535852
0-24 months   SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   SAS-FoodSuppl    INDIA                          Low                  High              1.0289116   0.7790784   1.358861
0-24 months   SAS-FoodSuppl    INDIA                          Medium               High              1.2383540   0.9586177   1.599721
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.4141732   0.9920807   2.015850
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1978485   0.8055257   1.781248
0-24 months   ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ZVITAMBO         ZIMBABWE                       Low                  High              1.6016977   1.3370524   1.918725
0-24 months   ZVITAMBO         ZIMBABWE                       Medium               High              1.2581872   1.0640080   1.487804
0-6 months    COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-6 months    COHORTS          GUATEMALA                      Low                  High              1.0848684   0.6650910   1.769592
0-6 months    COHORTS          GUATEMALA                      Medium               High              0.9175676   0.5447214   1.545616
0-6 months    COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    COHORTS          INDIA                          Low                  High              1.2205240   0.6424398   2.318784
0-6 months    COHORTS          INDIA                          Medium               High              1.3836634   0.7289477   2.626422
0-6 months    COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    COHORTS          PHILIPPINES                    Low                  High              2.2777483   1.5739666   3.296218
0-6 months    COHORTS          PHILIPPINES                    Medium               High              1.5270060   1.0390641   2.244084
0-6 months    GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    GMS-Nepal        NEPAL                          Low                  High              1.3247748   0.7430347   2.361973
0-6 months    GMS-Nepal        NEPAL                          Medium               High              0.5588840   0.2632075   1.186711
0-6 months    JiVitA-3         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    JiVitA-3         BANGLADESH                     Low                  High              1.7134770   1.5631855   1.878218
0-6 months    JiVitA-3         BANGLADESH                     Medium               High              1.7187890   1.5624709   1.890746
0-6 months    JiVitA-4         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    JiVitA-4         BANGLADESH                     Low                  High              1.6688540   1.2556743   2.217990
0-6 months    JiVitA-4         BANGLADESH                     Medium               High              1.4318553   1.0746914   1.907719
0-6 months    MAL-ED           PERU                           High                 High              1.0000000   1.0000000   1.000000
0-6 months    MAL-ED           PERU                           Low                  High              0.9364548   0.3917148   2.238741
0-6 months    MAL-ED           PERU                           Medium               High              1.3619168   0.6158555   3.011773
0-6 months    NIH-Crypto       BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    NIH-Crypto       BANGLADESH                     Low                  High              1.5289256   0.7292302   3.205591
0-6 months    NIH-Crypto       BANGLADESH                     Medium               High              2.2424242   1.1196467   4.491119
0-6 months    PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-6 months    PROBIT           BELARUS                        Low                  High              2.8551421   1.5198521   5.363572
0-6 months    PROBIT           BELARUS                        Medium               High              1.9130326   1.0340430   3.539209
0-6 months    PROVIDE          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    PROVIDE          BANGLADESH                     Low                  High              1.7329599   0.7810479   3.845026
0-6 months    PROVIDE          BANGLADESH                     Medium               High              0.6724638   0.2430958   1.860203
0-6 months    SAS-CompFeed     INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    SAS-CompFeed     INDIA                          Low                  High              1.5223754   1.1422816   2.028945
0-6 months    SAS-CompFeed     INDIA                          Medium               High              1.2120046   0.8499193   1.728347
0-6 months    SAS-FoodSuppl    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    SAS-FoodSuppl    INDIA                          Low                  High              1.6952055   0.7646278   3.758328
0-6 months    SAS-FoodSuppl    INDIA                          Medium               High              2.0625000   0.9613303   4.425020
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2477999   0.7361094   2.115181
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0341956   0.5678026   1.883684
0-6 months    ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ZVITAMBO         ZIMBABWE                       Low                  High              1.3240210   1.0385152   1.688017
0-6 months    ZVITAMBO         ZIMBABWE                       Medium               High              1.1107998   0.8909881   1.384840


### Parameter: PAR


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0198085   -0.0377546   0.0773717
0-24 months   COHORTS          INDIA                          High                 NA                 0.0364995    0.0174771   0.0555220
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.1301955    0.1079500   0.1524410
0-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0231629   -0.0309938   0.0773196
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.0609363    0.0529413   0.0689313
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.0733162    0.0530113   0.0936211
0-24 months   LCNI-5           MALAWI                         High                 NA                 0.0007008   -0.0410340   0.0424355
0-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.0784241   -0.0021994   0.1590476
0-24 months   MAL-ED           INDIA                          High                 NA                 0.0449907   -0.0498447   0.1398262
0-24 months   MAL-ED           PERU                           High                 NA                 0.0166667   -0.0349172   0.0682505
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.0412262   -0.0545238   0.1369763
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0017417   -0.0518281   0.0553114
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.0326339    0.0038639   0.0614039
0-24 months   PROBIT           BELARUS                        High                 NA                 0.0114554    0.0038651   0.0190456
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.0408867    0.0073536   0.0744198
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.0601425   -0.0035938   0.1238787
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0444976   -0.0353646   0.1243598
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0215035   -0.0014705   0.0444774
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.0380581    0.0179329   0.0581833
0-6 months    COHORTS          GUATEMALA                      High                 NA                 0.0008288   -0.0377279   0.0393855
0-6 months    COHORTS          INDIA                          High                 NA                 0.0058010   -0.0062237   0.0178258
0-6 months    COHORTS          PHILIPPINES                    High                 NA                 0.0220383    0.0111850   0.0328917
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0004983   -0.0368427   0.0358461
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.0511410    0.0440786   0.0582034
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.0296770    0.0136944   0.0456597
0-6 months    MAL-ED           PERU                           High                 NA                 0.0076667   -0.0336394   0.0489727
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.0214647    0.0013193   0.0416101
0-6 months    PROBIT           BELARUS                        High                 NA                 0.0054374    0.0016656   0.0092092
0-6 months    PROVIDE          BANGLADESH                     High                 NA                 0.0054926   -0.0155087   0.0264940
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.0336311    0.0117066   0.0555557
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                 0.0474650    0.0017362   0.0931939
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0053609   -0.0107944   0.0215162
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.0109799   -0.0052277   0.0271874


### Parameter: PAF


agecat        studyid          country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   COHORTS          GUATEMALA                      High                 NA                 0.0418963   -0.0879472   0.1562433
0-24 months   COHORTS          INDIA                          High                 NA                 0.3300926    0.1413331   0.4773573
0-24 months   COHORTS          PHILIPPINES                    High                 NA                 0.3615845    0.2974975   0.4198251
0-24 months   GMS-Nepal        NEPAL                          High                 NA                 0.0953928   -0.1573555   0.2929449
0-24 months   JiVitA-3         BANGLADESH                     High                 NA                 0.3332379    0.2886982   0.3749887
0-24 months   JiVitA-4         BANGLADESH                     High                 NA                 0.3621876    0.2551617   0.4538349
0-24 months   LCNI-5           MALAWI                         High                 NA                 0.0033711   -0.2190518   0.1852117
0-24 months   MAL-ED           BANGLADESH                     High                 NA                 0.3769415   -0.1376520   0.6587692
0-24 months   MAL-ED           INDIA                          High                 NA                 0.2204545   -0.4090534   0.5687239
0-24 months   MAL-ED           PERU                           High                 NA                 0.0833333   -0.2139309   0.3078043
0-24 months   MAL-ED           SOUTH AFRICA                   High                 NA                 0.1813953   -0.3655131   0.5092588
0-24 months   MAL-ED           TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0034188   -0.1074860   0.1032175
0-24 months   NIH-Crypto       BANGLADESH                     High                 NA                 0.2498635   -0.0011679   0.4379517
0-24 months   PROBIT           BELARUS                        High                 NA                 0.4247339    0.1623246   0.6049411
0-24 months   PROVIDE          BANGLADESH                     High                 NA                 0.3012704    0.0120515   0.5058214
0-24 months   SAS-CompFeed     INDIA                          High                 NA                 0.1822139   -0.0392680   0.3564950
0-24 months   SAS-FoodSuppl    INDIA                          High                 NA                 0.0925373   -0.0899230   0.2444525
0-24 months   TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2162142   -0.0507880   0.4153719
0-24 months   ZVITAMBO         ZIMBABWE                       High                 NA                 0.2291856    0.0981925   0.3411511
0-6 months    COHORTS          GUATEMALA                      High                 NA                 0.0079751   -0.4419424   0.3175085
0-6 months    COHORTS          INDIA                          High                 NA                 0.1526535   -0.2275263   0.4150870
0-6 months    COHORTS          PHILIPPINES                    High                 NA                 0.3565754    0.1636143   0.5050188
0-6 months    GMS-Nepal        NEPAL                          High                 NA                -0.0057803   -0.5294892   0.3386066
0-6 months    JiVitA-3         BANGLADESH                     High                 NA                 0.3500945    0.3008924   0.3958339
0-6 months    JiVitA-4         BANGLADESH                     High                 NA                 0.2944058    0.1162005   0.4366785
0-6 months    MAL-ED           PERU                           High                 NA                 0.0660920   -0.3666002   0.3617854
0-6 months    NIH-Crypto       BANGLADESH                     High                 NA                 0.3461760   -0.0531765   0.5940985
0-6 months    PROBIT           BELARUS                        High                 NA                 0.5310073    0.1751252   0.7333484
0-6 months    PROVIDE          BANGLADESH                     High                 NA                 0.1240267   -0.5021944   0.4891945
0-6 months    SAS-CompFeed     INDIA                          High                 NA                 0.2252402    0.0510766   0.3674381
0-6 months    SAS-FoodSuppl    INDIA                          High                 NA                 0.3949091   -0.1128652   0.6709979
0-6 months    TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1240297   -0.3411048   0.4278419
0-6 months    ZVITAMBO         ZIMBABWE                       High                 NA                 0.1218113   -0.0776088   0.2843272
