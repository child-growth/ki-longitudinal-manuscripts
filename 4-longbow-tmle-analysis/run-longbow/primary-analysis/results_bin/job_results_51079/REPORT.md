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
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
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

agecat      studyid                    country                        feducyrs    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              0       44     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              1        8     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               0       30     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               1        8     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            0       44     144
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            1       10     144
Birth       ki0047075b-MAL-ED          INDIA                          High              0       32     123
Birth       ki0047075b-MAL-ED          INDIA                          High              1        6     123
Birth       ki0047075b-MAL-ED          INDIA                          Low               0       46     123
Birth       ki0047075b-MAL-ED          INDIA                          Low               1        4     123
Birth       ki0047075b-MAL-ED          INDIA                          Medium            0       30     123
Birth       ki0047075b-MAL-ED          INDIA                          Medium            1        5     123
Birth       ki0047075b-MAL-ED          NEPAL                          High              0       26      67
Birth       ki0047075b-MAL-ED          NEPAL                          High              1        1      67
Birth       ki0047075b-MAL-ED          NEPAL                          Low               0       17      67
Birth       ki0047075b-MAL-ED          NEPAL                          Low               1        2      67
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            0       16      67
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            1        5      67
Birth       ki0047075b-MAL-ED          PERU                           High              0      106     236
Birth       ki0047075b-MAL-ED          PERU                           High              1       10     236
Birth       ki0047075b-MAL-ED          PERU                           Low               0       52     236
Birth       ki0047075b-MAL-ED          PERU                           Low               1       13     236
Birth       ki0047075b-MAL-ED          PERU                           Medium            0       52     236
Birth       ki0047075b-MAL-ED          PERU                           Medium            1        3     236
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       30      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        5      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       30      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       23      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        3      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0       57     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        8     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       26     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        3     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0        3     101
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        4     101
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              0       31     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              1        3     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               0       55     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               1       24     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            0       55     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            1       19     187
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              0        7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               0       10      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0        5      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        2      27
Birth       ki1119695-PROBIT           BELARUS                        High              0     2055   13416
Birth       ki1119695-PROBIT           BELARUS                        High              1        3   13416
Birth       ki1119695-PROBIT           BELARUS                        Low               0     5299   13416
Birth       ki1119695-PROBIT           BELARUS                        Low               1       17   13416
Birth       ki1119695-PROBIT           BELARUS                        Medium            0     6031   13416
Birth       ki1119695-PROBIT           BELARUS                        Medium            1       11   13416
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              0      880   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              1       96   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2015   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      261   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     9179   13460
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1     1029   13460
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              0     2855   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              1      989   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               0     5588   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               1     2880   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     4349   18863
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     2202   18863
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              0       35     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              1       18     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               0      234     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               1       99     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            0       48     451
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       17     451
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              0       44     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              1        6     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               0       29     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               1        7     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            0       39     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            1        7     132
6 months    ki0047075b-MAL-ED          INDIA                          High              0       37     138
6 months    ki0047075b-MAL-ED          INDIA                          High              1        6     138
6 months    ki0047075b-MAL-ED          INDIA                          Low               0       43     138
6 months    ki0047075b-MAL-ED          INDIA                          Low               1       11     138
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
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0      101     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1       26     201
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              0      182     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              1       21     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               0      156     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               1       45     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            0      151     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            1       28     583
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
6 months    ki1113344-GMS-Nepal        NEPAL                          High              0      116     562
6 months    ki1113344-GMS-Nepal        NEPAL                          High              1       20     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               0      183     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               1       60     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            0      144     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            1       39     562
6 months    ki1119695-PROBIT           BELARUS                        High              0     2413   15211
6 months    ki1119695-PROBIT           BELARUS                        High              1      100   15211
6 months    ki1119695-PROBIT           BELARUS                        Low               0     5505   15211
6 months    ki1119695-PROBIT           BELARUS                        Low               1      457   15211
6 months    ki1119695-PROBIT           BELARUS                        Medium            0     6360   15211
6 months    ki1119695-PROBIT           BELARUS                        Medium            1      376   15211
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              0      475    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              1       81    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     1109    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      295    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     5152    8063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      951    8063
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
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              0      268    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              1       78    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1492    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               1      502    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            0      301    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            1      105    2746
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       28     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1       12     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       21     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1       14     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       20     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1       22     117
24 months   ki0047075b-MAL-ED          INDIA                          High              0       29     132
24 months   ki0047075b-MAL-ED          INDIA                          High              1       13     132
24 months   ki0047075b-MAL-ED          INDIA                          Low               0       28     132
24 months   ki0047075b-MAL-ED          INDIA                          Low               1       23     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       20     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium            1       19     132
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
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0       38     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1       76     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       12     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1       35     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0        4     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1       12     177
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      169     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1       33     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0      106     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1       90     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      112     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1       67     577
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
24 months   ki1113344-GMS-Nepal        NEPAL                          High              0       76     498
24 months   ki1113344-GMS-Nepal        NEPAL                          High              1       40     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      119     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1      102     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0       80     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1       81     498
24 months   ki1119695-PROBIT           BELARUS                        High              0      585    3913
24 months   ki1119695-PROBIT           BELARUS                        High              1       42    3913
24 months   ki1119695-PROBIT           BELARUS                        Low               0     1371    3913
24 months   ki1119695-PROBIT           BELARUS                        Low               1      145    3913
24 months   ki1119695-PROBIT           BELARUS                        Medium            0     1626    3913
24 months   ki1119695-PROBIT           BELARUS                        Medium            1      144    3913
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0       13     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1        6     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0       27     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1       78     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0      117     434
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      193     434
24 months   ki1135781-COHORTS          GUATEMALA                      High              0       35     995
24 months   ki1135781-COHORTS          GUATEMALA                      High              1      142     995
24 months   ki1135781-COHORTS          GUATEMALA                      Low               0      100     995
24 months   ki1135781-COHORTS          GUATEMALA                      Low               1      364     995
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0       76     995
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1      278     995
24 months   ki1135781-COHORTS          INDIA                          High              0      373    1380
24 months   ki1135781-COHORTS          INDIA                          High              1      166    1380
24 months   ki1135781-COHORTS          INDIA                          Low               0      163    1380
24 months   ki1135781-COHORTS          INDIA                          Low               1      287    1380
24 months   ki1135781-COHORTS          INDIA                          Medium            0      208    1380
24 months   ki1135781-COHORTS          INDIA                          Medium            1      183    1380
24 months   ki1135781-COHORTS          PHILIPPINES                    High              0      425    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    High              1      373    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      166    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1      526    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      285    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1      539    2314
24 months   ki1148112-LCNI-5           MALAWI                         High              0       96     571
24 months   ki1148112-LCNI-5           MALAWI                         High              1       77     571
24 months   ki1148112-LCNI-5           MALAWI                         Low               0      122     571
24 months   ki1148112-LCNI-5           MALAWI                         Low               1       81     571
24 months   ki1148112-LCNI-5           MALAWI                         Medium            0      104     571
24 months   ki1148112-LCNI-5           MALAWI                         Medium            1       91     571
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     1318    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1      752    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     1513    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1     1866    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     1410    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     1434    8293
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0      210    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1      123    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1214    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1      749    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0      227    2694
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1      171    2694


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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/6b5ff810-eed8-4baf-be62-308366a042a5/7d260677-c0fc-46b6-bf8e-2696f4cffc1b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6b5ff810-eed8-4baf-be62-308366a042a5/7d260677-c0fc-46b6-bf8e-2696f4cffc1b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6b5ff810-eed8-4baf-be62-308366a042a5/7d260677-c0fc-46b6-bf8e-2696f4cffc1b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6b5ff810-eed8-4baf-be62-308366a042a5/7d260677-c0fc-46b6-bf8e-2696f4cffc1b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1538462   0.0554388   0.2522535
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2105263   0.0804520   0.3406006
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1851852   0.0812178   0.2891525
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0998245   0.0913108   0.1083383
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1004377   0.0934888   0.1073865
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1033932   0.0981303   0.1086560
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0580645   0.0212246   0.0949044
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0704225   0.0437906   0.0970545
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0476190   0.0232611   0.0719770
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.0899532   0.0657772   0.1141292
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.1082913   0.0790222   0.1375603
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.0878767   0.0596433   0.1161100
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0412761   0.0294003   0.0531520
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0730198   0.0551526   0.0908871
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0655908   0.0501498   0.0810318
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.3185288   0.3094601   0.3275976
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.3229582   0.3148373   0.3310792
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.3236329   0.3149724   0.3322933
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3179035   0.2656145   0.3701924
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2951826   0.2473553   0.3430099
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3023807   0.2482707   0.3564908
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1200000   0.0295838   0.2104162
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.1944444   0.0646687   0.3242202
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1521739   0.0479796   0.2563682
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.1395349   0.0355905   0.2434793
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.2037037   0.0958917   0.3115157
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.1219512   0.0214230   0.2224794
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.1989832   0.1242898   0.2736765
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.2436411   0.1324725   0.3548097
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.1648871   0.0709361   0.2588382
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2047244   0.1343730   0.2750758
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2000000   0.0940235   0.3059765
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.4210526   0.1984952   0.6436100
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2531747   0.2021904   0.3041590
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3273030   0.2952891   0.3593168
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2473916   0.2028256   0.2919577
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3303714   0.2402120   0.4205308
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4513114   0.3667233   0.5358994
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4801985   0.4008630   0.5595340
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1106211   0.0683999   0.1528423
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2177987   0.1596458   0.2759516
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1540285   0.0990851   0.2089718
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1824439   0.1398851   0.2250027
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2249514   0.1734129   0.2764898
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2235918   0.1699582   0.2772255
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0700756   0.0446220   0.0955291
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1089253   0.0902507   0.1275999
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0907076   0.0673664   0.1140488
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1442839   0.0834202   0.2051475
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2500016   0.1954706   0.3045326
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2151066   0.1535705   0.2766428
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0438425   0.0322364   0.0554487
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0739364   0.0569644   0.0909085
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0559777   0.0430229   0.0689324
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1471472   0.1160184   0.1782760
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1997594   0.1780068   0.2215121
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1574083   0.1482378   0.1665789
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.3582075   0.2839969   0.4324181
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.3914498   0.3463944   0.4365051
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4283319   0.3771413   0.4795226
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1195198   0.0931290   0.1459105
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2345421   0.1968816   0.2722027
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1642669   0.1280625   0.2004712
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1835626   0.1598053   0.2073198
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2392065   0.2096911   0.2687219
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2119606   0.1868325   0.2370888
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.3374638   0.2791738   0.3957539
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.3623554   0.3073125   0.4173982
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.3923606   0.3353494   0.4493718
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2248954   0.2107512   0.2390396
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2636402   0.2518099   0.2754705
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2512656   0.2391767   0.2633545
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2270882   0.1769634   0.2772129
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2539767   0.2317660   0.2761875
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2653544   0.2232668   0.3074421
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.3532334   0.2145722   0.4918945
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.3966661   0.2453343   0.5479978
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.5534107   0.3977995   0.7090219
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.3230043   0.1799617   0.4660469
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.4666450   0.3299931   0.6032969
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4786845   0.3150965   0.6422725
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.1842105   0.0602732   0.3081478
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2592593   0.0930459   0.4254726
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.2692308   0.0977903   0.4406712
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.3856679   0.2771355   0.4942002
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.4146548   0.2681523   0.5611572
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.3497022   0.1994779   0.4999265
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.3006917   0.1390762   0.4623072
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2878213   0.1256529   0.4499898
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.4872634   0.2745811   0.6999456
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1814243   0.1300373   0.2328113
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4302621   0.3632719   0.4972523
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3627731   0.2942802   0.4312660
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1585102   0.1103589   0.2066614
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3569474   0.2777692   0.4361257
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2828651   0.2128829   0.3528473
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3480826   0.2601961   0.4359692
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.4661233   0.4005880   0.5316586
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5042078   0.4248250   0.5835907
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0706055   0.0423172   0.0988938
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0928017   0.0582383   0.1273651
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0825041   0.0466010   0.1184073
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.3157895   0.1065393   0.5250397
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.7428571   0.6591632   0.8265511
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.6225806   0.5685577   0.6766036
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7816005   0.7216311   0.8415698
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7821489   0.7450979   0.8191999
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.8040627   0.7631333   0.8449921
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.3345546   0.2954072   0.3737019
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.6042406   0.5607683   0.6477129
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.4729070   0.4241535   0.5216604
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5078419   0.4744182   0.5412656
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7352340   0.7034828   0.7669852
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6455266   0.6137015   0.6773517
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.4469723   0.3726440   0.5213007
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.3922457   0.3259443   0.4585470
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.4638162   0.3935879   0.5340444
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4355897   0.4111373   0.4600421
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.5220707   0.5026610   0.5414803
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4935853   0.4718520   0.5153187
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3641212   0.3068010   0.4214414
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3829500   0.3563695   0.4095305
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.4191522   0.3591730   0.4791315


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1805556   0.1175113   0.2435998
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1029718   0.0978372   0.1081063
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0597015   0.0433139   0.0760891
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0952733   0.0796294   0.1109171
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0602158   0.0515157   0.0689159
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3218470   0.3140700   0.3296240
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2971175   0.2506806   0.3435544
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1515152   0.0901160   0.2129143
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1594203   0.0981219   0.2207187
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2053571   0.1523375   0.2583768
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2238806   0.1661102   0.2816510
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2835709   0.2656121   0.3015297
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0966303   0.0837364   0.1095242
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2117438   0.1779368   0.2455507
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0613372   0.0479409   0.0747335
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1645789   0.1564849   0.1726730
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4059735   0.3739435   0.4380034
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1732852   0.1533446   0.1932258
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2113885   0.1955816   0.2271953
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3633005   0.3301997   0.3964012
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2491941   0.2409375   0.2574508
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2494538   0.2301628   0.2687447
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4102564   0.3207450   0.4997678
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4166667   0.3322428   0.5010905
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2307692   0.1437242   0.3178143
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3841463   0.3094772   0.4588155
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3736264   0.2736811   0.4735717
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4477912   0.4040733   0.4915091
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0845898   0.0544909   0.1146887
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6382488   0.5929899   0.6835078
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7879397   0.7625282   0.8133512
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4608696   0.4345607   0.4871784
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6214347   0.6016683   0.6412012
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4360771   0.3953670   0.4767872
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4886048   0.4753517   0.5018580
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3871566   0.3638029   0.4105104


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.3684211   0.5623317   3.330021
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.2037037   0.5139229   2.819300
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0061421   0.9220856   1.097861
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0357490   0.9617278   1.115467
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High              1.2128326   0.5794578   2.538516
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8201058   0.3630178   1.852729
Birth       ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              1.2038625   0.8229864   1.761007
Birth       ki1135781-COHORTS          INDIA                          Medium               High              0.9769155   0.6437645   1.482474
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.7690561   1.2166770   2.572219
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.5890726   1.0988328   2.298031
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0139058   0.9935621   1.034666
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0160237   0.9950146   1.037476
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.9285290   0.8336446   1.034213
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.9511715   0.8375717   1.080179
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.6203704   0.5922036   4.433611
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.2681159   0.4581439   3.510072
6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              1.4598765   0.5854028   3.640638
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              0.8739837   0.2877246   2.654787
6 months    ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High              1.2244304   0.6768545   2.214996
6 months    ki0047075b-MAL-ED          PERU                           Medium               High              0.8286486   0.4181996   1.641940
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              0.9769231   0.5194919   1.837139
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              2.0566802   1.0948684   3.863417
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.2927951   1.0165547   1.644102
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9771579   0.7059673   1.352524
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.3660726   0.9845801   1.895381
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.4535110   1.0606222   1.991939
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.9688707   1.2364443   3.135161
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.3923965   0.8271131   2.344018
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.2329895   0.9007614   1.687753
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.2255376   0.8884722   1.690478
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.5543980   1.0408267   2.321379
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2944262   0.8304865   2.017539
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.7327064   1.0774460   2.786470
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.4908571   0.8951197   2.483081
6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.6864084   1.3669661   2.080500
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.2767890   1.0035688   1.624393
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.3575486   1.0713855   1.720145
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0697337   0.8601468   1.330389
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              1.0928018   0.8682387   1.375446
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              1.1957649   0.9472964   1.509405
6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              1.9623711   1.5029441   2.562238
6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.3743910   1.0144486   1.862047
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.3031334   1.0952213   1.550515
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.1547052   0.9745285   1.368194
6 months    ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              1.0737607   0.8543276   1.349555
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              1.1626746   0.9292521   1.454732
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1722792   1.0910518   1.259554
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1172555   1.0378300   1.202760
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.1184058   0.8897743   1.405785
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1685085   0.8932330   1.528618
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.1229575   0.6650452   1.896162
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.5667000   0.9773486   2.511436
24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.4447021   0.8536192   2.445076
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.4819756   0.8491851   2.586305
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.4074074   0.5556613   3.564754
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.4615385   0.5787559   3.690839
24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High              1.0751602   0.6857888   1.685606
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              0.9067445   0.5450300   1.508514
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.9571974   0.4351031   2.105769
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.6204748   0.8154679   3.220162
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              2.3715793   1.7252965   3.259955
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.9995841   1.4309647   2.794154
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.2518899   1.5510992   3.269300
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.7845233   1.2108655   2.629956
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3391168   1.0034580   1.787054
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.4485292   1.0767227   1.948725
24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.3143691   0.8725836   1.979829
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.1685227   0.7342433   1.859663
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              2.3523810   1.2011656   4.606938
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.9715054   1.0105698   3.846180
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.0007016   0.9152612   1.094118
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0287388   0.9391704   1.126849
24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.8061049   1.5785006   2.066528
24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.4135421   1.2125298   1.647878
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.4477616   1.3400176   1.564169
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.2711173   1.1730104   1.377430
24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              0.8775614   0.6935251   1.110434
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.0376843   0.8291352   1.298689
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1985378   1.1245229   1.277424
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1331429   1.0578104   1.213840
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0517102   0.8903418   1.242325
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1511337   0.9300132   1.424828


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0267094   -0.0549275   0.1083463
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0031472   -0.0037448   0.0100393
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0016370   -0.0315661   0.0348400
Birth       ki1135781-COHORTS          INDIA                          High                 NA                 0.0053201   -0.0138278   0.0244680
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0189397    0.0081005   0.0297788
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0033182   -0.0016997   0.0083360
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0207860   -0.0485302   0.0069583
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0315152   -0.0443248   0.1073551
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0198854   -0.0685947   0.1083655
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0063740   -0.0479564   0.0607043
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0191562   -0.0259257   0.0642381
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0303962   -0.0190224   0.0798148
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0985759    0.0205938   0.1765580
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0506139    0.0126054   0.0886223
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0273463   -0.0065698   0.0612625
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0265548    0.0025937   0.0505159
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0674599    0.0116710   0.1232488
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0174946    0.0080274   0.0269619
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0174318   -0.0127145   0.0475781
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0477660   -0.0188250   0.1143569
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0537654    0.0310012   0.0765296
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0278259    0.0081814   0.0474704
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0258367   -0.0226080   0.0742814
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0242988    0.0122034   0.0363941
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0223656   -0.0231434   0.0678745
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0570230   -0.0565666   0.1706127
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0936624   -0.0270753   0.2144001
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0465587   -0.0539837   0.1471012
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0015215   -0.0805095   0.0774665
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0729346   -0.0587252   0.2045944
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1478651    0.1016217   0.1941086
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0982992    0.0560638   0.1405345
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0997085    0.0215987   0.1778184
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0139843   -0.0137138   0.0416825
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.3224594    0.1175197   0.5273990
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0063392   -0.0481755   0.0608540
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1263150    0.0949391   0.1576909
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1135929    0.0875374   0.1396483
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0108953   -0.0725371   0.0507465
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0530152    0.0319515   0.0740789
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0230354   -0.0302940   0.0763648


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1479290   -0.4454018   0.4977002
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0305640   -0.0387187   0.0952256
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0274194   -0.7228537   0.4509614
Birth       ki1135781-COHORTS          INDIA                          High                 NA                 0.0558404   -0.1678806   0.2367050
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3145297    0.1176856   0.4674580
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0103097   -0.0053955   0.0257696
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0699587   -0.1691091   0.0207829
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.2080000   -0.4804508   0.5763020
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1247357   -0.6475585   0.5350165
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0310384   -0.2729930   0.2624574
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0855643   -0.1389802   0.2658409
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1071909   -0.0846445   0.2650974
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.2298089    0.0241733   0.3921111
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.3139136    0.0426276   0.5083266
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1303508   -0.0460504   0.2770046
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2748078   -0.0169023   0.4828375
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.3185921    0.0006482   0.5353822
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.2852209    0.1398296   0.4060372
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1059173   -0.0973894   0.2715587
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1176578   -0.0630458   0.2676443
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.3102714    0.1701810   0.4267116
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1316339    0.0342287   0.2192151
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0711166   -0.0723529   0.1953914
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0975093    0.0477753   0.1446458
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0896582   -0.1128360   0.2553062
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1389937   -0.1863975   0.3751404
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.2247897   -0.1277296   0.4671142
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.2017544   -0.3717774   0.5354960
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0039608   -0.2321555   0.1819723
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1952074   -0.2492226   0.4815247
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.4490431    0.2950480   0.5693983
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3827710    0.2024314   0.5223338
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.2226675    0.0265664   0.3792634
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.1653192   -0.1968944   0.4179169
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.5052252    0.0503587   0.7422162
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0080453   -0.0636094   0.0748727
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2740797    0.2022319   0.3394569
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1827913    0.1390676   0.2242944
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0249847   -0.1765371   0.1070458
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1085032    0.0643469   0.1505756
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0594990   -0.0887265   0.1875441
