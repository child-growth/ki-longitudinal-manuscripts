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

agecat        studyid                    country                        feducyrs    ever_sstunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  --------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                    0       47     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                    1        7     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                     0       32     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                     1        8     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                  0       40     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                  1       15     149
0-24 months   ki0047075b-MAL-ED          INDIA                          High                    0       38     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High                    1        6     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                     0       45     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                     1       14     147
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
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                    0       65     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                    1       65     212
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                     0      193     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                     1       45     700
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                    0      113     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                    1       34     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                     0      186     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                     1       71     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                  0      148     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                  1       49     601
0-24 months   ki1119695-PROBIT           BELARUS                        High                    0     2634   16314
0-24 months   ki1119695-PROBIT           BELARUS                        High                    1       73   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Low                     0     6126   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Low                     1      292   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                  0     6930   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                  1      259   16314
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                    0      879   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                    1      121   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                     0     1854   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                     1      457   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                  0     8784   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                  1     1598   13693
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                    0     5714   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                    1      791   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                     0     8602   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                     1     2190   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                  0     7147   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                  1     1797   26241
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                    0      313    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                    1       74    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                     0     1790    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                     1      447    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                  0      356    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                  1       98    3078
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
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                  0       25      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                  1        3      98
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
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                    0      114     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                    1       16     212
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                    0      137     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                    1       10     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                     0      232     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                     1       25     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                  0      190     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                  1        7     601
0-6 months    ki1119695-PROBIT           BELARUS                        High                    0     2686   16310
0-6 months    ki1119695-PROBIT           BELARUS                        High                    1       21   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Low                     0     6308   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Low                     1      110   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                  0     7092   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                  1       93   16310
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                    0      920   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                    1       78   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                     0     2066   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                     1      242   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                  0     9458   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                  1      909   13673
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                    0     5866   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                    1      613   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                     0     9026   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                     1     1745   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                  0     7485   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                  1     1444   26179
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                    0      323    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                    1       38    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                     0     1910    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                     1      206    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                  0      380    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                  1       50    2907


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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/be04d213-ab4f-46a0-acb1-463d54602238/5bcf54c6-5b05-4d32-beb9-dab13b8fb5e2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/be04d213-ab4f-46a0-acb1-463d54602238/5bcf54c6-5b05-4d32-beb9-dab13b8fb5e2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/be04d213-ab4f-46a0-acb1-463d54602238/5bcf54c6-5b05-4d32-beb9-dab13b8fb5e2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/be04d213-ab4f-46a0-acb1-463d54602238/5bcf54c6-5b05-4d32-beb9-dab13b8fb5e2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1296296   0.0397383   0.2195209
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2000000   0.0756229   0.3243771
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2727273   0.1546294   0.3908251
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1363636   0.0346173   0.2381100
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.2372881   0.1283644   0.3462119
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.1818182   0.0674652   0.2961712
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.1762267   0.1084157   0.2440376
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.2311171   0.1337102   0.3285239
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.1916660   0.0927513   0.2905806
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1860465   0.0692022   0.3028908
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.1891892   0.0624128   0.3159655
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.3333333   0.1638745   0.5027922
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5000000   0.4138465   0.5861535
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.5409836   0.4156360   0.6663312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.4285714   0.2164143   0.6407286
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3159882   0.2468321   0.3851443
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3784130   0.3346750   0.4221509
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2730022   0.2268588   0.3191457
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.4411227   0.3503948   0.5318506
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4319538   0.3521057   0.5118020
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.5393298   0.4638502   0.6148094
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1005940   0.0628274   0.1383606
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1811150   0.1319085   0.2303215
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1136300   0.0713718   0.1558882
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1042140   0.0710061   0.1374218
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1337149   0.0919681   0.1754617
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1628564   0.1136840   0.2120288
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0801366   0.0553758   0.1048974
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1074871   0.0903393   0.1246350
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0977811   0.0752083   0.1203539
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2269488   0.1588188   0.2950788
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2717246   0.2166031   0.3268461
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2570672   0.1933007   0.3208338
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0280108   0.0187801   0.0372415
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0435103   0.0328474   0.0541731
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0367605   0.0287267   0.0447943
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1301599   0.1106580   0.1496619
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1830094   0.1670260   0.1989928
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1574437   0.1504784   0.1644091
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4582402   0.3900936   0.5263868
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4723820   0.4314697   0.5132942
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4902553   0.4442417   0.5362689
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0816194   0.0612057   0.1020330
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1438517   0.1130053   0.1746980
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1033807   0.0744239   0.1323375
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2618075   0.2363858   0.2872293
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4504465   0.4174664   0.4834266
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.3802108   0.3510577   0.4093639
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.2086745   0.1595329   0.2578160
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.2193273   0.1723541   0.2663005
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.2024920   0.1562127   0.2487713
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1727487   0.1637531   0.1817443
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1823766   0.1755879   0.1891653
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1880041   0.1799489   0.1960594
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1810564   0.1442913   0.2178215
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2030050   0.1836515   0.2223586
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2095756   0.1671781   0.2519731
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.1083333   0.0526135   0.1640532
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.1014493   0.0300671   0.1728314
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.1475410   0.0583653   0.2367167
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1420740   0.1087450   0.1754031
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1596451   0.1383476   0.1809425
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1403300   0.1081699   0.1724901
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.0727273   0.0241395   0.1213150
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1232877   0.0698949   0.1766805
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1500000   0.0946056   0.2053944
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0387931   0.0139274   0.0636588
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0672269   0.0353901   0.0990637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0260870   0.0054728   0.0467012
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0414921   0.0188534   0.0641307
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0603837   0.0301575   0.0906098
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0926481   0.0544745   0.1308217
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0384286   0.0207293   0.0561279
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0465812   0.0349097   0.0582527
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0399477   0.0251659   0.0547295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0680272   0.0272897   0.1087647
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.0972763   0.0610166   0.1335359
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.0355330   0.0096606   0.0614054
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0080757   0.0046458   0.0115055
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0169454   0.0116625   0.0222283
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0129323   0.0087570   0.0171076
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0833086   0.0692122   0.0974050
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0911924   0.0804082   0.1019767
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0902987   0.0849083   0.0956890
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1179265   0.0685747   0.1672784
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1059200   0.0770454   0.1347945
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1011733   0.0688747   0.1334718
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0304640   0.0164891   0.0444388
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0371351   0.0197566   0.0545136
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0447602   0.0245190   0.0650015
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0571463   0.0445506   0.0697419
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0714552   0.0553887   0.0875217
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0569226   0.0435476   0.0702975
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1385616   0.1310165   0.1461067
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1457027   0.1397050   0.1517004
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1483651   0.1417622   0.1549680
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0936905   0.0685547   0.1188264
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1024719   0.0882813   0.1166625
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1006707   0.0727416   0.1285997


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2013423   0.1367374   0.2659471
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1904762   0.1267810   0.2541714
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2000000   0.1503169   0.2496831
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2272727   0.1486005   0.3059450
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5047170   0.4372552   0.5721787
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3300654   0.3020915   0.3580392
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4808612   0.4329065   0.5288160
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1342857   0.1090095   0.1595619
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1306069   0.1066024   0.1546113
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0994545   0.0874362   0.1114727
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2562396   0.2213085   0.2911707
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0382494   0.0300114   0.0464873
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1589133   0.1527896   0.1650370
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4728000   0.4451119   0.5004881
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1105736   0.0944098   0.1267374
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3600694   0.3425352   0.3776037
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.2078721   0.1799617   0.2357825
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1820815   0.1764045   0.1877585
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2011046   0.1842883   0.2179209
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.1160000   0.0762256   0.1557744
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1493124   0.1303783   0.1682465
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1201923   0.0889059   0.1514788
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0442857   0.0290345   0.0595370
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0620053   0.0448256   0.0791849
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0432228   0.0350563   0.0513894
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0698835   0.0494836   0.0902835
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0137339   0.0103297   0.0171381
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0898852   0.0850909   0.0946795
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1039216   0.0851851   0.1226580
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0380014   0.0280567   0.0479461
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0618056   0.0530095   0.0706016
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1452309   0.1401200   0.1503418
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1011352   0.0882687   0.1140017


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.5428571   0.6078543   3.916084
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              2.1038961   0.9289000   4.765183
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.7401130   0.7246362   4.178639
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.3333333   0.5024936   3.537911
0-24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  High              1.3114763   0.7374666   2.332268
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               High              1.0876105   0.5713654   2.070298
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.0168919   0.4058970   2.547614
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.7916667   0.7986258   4.019491
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0819672   0.8106100   1.444163
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              0.8571429   0.5074716   1.447754
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.1975540   0.9610792   1.492214
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.8639633   0.6059020   1.231936
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              0.9792147   0.7445847   1.287780
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.2226299   0.9568431   1.562246
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.8004546   1.1347633   2.856664
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.1295901   0.6671884   1.912464
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.2830804   0.8259729   1.993159
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.5627119   1.0134927   2.409557
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.3412992   0.9480885   1.897590
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2201807   0.8309468   1.791740
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.1972947   0.8332915   1.720304
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1327101   0.7672805   1.672181
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.5533405   1.1194951   2.155317
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.3123707   1.0134743   1.699418
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.4060348   1.1845629   1.668914
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.2096175   1.0374515   1.410355
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.0308610   0.8708863   1.220222
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0698653   0.9004209   1.271196
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.7624696   1.2823964   2.422261
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.2666197   0.8824189   1.818099
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.7205254   1.5273054   1.938190
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.4522531   1.2870080   1.638715
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.0510500   0.7668482   1.440580
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              0.9703726   0.7010726   1.343118
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0557339   1.0010782   1.113374
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0883102   1.0273019   1.152942
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.1212254   0.9021020   1.393575
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1575158   0.8753404   1.530654
0-6 months    ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  High              0.9364549   0.3917148   2.238741
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               High              1.3619168   0.6158555   3.011773
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.1236753   0.8947359   1.411194
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9877244   0.7513059   1.298538
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.6952055   0.7646278   3.758328
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              2.0625000   0.9613303   4.425020
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.7329599   0.7810479   3.845026
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.6724638   0.2430958   1.860203
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.4553056   0.6950162   3.047288
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              2.2329107   1.1274962   4.422090
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2121495   0.7176206   2.047469
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0395303   0.5761638   1.875549
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.4299611   0.7062919   2.895104
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.5223350   0.2034788   1.340847
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              2.0983276   1.3658339   3.223656
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.6013918   1.0078264   2.544541
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0946344   0.8955874   1.337920
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0839057   0.9119065   1.288347
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8981861   0.5455640   1.478723
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8579346   0.5071801   1.451263
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              1.2189847   0.6328146   2.348118
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.4692834   0.7709073   2.800329
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.2503915   0.9294539   1.682148
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9960856   0.7360690   1.347953
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0515374   0.9963872   1.109740
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0707523   1.0131597   1.131619
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0937277   0.8304151   1.440533
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.0745021   0.7506660   1.538041


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0717127   -0.0082702   0.1516956
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0541126   -0.0365080   0.1447331
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0237733   -0.0274402   0.0749869
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0412262   -0.0545238   0.1369763
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0047170   -0.0488604   0.0582944
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0140771   -0.0504419   0.0785961
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0397385   -0.0378139   0.1172910
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0336917    0.0001431   0.0672402
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0263929   -0.0013702   0.0541560
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0193179   -0.0036408   0.0422765
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0292908   -0.0310239   0.0896055
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0102386    0.0031881   0.0172891
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0287534    0.0099323   0.0475744
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0145598   -0.0473810   0.0765006
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0289542    0.0114113   0.0464972
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0982619    0.0769709   0.1195529
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0008024   -0.0412970   0.0396922
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0093328    0.0022219   0.0164437
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0200482   -0.0145275   0.0546239
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0076667   -0.0336394   0.0489727
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0072383   -0.0154292   0.0299059
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0474650    0.0017362   0.0931939
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0054926   -0.0155087   0.0264940
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0205132    0.0002944   0.0407320
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0047942   -0.0113966   0.0209850
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0018563   -0.0336947   0.0374073
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0056582    0.0023027   0.0090138
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0065766   -0.0068166   0.0199698
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0140050   -0.0588018   0.0307919
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0075374   -0.0040556   0.0191305
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0046593   -0.0056926   0.0150112
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0066693    0.0010249   0.0123138
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0074447   -0.0151161   0.0300055


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.3561728   -0.1725639   0.6464897
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.2840909   -0.3792017   0.6283895
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.1188666   -0.1767411   0.3402151
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1813953   -0.3655131   0.5092588
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0093458   -0.1027120   0.1100162
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0426495   -0.1740516   0.2193529
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0826404   -0.0938254   0.2306371
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2508955   -0.0386818   0.4597406
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.2020790   -0.0368196   0.3859319
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1942385   -0.0713483   0.3939864
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1143101   -0.1549465   0.3207940
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.2676800    0.0672776   0.4250245
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1809375    0.0536722   0.2910877
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0307948   -0.1095194   0.1533643
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2618548    0.0919828   0.3999471
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2728971    0.2118891   0.3291825
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0038601   -0.2188536   0.1732108
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0512562    0.0113926   0.0895124
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0996906   -0.0888964   0.2556160
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                 0.0660920   -0.3666002   0.3617854
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0484779   -0.1182548   0.1903506
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.3949091   -0.1128652   0.6709979
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1240267   -0.5021944   0.4891945
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3308299   -0.0689935   0.5811119
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1109190   -0.3539497   0.4161785
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0265630   -0.6415258   0.4227446
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.4119907    0.1534711   0.5915616
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0731665   -0.0884128   0.2107587
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1347648   -0.6584893   0.2235758
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.1983456   -0.1668104   0.4492252
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0753861   -0.1068149   0.2275937
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0459223    0.0062501   0.0840107
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0736112   -0.1779879   0.2714727
