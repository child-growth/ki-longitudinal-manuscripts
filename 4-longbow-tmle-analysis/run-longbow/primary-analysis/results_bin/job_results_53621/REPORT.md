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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        feducyrs    swasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              0       42     119
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              1        2     119
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               0       30     119
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               1        3     119
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            0       41     119
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            1        1     119
Birth       ki0047075b-MAL-ED          INDIA                          High              0        7      23
Birth       ki0047075b-MAL-ED          INDIA                          High              1        0      23
Birth       ki0047075b-MAL-ED          INDIA                          Low               0       13      23
Birth       ki0047075b-MAL-ED          INDIA                          Low               1        0      23
Birth       ki0047075b-MAL-ED          INDIA                          Medium            0        3      23
Birth       ki0047075b-MAL-ED          INDIA                          Medium            1        0      23
Birth       ki0047075b-MAL-ED          NEPAL                          High              0        3       9
Birth       ki0047075b-MAL-ED          NEPAL                          High              1        0       9
Birth       ki0047075b-MAL-ED          NEPAL                          Low               0        3       9
Birth       ki0047075b-MAL-ED          NEPAL                          Low               1        0       9
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            0        3       9
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            1        0       9
Birth       ki0047075b-MAL-ED          PERU                           High              0       84     190
Birth       ki0047075b-MAL-ED          PERU                           High              1        0     190
Birth       ki0047075b-MAL-ED          PERU                           Low               0       56     190
Birth       ki0047075b-MAL-ED          PERU                           Low               1        0     190
Birth       ki0047075b-MAL-ED          PERU                           Medium            0       50     190
Birth       ki0047075b-MAL-ED          PERU                           Medium            1        0     190
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       10      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        0      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       14      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        0      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0        9      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        0      33
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0       62      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       26      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        0      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0        8      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0      96
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              0      265    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              1        5    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               0      461    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               1       15    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            0      346    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            1        9    1101
Birth       ki1017093b-PROVIDE         BANGLADESH                     High              0      155     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     High              1        6     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low               0      183     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low               1        2     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium            0      181     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium            1        5     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              0      262     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              1       15     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      209     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       20     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      189     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       12     707
Birth       ki1113344-GMS-Nepal        NEPAL                          High              0      151     640
Birth       ki1113344-GMS-Nepal        NEPAL                          High              1       11     640
Birth       ki1113344-GMS-Nepal        NEPAL                          Low               0      259     640
Birth       ki1113344-GMS-Nepal        NEPAL                          Low               1        7     640
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium            0      203     640
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium            1        9     640
Birth       ki1119695-PROBIT           BELARUS                        High              0     1920   13364
Birth       ki1119695-PROBIT           BELARUS                        High              1      131   13364
Birth       ki1119695-PROBIT           BELARUS                        Low               0     4954   13364
Birth       ki1119695-PROBIT           BELARUS                        Low               1      343   13364
Birth       ki1119695-PROBIT           BELARUS                        Medium            0     5620   13364
Birth       ki1119695-PROBIT           BELARUS                        Medium            1      396   13364
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              0      868   12573
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              1       46   12573
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     1974   12573
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      117   12573
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     8967   12573
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      601   12573
Birth       ki1135781-COHORTS          GUATEMALA                      High              0      125     718
Birth       ki1135781-COHORTS          GUATEMALA                      High              1       11     718
Birth       ki1135781-COHORTS          GUATEMALA                      Low               0      287     718
Birth       ki1135781-COHORTS          GUATEMALA                      Low               1       24     718
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            0      252     718
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            1       19     718
Birth       ki1135781-COHORTS          INDIA                          High              0      481    1291
Birth       ki1135781-COHORTS          INDIA                          High              1       26    1291
Birth       ki1135781-COHORTS          INDIA                          Low               0      407    1291
Birth       ki1135781-COHORTS          INDIA                          Low               1        7    1291
Birth       ki1135781-COHORTS          INDIA                          Medium            0      349    1291
Birth       ki1135781-COHORTS          INDIA                          Medium            1       21    1291
Birth       ki1135781-COHORTS          PHILIPPINES                    High              0      945    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    High              1       49    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               0      753    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               1       20    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            0      919    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            1       42    2728
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              0     3965   17367
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              1       84   17367
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               0     7312   17367
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               1      140   17367
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     5760   17367
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      106   17367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              0      505    2323
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              1        5    2323
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               0      899    2323
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               1       14    2323
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            0      890    2323
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       10    2323
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              0       50     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              1        0     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               0       36     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               1        0     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            0       44     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            1        2     132
6 months    ki0047075b-MAL-ED          INDIA                          High              0       42     138
6 months    ki0047075b-MAL-ED          INDIA                          High              1        1     138
6 months    ki0047075b-MAL-ED          INDIA                          Low               0       53     138
6 months    ki0047075b-MAL-ED          INDIA                          Low               1        1     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium            0       38     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium            1        3     138
6 months    ki0047075b-MAL-ED          NEPAL                          High              0       40      95
6 months    ki0047075b-MAL-ED          NEPAL                          High              1        0      95
6 months    ki0047075b-MAL-ED          NEPAL                          Low               0       27      95
6 months    ki0047075b-MAL-ED          NEPAL                          Low               1        0      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            0       28      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            1        0      95
6 months    ki0047075b-MAL-ED          PERU                           High              0      107     224
6 months    ki0047075b-MAL-ED          PERU                           High              1        0     224
6 months    ki0047075b-MAL-ED          PERU                           Low               0       60     224
6 months    ki0047075b-MAL-ED          PERU                           Low               1        0     224
6 months    ki0047075b-MAL-ED          PERU                           Medium            0       57     224
6 months    ki0047075b-MAL-ED          PERU                           Medium            1        0     224
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       33      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        0      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       34      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        1      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       24      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        0      92
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0      127     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       55     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        0     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       19     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0     201
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              0      344    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              1        5    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               0      523    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               1       25    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            0      421    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            1       13    1331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              0       96     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              1        5     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               0      127     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               1        5     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0      138     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1        9     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              0      206     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              1        3     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               0      206     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               1        2     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            0      186     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            1        0     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              0      279     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      223     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      213     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      367    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        4    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0     1079    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        3    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0      559    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        5    2017
6 months    ki1113344-GMS-Nepal        NEPAL                          High              0      135     563
6 months    ki1113344-GMS-Nepal        NEPAL                          High              1        2     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               0      239     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               1        4     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            0      182     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            1        1     563
6 months    ki1119695-PROBIT           BELARUS                        High              0     2510   15208
6 months    ki1119695-PROBIT           BELARUS                        High              1        2   15208
6 months    ki1119695-PROBIT           BELARUS                        Low               0     5947   15208
6 months    ki1119695-PROBIT           BELARUS                        Low               1       11   15208
6 months    ki1119695-PROBIT           BELARUS                        Medium            0     6735   15208
6 months    ki1119695-PROBIT           BELARUS                        Medium            1        3   15208
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              0      563    8266
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              1        6    8266
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     1409    8266
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               1       24    8266
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     6218    8266
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1       46    8266
6 months    ki1135781-COHORTS          GUATEMALA                      High              0      163     905
6 months    ki1135781-COHORTS          GUATEMALA                      High              1        2     905
6 months    ki1135781-COHORTS          GUATEMALA                      Low               0      405     905
6 months    ki1135781-COHORTS          GUATEMALA                      Low               1        1     905
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            0      332     905
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            1        2     905
6 months    ki1135781-COHORTS          INDIA                          High              0      530    1385
6 months    ki1135781-COHORTS          INDIA                          High              1       14    1385
6 months    ki1135781-COHORTS          INDIA                          Low               0      435    1385
6 months    ki1135781-COHORTS          INDIA                          Low               1       15    1385
6 months    ki1135781-COHORTS          INDIA                          Medium            0      378    1385
6 months    ki1135781-COHORTS          INDIA                          Medium            1       13    1385
6 months    ki1135781-COHORTS          PHILIPPINES                    High              0      882    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    High              1       10    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               0      737    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               1        7    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            0      910    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            1       16    2562
6 months    ki1148112-LCNI-5           MALAWI                         High              0      251     812
6 months    ki1148112-LCNI-5           MALAWI                         High              1        0     812
6 months    ki1148112-LCNI-5           MALAWI                         Low               0      290     812
6 months    ki1148112-LCNI-5           MALAWI                         Low               1        0     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium            0      271     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium            1        0     812
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              0     4219   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              1       52   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               0     6197   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               1       94   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     5470   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            1       73   16105
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              0     1095    4690
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              1        3    4690
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1711    4690
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               1       15    4690
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            0     1855    4690
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       11    4690
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       40     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1        0     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       35     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1        0     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       42     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1        0     117
24 months   ki0047075b-MAL-ED          INDIA                          High              0       42     132
24 months   ki0047075b-MAL-ED          INDIA                          High              1        0     132
24 months   ki0047075b-MAL-ED          INDIA                          Low               0       51     132
24 months   ki0047075b-MAL-ED          INDIA                          Low               1        0     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       39     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium            1        0     132
24 months   ki0047075b-MAL-ED          NEPAL                          High              0       38      91
24 months   ki0047075b-MAL-ED          NEPAL                          High              1        0      91
24 months   ki0047075b-MAL-ED          NEPAL                          Low               0       27      91
24 months   ki0047075b-MAL-ED          NEPAL                          Low               1        0      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       26      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1        0      91
24 months   ki0047075b-MAL-ED          PERU                           High              0       76     164
24 months   ki0047075b-MAL-ED          PERU                           High              1        1     164
24 months   ki0047075b-MAL-ED          PERU                           Low               0       44     164
24 months   ki0047075b-MAL-ED          PERU                           Low               1        0     164
24 months   ki0047075b-MAL-ED          PERU                           Medium            0       42     164
24 months   ki0047075b-MAL-ED          PERU                           Medium            1        1     164
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       34      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        0      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       34      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        0      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       23      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        0      91
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0      114     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       47     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        0     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       16     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0     177
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      199     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1        3     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0      192     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1        6     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      179     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1        0     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              0      209     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              1        2     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      142     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        2     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      159     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        0     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High              0      110     486
24 months   ki1113344-GMS-Nepal        NEPAL                          High              1        3     486
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      212     486
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1        6     486
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0      149     486
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1        6     486
24 months   ki1119695-PROBIT           BELARUS                        High              0      620    3853
24 months   ki1119695-PROBIT           BELARUS                        High              1        0    3853
24 months   ki1119695-PROBIT           BELARUS                        Low               0     1486    3853
24 months   ki1119695-PROBIT           BELARUS                        Low               1        3    3853
24 months   ki1119695-PROBIT           BELARUS                        Medium            0     1743    3853
24 months   ki1119695-PROBIT           BELARUS                        Medium            1        1    3853
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0       13     410
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1        0     410
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0       92     410
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1       11     410
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0      275     410
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1       19     410
24 months   ki1135781-COHORTS          GUATEMALA                      High              0      178    1002
24 months   ki1135781-COHORTS          GUATEMALA                      High              1        0    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Low               0      464    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Low               1        1    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0      356    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1        3    1002
24 months   ki1135781-COHORTS          INDIA                          High              0      534    1370
24 months   ki1135781-COHORTS          INDIA                          High              1        2    1370
24 months   ki1135781-COHORTS          INDIA                          Low               0      442    1370
24 months   ki1135781-COHORTS          INDIA                          Low               1        6    1370
24 months   ki1135781-COHORTS          INDIA                          Medium            0      383    1370
24 months   ki1135781-COHORTS          INDIA                          Medium            1        3    1370
24 months   ki1135781-COHORTS          PHILIPPINES                    High              0      796    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    High              1        2    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      686    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1        7    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      812    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1       16    2319
24 months   ki1148112-LCNI-5           MALAWI                         High              0      169     555
24 months   ki1148112-LCNI-5           MALAWI                         High              1        1     555
24 months   ki1148112-LCNI-5           MALAWI                         Low               0      194     555
24 months   ki1148112-LCNI-5           MALAWI                         Low               1        0     555
24 months   ki1148112-LCNI-5           MALAWI                         Medium            0      191     555
24 months   ki1148112-LCNI-5           MALAWI                         Medium            1        0     555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     1974    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1       81    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     3245    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1      126    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     2727    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      111    8264
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0     1064    4602
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1       28    4602
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1654    4602
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1       40    4602
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0     1758    4602
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       58    4602


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/5f672590-10ba-4e2f-bd3d-ff0be95ea0f3/5c50c548-320d-44be-b37a-04136e10c472/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5f672590-10ba-4e2f-bd3d-ff0be95ea0f3/5c50c548-320d-44be-b37a-04136e10c472/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5f672590-10ba-4e2f-bd3d-ff0be95ea0f3/5c50c548-320d-44be-b37a-04136e10c472/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5f672590-10ba-4e2f-bd3d-ff0be95ea0f3/5c50c548-320d-44be-b37a-04136e10c472/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0185185   0.0065073   0.0305297
Birth       ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.0315126   0.0105174   0.0525078
Birth       ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.0253521   0.0030904   0.0476138
Birth       ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                0.0526236   0.0260471   0.0792001
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                0.0890370   0.0521267   0.1259473
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Medium               NA                0.0604068   0.0272513   0.0935623
Birth       ki1113344-GMS-Nepal        NEPAL         High                 NA                0.0679012   0.0291309   0.1066716
Birth       ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.0263158   0.0070643   0.0455673
Birth       ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.0424528   0.0152914   0.0696143
Birth       ki1119695-PROBIT           BELARUS       High                 NA                0.0652218   0.0319779   0.0984656
Birth       ki1119695-PROBIT           BELARUS       Low                  NA                0.0659888   0.0324478   0.0995297
Birth       ki1119695-PROBIT           BELARUS       Medium               NA                0.0642972   0.0320320   0.0965624
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0469214   0.0331278   0.0607151
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0595535   0.0493643   0.0697427
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0624343   0.0576137   0.0672549
Birth       ki1135781-COHORTS          GUATEMALA     High                 NA                0.0841917   0.0379789   0.1304045
Birth       ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0779231   0.0485055   0.1073407
Birth       ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0668144   0.0362681   0.0973608
Birth       ki1135781-COHORTS          INDIA         High                 NA                0.0512821   0.0320749   0.0704892
Birth       ki1135781-COHORTS          INDIA         Low                  NA                0.0169082   0.0044842   0.0293322
Birth       ki1135781-COHORTS          INDIA         Medium               NA                0.0567568   0.0331717   0.0803418
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0476263   0.0343017   0.0609508
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0250722   0.0142184   0.0359260
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0440060   0.0310209   0.0569910
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0193586   0.0162121   0.0225052
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0192926   0.0166808   0.0219044
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0185144   0.0158353   0.0211935
Birth       kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0098039   0.0022932   0.0173147
Birth       kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.0153341   0.0072544   0.0234137
Birth       kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0111111   0.0007252   0.0214971
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0143266   0.0000589   0.0285944
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.0456204   0.0318281   0.0594127
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.0299539   0.0168697   0.0430382
6 months    ki1000304b-SAS-FoodSuppl   INDIA         High                 NA                0.0495050   0.0071447   0.0918652
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Low                  NA                0.0378788   0.0052691   0.0704884
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Medium               NA                0.0612245   0.0224179   0.1000310
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0105448   0.0021515   0.0189382
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0167481   0.0101035   0.0233926
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0073436   0.0052291   0.0094580
6 months    ki1135781-COHORTS          INDIA         High                 NA                0.0267152   0.0126890   0.0407414
6 months    ki1135781-COHORTS          INDIA         Low                  NA                0.0319089   0.0157533   0.0480645
6 months    ki1135781-COHORTS          INDIA         Medium               NA                0.0338226   0.0150769   0.0525683
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0112108   0.0043001   0.0181214
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0094086   0.0024703   0.0163470
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0172786   0.0088841   0.0256732
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0126686   0.0077328   0.0176045
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0150453   0.0115545   0.0185361
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0130856   0.0099675   0.0162036
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0427218   0.0325870   0.0528566
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0350076   0.0281326   0.0418826
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0402788   0.0315353   0.0490222
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0273699   0.0160849   0.0386549
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.0225381   0.0138992   0.0311770
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0319171   0.0234706   0.0403637


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0263397   0.0123159   0.0403635
Birth       ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0664781   0.0481022   0.0848539
Birth       ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.0421875   0.0266017   0.0577733
Birth       ki1119695-PROBIT           BELARUS       NA                   NA                0.0651003   0.0321310   0.0980696
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0607651   0.0565891   0.0649411
Birth       ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0752089   0.0559050   0.0945128
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0418280   0.0309034   0.0527527
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0406891   0.0332739   0.0481044
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0190016   0.0166360   0.0213671
Birth       kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0124839   0.0071213   0.0178464
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0323065   0.0236135   0.0409996
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.0500000   0.0280580   0.0719420
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0091943   0.0071366   0.0112520
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0303249   0.0212906   0.0393592
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0128806   0.0085134   0.0172477
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0135983   0.0114298   0.0157667
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0384802   0.0340611   0.0428992
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0273794   0.0221191   0.0326397


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA         Low                  High              1.7016806   0.6748438   4.2909440
Birth       ki1000304b-SAS-CompFeed    INDIA         Medium               High              1.3690141   0.4004177   4.6806115
Birth       ki1017093c-NIH-Crypto      BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Low                  High              1.6919602   0.8805038   3.2512403
Birth       ki1017093c-NIH-Crypto      BANGLADESH    Medium               High              1.1479034   0.5446434   2.4193483
Birth       ki1113344-GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL         Low                  High              0.3875598   0.1532184   0.9803170
Birth       ki1113344-GMS-Nepal        NEPAL         Medium               High              0.6252144   0.2652196   1.4738465
Birth       ki1119695-PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS       Low                  High              1.0117599   0.9827327   1.0416445
Birth       ki1119695-PROBIT           BELARUS       Medium               High              0.9858247   0.9361443   1.0381417
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  High              1.2692188   0.9038280   1.7823263
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               High              1.3306143   0.9825785   1.8019267
Birth       ki1135781-COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA     Low                  High              0.9255437   0.4765207   1.7976787
Birth       ki1135781-COHORTS          GUATEMALA     Medium               High              0.7935987   0.3888587   1.6196087
Birth       ki1135781-COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA         Low                  High              0.3297102   0.1445278   0.7521652
Birth       ki1135781-COHORTS          INDIA         Medium               High              1.1067568   0.6325520   1.9364582
Birth       ki1135781-COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  High              0.5264363   0.3145760   0.8809802
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               High              0.9239850   0.6156572   1.3867266
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  High              0.9965886   0.8648724   1.1483645
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               High              0.9563886   0.8219617   1.1128001
Birth       kiGH5241-JiVitA-4          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH    Low                  High              1.5640745   0.6170812   3.9643549
Birth       kiGH5241-JiVitA-4          BANGLADESH    Medium               High              1.1333333   0.3365230   3.8168098
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  High              3.1843066   1.1506464   8.8122711
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               High              2.0907834   0.9108342   4.7993096
6 months    ki1000304b-SAS-FoodSuppl   INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Low                  High              0.7651515   0.2272994   2.5757078
6 months    ki1000304b-SAS-FoodSuppl   INDIA         Medium               High              1.2367347   0.4263944   3.5870847
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  High              1.5882763   0.6526500   3.8651983
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               High              0.6964134   0.2987164   1.6235852
6 months    ki1135781-COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA         Low                  High              1.1944085   0.5758812   2.4772673
6 months    ki1135781-COHORTS          INDIA         Medium               High              1.2660437   0.5899663   2.7168784
6 months    ki1135781-COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  High              0.8392473   0.3209713   2.1943895
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               High              1.5412527   0.7030864   3.3786173
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  High              1.1876023   0.7565155   1.8643363
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               High              1.0329117   0.6630680   1.6090457
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  High              0.8194311   0.6051116   1.1096588
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               High              0.9428156   0.6838753   1.2998003
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 High              1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  High              0.8234647   0.4639165   1.4616730
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               High              1.1661403   0.7116224   1.9109618


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.0078212   -0.0097372   0.0253795
Birth       ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                 0.0138545   -0.0082633   0.0359723
Birth       ki1113344-GMS-Nepal        NEPAL         High                 NA                -0.0257137   -0.0570999   0.0056725
Birth       ki1119695-PROBIT           BELARUS       High                 NA                -0.0001215   -0.0020968   0.0018538
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0138437    0.0004673   0.0272202
Birth       ki1135781-COHORTS          GUATEMALA     High                 NA                -0.0089828   -0.0501793   0.0322137
Birth       ki1135781-COHORTS          INDIA         High                 NA                -0.0094540   -0.0235432   0.0046351
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                -0.0069371   -0.0170387   0.0031644
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                -0.0003571   -0.0023947   0.0016805
Birth       kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0026799   -0.0051313   0.0104911
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.0179799    0.0090176   0.0269422
6 months    ki1000304b-SAS-FoodSuppl   INDIA         High                 NA                 0.0004950   -0.0358640   0.0368541
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                -0.0013505   -0.0094118   0.0067107
6 months    ki1135781-COHORTS          INDIA         High                 NA                 0.0036097   -0.0079917   0.0152111
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0016698   -0.0041245   0.0074641
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0009296   -0.0033465   0.0052058
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                -0.0042416   -0.0132912   0.0048080
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0000095   -0.0099867   0.0100058


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.2969349   -0.5620029    0.6835469
Birth       ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                 0.2084068   -0.1997072    0.4776894
Birth       ki1113344-GMS-Nepal        NEPAL         High                 NA                -0.6095107   -1.5083392   -0.0327650
Birth       ki1119695-PROBIT           BELARUS       High                 NA                -0.0018661   -0.0325807    0.0279349
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.2278233   -0.0264981    0.4191350
Birth       ki1135781-COHORTS          GUATEMALA     High                 NA                -0.1194379   -0.8253589    0.3134823
Birth       ki1135781-COHORTS          INDIA         High                 NA                -0.2260209   -0.6075615    0.0649644
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                -0.1704908   -0.4441780    0.0513297
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                -0.0187926   -0.1318620    0.0829814
Birth       kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.2146721   -0.6753540    0.6318748
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.5565403    0.0163673    0.8000712
6 months    ki1000304b-SAS-FoodSuppl   INDIA         High                 NA                 0.0099010   -1.0636802    0.5249768
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                -0.1468874   -1.4620659    0.4657532
6 months    ki1135781-COHORTS          INDIA         High                 NA                 0.1190340   -0.3575035    0.4282879
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.1296372   -0.4558528    0.4796648
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0683633   -0.3070805    0.3359652
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                -0.1102292   -0.3723380    0.1018183
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0003479   -0.4403406    0.3062028
