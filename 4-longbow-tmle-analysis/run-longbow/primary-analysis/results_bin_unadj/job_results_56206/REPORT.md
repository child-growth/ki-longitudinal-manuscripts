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

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        feducyrs    sstunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  ---------  ---------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High               0       44     129  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     High               1        3     129  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                0       35     129  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                1        1     129  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium             0       44     129  sstunted         
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium             1        2     129  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          High               0        7      24  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          High               1        0      24  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          Low                0       13      24  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          Low                1        1      24  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          Medium             0        3      24  sstunted         
Birth       ki0047075b-MAL-ED          INDIA                          Medium             1        0      24  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          High               0        3      10  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          High               1        0      10  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          Low                0        3      10  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          Low                1        1      10  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          Medium             0        3      10  sstunted         
Birth       ki0047075b-MAL-ED          NEPAL                          Medium             1        0      10  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           High               0       85     194  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           High               1        1     194  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           Low                0       57     194  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           Low                1        1     194  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           Medium             0       49     194  sstunted         
Birth       ki0047075b-MAL-ED          PERU                           Medium             1        1     194  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       10      33  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        0      33  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0       14      33  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1        0      33  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0        9      33  sstunted         
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        0      33  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0       62     103  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1        4     103  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       26     103  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1        1     103  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0        8     103  sstunted         
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1        2     103  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          High               0      278    1249  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          High               1       21    1249  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                0      503    1249  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                1       40    1249  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium             0      378    1249  sstunted         
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium             1       29    1249  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     High               0      162     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     High               1        1     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                0      186     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                1        1     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium             0      187     539  sstunted         
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium             1        2     539  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High               0      279     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High               1        5     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                0      235     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                1        0     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium             0      208     732  sstunted         
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium             1        5     732  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          High               0      165     694  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          High               1        7     694  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                0      278     694  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                1       18     694  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium             0      220     694  sstunted         
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium             1        6     694  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        High               0     2059   13421  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        High               1        0   13421  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        Low                0     5318   13421  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        Low                1        1   13421  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        Medium             0     6039   13421  sstunted         
Birth       ki1119695-PROBIT           BELARUS                        Medium             1        4   13421  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High               0      951   13501  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High               1       31   13501  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                0     2188   13501  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                1       93   13501  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0     9933   13501  sstunted         
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1      305   13501  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      High               0      152     804  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      High               1        3     804  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      Low                0      348     804  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      Low                1        7     804  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      Medium             0      293     804  sstunted         
Birth       ki1135781-COHORTS          GUATEMALA                      Medium             1        1     804  sstunted         
Birth       ki1135781-COHORTS          INDIA                          High               0      516    1354  sstunted         
Birth       ki1135781-COHORTS          INDIA                          High               1       11    1354  sstunted         
Birth       ki1135781-COHORTS          INDIA                          Low                0      431    1354  sstunted         
Birth       ki1135781-COHORTS          INDIA                          Low                1        8    1354  sstunted         
Birth       ki1135781-COHORTS          INDIA                          Medium             0      379    1354  sstunted         
Birth       ki1135781-COHORTS          INDIA                          Medium             1        9    1354  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    High               0     1020    2873  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    High               1        7    2873  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                0      810    2873  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                1       17    2873  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium             0     1000    2873  sstunted         
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium             1       19    2873  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High               0     4373   21624  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High               1      353   21624  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                0     8355   21624  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                1     1113   21624  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     6565   21624  sstunted         
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      865   21624  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High               0      543    2740  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High               1       39    2740  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                0      997    2740  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                1      105    2740  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium             0      971    2740  sstunted         
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium             1       85    2740  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     High               0       49     132  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     High               1        1     132  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                0       34     132  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                1        2     132  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium             0       45     132  sstunted         
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium             1        1     132  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          High               0       43     138  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          High               1        0     138  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          Low                0       52     138  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          Low                1        2     138  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          Medium             0       40     138  sstunted         
6 months    ki0047075b-MAL-ED          INDIA                          Medium             1        1     138  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          High               0       40      95  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          High               1        0      95  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          Low                0       27      95  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          Low                1        0      95  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          Medium             0       27      95  sstunted         
6 months    ki0047075b-MAL-ED          NEPAL                          Medium             1        1      95  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           High               0      104     224  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           High               1        3     224  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           Low                0       57     224  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           Low                1        3     224  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           Medium             0       55     224  sstunted         
6 months    ki0047075b-MAL-ED          PERU                           Medium             1        2     224  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       33      92  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        0      92  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0       35      92  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1        0      92  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       24      92  sstunted         
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        0      92  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0      119     201  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1        8     201  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       53     201  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1        2     201  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0       17     201  sstunted         
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1        2     201  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          High               0      326    1333  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          High               1       22    1333  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                0      481    1333  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                1       69    1333  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium             0      398    1333  sstunted         
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium             1       37    1333  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High               0       93     380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High               1        8     380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                0      113     380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                1       19     380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium             0      120     380  sstunted         
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium             1       27     380  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     High               0      207     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     High               1        2     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                0      200     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                1        9     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium             0      183     604  sstunted         
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium             1        3     604  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High               0      272     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High               1        7     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                0      216     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                1        7     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium             0      204     715  sstunted         
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium             1        9     715  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0      366    2018  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        5    2018  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0     1074    2018  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        9    2018  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0      559    2018  sstunted         
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        5    2018  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          High               0      135     563  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          High               1        2     563  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                0      226     563  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                1       17     563  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium             0      181     563  sstunted         
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium             1        2     563  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        High               0     2490   15211  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        High               1       23   15211  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        Low                0     5849   15211  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        Low                1      113   15211  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        Medium             0     6646   15211  sstunted         
6 months    ki1119695-PROBIT           BELARUS                        Medium             1       90   15211  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High               0      572    8429  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High               1       14    8429  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                0     1391    8429  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                1       68    8429  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0     6131    8429  sstunted         
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1      253    8429  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      High               0      140     904  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      High               1       25     904  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      Low                0      352     904  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      Low                1       54     904  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      Medium             0      294     904  sstunted         
6 months    ki1135781-COHORTS          GUATEMALA                      Medium             1       39     904  sstunted         
6 months    ki1135781-COHORTS          INDIA                          High               0      533    1385  sstunted         
6 months    ki1135781-COHORTS          INDIA                          High               1       11    1385  sstunted         
6 months    ki1135781-COHORTS          INDIA                          Low                0      428    1385  sstunted         
6 months    ki1135781-COHORTS          INDIA                          Low                1       22    1385  sstunted         
6 months    ki1135781-COHORTS          INDIA                          Medium             0      380    1385  sstunted         
6 months    ki1135781-COHORTS          INDIA                          Medium             1       11    1385  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    High               0      862    2564  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    High               1       29    2564  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                0      699    2564  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                1       47    2564  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium             0      879    2564  sstunted         
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium             1       48    2564  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         High               0      226     812  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         High               1       25     812  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         Low                0      264     812  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         Low                1       26     812  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         Medium             0      257     812  sstunted         
6 months    ki1148112-LCNI-5           MALAWI                         Medium             1       14     812  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High               0     4131   16132  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High               1      148   16132  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                0     5855   16132  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                1      449   16132  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     5188   16132  sstunted         
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      361   16132  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High               0     1068    4689  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High               1       31    4689  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                0     1595    4689  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                1      130    4689  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium             0     1766    4689  sstunted         
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium             1       99    4689  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     High               0       38     117  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     High               1        2     117  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                0       32     117  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                1        3     117  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium             0       35     117  sstunted         
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium             1        7     117  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          High               0       38     132  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          High               1        4     132  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          Low                0       42     132  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          Low                1        9     132  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          Medium             0       36     132  sstunted         
24 months   ki0047075b-MAL-ED          INDIA                          Medium             1        3     132  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          High               0       38      91  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          High               1        0      91  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          Low                0       27      91  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          Low                1        0      91  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          Medium             0       25      91  sstunted         
24 months   ki0047075b-MAL-ED          NEPAL                          Medium             1        1      91  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           High               0       73     164  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           High               1        4     164  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           Low                0       41     164  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           Low                1        3     164  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           Medium             0       40     164  sstunted         
24 months   ki0047075b-MAL-ED          PERU                           Medium             1        3     164  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       32      91  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        2      91  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0       30      91  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1        4      91  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       19      91  sstunted         
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        4      91  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0       82     177  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1       32     177  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       29     177  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1       18     177  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0       11     177  sstunted         
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1        5     177  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     High               0      195     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     High               1        7     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                0      170     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                1       27     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium             0      161     578  sstunted         
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium             1       18     578  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High               0      196     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High               1       15     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                0      134     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                1       10     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium             0      148     514  sstunted         
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium             1       11     514  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0        0       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        0       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0        0       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        1       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0        5       6  sstunted         
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        0       6  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          High               0      106     487  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          High               1        7     487  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                0      193     487  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                1       26     487  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium             0      135     487  sstunted         
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium             1       20     487  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        High               0      621    3913  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        High               1        6    3913  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        Low                0     1484    3913  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        Low                1       32    3913  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        Medium             0     1745    3913  sstunted         
24 months   ki1119695-PROBIT           BELARUS                        Medium             1       25    3913  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High               0       92    1594  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High               1        4    1594  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                0      254    1594  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                1       44    1594  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0     1082    1594  sstunted         
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1      118    1594  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      High               0       94     992  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      High               1       83     992  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      Low                0      229     992  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      Low                1      233     992  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      Medium             0      186     992  sstunted         
24 months   ki1135781-COHORTS          GUATEMALA                      Medium             1      167     992  sstunted         
24 months   ki1135781-COHORTS          INDIA                          High               0      473    1380  sstunted         
24 months   ki1135781-COHORTS          INDIA                          High               1       66    1380  sstunted         
24 months   ki1135781-COHORTS          INDIA                          Low                0      291    1380  sstunted         
24 months   ki1135781-COHORTS          INDIA                          Low                1      159    1380  sstunted         
24 months   ki1135781-COHORTS          INDIA                          Medium             0      308    1380  sstunted         
24 months   ki1135781-COHORTS          INDIA                          Medium             1       83    1380  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    High               0      670    2314  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    High               1      128    2314  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                0      408    2314  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                1      284    2314  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium             0      560    2314  sstunted         
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium             1      264    2314  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         High               0      155     571  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         High               1       18     571  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         Low                0      179     571  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         Low                1       24     571  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         Medium             0      169     571  sstunted         
24 months   ki1148112-LCNI-5           MALAWI                         Medium             1       26     571  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High               0     1885    8293  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High               1      185    8293  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                0     2735    8293  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                1      644    8293  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     2399    8293  sstunted         
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      445    8293  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High               0     1046    4619  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High               1       50    4619  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                0     1495    4619  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                1      208    4619  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium             0     1640    4619  sstunted         
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium             1      180    4619  sstunted         


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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/5e081f43-f209-4807-9b87-a153219cf8e1/3c1ca45d-8d78-4971-89c3-414124695042/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5e081f43-f209-4807-9b87-a153219cf8e1/3c1ca45d-8d78-4971-89c3-414124695042/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5e081f43-f209-4807-9b87-a153219cf8e1/3c1ca45d-8d78-4971-89c3-414124695042/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5e081f43-f209-4807-9b87-a153219cf8e1/3c1ca45d-8d78-4971-89c3-414124695042/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0702341    0.0495776   0.0908906
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.0736648    0.0567378   0.0905918
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0712531    0.0269980   0.1155081
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0406977    0.0111475   0.0702478
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.0608108    0.0335661   0.0880555
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.0265487    0.0055745   0.0475229
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0315682    0.0206320   0.0425045
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0407716    0.0326556   0.0488876
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0297910    0.0264977   0.0330843
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.0208729    0.0086629   0.0330828
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.0182232    0.0057064   0.0307401
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.0231959    0.0082128   0.0381790
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0068160    0.0017831   0.0118489
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0205562    0.0108839   0.0302286
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0186457    0.0103388   0.0269526
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0746932    0.0664582   0.0829282
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1175539    0.1107429   0.1243648
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1164199    0.1082785   0.1245613
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0670103    0.0393053   0.0947153
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0952813    0.0770503   0.1135123
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0804924    0.0600118   0.1009730
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0632184    0.0371438   0.0892930
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1254545    0.1048049   0.1461041
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0850575    0.0544578   0.1156572
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.0792079    0.0264698   0.1319460
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1439394    0.0839775   0.2039013
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1836735    0.1209952   0.2463517
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0250896    0.0067251   0.0434541
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0313901    0.0084883   0.0542920
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0422535    0.0152190   0.0692881
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0134771    0.0017411   0.0252131
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0083102    0.0029023   0.0137182
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0088652    0.0011273   0.0166032
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0091524    0.0049725   0.0133323
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0189534    0.0108867   0.0270200
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0133610    0.0082664   0.0184557
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0238908    0.0115259   0.0362557
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0466073    0.0357902   0.0574243
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0396303    0.0348445   0.0444162
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1515152    0.0967762   0.2062541
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1330049    0.0999552   0.1660546
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1171171    0.0825608   0.1516735
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0202206    0.0083884   0.0320528
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0488889    0.0289583   0.0688194
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0281330    0.0117374   0.0445286
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0325477    0.0208939   0.0442015
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0630027    0.0455641   0.0804413
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0517799    0.0375131   0.0660468
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.0996016    0.0625310   0.1366722
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0896552    0.0567543   0.1225560
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0516605    0.0252916   0.0780294
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0345875    0.0289421   0.0402329
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0712246    0.0644323   0.0780170
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0650568    0.0582270   0.0718865
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0282075    0.0141505   0.0422645
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0753623    0.0627862   0.0879384
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0530831    0.0434725   0.0626938
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2807018    0.1979832   0.3634203
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.3829787    0.2436095   0.5223479
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.3125000    0.0847388   0.5402612
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0346535    0.0094092   0.0598978
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1370558    0.0889906   0.1851211
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1005587    0.0564632   0.1446541
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0710900    0.0363827   0.1057974
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0694444    0.0278841   0.1110048
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0691824    0.0297001   0.1086647
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0619469    0.0174552   0.1064386
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1187215    0.0758376   0.1616053
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1290323    0.0762025   0.1818620
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0095694   -0.0042112   0.0233499
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0211082    0.0002353   0.0419810
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0141243    0.0011297   0.0271189
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4689266    0.3953719   0.5424812
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.5043290    0.4587148   0.5499432
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4730878    0.4209780   0.5251977
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1224490    0.0947652   0.1501327
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3533333    0.3091527   0.3975140
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.2122762    0.1717296   0.2528228
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1604010    0.1349339   0.1858681
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4104046    0.3737463   0.4470629
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.3203883    0.2885209   0.3522558
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.1040462    0.0585095   0.1495830
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.1182266    0.0737720   0.1626812
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.1333333    0.0855797   0.1810870
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0893720    0.0758710   0.1028730
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1905889    0.1762049   0.2049730
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1564698    0.1416660   0.1712736
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0456204    0.0286231   0.0626178
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1221374    0.1046862   0.1395886
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0989011    0.0835503   0.1142519


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


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000    1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.0488468   0.7482267    1.4702490
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.0145080   0.6139171    1.6764911
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.4942085   0.6366137    3.5070858
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.6523388   0.2230853    1.9075481
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.2915388   0.8661344    1.9258818
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9437012   0.6560043    1.3575703
Birth       ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              0.8730586   0.3541786    2.1521100
Birth       ki1135781-COHORTS          INDIA                          Medium               High              1.1112933   0.4649040    2.6564042
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              3.0158921   1.2564898    7.2389007
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              2.7355950   1.1548408    6.4800967
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.5738231   1.3900665    1.7818711
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.5586418   1.3709598    1.7720170
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.4218903   0.9081710    2.2262019
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2011946   0.7391475    1.9520713
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.9844628   1.3728876    2.8684741
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.3454545   0.8214360    2.2037602
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.8172348   0.8285460    3.9857080
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              2.3188776   1.0973616    4.9001104
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000    1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.2511211   0.4451121    3.5166512
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.6841046   0.6370276    4.4522534
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000    1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.6166205   0.2079183    1.8287029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.6578014   0.1917037    2.2571436
6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              2.0708618   1.1630195    3.6873574
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.4598394   0.8251295    2.5827839
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.9508470   1.1063315    3.4400214
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.6588122   0.9749604    2.8223278
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8778325   0.5662154    1.3609485
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.7729730   0.4848254    1.2323761
6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              2.4177778   1.1849301    4.9333285
6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.3913043   0.6091910    3.1775386
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.9357031   1.2310952    3.0435877
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.5908939   1.0125795    2.4995008
6 months    ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              0.9001379   0.5337193    1.5181168
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              0.5186716   0.2757677    0.9755319
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              2.0592577   1.7101620    2.4796145
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.8809318   1.5531777    2.2778491
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              2.6717158   1.5703064    4.5456512
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.8818819   1.1135729    3.1802851
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000    1.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              1.3643617   0.8542131    2.1791785
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1132812   0.5072030    2.4435882
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000    1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              3.9550399   1.7620749    8.8772280
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              2.9018356   1.2399471    6.7911364
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000    1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              0.9768519   0.4512346    2.1147305
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9731656   0.4592158    2.0623230
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000    1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.9165036   0.8577545    4.2820948
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              2.0829493   0.9112463    4.7612572
24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000    1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              2.2058047   0.3380238   14.3941793
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.4759887   0.2744753    7.9371184
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.0754968   0.8973740    1.2889758
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0088740   0.8329064    1.2220181
24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              2.8855556   2.2285686    3.7362237
24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.7335891   1.2894603    2.3306892
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              2.5586163   2.1324976    3.0698827
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.9974211   1.6561612    2.4089993
24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.1362890   0.6381174    2.0233780
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.2814815   0.7279610    2.2558830
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              2.1325353   1.8032236    2.5219873
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.7507695   1.4677158    2.0884111
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              2.6772518   1.7786360    4.0298731
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              2.1679120   1.4644376    3.2093156


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0018235   -0.0132258   0.0168729
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0039709   -0.0220469   0.0299888
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0002072   -0.0103264   0.0107408
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0001934   -0.0097082   0.0093214
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0081510    0.0029606   0.0133414
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0331037    0.0255072   0.0407002
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0165663   -0.0074191   0.0405517
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0328056    0.0135435   0.0520677
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0628973    0.0125139   0.1132808
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0070782   -0.0084639   0.0226203
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0040618   -0.0143016   0.0061780
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0057053   -0.0001059   0.0115164
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0158530    0.0036453   0.0280606
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0209842   -0.0698243   0.0278560
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0115484    0.0008060   0.0222908
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0158142    0.0053070   0.0263214
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0195523   -0.0491067   0.0100020
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0247976    0.0194249   0.0301702
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0272415    0.0148768   0.0396061
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0300327   -0.0219599   0.0820253
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0553119    0.0281657   0.0824581
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0010511   -0.0275717   0.0254695
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0468827    0.0041336   0.0896318
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0065308   -0.0114833   0.0245449
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0179686   -0.0487249   0.0846621
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1007394    0.0752309   0.1262480
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1317338    0.1083953   0.1550723
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0150431   -0.0239967   0.0540828
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0642515    0.0515242   0.0769789
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0492053    0.0335397   0.0648709


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0253066   -0.2045621   0.2113090
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0888972   -0.7252775   0.5188552
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0065206   -0.3869896   0.2883860
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0093521   -0.5922383   0.3601512
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.5445982    0.1054980   0.7681494
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.3070933    0.2339741   0.3732331
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1982173   -0.1519788   0.4419554
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.3416397    0.0960780   0.5204915
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.4426109   -0.0267209   0.6974031
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.2200405   -0.4347783   0.5760064
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.4314087   -2.0243888   0.3225306
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.3839944   -0.0166118   0.6267376
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.3988793    0.0025079   0.6377454
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1607601   -0.6013875   0.1586271
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.3635110   -0.0554599   0.6161690
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3269976    0.0800067   0.5076788
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                -0.2442538   -0.6694251   0.0726344
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.4175722    0.3246698   0.4976943
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.4912893    0.2001205   0.6764680
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0966507   -0.0868678   0.2491820
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.6148134    0.2437471   0.8038107
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0150079   -0.4739241   0.3010217
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.4307898   -0.1085570   0.7077279
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.4056353   -1.9090987   0.8785640
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0369045   -0.1103115   0.1646011
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.4513650    0.3317426   0.5495741
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.4509350    0.3682304   0.5228128
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.1263176   -0.2701242   0.3990187
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.4182403    0.3324569   0.4929999
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.5189023    0.3222136   0.6585133
