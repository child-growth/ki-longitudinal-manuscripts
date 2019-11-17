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

**Outcome Variable:** stunted

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
* impsan
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
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        feducyrs    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              0       39     129
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              1        8     129
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               0       28     129
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               1        8     129
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            0       36     129
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            1       10     129
Birth       ki0047075b-MAL-ED          INDIA                          High              0        6      24
Birth       ki0047075b-MAL-ED          INDIA                          High              1        1      24
Birth       ki0047075b-MAL-ED          INDIA                          Low               0       13      24
Birth       ki0047075b-MAL-ED          INDIA                          Low               1        1      24
Birth       ki0047075b-MAL-ED          INDIA                          Medium            0        3      24
Birth       ki0047075b-MAL-ED          INDIA                          Medium            1        0      24
Birth       ki0047075b-MAL-ED          NEPAL                          High              0        2      10
Birth       ki0047075b-MAL-ED          NEPAL                          High              1        1      10
Birth       ki0047075b-MAL-ED          NEPAL                          Low               0        3      10
Birth       ki0047075b-MAL-ED          NEPAL                          Low               1        1      10
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            0        3      10
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            1        0      10
Birth       ki0047075b-MAL-ED          PERU                           High              0       79     194
Birth       ki0047075b-MAL-ED          PERU                           High              1        7     194
Birth       ki0047075b-MAL-ED          PERU                           Low               0       47     194
Birth       ki0047075b-MAL-ED          PERU                           Low               1       11     194
Birth       ki0047075b-MAL-ED          PERU                           Medium            0       47     194
Birth       ki0047075b-MAL-ED          PERU                           Medium            1        3     194
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       10      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        0      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       14      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        0      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0        8      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        1      33
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0       58     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        8     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       21     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        6     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0        6     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        4     103
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              0      230    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              1       69    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               0      380    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               1      163    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            0      291    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            1      116    1249
Birth       ki1017093b-PROVIDE         BANGLADESH                     High              0      144     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     High              1       19     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low               0      168     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low               1       19     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium            0      179     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium            1       10     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              0      252     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              1       32     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      207     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       28     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      172     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       41     732
Birth       ki1113344-GMS-Nepal        NEPAL                          High              0      147     694
Birth       ki1113344-GMS-Nepal        NEPAL                          High              1       25     694
Birth       ki1113344-GMS-Nepal        NEPAL                          Low               0      235     694
Birth       ki1113344-GMS-Nepal        NEPAL                          Low               1       61     694
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium            0      190     694
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium            1       36     694
Birth       ki1119695-PROBIT           BELARUS                        High              0     2056   13421
Birth       ki1119695-PROBIT           BELARUS                        High              1        3   13421
Birth       ki1119695-PROBIT           BELARUS                        Low               0     5302   13421
Birth       ki1119695-PROBIT           BELARUS                        Low               1       17   13421
Birth       ki1119695-PROBIT           BELARUS                        Medium            0     6032   13421
Birth       ki1119695-PROBIT           BELARUS                        Medium            1       11   13421
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              0      885   13501
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              1       97   13501
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2019   13501
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      262   13501
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     9209   13501
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1     1029   13501
Birth       ki1135781-COHORTS          GUATEMALA                      High              0      146     804
Birth       ki1135781-COHORTS          GUATEMALA                      High              1        9     804
Birth       ki1135781-COHORTS          GUATEMALA                      Low               0      330     804
Birth       ki1135781-COHORTS          GUATEMALA                      Low               1       25     804
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            0      280     804
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            1       14     804
Birth       ki1135781-COHORTS          INDIA                          High              0      479    1354
Birth       ki1135781-COHORTS          INDIA                          High              1       48    1354
Birth       ki1135781-COHORTS          INDIA                          Low               0      392    1354
Birth       ki1135781-COHORTS          INDIA                          Low               1       47    1354
Birth       ki1135781-COHORTS          INDIA                          Medium            0      354    1354
Birth       ki1135781-COHORTS          INDIA                          Medium            1       34    1354
Birth       ki1135781-COHORTS          PHILIPPINES                    High              0      990    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    High              1       37    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               0      758    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               1       69    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            0      952    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            1       67    2873
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              0     3509   21624
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              1     1217   21624
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               0     6170   21624
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               1     3298   21624
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     4854   21624
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     2576   21624
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              0      427    2740
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              1      155    2740
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               0      753    2740
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               1      349    2740
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            0      728    2740
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            1      328    2740
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              0       44     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              1        6     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               0       30     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               1        6     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            0       39     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            1        7     132
6 months    ki0047075b-MAL-ED          INDIA                          High              0       37     138
6 months    ki0047075b-MAL-ED          INDIA                          High              1        6     138
6 months    ki0047075b-MAL-ED          INDIA                          Low               0       44     138
6 months    ki0047075b-MAL-ED          INDIA                          Low               1       10     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium            0       36     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium            1        5     138
6 months    ki0047075b-MAL-ED          NEPAL                          High              0       40      95
6 months    ki0047075b-MAL-ED          NEPAL                          High              1        0      95
6 months    ki0047075b-MAL-ED          NEPAL                          Low               0       26      95
6 months    ki0047075b-MAL-ED          NEPAL                          Low               1        1      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            0       24      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            1        4      95
6 months    ki0047075b-MAL-ED          PERU                           High              0       85     224
6 months    ki0047075b-MAL-ED          PERU                           High              1       22     224
6 months    ki0047075b-MAL-ED          PERU                           Low               0       46     224
6 months    ki0047075b-MAL-ED          PERU                           Low               1       14     224
6 months    ki0047075b-MAL-ED          PERU                           Medium            0       47     224
6 months    ki0047075b-MAL-ED          PERU                           Medium            1       10     224
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       29      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        4      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       30      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        5      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       20      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        4      92
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0      100     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1       27     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       44     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1       11     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       11     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        8     201
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              0      273    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              1       75    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               0      356    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               1      194    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            0      326    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            1      109    1333
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              0       67     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              1       34     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               0       72     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               1       60     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0       78     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1       69     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              0      188     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              1       21     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               0      162     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               1       47     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            0      158     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            1       28     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              0      235     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              1       44     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      172     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       51     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      158     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       55     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      346    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       25    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0      963    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1      120    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0      514    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1       50    2018
6 months    ki1113344-GMS-Nepal        NEPAL                          High              0      116     563
6 months    ki1113344-GMS-Nepal        NEPAL                          High              1       21     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               0      183     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               1       60     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            0      142     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            1       41     563
6 months    ki1119695-PROBIT           BELARUS                        High              0     2413   15211
6 months    ki1119695-PROBIT           BELARUS                        High              1      100   15211
6 months    ki1119695-PROBIT           BELARUS                        Low               0     5505   15211
6 months    ki1119695-PROBIT           BELARUS                        Low               1      457   15211
6 months    ki1119695-PROBIT           BELARUS                        Medium            0     6360   15211
6 months    ki1119695-PROBIT           BELARUS                        Medium            1      376   15211
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              0      504    8429
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              1       82    8429
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     1157    8429
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      302    8429
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     5410    8429
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      974    8429
6 months    ki1135781-COHORTS          GUATEMALA                      High              0       99     904
6 months    ki1135781-COHORTS          GUATEMALA                      High              1       66     904
6 months    ki1135781-COHORTS          GUATEMALA                      Low               0      239     904
6 months    ki1135781-COHORTS          GUATEMALA                      Low               1      167     904
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            0      199     904
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            1      134     904
6 months    ki1135781-COHORTS          INDIA                          High              0      484    1385
6 months    ki1135781-COHORTS          INDIA                          High              1       60    1385
6 months    ki1135781-COHORTS          INDIA                          Low               0      334    1385
6 months    ki1135781-COHORTS          INDIA                          Low               1      116    1385
6 months    ki1135781-COHORTS          INDIA                          Medium            0      327    1385
6 months    ki1135781-COHORTS          INDIA                          Medium            1       64    1385
6 months    ki1135781-COHORTS          PHILIPPINES                    High              0      753    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    High              1      138    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               0      544    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               1      202    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            0      725    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            1      202    2564
6 months    ki1148112-LCNI-5           MALAWI                         High              0      166     812
6 months    ki1148112-LCNI-5           MALAWI                         High              1       85     812
6 months    ki1148112-LCNI-5           MALAWI                         Low               0      183     812
6 months    ki1148112-LCNI-5           MALAWI                         Low               1      107     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium            0      168     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium            1      103     812
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              0     3546   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              1      733   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               0     4490   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               1     1814   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     4076   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     1473   16132
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              0      909    4689
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              1      190    4689
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1205    4689
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               1      520    4689
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            0     1401    4689
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            1      464    4689
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       28     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1       12     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       20     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1       15     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       20     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1       22     117
24 months   ki0047075b-MAL-ED          INDIA                          High              0       29     132
24 months   ki0047075b-MAL-ED          INDIA                          High              1       13     132
24 months   ki0047075b-MAL-ED          INDIA                          Low               0       28     132
24 months   ki0047075b-MAL-ED          INDIA                          Low               1       23     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       19     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium            1       20     132
24 months   ki0047075b-MAL-ED          NEPAL                          High              0       31      91
24 months   ki0047075b-MAL-ED          NEPAL                          High              1        7      91
24 months   ki0047075b-MAL-ED          NEPAL                          Low               0       20      91
24 months   ki0047075b-MAL-ED          NEPAL                          Low               1        7      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       19      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1        7      91
24 months   ki0047075b-MAL-ED          PERU                           High              0       47     164
24 months   ki0047075b-MAL-ED          PERU                           High              1       30     164
24 months   ki0047075b-MAL-ED          PERU                           Low               0       26     164
24 months   ki0047075b-MAL-ED          PERU                           Low               1       18     164
24 months   ki0047075b-MAL-ED          PERU                           Medium            0       28     164
24 months   ki0047075b-MAL-ED          PERU                           Medium            1       15     164
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       23      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1       11      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       23      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1       11      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       11      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1       12      91
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0       37     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1       77     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       11     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1       36     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0        4     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1       12     177
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      169     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1       33     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0      107     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1       90     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      112     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1       67     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              0      179     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              1       32     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               0       91     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       53     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      112     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       47     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High              0       75     487
24 months   ki1113344-GMS-Nepal        NEPAL                          High              1       38     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      117     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1      102     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0       76     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1       79     487
24 months   ki1119695-PROBIT           BELARUS                        High              0      585    3913
24 months   ki1119695-PROBIT           BELARUS                        High              1       42    3913
24 months   ki1119695-PROBIT           BELARUS                        Low               0     1371    3913
24 months   ki1119695-PROBIT           BELARUS                        Low               1      145    3913
24 months   ki1119695-PROBIT           BELARUS                        Medium            0     1626    3913
24 months   ki1119695-PROBIT           BELARUS                        Medium            1      144    3913
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0       69    1594
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1       27    1594
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0      170    1594
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      128    1594
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0      812    1594
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      388    1594
24 months   ki1135781-COHORTS          GUATEMALA                      High              0       33     992
24 months   ki1135781-COHORTS          GUATEMALA                      High              1      144     992
24 months   ki1135781-COHORTS          GUATEMALA                      Low               0       84     992
24 months   ki1135781-COHORTS          GUATEMALA                      Low               1      378     992
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0       73     992
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1      280     992
24 months   ki1135781-COHORTS          INDIA                          High              0      339    1380
24 months   ki1135781-COHORTS          INDIA                          High              1      200    1380
24 months   ki1135781-COHORTS          INDIA                          Low               0      124    1380
24 months   ki1135781-COHORTS          INDIA                          Low               1      326    1380
24 months   ki1135781-COHORTS          INDIA                          Medium            0      179    1380
24 months   ki1135781-COHORTS          INDIA                          Medium            1      212    1380
24 months   ki1135781-COHORTS          PHILIPPINES                    High              0      421    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    High              1      377    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      159    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1      533    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      281    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1      543    2314
24 months   ki1148112-LCNI-5           MALAWI                         High              0       94     571
24 months   ki1148112-LCNI-5           MALAWI                         High              1       79     571
24 months   ki1148112-LCNI-5           MALAWI                         Low               0      122     571
24 months   ki1148112-LCNI-5           MALAWI                         Low               1       81     571
24 months   ki1148112-LCNI-5           MALAWI                         Medium            0      104     571
24 months   ki1148112-LCNI-5           MALAWI                         Medium            1       91     571
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     1317    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1      753    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     1513    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1     1866    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     1409    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     1435    8293
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0      772    4619
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1      324    4619
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0      925    4619
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1      778    4619
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0     1070    4619
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1      750    4619


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/a62c4806-a0fd-471f-a1f0-066d4c23d269/beb81f8d-da74-48bd-bfcc-679481fcf48a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a62c4806-a0fd-471f-a1f0-066d4c23d269/beb81f8d-da74-48bd-bfcc-679481fcf48a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a62c4806-a0fd-471f-a1f0-066d4c23d269/beb81f8d-da74-48bd-bfcc-679481fcf48a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a62c4806-a0fd-471f-a1f0-066d4c23d269/beb81f8d-da74-48bd-bfcc-679481fcf48a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1702128   0.0623508   0.2780748
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2222222   0.0858870   0.3585575
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2173913   0.0977303   0.3370523
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2697131   0.2301329   0.3092933
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2756089   0.2386596   0.3125583
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2870884   0.2574324   0.3167444
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1180091   0.0676069   0.1684114
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1005606   0.0565656   0.1445555
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0533343   0.0206615   0.0860071
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1245507   0.0887428   0.1603585
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1202101   0.0804332   0.1599870
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1799487   0.1298010   0.2300964
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1836977   0.1491630   0.2182325
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1785871   0.1466355   0.2105386
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1721276   0.1374200   0.2068352
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0997778   0.0913120   0.1082436
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1001589   0.0930735   0.1072442
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1033133   0.0980646   0.1085621
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0580645   0.0212246   0.0949044
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0704225   0.0437906   0.0970545
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0476190   0.0232611   0.0719770
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.0903006   0.0661728   0.1144284
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.1075728   0.0781102   0.1370355
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.0873408   0.0591793   0.1155023
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0417463   0.0297717   0.0537209
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0731296   0.0553162   0.0909430
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0658856   0.0505474   0.0812239
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.3279073   0.3189152   0.3368994
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.3267248   0.3188218   0.3346278
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.3299172   0.3215522   0.3382823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3017574   0.2756493   0.3278654
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2993032   0.2766397   0.3219668
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3091099   0.2848165   0.3334032
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1200000   0.0295838   0.2104162
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.1666667   0.0444637   0.2888697
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1521739   0.0479796   0.2563682
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.1395349   0.0355905   0.2434793
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.1851852   0.0812020   0.2891684
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.1219512   0.0214230   0.2224794
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.2031580   0.1274442   0.2788717
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.2473606   0.1336720   0.3610491
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.1638937   0.0705061   0.2572812
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2125984   0.1412626   0.2839342
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2000000   0.0940235   0.3059765
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.4210526   0.1984952   0.6436100
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2602830   0.2049992   0.3155667
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3198181   0.2860073   0.3536290
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2508591   0.2036912   0.2980271
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3333438   0.2421016   0.4245859
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4529508   0.3678356   0.5380660
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4739970   0.3946834   0.5533106
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1042892   0.0635093   0.1450691
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2255077   0.1685925   0.2824230
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1480200   0.0966630   0.1993770
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1794430   0.1378202   0.2210657
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2276496   0.1754063   0.2798930
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2247425   0.1713019   0.2781831
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0689565   0.0433016   0.0946114
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1089066   0.0901762   0.1276370
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0909396   0.0676875   0.1141918
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1799722   0.1219815   0.2379629
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2277686   0.1771476   0.2783895
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2312385   0.1727645   0.2897124
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0429195   0.0316779   0.0541611
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0736198   0.0563460   0.0908936
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0561109   0.0430090   0.0692128
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1459738   0.1157839   0.1761636
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1965587   0.1752589   0.2178584
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1545656   0.1456483   0.1634828
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.3593484   0.2831858   0.4355110
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.3982580   0.3533710   0.4431450
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4407907   0.3901110   0.4914703
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1188691   0.0928688   0.1448695
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2318338   0.1937158   0.2699519
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1659361   0.1297601   0.2021121
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1780200   0.1534474   0.2025925
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2401287   0.2105045   0.2697528
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2121152   0.1859940   0.2382365
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.3389471   0.2812747   0.3966194
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.3606669   0.3057406   0.4155931
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.3876308   0.3308614   0.4444002
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2240966   0.2098696   0.2383236
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2666330   0.2547735   0.2784926
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2503780   0.2384887   0.2622673
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1890402   0.1615449   0.2165355
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2861468   0.2628326   0.3094610
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2499157   0.2282349   0.2715966
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.3346479   0.1946644   0.4746315
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4018662   0.2407808   0.5629515
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.5383078   0.3850059   0.6916098
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.3128831   0.1682338   0.4575323
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.4639355   0.3254408   0.6024302
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.5134948   0.3562741   0.6707156
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.1842105   0.0602732   0.3081478
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2592593   0.0930459   0.4254726
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.2692308   0.0977903   0.4406712
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.3811363   0.2670523   0.4952203
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.4274196   0.2846483   0.5701910
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.3602032   0.2062924   0.5141141
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.3246909   0.1613251   0.4880566
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.3164315   0.1550604   0.4778026
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.5241658   0.3095368   0.7387949
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1801477   0.1279744   0.2323209
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4418013   0.3712282   0.5123743
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3600022   0.2889252   0.4310793
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1596738   0.1117298   0.2076178
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3589417   0.2802866   0.4375967
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2891983   0.2187427   0.3596539
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3479236   0.2585672   0.4372800
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.4539388   0.3894976   0.5183800
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5213861   0.4429349   0.5998373
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0696532   0.0409849   0.0983215
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0972631   0.0608757   0.1336505
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0813505   0.0465744   0.1161266
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2821971   0.1899634   0.3744308
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.4163262   0.3618030   0.4708493
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.3256886   0.2994170   0.3519601
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7863315   0.7270437   0.8456193
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.8168738   0.7824940   0.8512535
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.8080253   0.7668861   0.8491645
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.4019035   0.3614035   0.4424035
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.6925735   0.6513408   0.7338062
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.5429950   0.4945361   0.5914539
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5139080   0.4800458   0.5477701
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7377400   0.7047106   0.7707694
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6556944   0.6226993   0.6886894
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.4755555   0.4018769   0.5492340
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.3998139   0.3337721   0.4658557
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.4668985   0.3967526   0.5370443
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4360343   0.4122112   0.4598574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.5241064   0.5045311   0.5436817
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4929635   0.4718055   0.5141216
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3102876   0.2777667   0.3428085
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.4443747   0.4170789   0.4716705
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.4137136   0.3891292   0.4382979


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2015504   0.1320546   0.2710462
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2786229   0.2475201   0.3097257
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1757925   0.1474525   0.2041325
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1028072   0.0976841   0.1079303
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0597015   0.0433139   0.0760891
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0952733   0.0796294   0.1109171
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0602158   0.0515157   0.0689159
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3279227   0.3204672   0.3353781
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3036496   0.2833035   0.3239957
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1439394   0.0838283   0.2040505
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1521739   0.0920273   0.2123205
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2053571   0.1523375   0.2583768
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2288557   0.1706344   0.2870770
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2835709   0.2656121   0.3015297
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0966303   0.0837364   0.1095242
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2166963   0.1826342   0.2507583
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0613372   0.0479409   0.0747335
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1611105   0.1532617   0.1689592
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4059735   0.3739435   0.4380034
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1732852   0.1533446   0.1932258
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2113885   0.1955816   0.2271953
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3633005   0.3301997   0.3964012
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2491941   0.2409375   0.2574508
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2503732   0.2360124   0.2647340
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4188034   0.3290222   0.5085847
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4242424   0.3396095   0.5088753
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2307692   0.1437242   0.3178143
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3841463   0.3094772   0.4588155
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3736264   0.2736811   0.4735717
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4496920   0.4054647   0.4939193
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0845898   0.0544909   0.1146887
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3406524   0.3173794   0.3639255
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8084677   0.7839679   0.8329676
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.5347826   0.5084567   0.5611085
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6279170   0.6082186   0.6476154
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4395797   0.3988336   0.4803258
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4888460   0.4756120   0.5020800
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4009526   0.3835903   0.4183149


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.3055556   0.5404307   3.1539204
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.2771739   0.5517153   2.9565485
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.0218597   0.9596910   1.0880557
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.0644215   0.9402962   1.2049322
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.8521423   0.4622999   1.5707262
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.4519505   0.2142643   0.9533049
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              0.9651503   0.6300724   1.4784255
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.4447833   0.9765475   2.1375290
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.9721791   0.8292870   1.1396924
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.9370154   0.7777090   1.1289542
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0038192   0.9190472   1.0964106
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0354341   0.9617792   1.1147297
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High              1.2128326   0.5794578   2.5385159
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8201058   0.3630178   1.8527290
Birth       ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              1.1912753   0.8131120   1.7453155
Birth       ki1135781-COHORTS          INDIA                          Medium               High              0.9672234   0.6376710   1.4670904
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.7517623   1.2062047   2.5440716
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.5782385   1.0940784   2.2766530
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              0.9963938   0.9757104   1.0175157
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0061296   0.9846942   1.0280316
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.9918673   0.9165584   1.0733638
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.0243657   0.9442630   1.1112635
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.3888889   0.4853720   3.9742966
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.2681159   0.4581439   3.5100721
6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              1.3271605   0.5221427   3.3733214
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              0.8739837   0.2877246   2.6547871
6 months    ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High              1.2175775   0.6733745   2.2015907
6 months    ki0047075b-MAL-ED          PERU                           Medium               High              0.8067302   0.4082350   1.5942129
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              0.9407407   0.5024418   1.7613842
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              1.9805068   1.0589422   3.7040805
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.2287324   0.9480452   1.5925225
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9637939   0.6919446   1.3424466
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.3588098   0.9775315   1.8888027
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.4219466   1.0349266   1.9536960
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              2.1623307   1.3584125   3.4420134
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.4193224   0.8422398   2.3918081
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.2686462   0.9275432   1.7351894
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.2524455   0.9105723   1.7226747
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.5793511   1.0488610   2.3781510
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.3187966   0.8411755   2.0676120
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2655764   0.8683811   1.8444477
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.2848566   0.8638151   1.9111224
6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.7153006   1.4002086   2.1012983
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.3073533   1.0250328   1.6674322
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.3465341   1.0675382   1.6984442
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0588585   0.8554793   1.3105885
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              1.1082783   0.8776263   1.3995488
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              1.2266388   0.9695387   1.5519160
6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              1.9503285   1.4928613   2.5479804
6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.3959567   1.0342941   1.8840822
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.3488861   1.1266730   1.6149262
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.1915248   0.9958954   1.4255828
6 months    ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              1.0640803   0.8485556   1.3343462
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              1.1436322   0.9161608   1.4275820
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1898130   1.1052909   1.2807986
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1172772   1.0376367   1.2030302
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.5136823   1.2867353   1.7806570
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.3220244   1.1214203   1.5585133
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.2008626   0.6821329   2.1140617
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.6085797   0.9793123   2.6421893
24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.4827760   0.8570632   2.5653006
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.6411716   0.9388674   2.8688229
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.4074074   0.5556613   3.5647538
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.4615385   0.5787559   3.6908387
24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High              1.1214351   0.7166334   1.7548954
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              0.9450772   0.5593779   1.5967216
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.9745623   0.4744161   2.0019802
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.6143535   0.8424010   3.0937015
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              2.4524394   1.7632201   3.4110652
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.9983727   1.4098348   2.8325968
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.2479686   1.5564924   3.2466350
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.8111819   1.2366020   2.6527368
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3047082   0.9749047   1.7460820
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.4985649   1.1153367   2.0134697
24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.3963904   0.9083191   2.1467192
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.1679358   0.7257240   1.8796044
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.4753027   1.0379365   2.0969664
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1541173   0.8245596   1.6153918
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.0388415   0.9538289   1.1314311
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0275887   0.9392086   1.1242853
24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.7232332   1.5362425   1.9329844
24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.3510580   1.1838105   1.5419341
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.4355489   1.3274055   1.5525027
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.2758984   1.1764585   1.3837436
24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              0.8407304   0.6718714   1.0520281
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              0.9817960   0.7912039   1.2182995
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.2019842   1.1299409   1.2786208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1305614   1.0580364   1.2080577
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.4321381   1.2713264   1.6132911
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.3333230   1.1866912   1.4980731


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0313376   -0.0580281   0.1207034
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0089098   -0.0063705   0.0241901
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0289553   -0.0693928   0.0114822
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0134275   -0.0153954   0.0422503
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0079052   -0.0282229   0.0124124
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0030294   -0.0038145   0.0098733
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0016370   -0.0315661   0.0348400
Birth       ki1135781-COHORTS          INDIA                          High                 NA                 0.0049727   -0.0141646   0.0241101
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0184695    0.0075803   0.0293587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0000154   -0.0052231   0.0052539
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0018923   -0.0154988   0.0192833
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0239394   -0.0508616   0.0987403
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0126390   -0.0750471   0.1003252
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0021992   -0.0527201   0.0571185
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0162573   -0.0289964   0.0615110
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0232879   -0.0302874   0.0768633
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0956036    0.0165853   0.1746219
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0546512    0.0178437   0.0914587
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0303473   -0.0027751   0.0634696
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0276738    0.0035295   0.0518181
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0367241   -0.0144170   0.0878652
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0184177    0.0090785   0.0277570
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0151367   -0.0140813   0.0443547
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0466251   -0.0215902   0.1148403
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0544161    0.0319729   0.0768592
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0333685    0.0126996   0.0540373
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0243534   -0.0235692   0.0722761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0250976    0.0128249   0.0373703
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0613330    0.0380496   0.0846165
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0841555   -0.0309328   0.1992438
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1113594   -0.0118076   0.2345263
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0465587   -0.0539837   0.1471012
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0030100   -0.0809669   0.0869869
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0489355   -0.0835011   0.1813721
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1485720    0.1005838   0.1965602
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0971355    0.0551552   0.1391159
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1017684    0.0227280   0.1808088
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0149366   -0.0135800   0.0434533
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0584553   -0.0310944   0.1480051
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0221363   -0.0313878   0.0756604
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1328791    0.1012989   0.1644593
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1140091    0.0872007   0.1408175
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0359758   -0.0971391   0.0251875
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0528117    0.0324732   0.0731502
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0906650    0.0628120   0.1185180


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1554828   -0.4245093   0.4993299
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0319781   -0.0260043   0.0866837
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.3251443   -0.8579329   0.0548596
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0973159   -0.1359830   0.2827018
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0449691   -0.1675980   0.0647805
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0294670   -0.0394252   0.0937930
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0274194   -0.7228537   0.4509614
Birth       ki1135781-COHORTS          INDIA                          High                 NA                 0.0521941   -0.1712616   0.2330185
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3067216    0.1086217   0.4607959
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0000469   -0.0160561   0.0158947
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0062318   -0.0527041   0.0618682
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1663158   -0.5487082   0.5512199
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0830565   -0.7177637   0.5105349
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0107091   -0.2963211   0.2450200
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0710373   -0.1488645   0.2488482
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0821238   -0.1272916   0.2526364
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.2228796    0.0143669   0.3872810
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.3438472    0.0767286   0.5336837
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1446553   -0.0271366   0.2877144
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2863883   -0.0090079   0.4953046
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1694726   -0.1012770   0.3736583
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.3002700    0.1602761   0.4169250
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0939522   -0.1068489   0.2583246
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1148476   -0.0707881   0.2683007
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.3140261    0.1764386   0.4286278
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1578538    0.0548625   0.2496221
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0670338   -0.0746720   0.1900544
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1007149    0.0502576   0.1484915
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2449664    0.1446277   0.3335350
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.2009427   -0.1267628   0.4333390
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.2624899   -0.0950238   0.5032792
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.2017544   -0.3717774   0.5354960
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0078356   -0.2367899   0.2040765
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1309744   -0.3076279   0.4224615
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.4519718    0.2920154   0.5757889
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3782399    0.1994239   0.5171157
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.2263069    0.0280817   0.3841035
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.1765768   -0.1983227   0.4341877
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1715982   -0.1379251   0.3969291
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0273805   -0.0411516   0.0914016
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2484731    0.1860738   0.3060886
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1815671    0.1371167   0.2237277
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0818414   -0.2305136   0.0488681
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1080334    0.0654560   0.1486710
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2261240    0.1529078   0.2930119
