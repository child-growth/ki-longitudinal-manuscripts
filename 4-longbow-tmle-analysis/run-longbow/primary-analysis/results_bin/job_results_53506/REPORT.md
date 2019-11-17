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

agecat        studyid                    country                        feducyrs    ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  --------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                    0       47     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                    1        7     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                     0       32     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                     1        8     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                  0       39     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                  1       16     149
0-24 months   ki0047075b-MAL-ED          INDIA                          High                    0       37     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High                    1        7     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                     0       44     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                     1       15     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                  0       36     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                  1        8     147
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                    0       39      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                    1        3      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                     0       26      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                     1        2      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                  0       24      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                  1        4      98
0-24 months   ki0047075b-MAL-ED          PERU                           High                    0       98     250
0-24 months   ki0047075b-MAL-ED          PERU                           High                    1       22     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low                     0       53     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low                     1       16     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                  0       49     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                  1       12     250
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                    0       35     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                    1        8     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                     0       30     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                     1        7     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                  0       20     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                  1       10     110
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                    0       64     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                    1       66     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                     0       28     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                     1       33     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                  0       12     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                  1        9     212
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                    0      284    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                    1      105    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                     0      388    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                     1      266    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                  0      353    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                  1      134    1530
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                    0       62     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                    1       48     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                     0       81     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                     1       66     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                  0       74     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                  1       87     418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                    0      210     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                    1       22     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                     0      192     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                     1       46     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                  0      203     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                  1       27     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                    0      267     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                    1       29     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                     0      210     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                     1       32     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                  0      182     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                  1       38     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    0      414    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    1       35    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     0     1130    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     1      140    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  0      602    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  1       62    2383
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                    0      135     696
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                    1       38     696
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                     0      217     696
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                     1       79     696
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                  0      175     696
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                  1       52     696
0-24 months   ki1119695-PROBIT           BELARUS                        High                    0     2634   16314
0-24 months   ki1119695-PROBIT           BELARUS                        High                    1       73   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Low                     0     6126   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Low                     1      292   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                  0     6930   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                  1      259   16314
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                    0      872   13694
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                    1      128   13694
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                     0     1838   13694
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                     1      474   13694
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                  0     8710   13694
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                  1     1672   13694
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                    0      128    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                    1      106    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                     0      294    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                     1      273    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                  0      237    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                  1      212    1250
0-24 months   ki1135781-COHORTS          INDIA                          High                    0      525    1447
0-24 months   ki1135781-COHORTS          INDIA                          High                    1       42    1447
0-24 months   ki1135781-COHORTS          INDIA                          Low                     0      397    1447
0-24 months   ki1135781-COHORTS          INDIA                          Low                     1       75    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium                  0      365    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium                  1       43    1447
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                    0      794    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                    1      237    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                     0      424    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                     1      404    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                  0      625    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                  1      396    2880
0-24 months   ki1148112-LCNI-5           MALAWI                         High                    0      199     813
0-24 months   ki1148112-LCNI-5           MALAWI                         High                    1       52     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                     0      226     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                     1       65     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                  0      219     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                  1       52     813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                    0     5711   26233
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                    1      793   26233
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                     0     8589   26233
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                     1     2196   26233
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                  0     7136   26233
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                  1     1808   26233
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                    0     1086    5276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                    1      161    5276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                     0     1469    5276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                     1      484    5276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                  0     1653    5276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                  1      423    5276
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                    0       50     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                    1        4     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                     0       38     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                     1        2     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                  0       49     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                  1        6     149
0-6 months    ki0047075b-MAL-ED          INDIA                          High                    0       44     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High                    1        0     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                     0       55     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                     1        4     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                  0       42     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                  1        2     147
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                    0       42      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                    1        0      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                     0       27      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                     1        1      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                  0       24      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                  1        4      98
0-6 months    ki0047075b-MAL-ED          PERU                           High                    0      107     250
0-6 months    ki0047075b-MAL-ED          PERU                           High                    1       13     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low                     0       62     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low                     1        7     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                  0       52     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                  1        9     250
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                    0       38     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                    1        5     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                     0       35     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                     1        2     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                  0       27     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                  1        3     110
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                    0      113     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                    1       17     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                     0       52     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                     1        9     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                  0       17     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                  1        4     212
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                    0      344    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                    1       45    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                     0      538    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                     1      115    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                  0      417    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                  1       68    1527
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                    0      102     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                    1        8     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                     0      128     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                     1       18     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                  0      136     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                  1       24     416
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                    0      223     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                    1        9     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                     0      222     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                     1       16     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                  0      224     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                  1        6     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                    0      284     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                    1       12     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                     0      227     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                     1       15     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                  0      200     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                  1       20     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    0      432    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                    1       17    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     0     1210    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                     1       60    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  0      638    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                  1       26    2383
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                    0      158     696
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                    1       15     696
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                     0      262     696
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                     1       34     696
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                  0      216     696
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                  1       11     696
0-6 months    ki1119695-PROBIT           BELARUS                        High                    0     2686   16310
0-6 months    ki1119695-PROBIT           BELARUS                        High                    1       21   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Low                     0     6308   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Low                     1      110   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                  0     7092   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                  1       93   16310
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                    0      919   13679
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                    1       79   13679
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                     0     2067   13679
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                     1      242   13679
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                  0     9460   13679
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                  1      912   13679
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                    0      174    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                    1       20    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                     0      405    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                     1       51    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                  0      335    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                  1       35    1020
0-6 months    ki1135781-COHORTS          INDIA                          High                    0      541    1421
0-6 months    ki1135781-COHORTS          INDIA                          High                    1       18    1421
0-6 months    ki1135781-COHORTS          INDIA                          Low                     0      440    1421
0-6 months    ki1135781-COHORTS          INDIA                          Low                     1       18    1421
0-6 months    ki1135781-COHORTS          INDIA                          Medium                  0      386    1421
0-6 months    ki1135781-COHORTS          INDIA                          Medium                  1       18    1421
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                    0      990    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                    1       41    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                     0      753    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                     1       75    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                  0      959    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                  1       62    2880
0-6 months    ki1148112-LCNI-5           MALAWI                         High                    0       69     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                    1        4     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                     0       94     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                     1       10     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                  0       85     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                  1        5     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                    0     5863   26171
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                    1      615   26171
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                     0     9013   26171
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                     1     1751   26171
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                  0     7472   26171
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                  1     1457   26171
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                    0     1097    4980
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                    1       84    4980
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                     0     1626    4980
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                     1      219    4980
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                  0     1755    4980
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                  1      199    4980


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/17c73fb4-e8a6-4890-b7b9-e6741eab3422/8c32e630-3915-40b5-a531-f7a5462ade26/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/17c73fb4-e8a6-4890-b7b9-e6741eab3422/8c32e630-3915-40b5-a531-f7a5462ade26/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/17c73fb4-e8a6-4890-b7b9-e6741eab3422/8c32e630-3915-40b5-a531-f7a5462ade26/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/17c73fb4-e8a6-4890-b7b9-e6741eab3422/8c32e630-3915-40b5-a531-f7a5462ade26/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1296296   0.0397383   0.2195209
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2000000   0.0756229   0.3243771
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2909091   0.1704725   0.4113457
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1590909   0.0506480   0.2675338
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.2542373   0.1427503   0.3657243
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.1818182   0.0674652   0.2961712
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.1804278   0.1123835   0.2484722
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.2249833   0.1274586   0.3225080
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.1875523   0.0885422   0.2865624
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1860465   0.0692022   0.3028908
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.1891892   0.0624128   0.3159655
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.3333333   0.1638745   0.5027922
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5076923   0.4215490   0.5938357
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.5409836   0.4156360   0.6663312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.4285714   0.2164143   0.6407286
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3271287   0.2582173   0.3960401
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3673677   0.3256281   0.4091073
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2763562   0.2278533   0.3248592
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.4443476   0.3526117   0.5360836
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4379943   0.3586402   0.5173484
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.5483641   0.4718469   0.6248814
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1048819   0.0671883   0.1425755
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1904898   0.1390740   0.2419056
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1116524   0.0695591   0.1537457
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1021438   0.0688516   0.1354360
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1300559   0.0880720   0.1720399
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1568120   0.1082013   0.2054227
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0788465   0.0544226   0.1032704
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1074965   0.0903053   0.1246878
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0989038   0.0763438   0.1214638
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2343905   0.1736357   0.2951453
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2467860   0.2002323   0.2933396
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2404084   0.1866541   0.2941626
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0285085   0.0192816   0.0377354
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0430202   0.0328456   0.0531947
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0368797   0.0285863   0.0451731
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1390930   0.1187885   0.1593975
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1889671   0.1729829   0.2049513
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1642396   0.1571363   0.1713429
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4555699   0.3892441   0.5218957
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4695270   0.4288867   0.5101672
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4968355   0.4498824   0.5437886
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0804256   0.0601621   0.1006891
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1403760   0.1095113   0.1712407
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1066225   0.0775767   0.1356683
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2632539   0.2377614   0.2887464
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4528407   0.4198359   0.4858454
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.3804869   0.3515959   0.4093780
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.2067235   0.1573556   0.2560913
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.2149891   0.1681412   0.2618370
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.1986171   0.1524609   0.2447733
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1689355   0.1600508   0.1778202
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1862349   0.1791937   0.1932761
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1895305   0.1813929   0.1976681
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1443091   0.1241506   0.1644677
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2336202   0.2131881   0.2540523
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2069432   0.1880260   0.2258604
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.1083333   0.0526135   0.1640532
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.1014493   0.0300671   0.1728314
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.1475410   0.0583653   0.2367167
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1456620   0.1105236   0.1808004
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1563331   0.1348382   0.1778281
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1410785   0.1073870   0.1747700
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.0727273   0.0241395   0.1213150
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1232877   0.0698949   0.1766805
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1500000   0.0946056   0.2053944
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0387931   0.0139274   0.0636588
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0672269   0.0353901   0.0990637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0260870   0.0054728   0.0467012
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0407953   0.0183190   0.0632715
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0597636   0.0294699   0.0900573
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0925661   0.0545487   0.1305835
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0383676   0.0205080   0.0562271
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0466436   0.0349958   0.0582914
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0402279   0.0253481   0.0551077
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0900433   0.0460886   0.1339980
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1199263   0.0832807   0.1565718
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.0449533   0.0175248   0.0723817
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0081175   0.0047022   0.0115328
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0167524   0.0114837   0.0220210
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0130758   0.0089093   0.0172422
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0870683   0.0725497   0.1015869
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0896480   0.0789495   0.1003464
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0904771   0.0850627   0.0958916
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1110625   0.0635589   0.1585661
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1043915   0.0757660   0.1330170
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0997624   0.0673760   0.1321487
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0304227   0.0165303   0.0443150
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0373917   0.0199333   0.0548502
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0444787   0.0242202   0.0647371
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0567343   0.0441887   0.0692799
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0706674   0.0546914   0.0866433
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0577155   0.0442785   0.0711525
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1350643   0.1275787   0.1425499
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1492605   0.1429339   0.1555872
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1504635   0.1437580   0.1571689
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0847150   0.0692525   0.1001775
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1054939   0.0922864   0.1187015
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1049984   0.0922530   0.1177438


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2080537   0.1426574   0.2734499
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2040816   0.1387072   0.2694561
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2000000   0.1503169   0.2496831
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2272727   0.1486005   0.3059450
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5094340   0.4419812   0.5768867
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3300654   0.3020915   0.3580392
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4808612   0.4329065   0.5288160
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1357143   0.1103250   0.1611036
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0994545   0.0874362   0.1114727
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2428161   0.2109378   0.2746944
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0382494   0.0300114   0.0464873
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1660581   0.1598251   0.1722911
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4728000   0.4451119   0.5004881
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1105736   0.0944098   0.1267374
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3600694   0.3425352   0.3776037
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2078721   0.1799617   0.2357825
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1828613   0.1771578   0.1885648
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2024261   0.1900868   0.2147654
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1160000   0.0762256   0.1557744
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1493124   0.1303783   0.1682465
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1201923   0.0889059   0.1514788
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0442857   0.0290345   0.0595370
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0620053   0.0448256   0.0791849
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0432228   0.0350563   0.0513894
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0862069   0.0653403   0.1070734
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0137339   0.0103297   0.0171381
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0901382   0.0853389   0.0949375
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1039216   0.0851851   0.1226580
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0380014   0.0280567   0.0479461
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0618056   0.0530095   0.0706016
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1460777   0.1409301   0.1512254
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1008032   0.0917342   0.1098723


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.5428571   0.6078543   3.916084
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              2.2441558   1.0006999   5.032713
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.5980630   0.7105469   3.594140
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.1428571   0.4520604   2.889265
0-24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  High              1.2469434   0.7006328   2.219233
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               High              1.0394866   0.5434795   1.988175
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.0168919   0.4058970   2.547614
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.7916667   0.7986258   4.019491
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0655738   0.7995761   1.420062
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              0.8441558   0.5002121   1.424594
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.1230066   0.8963942   1.406908
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.8447935   0.5955571   1.198334
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              0.9857019   0.7512232   1.293368
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.2340881   0.9635113   1.580649
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.8162313   1.1606424   2.842130
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.0645535   0.6331999   1.789757
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.2732635   0.8094835   2.002758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.5352088   0.9840814   2.394991
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.3633644   0.9627763   1.930627
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2543837   0.8550011   1.840323
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.0528838   0.7724366   1.435153
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0256744   0.7336756   1.433887
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.5090305   1.0970310   2.075760
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.2936410   1.0205387   1.639827
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.3585665   1.1499497   1.605029
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1807900   1.0165434   1.371574
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.0306365   0.8733022   1.216316
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0905802   0.9197324   1.293164
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.7454149   1.2631339   2.411837
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.3257287   0.9272371   1.895477
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.7201670   1.5275841   1.937029
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.4453231   1.2817865   1.629724
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.0399840   0.7555793   1.431440
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              0.9607863   0.6906532   1.336576
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1024024   1.0422841   1.165988
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1219106   1.0586779   1.188920
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.6188874   1.3777829   1.902184
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.4340275   1.2216092   1.683382
0-6 months    ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  High              0.9364549   0.3917148   2.238741
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               High              1.3619168   0.6158555   3.011773
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.0732594   0.8519662   1.352032
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9685335   0.7437801   1.261202
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.6952055   0.7646278   3.758328
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              2.0625000   0.9613303   4.425020
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.7329599   0.7810479   3.845026
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.6724638   0.2430958   1.860203
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.4649635   0.6940415   3.092204
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              2.2690402   1.1414313   4.510603
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2157028   0.7170019   2.061268
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0484871   0.5788617   1.899115
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3318735   0.7503751   2.364001
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.4992409   0.2288484   1.089112
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              2.0637321   1.3456629   3.164976
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.6108095   1.0197438   2.544470
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0296277   0.8434304   1.256930
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0391507   0.8761109   1.232531
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9399343   0.5658673   1.561279
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8982540   0.5255803   1.535180
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              1.2290756   0.6393970   2.362580
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.4620251   0.7665307   2.788561
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.2455844   0.9246299   1.677947
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.0172947   0.7528990   1.374538
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1051070   1.0435090   1.170341
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1140133   1.0519404   1.179749
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.2452804   1.0124765   1.531614
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2394309   1.0085824   1.523117


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0784241   -0.0021994   0.1590476
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0449907   -0.0498447   0.1398262
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0195722   -0.0314769   0.0706213
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0412262   -0.0545238   0.1369763
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0017417   -0.0518281   0.0553114
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0029366   -0.0621038   0.0679770
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0365136   -0.0420710   0.1150982
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0308324   -0.0026172   0.0642820
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0284631    0.0005990   0.0563271
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0206079   -0.0020477   0.0432636
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0084256   -0.0436955   0.0605466
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0097409    0.0030254   0.0164563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0269651    0.0073645   0.0465658
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0172301   -0.0429038   0.0773639
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0301480    0.0127003   0.0475958
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0968155    0.0754808   0.1181503
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0011486   -0.0395006   0.0417977
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0139258    0.0067207   0.0211309
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0581170    0.0401034   0.0761305
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0076667   -0.0336394   0.0489727
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0036504   -0.0201135   0.0274142
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0474650    0.0017362   0.0931939
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0054926   -0.0155087   0.0264940
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0212100    0.0011360   0.0412840
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0048552   -0.0114799   0.0211904
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0038364   -0.0418874   0.0342147
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0056164    0.0022559   0.0089769
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0030698   -0.0107344   0.0168741
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0071410   -0.0503378   0.0360559
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0075788   -0.0039620   0.0191195
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0050712   -0.0052191   0.0153616
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0110134    0.0052094   0.0168173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0160882    0.0029979   0.0291785


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.3769415   -0.1376520   0.6587692
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.2204545   -0.4090534   0.5687239
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0978609   -0.1958624   0.3194410
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1813953   -0.3655131   0.5092588
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0034188   -0.1074860   0.1032175
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0088971   -0.2090456   0.1875535
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0759338   -0.1029708   0.2258196
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2271861   -0.0563198   0.4346018
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.2179295   -0.0226530   0.4019142
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2072098   -0.0547704   0.4041203
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0346994   -0.2056798   0.2271536
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.2546677    0.0633868   0.4068841
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1623837    0.0357555   0.2723825
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0364427   -0.0995524   0.1556176
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2726512    0.1039073   0.4096188
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2688802    0.2077345   0.3253067
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0055255   -0.2105780   0.1830518
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0761550    0.0359922   0.1146445
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2871021    0.1935168   0.3698277
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0660920   -0.3666002   0.3617854
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0244479   -0.1497208   0.1722322
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.3949091   -0.1128652   0.6709979
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1240267   -0.5021944   0.4891945
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3420677   -0.0552905   0.5898050
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1123304   -0.3579338   0.4197380
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0445021   -0.5935049   0.3153554
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.4089443    0.1509764   0.5885310
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0340571   -0.1318642   0.1756558
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0687148   -0.5766270   0.2755729
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.1994334   -0.1634292   0.4491226
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0820516   -0.0989842   0.2332653
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0753940    0.0348961   0.1141925
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1596001    0.0192674   0.2798527
