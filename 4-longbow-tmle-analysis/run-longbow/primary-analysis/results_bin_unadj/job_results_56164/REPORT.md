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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        feducyrs    stunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              0       39     129  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              1        8     129  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               0       28     129  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               1        8     129  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            0       36     129  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            1       10     129  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          High              0        6      24  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          High              1        1      24  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          Low               0       13      24  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          Low               1        1      24  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          Medium            0        3      24  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          Medium            1        0      24  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          High              0        2      10  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          High              1        1      10  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          Low               0        3      10  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          Low               1        1      10  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            0        3      10  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            1        0      10  stunted          
Birth       ki0047075b-MAL-ED          PERU                           High              0       79     194  stunted          
Birth       ki0047075b-MAL-ED          PERU                           High              1        7     194  stunted          
Birth       ki0047075b-MAL-ED          PERU                           Low               0       47     194  stunted          
Birth       ki0047075b-MAL-ED          PERU                           Low               1       11     194  stunted          
Birth       ki0047075b-MAL-ED          PERU                           Medium            0       47     194  stunted          
Birth       ki0047075b-MAL-ED          PERU                           Medium            1        3     194  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       10      33  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        0      33  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       14      33  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        0      33  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0        8      33  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        1      33  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0       58     103  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        8     103  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       21     103  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        6     103  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0        6     103  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        4     103  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              0      230    1249  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              1       69    1249  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               0      380    1249  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               1      163    1249  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            0      291    1249  stunted          
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            1      116    1249  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     High              0      144     539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     High              1       19     539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low               0      168     539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low               1       19     539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium            0      179     539  stunted          
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium            1       10     539  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              0      252     732  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              1       32     732  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      207     732  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       28     732  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      172     732  stunted          
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       41     732  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          High              0      147     694  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          High              1       25     694  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          Low               0      235     694  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          Low               1       61     694  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium            0      190     694  stunted          
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium            1       36     694  stunted          
Birth       ki1119695-PROBIT           BELARUS                        High              0     2056   13421  stunted          
Birth       ki1119695-PROBIT           BELARUS                        High              1        3   13421  stunted          
Birth       ki1119695-PROBIT           BELARUS                        Low               0     5302   13421  stunted          
Birth       ki1119695-PROBIT           BELARUS                        Low               1       17   13421  stunted          
Birth       ki1119695-PROBIT           BELARUS                        Medium            0     6032   13421  stunted          
Birth       ki1119695-PROBIT           BELARUS                        Medium            1       11   13421  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              0      885   13501  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              1       97   13501  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2019   13501  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      262   13501  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     9209   13501  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1     1029   13501  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      High              0      146     804  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      High              1        9     804  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      Low               0      330     804  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      Low               1       25     804  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            0      280     804  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            1       14     804  stunted          
Birth       ki1135781-COHORTS          INDIA                          High              0      479    1354  stunted          
Birth       ki1135781-COHORTS          INDIA                          High              1       48    1354  stunted          
Birth       ki1135781-COHORTS          INDIA                          Low               0      392    1354  stunted          
Birth       ki1135781-COHORTS          INDIA                          Low               1       47    1354  stunted          
Birth       ki1135781-COHORTS          INDIA                          Medium            0      354    1354  stunted          
Birth       ki1135781-COHORTS          INDIA                          Medium            1       34    1354  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    High              0      990    2873  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    High              1       37    2873  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               0      758    2873  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               1       69    2873  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            0      952    2873  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            1       67    2873  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              0     3509   21624  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              1     1217   21624  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               0     6170   21624  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               1     3298   21624  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     4854   21624  stunted          
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     2576   21624  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              0      427    2740  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              1      155    2740  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               0      753    2740  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               1      349    2740  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            0      728    2740  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            1      328    2740  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              0       44     132  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              1        6     132  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               0       30     132  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               1        6     132  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            0       39     132  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            1        7     132  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          High              0       37     138  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          High              1        6     138  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          Low               0       44     138  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          Low               1       10     138  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          Medium            0       36     138  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          Medium            1        5     138  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          High              0       40      95  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          High              1        0      95  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          Low               0       26      95  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          Low               1        1      95  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            0       24      95  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            1        4      95  stunted          
6 months    ki0047075b-MAL-ED          PERU                           High              0       85     224  stunted          
6 months    ki0047075b-MAL-ED          PERU                           High              1       22     224  stunted          
6 months    ki0047075b-MAL-ED          PERU                           Low               0       46     224  stunted          
6 months    ki0047075b-MAL-ED          PERU                           Low               1       14     224  stunted          
6 months    ki0047075b-MAL-ED          PERU                           Medium            0       47     224  stunted          
6 months    ki0047075b-MAL-ED          PERU                           Medium            1       10     224  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       29      92  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        4      92  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       30      92  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        5      92  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       20      92  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        4      92  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0      100     201  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1       27     201  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       44     201  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1       11     201  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       11     201  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        8     201  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              0      273    1333  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              1       75    1333  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               0      356    1333  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               1      194    1333  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            0      326    1333  stunted          
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            1      109    1333  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              0       67     380  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              1       34     380  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               0       72     380  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               1       60     380  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0       78     380  stunted          
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1       69     380  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              0      188     604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              1       21     604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               0      162     604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               1       47     604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            0      158     604  stunted          
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            1       28     604  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              0      235     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              1       44     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      172     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       51     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      158     715  stunted          
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       55     715  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      346    2018  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       25    2018  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0      963    2018  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1      120    2018  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0      514    2018  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1       50    2018  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          High              0      116     563  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          High              1       21     563  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               0      183     563  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               1       60     563  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            0      142     563  stunted          
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            1       41     563  stunted          
6 months    ki1119695-PROBIT           BELARUS                        High              0     2413   15211  stunted          
6 months    ki1119695-PROBIT           BELARUS                        High              1      100   15211  stunted          
6 months    ki1119695-PROBIT           BELARUS                        Low               0     5505   15211  stunted          
6 months    ki1119695-PROBIT           BELARUS                        Low               1      457   15211  stunted          
6 months    ki1119695-PROBIT           BELARUS                        Medium            0     6360   15211  stunted          
6 months    ki1119695-PROBIT           BELARUS                        Medium            1      376   15211  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              0      504    8429  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              1       82    8429  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     1157    8429  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      302    8429  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     5410    8429  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      974    8429  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      High              0       99     904  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      High              1       66     904  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      Low               0      239     904  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      Low               1      167     904  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            0      199     904  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            1      134     904  stunted          
6 months    ki1135781-COHORTS          INDIA                          High              0      484    1385  stunted          
6 months    ki1135781-COHORTS          INDIA                          High              1       60    1385  stunted          
6 months    ki1135781-COHORTS          INDIA                          Low               0      334    1385  stunted          
6 months    ki1135781-COHORTS          INDIA                          Low               1      116    1385  stunted          
6 months    ki1135781-COHORTS          INDIA                          Medium            0      327    1385  stunted          
6 months    ki1135781-COHORTS          INDIA                          Medium            1       64    1385  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    High              0      753    2564  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    High              1      138    2564  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               0      544    2564  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               1      202    2564  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            0      725    2564  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            1      202    2564  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         High              0      166     812  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         High              1       85     812  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         Low               0      183     812  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         Low               1      107     812  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         Medium            0      168     812  stunted          
6 months    ki1148112-LCNI-5           MALAWI                         Medium            1      103     812  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              0     3546   16132  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              1      733   16132  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               0     4490   16132  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               1     1814   16132  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     4076   16132  stunted          
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     1473   16132  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              0      909    4689  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              1      190    4689  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1205    4689  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               1      520    4689  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            0     1401    4689  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            1      464    4689  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       28     117  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1       12     117  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       20     117  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1       15     117  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       20     117  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1       22     117  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          High              0       29     132  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          High              1       13     132  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          Low               0       28     132  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          Low               1       23     132  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       19     132  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          Medium            1       20     132  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          High              0       31      91  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          High              1        7      91  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          Low               0       20      91  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          Low               1        7      91  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       19      91  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1        7      91  stunted          
24 months   ki0047075b-MAL-ED          PERU                           High              0       47     164  stunted          
24 months   ki0047075b-MAL-ED          PERU                           High              1       30     164  stunted          
24 months   ki0047075b-MAL-ED          PERU                           Low               0       26     164  stunted          
24 months   ki0047075b-MAL-ED          PERU                           Low               1       18     164  stunted          
24 months   ki0047075b-MAL-ED          PERU                           Medium            0       28     164  stunted          
24 months   ki0047075b-MAL-ED          PERU                           Medium            1       15     164  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       23      91  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1       11      91  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       23      91  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1       11      91  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       11      91  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1       12      91  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0       37     177  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1       77     177  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       11     177  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1       36     177  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0        4     177  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1       12     177  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      169     578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1       33     578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0      107     578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1       90     578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      112     578  stunted          
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1       67     578  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              0      179     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              1       32     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               0       91     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       53     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      112     514  stunted          
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       47     514  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0        0       6  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        0       6  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0        0       6  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        1       6  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0        5       6  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        0       6  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          High              0       75     487  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          High              1       38     487  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      117     487  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1      102     487  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0       76     487  stunted          
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1       79     487  stunted          
24 months   ki1119695-PROBIT           BELARUS                        High              0      585    3913  stunted          
24 months   ki1119695-PROBIT           BELARUS                        High              1       42    3913  stunted          
24 months   ki1119695-PROBIT           BELARUS                        Low               0     1371    3913  stunted          
24 months   ki1119695-PROBIT           BELARUS                        Low               1      145    3913  stunted          
24 months   ki1119695-PROBIT           BELARUS                        Medium            0     1626    3913  stunted          
24 months   ki1119695-PROBIT           BELARUS                        Medium            1      144    3913  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0       69    1594  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1       27    1594  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0      170    1594  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      128    1594  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0      812    1594  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      388    1594  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      High              0       33     992  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      High              1      144     992  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      Low               0       84     992  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      Low               1      378     992  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0       73     992  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1      280     992  stunted          
24 months   ki1135781-COHORTS          INDIA                          High              0      339    1380  stunted          
24 months   ki1135781-COHORTS          INDIA                          High              1      200    1380  stunted          
24 months   ki1135781-COHORTS          INDIA                          Low               0      124    1380  stunted          
24 months   ki1135781-COHORTS          INDIA                          Low               1      326    1380  stunted          
24 months   ki1135781-COHORTS          INDIA                          Medium            0      179    1380  stunted          
24 months   ki1135781-COHORTS          INDIA                          Medium            1      212    1380  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    High              0      421    2314  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    High              1      377    2314  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      159    2314  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1      533    2314  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      281    2314  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1      543    2314  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         High              0       94     571  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         High              1       79     571  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         Low               0      122     571  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         Low               1       81     571  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         Medium            0      104     571  stunted          
24 months   ki1148112-LCNI-5           MALAWI                         Medium            1       91     571  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     1317    8293  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1      753    8293  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     1513    8293  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1     1866    8293  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     1409    8293  stunted          
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     1435    8293  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0      772    4619  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1      324    4619  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0      925    4619  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1      778    4619  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0     1070    4619  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1      750    4619  stunted          


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
![](/tmp/92cddbd2-8a07-42d6-b37b-5597d1d4d746/a652a67e-bc82-4125-a23c-33c956169e35/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/92cddbd2-8a07-42d6-b37b-5597d1d4d746/a652a67e-bc82-4125-a23c-33c956169e35/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/92cddbd2-8a07-42d6-b37b-5597d1d4d746/a652a67e-bc82-4125-a23c-33c956169e35/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/92cddbd2-8a07-42d6-b37b-5597d1d4d746/a652a67e-bc82-4125-a23c-33c956169e35/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1702128   0.0623508   0.2780748
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2222222   0.0858870   0.3585575
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2173913   0.0977303   0.3370523
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2307692   0.1680581   0.2934804
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3001842   0.2581266   0.3422417
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2850123   0.2356451   0.3343794
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1165644   0.0672552   0.1658736
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1016043   0.0582611   0.1449474
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0529101   0.0209664   0.0848537
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1126761   0.0758765   0.1494756
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1191489   0.0777006   0.1605973
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1924883   0.1395059   0.2454707
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1453488   0.0926383   0.1980593
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2060811   0.1599682   0.2521940
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1592920   0.1115472   0.2070369
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0987780   0.0801162   0.1174398
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1148619   0.1017763   0.1279475
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1005079   0.0946835   0.1063324
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0580645   0.0212246   0.0949044
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0704225   0.0437906   0.0970545
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0476190   0.0232611   0.0719770
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.0910816   0.0665073   0.1156559
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.1070615   0.0781278   0.1359952
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.0876289   0.0594838   0.1157739
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0360273   0.0246277   0.0474268
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0834341   0.0645835   0.1022847
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0657507   0.0505306   0.0809709
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2575116   0.2436710   0.2713523
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.3483312   0.3377281   0.3589343
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.3467026   0.3347813   0.3586238
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2663230   0.2233220   0.3093241
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3166969   0.2852118   0.3481820
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3106061   0.2759976   0.3452145
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1200000   0.0295838   0.2104162
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.1666667   0.0444637   0.2888697
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1521739   0.0479796   0.2563682
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.1395349   0.0355905   0.2434793
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.1851852   0.0812020   0.2891684
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.1219512   0.0214230   0.2224794
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.2056075   0.1288599   0.2823551
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.2333333   0.1260738   0.3405928
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.1754386   0.0764794   0.2743978
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2125984   0.1412626   0.2839342
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2000000   0.0940235   0.3059765
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.4210526   0.1984952   0.6436100
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2155172   0.1572413   0.2737932
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3527273   0.3170926   0.3883619
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2505747   0.1962864   0.3048630
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3366337   0.2443521   0.4289153
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4545455   0.3694902   0.5396007
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4693878   0.3886055   0.5501700
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1004785   0.0596863   0.1412707
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2248804   0.1682310   0.2815297
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1505376   0.0991041   0.2019711
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1577061   0.1149098   0.2005024
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2286996   0.1735370   0.2838621
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2582160   0.1994004   0.3170316
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0673854   0.0418700   0.0929009
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1108033   0.0921044   0.1295023
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0886525   0.0651884   0.1121166
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1532847   0.0929048   0.2136645
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2469136   0.1926478   0.3011793
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2240437   0.1635802   0.2845073
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0397931   0.0287446   0.0508416
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0766521   0.0599425   0.0933617
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0558195   0.0425396   0.0690994
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1399317   0.1118419   0.1680216
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2069911   0.1862008   0.2277814
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1525689   0.1437480   0.1613898
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4000000   0.3252085   0.4747915
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4113300   0.3634388   0.4592213
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4024024   0.3497036   0.4551012
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1102941   0.0839608   0.1366274
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2577778   0.2173492   0.2982063
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1636829   0.1269966   0.2003691
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1548822   0.1311218   0.1786425
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2707775   0.2388842   0.3026708
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2179072   0.1913270   0.2444874
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.3386454   0.2800628   0.3972280
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.3689655   0.3133961   0.4245350
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.3800738   0.3222462   0.4379014
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1713017   0.1585958   0.1840077
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2877538   0.2750420   0.3004656
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2654532   0.2528029   0.2781036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1728844   0.1444592   0.2013097
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3014493   0.2772495   0.3256490
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2487936   0.2266783   0.2709088
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.3000000   0.1573763   0.4426237
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4285714   0.2639181   0.5932248
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.5238095   0.3721169   0.6755021
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.3095238   0.1691791   0.4498686
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.4509804   0.3138963   0.5880645
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.5128205   0.3553518   0.6702892
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.1842105   0.0602732   0.3081478
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2592593   0.0930459   0.4254726
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.2692308   0.0977903   0.4406712
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.3896104   0.2803533   0.4988675
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.4090909   0.2633706   0.5548112
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.3488372   0.2059484   0.4917260
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.3235294   0.1654085   0.4816504
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.3235294   0.1654085   0.4816504
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.5217391   0.3164610   0.7270173
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1633663   0.1123396   0.2143930
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4568528   0.3872322   0.5264734
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3743017   0.3033454   0.4452580
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1516588   0.1032138   0.2001037
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3680556   0.2892084   0.4469027
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2955975   0.2246016   0.3665934
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3362832   0.2490867   0.4234797
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.4657534   0.3996200   0.5318869
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5096774   0.4308972   0.5884576
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0669856   0.0381010   0.0958703
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0956464   0.0579684   0.1333245
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0813559   0.0465173   0.1161945
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2812500   0.1912829   0.3712171
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.4295302   0.3733104   0.4857500
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.3233333   0.2968601   0.3498065
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.8135593   0.7561549   0.8709638
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.8181818   0.7829942   0.8533694
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7932011   0.7509298   0.8354724
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.3710575   0.3302597   0.4118554
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.7244444   0.6831486   0.7657403
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.5421995   0.4927986   0.5916004
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.4724311   0.4377854   0.5070768
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7702312   0.7388807   0.8015818
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6589806   0.6266060   0.6913552
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.4566474   0.3823563   0.5309385
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.3990148   0.3315919   0.4664376
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.4666667   0.3965834   0.5367499
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.3637681   0.3389763   0.3885600
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.5522344   0.5327544   0.5717144
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.5045710   0.4839686   0.5251735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2956204   0.2627235   0.3285173
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.4568409   0.4289436   0.4847382
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.4120879   0.3873280   0.4368478


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
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.3007980   1.0031383   1.6867819
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.2350532   0.9578613   1.5924608
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.8716578   0.4780080   1.5894865
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.4539126   0.2171782   0.9486984
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.0574468   0.6561935   1.7040610
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.7083333   1.1144965   2.6185840
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.4178378   0.9258970   2.1711530
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0959292   0.6846285   1.7543248
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1628287   0.9326153   1.4498697
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0175131   0.8350585   1.2398327
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High              1.2128326   0.5794578   2.5385159
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8201058   0.3630178   1.8527290
Birth       ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              1.1754461   0.8023333   1.7220693
Birth       ki1135781-COHORTS          INDIA                          Medium               High              0.9620919   0.6324750   1.4634900
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              2.3158600   1.5698553   3.4163706
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.8250272   1.2331192   2.7010561
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.3526815   1.2724638   1.4379562
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.3463568   1.2641977   1.4338554
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.1891458   0.9866331   1.4332257
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1662757   0.9544426   1.4251239
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.3888889   0.4853720   3.9742966
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.2681159   0.4581439   3.5100721
6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              1.3271605   0.5221427   3.3733214
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              0.8739837   0.2877246   2.6547871
6 months    ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High              1.1348485   0.6277266   2.0516592
6 months    ki0047075b-MAL-ED          PERU                           Medium               High              0.8532695   0.4338438   1.6781820
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              0.9407407   0.5024418   1.7613842
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              1.9805068   1.0589422   3.7040805
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.6366545   1.2285328   2.1803554
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1626667   0.7644924   1.7682239
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.3502674   0.9688901   1.8817635
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.3943577   1.0087959   1.9272814
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              2.2380952   1.3879688   3.6089214
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.4982079   0.8813086   2.5469250
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.4501631   1.0086457   2.0849472
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.6373239   1.1488618   2.3334659
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.6443213   1.0862970   2.4889996
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.3156028   0.8288737   2.0881479
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.6108172   1.0260041   2.5289683
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.4616185   0.9067005   2.3561569
6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.9262677   1.5580298   2.3815381
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.4027433   1.1018123   1.7858656
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.4792290   1.1818198   1.8514822
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0903096   0.8847607   1.3436120
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              1.0283251   0.8250309   1.2817127
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0060060   0.8006817   1.2639831
6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              2.3371852   1.7564384   3.1099495
6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.4840580   1.0696244   2.0590667
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.7482807   1.4408346   2.1213299
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.4069228   1.1565154   1.7115480
6 months    ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              1.0895335   0.8662197   1.3704181
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              1.1223356   0.8913945   1.4131085
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.6798070   1.5415899   1.8304165
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.5496240   1.4238804   1.6864721
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.7436461   1.4550601   2.0894681
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.4390744   1.1949376   1.7330906
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.4285714   0.7752502   2.6324615
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.7460317   1.0006753   3.0465695
24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.4570136   0.8440917   2.5149976
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.6568047   0.9581782   2.8648136
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.4074074   0.5556613   3.5647538
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.4615385   0.5787559   3.6908387
24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High              1.0500000   0.6672741   1.6522445
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              0.8953488   0.5450095   1.4708911
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.0000000   0.5009850   1.9960679
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.6126482   0.8610943   3.0201504
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              2.7964928   1.9755126   3.9586547
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              2.2911800   1.5899389   3.3017027
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.4268663   1.6519937   3.5651952
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.9490959   1.3069700   2.9067039
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3850036   1.0305319   1.8614028
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.5156197   1.1207012   2.0497016
24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.4278647   0.8974257   2.2718288
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.2145278   0.7404443   1.9921524
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.5272185   1.0809315   2.1577652
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1496296   0.8263347   1.5994104
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.0056818   0.9259199   1.0923147
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9749764   0.8924673   1.0651135
24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.9523778   1.7249526   2.2097877
24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.4612276   1.2667845   1.6855165
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.6303568   1.4991910   1.7729985
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.3948714   1.2770237   1.5235943
24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              0.8737919   0.6910969   1.1047832
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.0219409   0.8189738   1.2752096
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.5180945   1.4085523   1.6361558
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.3870678   1.2819864   1.5007624
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.5453629   1.3631782   1.7518962
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.3939764   1.2307290   1.5788774


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0313376   -0.0580281   0.1207034
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0478537    0.0092667   0.0864406
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0275106   -0.0667544   0.0117331
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0253021   -0.0051682   0.0557724
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0304437   -0.0165070   0.0773943
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0040292   -0.0139666   0.0220250
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0016370   -0.0315661   0.0348400
Birth       ki1135781-COHORTS          INDIA                          High                 NA                 0.0041917   -0.0152642   0.0236476
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0241885    0.0135708   0.0348063
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0704110    0.0579138   0.0829083
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0373266   -0.0013150   0.0759682
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0239394   -0.0508616   0.0987403
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0126390   -0.0750471   0.1003252
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0002503   -0.0556943   0.0551936
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0162573   -0.0289964   0.0615110
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0680537    0.0132381   0.1228693
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0923137    0.0118662   0.1727612
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0584619    0.0215291   0.0953947
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0520841    0.0161107   0.0880575
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0292449    0.0052051   0.0532846
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0634116    0.0083512   0.1184720
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0215441    0.0125064   0.0305818
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0211787   -0.0060414   0.0483988
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0059735   -0.0616853   0.0736322
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0629911    0.0396174   0.0863648
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0565063    0.0359626   0.0770500
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0246551   -0.0243947   0.0737048
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0778924    0.0665494   0.0892355
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0774888    0.0529088   0.1020688
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1188034   -0.0015854   0.2391922
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1147186   -0.0049691   0.2344063
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0465587   -0.0539837   0.1471012
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0054640   -0.0848577   0.0739297
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0500970   -0.0776070   0.1778009
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1653534    0.1178885   0.2128183
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1051506    0.0621475   0.1481536
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1134088    0.0357500   0.1910676
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0176042   -0.0116634   0.0468717
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0594024   -0.0281234   0.1469283
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0050916   -0.0572412   0.0470580
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1637251    0.1312089   0.1962413
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1554859    0.1279093   0.1830626
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0170677   -0.0789955   0.0448601
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1250779    0.1037941   0.1463617
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1053321    0.0767786   0.1338857


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1554828   -0.4245093   0.4993299
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1717507    0.0060591   0.3098212
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.3089213   -0.8245750   0.0610006
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1833775   -0.0677734   0.3754552
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1731796   -0.1407757   0.4007305
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0391918   -0.1528013   0.1992094
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0274194   -0.7228537   0.4509614
Birth       ki1135781-COHORTS          INDIA                          High                 NA                 0.0439963   -0.1835394   0.2277882
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.4016975    0.2086965   0.5476251
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2147184    0.1758961   0.2517119
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1229266   -0.0139825   0.2413501
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1663158   -0.5487082   0.5512199
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0830565   -0.7177637   0.5105349
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0012190   -0.3111145   0.2354295
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0710373   -0.1488645   0.2488482
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.2399881    0.0184242   0.4115401
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.2152099    0.0029784   0.3822645
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.3678230    0.0978977   0.5569817
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.2482676    0.0584246   0.3998340
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3026470    0.0077055   0.5099226
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.2926289   -0.0094480   0.5043094
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.3512406    0.2183682   0.4615255
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1314546   -0.0549521   0.2849238
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0147139   -0.1668702   0.1680405
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.3635110    0.2192300   0.4811299
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2673102    0.1648191   0.3572240
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0678641   -0.0774250   0.1935613
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.3125773    0.2663565   0.3558862
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.3094931    0.2022294   0.4023347
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.2836735   -0.0703303   0.5205931
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.2704082   -0.0745957   0.5046469
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.2017544   -0.3717774   0.5354960
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0142239   -0.2434698   0.1727583
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1340830   -0.2850876   0.4165284
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.5030224    0.3437692   0.6236283
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.4094499    0.2244934   0.5502948
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.2521922    0.0574327   0.4067092
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.2081123   -0.1763135   0.4669056
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1743785   -0.1269728   0.3951487
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0062978   -0.0729166   0.0561845
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.3061526    0.2414027   0.3653758
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2476218    0.2012884   0.2912674
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0388273   -0.1897396   0.0929425
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2558636    0.2106194   0.2985146
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2627048    0.1873754   0.3310512
