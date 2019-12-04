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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        feducyrs    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ---------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0        6     71
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1       12     71
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0        9     71
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       19     71
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0       10     71
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1       15     71
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  0        7    103
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       22    103
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       16    103
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       30    103
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       14    103
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       14    103
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0        2     37
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1       10     37
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0        2     37
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       10     37
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0        4     37
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1        9     37
0-24 months   ki0047075b-MAL-ED          PERU                           High                  0        2     26
0-24 months   ki0047075b-MAL-ED          PERU                           High                  1        9     26
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   0        1     26
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   1        3     26
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                0        1     26
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                1       10     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        2     29
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        7     29
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0        3     29
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        9     29
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        1     29
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        7     29
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        3     36
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1       17     36
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        4     36
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1       11     36
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        0     36
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        1     36
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0      113    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1       87    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      242    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1      131    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      146    811
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1       92    811
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       52    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        6    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0       80    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1        2    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       89    234
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        5    234
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0       30    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       49    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0       62    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       73    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0       37    308
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       57    308
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0       35    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       70    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0       46    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       72    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0       36    310
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       51    310
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       46    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       67    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0      140    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      241    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0       79    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      138    711
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       77    641
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       79    641
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      127    641
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      141    641
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       91    641
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1      126    641
0-24 months   ki1119695-PROBIT           BELARUS                        High                  0       95   4266
0-24 months   ki1119695-PROBIT           BELARUS                        High                  1      557   4266
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   0      247   4266
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   1     1454   4266
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                0      255   4266
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                1     1658   4266
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0       84   3478
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1      141   3478
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      318   3478
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      318   3478
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     1189   3478
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1     1428   3478
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0       37    358
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1       38    358
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0       88    358
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1       71    358
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0       74    358
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1       50    358
0-24 months   ki1135781-COHORTS          INDIA                          High                  0      143    539
0-24 months   ki1135781-COHORTS          INDIA                          High                  1       50    539
0-24 months   ki1135781-COHORTS          INDIA                          Low                   0      152    539
0-24 months   ki1135781-COHORTS          INDIA                          Low                   1       34    539
0-24 months   ki1135781-COHORTS          INDIA                          Medium                0      106    539
0-24 months   ki1135781-COHORTS          INDIA                          Medium                1       54    539
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      174   1574
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      336   1574
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      214   1574
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      281   1574
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      227   1574
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      342   1574
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  0       13     77
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  1        4     77
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0       25     77
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1        5     77
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0       26     77
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1        4     77
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0      905   7280
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1      797   7280
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     1846   7280
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1242   7280
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     1449   7280
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     1041   7280
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0      300   2003
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1      113   2003
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      589   2003
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      203   2003
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0      597   2003
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1      201   2003
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  0        2     35
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  1        7     35
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   0        2     35
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   1       11     35
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                0        3     35
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                1       10     35
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  0        1     46
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  1       13     46
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   0        5     46
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   1       14     46
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                0        6     46
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                1        7     46
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  0        2     19
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  1        7     19
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   0        1     19
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   1        6     19
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                0        1     19
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                1        2     19
0-6 months    ki0047075b-MAL-ED          PERU                           High                  0        0      7
0-6 months    ki0047075b-MAL-ED          PERU                           High                  1        2      7
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   0        0      7
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   1        2      7
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                0        0      7
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                1        3      7
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        1      9
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        3      9
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0        1      9
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        3      9
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        0      9
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        1      9
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        1     10
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        4     10
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        0     10
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        4     10
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        0     10
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        1     10
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  0       35    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  1       44    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   0       83    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   1       72    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                0       47    340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                1       59    340
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       17     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0       26     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1        0     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       35     78
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        0     78
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  0       11    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  1       41    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   0       17    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   1       55    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                0       12    185
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                1       49    185
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  0       11    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       68    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0        7    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       63    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0        3    197
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       45    197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       19    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       36    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       53    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      132    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0       29    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1       71    340
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  0       28    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  1       47    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   0       41    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   1       56    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                0       35    263
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                1       56    263
0-6 months    ki1119695-PROBIT           BELARUS                        High                  0       78   4101
0-6 months    ki1119695-PROBIT           BELARUS                        High                  1      552   4101
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   0      190   4101
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   1     1438   4101
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                0      203   4101
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                1     1640   4101
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  0       34   2429
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  1      138   2429
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      105   2429
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      301   2429
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0      478   2429
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1     1373   2429
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  0        9    201
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  1       35    201
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   0       19    201
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   1       69    201
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                0       22    201
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                1       47    201
0-6 months    ki1135781-COHORTS          INDIA                          High                  0       88    349
0-6 months    ki1135781-COHORTS          INDIA                          High                  1       50    349
0-6 months    ki1135781-COHORTS          INDIA                          Low                   0       67    349
0-6 months    ki1135781-COHORTS          INDIA                          Low                   1       34    349
0-6 months    ki1135781-COHORTS          INDIA                          Medium                0       56    349
0-6 months    ki1135781-COHORTS          INDIA                          Medium                1       54    349
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  0       69    689
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  1      202    689
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   0       47    689
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   1      135    689
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                0       63    689
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                1      173    689
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  0        1      4
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                0        3      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  0      310   4551
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  1      797   4551
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   0      663   4551
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1242   4551
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                0      498   4551
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     1041   4551
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  0       52    534
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  1       67    534
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   0       92    534
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      114    534
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       93    534
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                1      116    534
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0        4     36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1        5     36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0        7     36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1        8     36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0        7     36
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1        5     36
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  0        6     57
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  1        9     57
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       11     57
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       16     57
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0        8     57
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1        7     57
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0        0     18
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1        3     18
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0        1     18
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1        4     18
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0        3     18
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1        7     18
6-24 months   ki0047075b-MAL-ED          PERU                           High                  0        2     19
6-24 months   ki0047075b-MAL-ED          PERU                           High                  1        7     19
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   0        1     19
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   1        1     19
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                0        1     19
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                1        7     19
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        1     20
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        4     20
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0        2     20
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        6     20
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        1     20
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        6     20
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        2     26
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1       13     26
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        4     26
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        7     26
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        0     26
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        0     26
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0       78    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1       43    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      159    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1       59    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0       99    471
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1       33    471
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       35    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        6    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0       54    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1        2    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       54    156
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1        5    156
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0       19    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1        8    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0       45    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       18    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0       25    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1        8    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0       24    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1        2    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0       39    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1        9    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0       33    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1        6    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       27    371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       31    371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       87    371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      109    371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0       50    371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1       67    371
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       49    378
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       32    378
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0       86    378
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1       85    378
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       56    378
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       70    378
6-24 months   ki1119695-PROBIT           BELARUS                        High                  0       17    165
6-24 months   ki1119695-PROBIT           BELARUS                        High                  1        5    165
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   0       57    165
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   1       16    165
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                0       52    165
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                1       18    165
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0       50   1049
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1        3   1049
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      213   1049
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1       17   1049
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0      711   1049
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1       55   1049
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0       28    157
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1        3    157
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0       69    157
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1        2    157
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0       52    157
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1        3    157
6-24 months   ki1135781-COHORTS          INDIA                          High                  0       55    190
6-24 months   ki1135781-COHORTS          INDIA                          High                  1        0    190
6-24 months   ki1135781-COHORTS          INDIA                          Low                   0       85    190
6-24 months   ki1135781-COHORTS          INDIA                          Low                   1        0    190
6-24 months   ki1135781-COHORTS          INDIA                          Medium                0       50    190
6-24 months   ki1135781-COHORTS          INDIA                          Medium                1        0    190
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      105    885
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      134    885
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      167    885
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      146    885
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      164    885
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      169    885
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  0       12     73
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  1        4     73
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0       25     73
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1        5     73
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0       23     73
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1        4     73
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0      595   2729
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1        0   2729
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     1183   2729
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1        0   2729
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0      951   2729
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1        0   2729
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0      248   1469
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1       46   1469
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      497   1469
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1       89   1469
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0      504   1469
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       85   1469


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
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/cc75e27c-3a4e-414e-83dd-65ec7e9852d1/05fe8516-1bb4-43fd-b611-89f2a2a852d8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/cc75e27c-3a4e-414e-83dd-65ec7e9852d1/05fe8516-1bb4-43fd-b611-89f2a2a852d8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/cc75e27c-3a4e-414e-83dd-65ec7e9852d1/05fe8516-1bb4-43fd-b611-89f2a2a852d8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cc75e27c-3a4e-414e-83dd-65ec7e9852d1/05fe8516-1bb4-43fd-b611-89f2a2a852d8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.6666667   0.4235357   0.9097976
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.6785714   0.5198822   0.8372607
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.6000000   0.3909534   0.8090466
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.7586207   0.5584813   0.9587601
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6521739   0.5001446   0.8042032
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.5000000   0.3092033   0.6907967
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.4350000   0.3640111   0.5059889
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3512064   0.2998071   0.4026058
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3865546   0.3218333   0.4512760
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.6202532   0.5057481   0.7347583
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.5407407   0.4584564   0.6230251
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.6063830   0.5018667   0.7108993
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.6666667   0.5651059   0.7682275
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.6101695   0.5275227   0.6928163
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.5862069   0.4874612   0.6849526
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5929204   0.4934969   0.6923438
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6325459   0.5806938   0.6843981
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.6359447   0.5705844   0.7013050
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5064103   0.4178863   0.5949342
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5261194   0.4575918   0.5946470
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5806452   0.5136526   0.6476378
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.8542945   0.8275205   0.8810685
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.8547913   0.8382654   0.8713172
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.8667015   0.8514965   0.8819065
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.6266667   0.5625758   0.6907575
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.5000000   0.4614867   0.5385133
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.5456630   0.5263330   0.5649929
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.5066667   0.3899457   0.6233876
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4465409   0.3687163   0.5243655
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4032258   0.3103728   0.4960788
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2590674   0.1941456   0.3239891
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1827957   0.1272808   0.2383106
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3375000   0.2656934   0.4093066
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.6588235   0.6141932   0.7034539
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.5676768   0.5238158   0.6115377
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6010545   0.5582859   0.6438231
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4682726   0.4444148   0.4921304
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4022021   0.3849331   0.4194711
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4180723   0.3987961   0.4373485
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2736077   0.2289270   0.3182885
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2563131   0.2257283   0.2868980
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2518797   0.2205550   0.2832044
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.5569620   0.4474760   0.6664480
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4645161   0.3860312   0.5430011
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.5566038   0.4593861   0.6538214
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.7884615   0.6746916   0.9022315
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.7638889   0.6655774   0.8622004
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.8032787   0.7109592   0.8955982
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.6545455   0.5266604   0.7824305
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.7135135   0.6475222   0.7795048
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.7100000   0.6196220   0.8003780
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.6266667   0.5148611   0.7384722
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5773196   0.4787674   0.6758718
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6153846   0.5148723   0.7158970
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.8761905   0.8502103   0.9021706
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.8832924   0.8676013   0.8989835
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.8898535   0.8754414   0.9042656
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.8023256   0.7438615   0.8607896
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.7413793   0.6986015   0.7841571
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.7417612   0.7218350   0.7616874
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7954545   0.6753723   0.9155368
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7840909   0.6974785   0.8707033
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.6811594   0.5723603   0.7899585
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.3623188   0.2820071   0.4426306
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.3366337   0.2443413   0.4289261
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.4909091   0.3973528   0.5844654
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.7453875   0.6932121   0.7975628
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7417582   0.6767793   0.8067371
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7330508   0.6777806   0.7883211
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.7199639   0.6935312   0.7463965
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.6519685   0.6305661   0.6733709
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.6764133   0.6530450   0.6997815
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.5630252   0.4738234   0.6522270
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.5533981   0.4854463   0.6213498
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.5550239   0.4875857   0.6224622
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.6000000   0.3097494   0.8902506
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5925926   0.3610568   0.8241284
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4666667   0.2318706   0.7014628
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3553719   0.2706658   0.4400780
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2706422   0.2092416   0.3320428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2500000   0.1732494   0.3267506
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2962963   0.1169057   0.4756869
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2857143   0.1712528   0.4001757
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2424242   0.0930082   0.3918403
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5344828   0.3927498   0.6762157
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.5561224   0.4851419   0.6271030
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.5726496   0.4806281   0.6646711
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3950617   0.2811325   0.5089910
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.4970760   0.4116192   0.5825328
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5555556   0.4661395   0.6449716
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.2272727   0.0505503   0.4039952
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2191781   0.1256550   0.3127012
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2571429   0.1538174   0.3604683
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5606695   0.4948404   0.6264986
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4664537   0.4077002   0.5252071
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.5075075   0.4504283   0.5645867
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1564626   0.1139038   0.1990214
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1518771   0.1233366   0.1804176
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1443124   0.1171621   0.1714626


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6478873   0.5336007   0.7621739
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6407767   0.5352377   0.7463157
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3822441   0.3470990   0.4173892
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5811688   0.5245443   0.6377934
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6225806   0.5684562   0.6767051
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6272855   0.5895954   0.6649756
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5397816   0.4973714   0.5821918
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8600563   0.8497279   0.8703846
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5425532   0.5258421   0.5592643
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4441341   0.3908676   0.4974005
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2560297   0.2186976   0.2933617
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6092757   0.5839352   0.6346162
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4230769   0.4117323   0.4344216
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2581128   0.2384369   0.2777888
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5147059   0.4610948   0.5683169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7837838   0.7252863   0.8422812
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7029412   0.6536517   0.7522307
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6045627   0.5449300   0.6641955
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8851500   0.8753163   0.8949836
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7459860   0.7286870   0.7632850
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7512438   0.6914852   0.8110023
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3954155   0.3440450   0.4467860
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7402032   0.7074271   0.7729793
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6767743   0.6631857   0.6903630
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5561798   0.5140008   0.5983587
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5614035   0.4130317   0.7097753
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2866242   0.2446853   0.3285631
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5579515   0.5056058   0.6102972
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4947090   0.4399319   0.5494861
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2363636   0.1715730   0.3011543
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5073446   0.4725123   0.5421770
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1497617   0.1318544   0.1676691


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.0178571   0.6597795   1.5702719
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              0.9000000   0.5432668   1.4909800
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              0.8596838   0.6045511   1.2224875
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.6590909   0.4141553   1.0488839
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              0.8073711   0.6484480   1.0052435
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.8886313   0.7033667   1.1226940
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.8718065   0.6862517   1.1075333
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.9776379   0.7592503   1.2588416
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              0.9152542   0.7463097   1.1224432
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.8793103   0.7005034   1.1037587
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0668312   0.8851883   1.2857477
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0725635   0.8810672   1.3056806
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.0389193   0.8354603   1.2919266
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1465904   0.9299731   1.4136642
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.0005816   0.9644058   1.0381143
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.0145231   0.9787312   1.0516240
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              0.7978723   0.7019815   0.9068619
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.8707388   0.7814104   0.9702789
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8813307   0.6601913   1.1765436
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.7958404   0.5745804   1.1023034
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              0.7055914   0.4759417   1.0460509
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.3027500   0.9377634   1.8097930
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.8616522   0.7774917   0.9549229
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9123148   0.8269359   1.0065089
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              0.8589058   0.8035440   0.9180819
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              0.8927968   0.8335095   0.9563011
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.9367905   0.7652587   1.1467709
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.9205869   0.7497537   1.1303448
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              0.8340176   0.6435728   1.0808185
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9993568   0.7682739   1.2999452
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.9688347   0.7985077   1.1754935
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.0187925   0.8471717   1.2251804
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0900901   0.8781779   1.3531386
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0847222   0.8590996   1.3695995
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.9212547   0.7196835   1.1792825
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.9819967   0.7710106   1.2507190
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.0081054   0.9738552   1.0435603
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0155937   0.9818538   1.0504930
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              0.9240380   0.8420222   1.0140424
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9245140   0.8554314   0.9991755
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9857143   0.8175465   1.1884739
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8563147   0.6873624   1.0667951
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              0.9291089   0.6530581   1.3218478
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.3549091   1.0114760   1.8149502
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.9951311   0.8895734   1.1132144
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9834494   0.8873012   1.0900163
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              0.9055573   0.8620392   0.9512722
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              0.9395100   0.8933209   0.9880873
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.9829010   0.8043728   1.2010531
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.9857888   0.8073692   1.2036371
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              0.9876543   0.5300611   1.8402804
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.7777778   0.3863737   1.5656816
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              0.7615746   0.5480254   1.0583375
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.7034884   0.4769347   1.0376597
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.9642857   0.4665574   1.9929956
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.8181818   0.3447972   1.9414933
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0404872   0.7752193   1.3965255
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0714089   0.7857586   1.4609028
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2582237   0.8993257   1.7603488
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.4062500   1.0105874   1.9568214
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              0.9643836   0.3972348   2.3412745
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.1314286   0.4715246   2.7148757
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.8319584   0.7003647   0.9882777
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9051813   0.7693487   1.0649958
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.9706930   0.6974287   1.3510268
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.9223444   0.6626097   1.2838918


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0187793   -0.2243504    0.1867917
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.1178440   -0.2885817    0.0528938
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0527559   -0.1143052    0.0087935
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0390843   -0.1369234    0.0587547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0440860   -0.1231324    0.0349603
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0343652   -0.0559935    0.1247239
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0333713   -0.0429395    0.1096822
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0057618   -0.0188242    0.0303478
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0841135   -0.1461804   -0.0220465
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0625326   -0.1661852    0.0411200
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.0030377   -0.0539303    0.0478550
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0495478   -0.0861475   -0.0129481
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0451957   -0.0659711   -0.0244203
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0154949   -0.0549917    0.0240018
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0422561   -0.1386702    0.0541579
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0046778   -0.1000148    0.0906593
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0483957   -0.0677344    0.1645259
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0221039   -0.1165867    0.0723788
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0089595   -0.0147950    0.0327139
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0563396   -0.1131956    0.0005164
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0442108   -0.1522742    0.0638527
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0330966   -0.0300545    0.0962477
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0051843   -0.0458655    0.0354969
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0431895   -0.0665009   -0.0198781
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0068454   -0.0855199    0.0718290
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0385965   -0.2887294    0.2115364
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0687477   -0.1411886    0.0036932
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0198735   -0.1770318    0.1372847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0234687   -0.1051561    0.1520936
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0996473   -0.0022547    0.2015493
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0090909   -0.1555312    0.1737130
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0533248   -0.1099921    0.0033425
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0067008   -0.0442108    0.0308091


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0289855   -0.4001352    0.2437793
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.1839080   -0.4851250    0.0562153
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.1380161   -0.3115071    0.0125248
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0672513   -0.2495233    0.0884322
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0708117   -0.2048565    0.0483200
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0547839   -0.1010312    0.1885485
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0618238   -0.0910414    0.1932711
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0066993   -0.0223036    0.0348794
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.1550327   -0.2754582   -0.0459774
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1407966   -0.4004340    0.0707045
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.0118645   -0.2313902    0.1685253
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0813225   -0.1431741   -0.0228173
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.1068262   -0.1570682   -0.0587658
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0600316   -0.2245603    0.0823915
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0820976   -0.2870182    0.0901952
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0059682   -0.1352460    0.1085879
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0688475   -0.1122258    0.2204415
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0365618   -0.2052831    0.1085410
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0101220   -0.0170854    0.0366016
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0755236   -0.1546352   -0.0018325
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0588501   -0.2133559    0.0759813
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0837009   -0.0908583    0.2303271
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0070038   -0.0634926    0.0464844
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0638167   -0.0989112   -0.0298430
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0123080   -0.1641284    0.1197128
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0687500   -0.6222290    0.2958907
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.2398531   -0.5219844   -0.0100207
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0718954   -0.8212752    0.3691454
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0420623   -0.2189154    0.2471630
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.2014260   -0.0340787    0.3832961
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0384615   -0.9840988    0.5340171
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1051057   -0.2230804    0.0014895
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0447434   -0.3274298    0.1777428
