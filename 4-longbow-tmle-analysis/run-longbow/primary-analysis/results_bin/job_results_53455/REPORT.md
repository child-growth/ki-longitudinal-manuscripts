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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        feducyrs    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High               0       44     129
Birth       ki0047075b-MAL-ED          BANGLADESH                     High               1        3     129
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                0       35     129
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                1        1     129
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium             0       44     129
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium             1        2     129
Birth       ki0047075b-MAL-ED          INDIA                          High               0        7      24
Birth       ki0047075b-MAL-ED          INDIA                          High               1        0      24
Birth       ki0047075b-MAL-ED          INDIA                          Low                0       13      24
Birth       ki0047075b-MAL-ED          INDIA                          Low                1        1      24
Birth       ki0047075b-MAL-ED          INDIA                          Medium             0        3      24
Birth       ki0047075b-MAL-ED          INDIA                          Medium             1        0      24
Birth       ki0047075b-MAL-ED          NEPAL                          High               0        3      10
Birth       ki0047075b-MAL-ED          NEPAL                          High               1        0      10
Birth       ki0047075b-MAL-ED          NEPAL                          Low                0        3      10
Birth       ki0047075b-MAL-ED          NEPAL                          Low                1        1      10
Birth       ki0047075b-MAL-ED          NEPAL                          Medium             0        3      10
Birth       ki0047075b-MAL-ED          NEPAL                          Medium             1        0      10
Birth       ki0047075b-MAL-ED          PERU                           High               0       85     194
Birth       ki0047075b-MAL-ED          PERU                           High               1        1     194
Birth       ki0047075b-MAL-ED          PERU                           Low                0       57     194
Birth       ki0047075b-MAL-ED          PERU                           Low                1        1     194
Birth       ki0047075b-MAL-ED          PERU                           Medium             0       49     194
Birth       ki0047075b-MAL-ED          PERU                           Medium             1        1     194
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       10      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        0      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0       14      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1        0      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0        9      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        0      33
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0       62     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1        4     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       26     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1        1     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0        8     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1        2     103
Birth       ki1000304b-SAS-CompFeed    INDIA                          High               0      278    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          High               1       21    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                0      503    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                1       40    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium             0      378    1249
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium             1       29    1249
Birth       ki1017093b-PROVIDE         BANGLADESH                     High               0      162     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     High               1        1     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                0      186     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                1        1     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium             0      187     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium             1        2     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High               0      279     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High               1        5     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                0      235     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                1        0     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium             0      208     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium             1        5     732
Birth       ki1113344-GMS-Nepal        NEPAL                          High               0      165     694
Birth       ki1113344-GMS-Nepal        NEPAL                          High               1        7     694
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                0      278     694
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                1       18     694
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium             0      220     694
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium             1        6     694
Birth       ki1119695-PROBIT           BELARUS                        High               0     2059   13421
Birth       ki1119695-PROBIT           BELARUS                        High               1        0   13421
Birth       ki1119695-PROBIT           BELARUS                        Low                0     5318   13421
Birth       ki1119695-PROBIT           BELARUS                        Low                1        1   13421
Birth       ki1119695-PROBIT           BELARUS                        Medium             0     6039   13421
Birth       ki1119695-PROBIT           BELARUS                        Medium             1        4   13421
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High               0      951   13501
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High               1       31   13501
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                0     2188   13501
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                1       93   13501
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0     9933   13501
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1      305   13501
Birth       ki1135781-COHORTS          GUATEMALA                      High               0      152     804
Birth       ki1135781-COHORTS          GUATEMALA                      High               1        3     804
Birth       ki1135781-COHORTS          GUATEMALA                      Low                0      348     804
Birth       ki1135781-COHORTS          GUATEMALA                      Low                1        7     804
Birth       ki1135781-COHORTS          GUATEMALA                      Medium             0      293     804
Birth       ki1135781-COHORTS          GUATEMALA                      Medium             1        1     804
Birth       ki1135781-COHORTS          INDIA                          High               0      516    1354
Birth       ki1135781-COHORTS          INDIA                          High               1       11    1354
Birth       ki1135781-COHORTS          INDIA                          Low                0      431    1354
Birth       ki1135781-COHORTS          INDIA                          Low                1        8    1354
Birth       ki1135781-COHORTS          INDIA                          Medium             0      379    1354
Birth       ki1135781-COHORTS          INDIA                          Medium             1        9    1354
Birth       ki1135781-COHORTS          PHILIPPINES                    High               0     1020    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    High               1        7    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                0      810    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                1       17    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium             0     1000    2873
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium             1       19    2873
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High               0     4373   21624
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High               1      353   21624
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                0     8355   21624
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                1     1113   21624
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     6565   21624
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      865   21624
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High               0      543    2740
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High               1       39    2740
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                0      997    2740
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                1      105    2740
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium             0      971    2740
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium             1       85    2740
6 months    ki0047075b-MAL-ED          BANGLADESH                     High               0       49     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     High               1        1     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                0       34     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                1        2     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium             0       45     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium             1        1     132
6 months    ki0047075b-MAL-ED          INDIA                          High               0       43     138
6 months    ki0047075b-MAL-ED          INDIA                          High               1        0     138
6 months    ki0047075b-MAL-ED          INDIA                          Low                0       52     138
6 months    ki0047075b-MAL-ED          INDIA                          Low                1        2     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium             0       40     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium             1        1     138
6 months    ki0047075b-MAL-ED          NEPAL                          High               0       40      95
6 months    ki0047075b-MAL-ED          NEPAL                          High               1        0      95
6 months    ki0047075b-MAL-ED          NEPAL                          Low                0       27      95
6 months    ki0047075b-MAL-ED          NEPAL                          Low                1        0      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium             0       27      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium             1        1      95
6 months    ki0047075b-MAL-ED          PERU                           High               0      104     224
6 months    ki0047075b-MAL-ED          PERU                           High               1        3     224
6 months    ki0047075b-MAL-ED          PERU                           Low                0       57     224
6 months    ki0047075b-MAL-ED          PERU                           Low                1        3     224
6 months    ki0047075b-MAL-ED          PERU                           Medium             0       55     224
6 months    ki0047075b-MAL-ED          PERU                           Medium             1        2     224
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       33      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        0      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0       35      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1        0      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       24      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        0      92
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0      119     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1        8     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       53     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1        2     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0       17     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1        2     201
6 months    ki1000304b-SAS-CompFeed    INDIA                          High               0      326    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          High               1       22    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                0      481    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                1       69    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium             0      398    1333
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium             1       37    1333
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High               0       93     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High               1        8     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                0      113     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                1       19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium             0      120     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium             1       27     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     High               0      207     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     High               1        2     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                0      200     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                1        9     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium             0      183     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium             1        3     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High               0      272     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High               1        7     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                0      216     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                1        7     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium             0      204     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium             1        9     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0      366    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        5    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0     1074    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        9    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0      559    2018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        5    2018
6 months    ki1113344-GMS-Nepal        NEPAL                          High               0      135     563
6 months    ki1113344-GMS-Nepal        NEPAL                          High               1        2     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                0      226     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                1       17     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium             0      181     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium             1        2     563
6 months    ki1119695-PROBIT           BELARUS                        High               0     2490   15211
6 months    ki1119695-PROBIT           BELARUS                        High               1       23   15211
6 months    ki1119695-PROBIT           BELARUS                        Low                0     5849   15211
6 months    ki1119695-PROBIT           BELARUS                        Low                1      113   15211
6 months    ki1119695-PROBIT           BELARUS                        Medium             0     6646   15211
6 months    ki1119695-PROBIT           BELARUS                        Medium             1       90   15211
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High               0      572    8429
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High               1       14    8429
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                0     1391    8429
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                1       68    8429
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0     6131    8429
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1      253    8429
6 months    ki1135781-COHORTS          GUATEMALA                      High               0      140     904
6 months    ki1135781-COHORTS          GUATEMALA                      High               1       25     904
6 months    ki1135781-COHORTS          GUATEMALA                      Low                0      352     904
6 months    ki1135781-COHORTS          GUATEMALA                      Low                1       54     904
6 months    ki1135781-COHORTS          GUATEMALA                      Medium             0      294     904
6 months    ki1135781-COHORTS          GUATEMALA                      Medium             1       39     904
6 months    ki1135781-COHORTS          INDIA                          High               0      533    1385
6 months    ki1135781-COHORTS          INDIA                          High               1       11    1385
6 months    ki1135781-COHORTS          INDIA                          Low                0      428    1385
6 months    ki1135781-COHORTS          INDIA                          Low                1       22    1385
6 months    ki1135781-COHORTS          INDIA                          Medium             0      380    1385
6 months    ki1135781-COHORTS          INDIA                          Medium             1       11    1385
6 months    ki1135781-COHORTS          PHILIPPINES                    High               0      862    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    High               1       29    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                0      699    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                1       47    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium             0      879    2564
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium             1       48    2564
6 months    ki1148112-LCNI-5           MALAWI                         High               0      226     812
6 months    ki1148112-LCNI-5           MALAWI                         High               1       25     812
6 months    ki1148112-LCNI-5           MALAWI                         Low                0      264     812
6 months    ki1148112-LCNI-5           MALAWI                         Low                1       26     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium             0      257     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium             1       14     812
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High               0     4131   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High               1      148   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                0     5855   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                1      449   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     5188   16132
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      361   16132
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High               0     1068    4689
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High               1       31    4689
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                0     1595    4689
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                1      130    4689
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium             0     1766    4689
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium             1       99    4689
24 months   ki0047075b-MAL-ED          BANGLADESH                     High               0       38     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     High               1        2     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                0       32     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                1        3     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium             0       35     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium             1        7     117
24 months   ki0047075b-MAL-ED          INDIA                          High               0       38     132
24 months   ki0047075b-MAL-ED          INDIA                          High               1        4     132
24 months   ki0047075b-MAL-ED          INDIA                          Low                0       42     132
24 months   ki0047075b-MAL-ED          INDIA                          Low                1        9     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium             0       36     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium             1        3     132
24 months   ki0047075b-MAL-ED          NEPAL                          High               0       38      91
24 months   ki0047075b-MAL-ED          NEPAL                          High               1        0      91
24 months   ki0047075b-MAL-ED          NEPAL                          Low                0       27      91
24 months   ki0047075b-MAL-ED          NEPAL                          Low                1        0      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium             0       25      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium             1        1      91
24 months   ki0047075b-MAL-ED          PERU                           High               0       73     164
24 months   ki0047075b-MAL-ED          PERU                           High               1        4     164
24 months   ki0047075b-MAL-ED          PERU                           Low                0       41     164
24 months   ki0047075b-MAL-ED          PERU                           Low                1        3     164
24 months   ki0047075b-MAL-ED          PERU                           Medium             0       40     164
24 months   ki0047075b-MAL-ED          PERU                           Medium             1        3     164
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       32      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        2      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0       30      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1        4      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       19      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        4      91
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0       82     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1       32     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       29     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1       18     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0       11     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1        5     177
24 months   ki1017093b-PROVIDE         BANGLADESH                     High               0      195     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     High               1        7     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                0      170     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                1       27     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium             0      161     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium             1       18     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High               0      196     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High               1       15     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                0      134     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                1       10     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium             0      148     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium             1       11     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High               0      106     487
24 months   ki1113344-GMS-Nepal        NEPAL                          High               1        7     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                0      193     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                1       26     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium             0      135     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium             1       20     487
24 months   ki1119695-PROBIT           BELARUS                        High               0      621    3913
24 months   ki1119695-PROBIT           BELARUS                        High               1        6    3913
24 months   ki1119695-PROBIT           BELARUS                        Low                0     1484    3913
24 months   ki1119695-PROBIT           BELARUS                        Low                1       32    3913
24 months   ki1119695-PROBIT           BELARUS                        Medium             0     1745    3913
24 months   ki1119695-PROBIT           BELARUS                        Medium             1       25    3913
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High               0       92    1594
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High               1        4    1594
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                0      254    1594
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                1       44    1594
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0     1082    1594
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1      118    1594
24 months   ki1135781-COHORTS          GUATEMALA                      High               0       94     992
24 months   ki1135781-COHORTS          GUATEMALA                      High               1       83     992
24 months   ki1135781-COHORTS          GUATEMALA                      Low                0      229     992
24 months   ki1135781-COHORTS          GUATEMALA                      Low                1      233     992
24 months   ki1135781-COHORTS          GUATEMALA                      Medium             0      186     992
24 months   ki1135781-COHORTS          GUATEMALA                      Medium             1      167     992
24 months   ki1135781-COHORTS          INDIA                          High               0      473    1380
24 months   ki1135781-COHORTS          INDIA                          High               1       66    1380
24 months   ki1135781-COHORTS          INDIA                          Low                0      291    1380
24 months   ki1135781-COHORTS          INDIA                          Low                1      159    1380
24 months   ki1135781-COHORTS          INDIA                          Medium             0      308    1380
24 months   ki1135781-COHORTS          INDIA                          Medium             1       83    1380
24 months   ki1135781-COHORTS          PHILIPPINES                    High               0      670    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    High               1      128    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                0      408    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                1      284    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium             0      560    2314
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium             1      264    2314
24 months   ki1148112-LCNI-5           MALAWI                         High               0      155     571
24 months   ki1148112-LCNI-5           MALAWI                         High               1       18     571
24 months   ki1148112-LCNI-5           MALAWI                         Low                0      179     571
24 months   ki1148112-LCNI-5           MALAWI                         Low                1       24     571
24 months   ki1148112-LCNI-5           MALAWI                         Medium             0      169     571
24 months   ki1148112-LCNI-5           MALAWI                         Medium             1       26     571
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High               0     1885    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High               1      185    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                0     2735    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                1      644    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     2399    8293
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      445    8293
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High               0     1046    4619
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High               1       50    4619
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                0     1495    4619
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                1      208    4619
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium             0     1640    4619
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium             1      180    4619


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/9dea1b55-f8a8-478d-a3d7-0239276e5f72/4a61d7b1-9e58-4bac-af2f-7fb5d212b52c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9dea1b55-f8a8-478d-a3d7-0239276e5f72/4a61d7b1-9e58-4bac-af2f-7fb5d212b52c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9dea1b55-f8a8-478d-a3d7-0239276e5f72/4a61d7b1-9e58-4bac-af2f-7fb5d212b52c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9dea1b55-f8a8-478d-a3d7-0239276e5f72/4a61d7b1-9e58-4bac-af2f-7fb5d212b52c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0779073    0.0543135   0.1015011
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.0687829    0.0521378   0.0854280
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0734410    0.0289820   0.1179000
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0406977    0.0111475   0.0702478
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.0608108    0.0335661   0.0880555
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.0265487    0.0055745   0.0475229
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0324855    0.0202358   0.0447352
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0395067    0.0306508   0.0483626
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0300627    0.0266737   0.0334517
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.0208729    0.0086629   0.0330828
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.0182232    0.0057064   0.0307401
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.0231959    0.0082128   0.0381790
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0068160    0.0017831   0.0118489
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0205562    0.0108839   0.0302286
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0186457    0.0103388   0.0269526
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1068384    0.1013377   0.1123392
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1076232    0.1027135   0.1125329
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1091939    0.1038644   0.1145235
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0824891    0.0615925   0.1033856
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0842056    0.0718169   0.0965944
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0834650    0.0703364   0.0965936
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0719600    0.0489900   0.0949300
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1169672    0.0947391   0.1391953
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0853235    0.0567245   0.1139225
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.0792079    0.0264698   0.1319460
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1439394    0.0839775   0.2039013
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1836735    0.1209952   0.2463517
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0250896    0.0067251   0.0434541
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0313901    0.0084883   0.0542920
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0422535    0.0152190   0.0692881
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0134771    0.0017411   0.0252131
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0083102    0.0029023   0.0137182
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0088652    0.0011273   0.0166032
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0096040    0.0051881   0.0140199
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0188060    0.0105230   0.0270890
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0133298    0.0081879   0.0184717
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0239525    0.0115879   0.0363171
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0460723    0.0352483   0.0568963
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0397854    0.0349933   0.0445774
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1658127    0.1027971   0.2288283
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1246715    0.0909483   0.1583947
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1257768    0.0890350   0.1625186
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0182055    0.0074090   0.0290021
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0428834    0.0244811   0.0612858
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0259446    0.0106774   0.0412118
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0336828    0.0216321   0.0457335
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0605272    0.0431530   0.0779013
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0524070    0.0381102   0.0667039
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.0976414    0.0605209   0.1347620
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0895471    0.0563683   0.1227258
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0521522    0.0255355   0.0787689
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0482254    0.0412461   0.0552047
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0664643    0.0600416   0.0728870
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0605398    0.0538452   0.0672345
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0325724    0.0186976   0.0464471
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0694905    0.0573197   0.0816613
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0525116    0.0428734   0.0621498
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2807018    0.1979832   0.3634203
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.3829787    0.2436095   0.5223479
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.3125000    0.0847388   0.5402612
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0346535    0.0094092   0.0598978
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1370558    0.0889906   0.1851211
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1005587    0.0564632   0.1446541
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0763724    0.0419106   0.1108342
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0648413    0.0224389   0.1072437
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0687062    0.0290170   0.1083954
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0619469    0.0174552   0.1064386
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1187215    0.0758376   0.1616053
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1290323    0.0762025   0.1818620
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0095694   -0.0042112   0.0233499
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0211082    0.0002353   0.0419810
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0141243    0.0011297   0.0271189
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4361412    0.3619934   0.5102891
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.5013628    0.4554461   0.5472794
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4767647    0.4178789   0.5356505
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1304827    0.1025716   0.1583938
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3157163    0.2744585   0.3569741
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.2157709    0.1742000   0.2573418
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1895421    0.1621641   0.2169201
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.3715927    0.3354020   0.4077834
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.3200803    0.2872103   0.3529502
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.1077244    0.0616087   0.1538401
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.1191286    0.0746842   0.1635730
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.1343041    0.0865191   0.1820891
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1200085    0.1042602   0.1357569
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1739930    0.1602853   0.1877006
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1517921    0.1371551   0.1664291
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0487073    0.0317057   0.0657089
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1169635    0.0996948   0.1342322
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0993157    0.0839298   0.1147015


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0720576   0.0515501   0.0925652
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0446686   0.0292885   0.0600487
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0317754   0.0288166   0.0347342
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0206795   0.0130966   0.0282623
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0149669   0.0105263   0.0194076
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1077969   0.1031162   0.1124775
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0835766   0.0713713   0.0957819
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0960240   0.0777684   0.1142796
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1421053   0.1069532   0.1772573
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0094153   0.0052007   0.0136299
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0148577   0.0096205   0.0200949
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0397437   0.0355730   0.0439145
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1305310   0.1085580   0.1525039
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0317690   0.0225290   0.0410089
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0483619   0.0400565   0.0566674
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0800493   0.0613726   0.0987259
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0593851   0.0553716   0.0633986
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0554489   0.0485553   0.0623426
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3107345   0.2423622   0.3791067
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0700389   0.0479542   0.0921236
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1088296   0.0811421   0.1365171
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0161002   0.0033894   0.0288110
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4868952   0.4557757   0.5180146
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2231884   0.2012119   0.2451650
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2921348   0.2736026   0.3106670
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1190893   0.0924996   0.1456790
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1536235   0.1447035   0.1625436
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0948257   0.0851298   0.1045216


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000    1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              0.8828817   0.6219116    1.253361
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9426716   0.5694675    1.560457
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.4942085   0.6366137    3.507086
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.6523388   0.2230853    1.907548
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.2161331   0.7843433    1.885628
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9254195   0.6244049    1.371548
Birth       ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              0.8730586   0.3541786    2.152110
Birth       ki1135781-COHORTS          INDIA                          Medium               High              1.1112933   0.4649040    2.656404
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              3.0158921   1.2564898    7.238901
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              2.7355950   1.1548408    6.480097
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0073452   0.9698264    1.046315
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0220472   0.9812281    1.064564
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0208100   0.8180580    1.273813
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.0118308   0.8042561    1.272979
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.6254464   1.2202970    2.165109
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1857065   0.7973255    1.763270
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000    1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.8172348   0.8285460    3.985708
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              2.3188776   1.0973616    4.900110
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.2511211   0.4451121    3.516651
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.6841046   0.6370276    4.452253
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.6166205   0.2079183    1.828703
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.6578014   0.1917037    2.257144
6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000    1.000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.9581309   1.0724948    3.575100
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.3879402   0.7712234    2.497821
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.9234868   1.0909679    3.391302
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.6610113   0.9777679    2.821690
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.7518814   0.4720470    1.197605
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.7585474   0.4706419    1.222573
6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              2.3555191   1.1322972    4.900189
6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.4250954   0.6174762    3.289029
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.7969753   1.1360801    2.842335
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.5558988   0.9924866    2.439147
6 months    ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000    1.000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              0.9171009   0.5393737    1.559353
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              0.5341197   0.2826430    1.009343
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.3782014   1.1669340    1.627718
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.2553516   1.0566726    1.491387
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              2.1334184   1.3436112    3.387493
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.6121515   1.0255048    2.534393
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000    1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              1.3643617   0.8542131    2.179178
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1132812   0.5072030    2.443588
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              3.9550399   1.7620749    8.877228
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              2.9018356   1.2399471    6.791136
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              0.8490147   0.3843341    1.875519
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.8996205   0.4363852    1.854593
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.9165036   0.8577545    4.282095
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              2.0829493   0.9112463    4.761257
24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000    1.000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              2.2058047   0.3380238   14.394179
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.4759887   0.2744753    7.937118
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.1495422   0.9502041    1.390698
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0931429   0.8880791    1.345558
24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              2.4196026   1.8904909    3.096803
24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.6536363   1.2426547    2.200541
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.9604760   1.6508446    2.328182
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.6887029   1.4183872    2.010535
24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.1058649   0.6264387    1.952206
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.2467380   0.7142020    2.176353
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.4498382   1.2508515    1.680480
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.2648441   1.0816491    1.479066
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000    1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              2.4013538   1.6268546    3.544570
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              2.0390300   1.4096721    2.949369


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0058496   -0.0229139   0.0112146
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0039709   -0.0220469   0.0299888
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0007101   -0.0125723   0.0111521
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0001934   -0.0097082   0.0093214
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0081510    0.0029606   0.0133414
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0009584   -0.0021970   0.0041139
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0010876   -0.0131201   0.0152953
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0240640    0.0072410   0.0408870
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0628973    0.0125139   0.1132808
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0070782   -0.0084639   0.0226203
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0040618   -0.0143016   0.0061780
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0052536   -0.0008773   0.0113845
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0157912    0.0035848   0.0279977
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0352817   -0.0924346   0.0218712
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0135634    0.0034356   0.0236912
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0146791    0.0038679   0.0254903
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0175922   -0.0472113   0.0120270
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0111597    0.0049004   0.0174190
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0228765    0.0106951   0.0350580
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0300327   -0.0219599   0.0820253
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0553119    0.0281657   0.0824581
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0063335   -0.0325380   0.0198710
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0468827    0.0041336   0.0896318
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0065308   -0.0114833   0.0245449
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0507539   -0.0168820   0.1183899
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0927057    0.0675056   0.1179058
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1025928    0.0780509   0.1271347
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0113649   -0.0282212   0.0509511
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0336150    0.0192151   0.0480149
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0461184    0.0304557   0.0617811


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0811801   -0.3536279   0.1364315
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0888972   -0.7252775   0.5188552
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0223460   -0.4729138   0.2903920
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0093521   -0.5922383   0.3601512
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.5445982    0.1054980   0.7681494
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0088912   -0.0207984   0.0377173
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0130131   -0.1730719   0.1695793
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.2506036    0.0537396   0.4065112
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.4426109   -0.0267209   0.6974031
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.2200405   -0.4347783   0.5760064
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4314087   -2.0243888   0.3225306
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.3535973   -0.0870632   0.6156282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.3973267    0.0012717   0.6363223
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.2702939   -0.7907394   0.0988936
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.4269401    0.0416029   0.6573470
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3035265    0.0478899   0.4905261
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.2197669   -0.6472982   0.0968051
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1879204    0.0763979   0.2859769
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.4125696    0.1390201   0.5992073
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0966507   -0.0868678   0.2491820
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.6148134    0.2437471   0.8038107
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0904286   -0.5378463   0.2268183
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.4307898   -0.1085570   0.7077279
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.4056353   -1.9090987   0.8785640
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1042399   -0.0461262   0.2329930
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.4153697    0.2971366   0.5137141
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3511829    0.2636205   0.4283333
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0954321   -0.3051041   0.3730437
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2188141    0.1204287   0.3061946
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.4863491    0.2925574   0.6270549
