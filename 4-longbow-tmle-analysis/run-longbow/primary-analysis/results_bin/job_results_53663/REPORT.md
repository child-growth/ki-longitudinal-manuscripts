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




# Results Detail

## Results Plots
![](/tmp/a84ec6a2-0754-42ab-8fb7-1243b61e6aad/7168a050-1e2e-479d-8c78-29cdbac03ada/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a84ec6a2-0754-42ab-8fb7-1243b61e6aad/7168a050-1e2e-479d-8c78-29cdbac03ada/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a84ec6a2-0754-42ab-8fb7-1243b61e6aad/7168a050-1e2e-479d-8c78-29cdbac03ada/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a84ec6a2-0754-42ab-8fb7-1243b61e6aad/7168a050-1e2e-479d-8c78-29cdbac03ada/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.4136245   0.3455805   0.4816685
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3664898   0.3147710   0.4182085
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3817296   0.3170685   0.4463907
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.6106248   0.4990122   0.7222374
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.5390076   0.4542008   0.6238143
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.6111074   0.5037344   0.7184803
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.6117629   0.5124141   0.7111118
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.6358179   0.5527774   0.7188584
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.6128957   0.5159606   0.7098308
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5930273   0.4928354   0.6932192
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6335073   0.5815720   0.6854425
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.6345866   0.5690000   0.7001731
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4970812   0.4076034   0.5865590
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5258449   0.4573571   0.5943327
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5758206   0.5085345   0.6431068
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.8667953   0.8406649   0.8929257
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.8494073   0.8325904   0.8662241
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.8643012   0.8490644   0.8795381
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.5786981   0.5182330   0.6391632
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.5327090   0.4963870   0.5690309
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.5443649   0.5256764   0.5630534
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4821400   0.3782106   0.5860695
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4508890   0.3772245   0.5245534
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.3971244   0.3129126   0.4813361
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2603958   0.1953700   0.3254215
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1837358   0.1288860   0.2385857
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3320757   0.2594288   0.4047226
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.6449899   0.6002173   0.6897626
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.5815503   0.5376372   0.6254635
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6019097   0.5588505   0.6449689
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4491348   0.4260693   0.4722002
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4059707   0.3890441   0.4228973
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4212632   0.4023615   0.4401649
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2531400   0.2110383   0.2952418
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2606320   0.2316895   0.2895744
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2577277   0.2284139   0.2870415
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.5519326   0.4419928   0.6618725
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4715435   0.3928395   0.5502475
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.5570585   0.4608264   0.6532905
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.7792290   0.6649921   0.8934658
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.7766821   0.6772926   0.8760716
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.7952980   0.6969850   0.8936109
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.6582420   0.5309480   0.7855360
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.7116874   0.6455345   0.7778404
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.7033046   0.6114486   0.7951606
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.6256940   0.5102083   0.7411796
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5806387   0.4814399   0.6798374
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6196268   0.5171427   0.7221110
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.8842482   0.8587828   0.9097136
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.8808758   0.8648119   0.8969397
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.8893411   0.8748269   0.9038554
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.7908860   0.7392772   0.8424949
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.7421547   0.7036139   0.7806954
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.7435237   0.7240403   0.7630070
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7954545   0.6753723   0.9155368
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7840909   0.6974785   0.8707033
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.6811594   0.5723603   0.7899585
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.3663127   0.2863818   0.4462436
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.3348818   0.2435858   0.4261777
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.4878773   0.3931164   0.5826383
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.7383024   0.6858826   0.7907222
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7550968   0.6907750   0.8194187
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7268554   0.6704797   0.7832310
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.7258024   0.6987488   0.7528560
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.6567160   0.6348743   0.6785577
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.6740894   0.6498765   0.6983023
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.4839165   0.3982636   0.5695695
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.5586895   0.4986032   0.6187758
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.5788172   0.5218554   0.6357790
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.6000000   0.3097494   0.8902506
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5925926   0.3610568   0.8241284
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4666667   0.2318706   0.7014628
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3380692   0.2521374   0.4240010
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2781829   0.2154078   0.3409579
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2518808   0.1736442   0.3301173
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2962963   0.1169057   0.4756869
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2857143   0.1712528   0.4001757
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2424242   0.0930082   0.3918403
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5322117   0.3894058   0.6750177
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.5587904   0.4873854   0.6301954
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.5672160   0.4751711   0.6592608
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3824020   0.2650768   0.4997271
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5019864   0.4168088   0.5871640
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5466324   0.4576140   0.6356507
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.2272727   0.0505503   0.4039952
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2191781   0.1256550   0.3127012
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2571429   0.1538174   0.3604683
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5536452   0.4872415   0.6200489
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4689551   0.4101038   0.5278064
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.5106604   0.4530054   0.5683154
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1566026   0.1136825   0.1995228
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1518805   0.1233159   0.1804451
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1442248   0.1170095   0.1714402


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              0.8860446   0.7146270   1.0985801
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9228892   0.7307507   1.1655472
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.8827149   0.6935391   1.1234920
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.0007903   0.7768732   1.2892468
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.0393208   0.8449363   1.2784251
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.0018516   0.8014582   1.2523505
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0682599   0.8853468   1.2889630
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0700799   0.8778427   1.3044148
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.0578653   0.8472006   1.3209138
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1584036   0.9344935   1.4359639
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              0.9799399   0.9453518   1.0157934
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              0.9971227   0.9630860   1.0323623
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              0.9205300   0.8143593   1.0405425
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9406716   0.8447202   1.0475222
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9351826   0.7228502   1.2098864
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8236702   0.6167209   1.1000642
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              0.7056022   0.4791028   1.0391811
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.2752730   0.9158440   1.7757623
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.9016424   0.8138666   0.9988849
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9332079   0.8448683   1.0307844
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              0.9038950   0.8475760   0.9639562
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              0.9379438   0.8776451   1.0023853
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0295961   0.8472668   1.2511621
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.0181231   0.8367693   1.2387817
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              0.8543497   0.6585097   1.1084323
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.0092871   0.7765678   1.3117468
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.9967316   0.8197809   1.2118773
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.0206217   0.8426275   1.2362148
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0811943   0.8721811   1.3402961
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0684591   0.8455865   1.3500745
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.9279914   0.7215335   1.1935247
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.9903033   0.7727606   1.2690873
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              0.9961862   0.9628651   1.0306604
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0057596   0.9731103   1.0395044
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              0.9383839   0.8645114   1.0185688
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9401148   0.8775687   1.0071187
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9857143   0.8175465   1.1884739
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8563147   0.6873624   1.0667951
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              0.9141964   0.6460599   1.2936186
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.3318602   0.9952118   1.7823861
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.0227473   0.9156034   1.1424292
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9844955   0.8867074   1.0930678
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              0.9048137   0.8608692   0.9510014
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              0.9287505   0.8820893   0.9778800
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.1545162   0.9475311   1.4067167
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1961095   0.9865258   1.4502185
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              0.9876543   0.5300611   1.8402804
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.7777778   0.3863737   1.5656816
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              0.8228579   0.5858200   1.1558075
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.7450569   0.4986327   1.1132637
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.9642857   0.4665574   1.9929956
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.8181818   0.3447972   1.9414933
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0499399   0.7793317   1.4145118
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0657712   0.7791366   1.4578551
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3127192   0.9249774   1.8629986
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.4294706   1.0106912   2.0217710
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              0.9643836   0.3972348   2.3412745
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.1314286   0.4715246   2.7148757
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.8470318   0.7121173   1.0075066
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9223604   0.7822106   1.0876209
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.9698463   0.6954893   1.3524318
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.9209604   0.6601828   1.2847474


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0187793   -0.2243504    0.1867917
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.1178440   -0.2885817    0.0528938
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0313804   -0.0903157    0.0275550
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0294559   -0.1251925    0.0662806
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0108177   -0.0657108    0.0873462
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0342582   -0.0568505    0.1253670
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0427004   -0.0345053    0.1199061
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0067390   -0.0307766    0.0172986
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0361449   -0.0943101    0.0220202
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0380059   -0.1273304    0.0513185
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.0043661   -0.0551021    0.0463699
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0357142   -0.0725204    0.0010919
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0260578   -0.0460119   -0.0061038
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0049728   -0.0314357    0.0413813
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0372268   -0.1342113    0.0597578
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0045548   -0.0915059    0.1006156
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0446992   -0.0711570    0.1605554
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0211312   -0.1188180    0.0765555
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0009018   -0.0224614    0.0242650
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0449000   -0.0946752    0.0048751
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0442108   -0.1522742    0.0638527
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0291027   -0.0333418    0.0915473
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0019008   -0.0389123    0.0427139
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0490281   -0.0732179   -0.0248383
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0722632    0.0004923    0.1440342
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0385965   -0.2887294    0.2115364
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0514450   -0.1253629    0.0224729
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0198735   -0.1770318    0.1372847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0257397   -0.1040242    0.1555036
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1123070    0.0074688    0.2171452
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0090909   -0.1555312    0.1737130
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0463006   -0.1034342    0.0108331
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0068409   -0.0446954    0.0310136


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0289855   -0.4001352    0.2437793
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.1839080   -0.4851250    0.0562153
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0820951   -0.2481805    0.0618907
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0506840   -0.2290719    0.1018127
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0173756   -0.1137995    0.1331019
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0546135   -0.1026002    0.1894109
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0791069   -0.0760613    0.2118998
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0078356   -0.0361761    0.0197298
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0666201   -0.1794284    0.0353985
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0855731   -0.3068643    0.0982468
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.0170530   -0.2356513    0.1628732
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0586175   -0.1208254    0.0001377
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0615913   -0.1098294   -0.0154498
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0192660   -0.1325184    0.1507077
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0723263   -0.2786685    0.1007180
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0058113   -0.1246419    0.1211326
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0635888   -0.1168573    0.2148810
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0349529   -0.2097925    0.1146188
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0010188   -0.0257278    0.0270679
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0601888   -0.1291705    0.0045787
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0588501   -0.2133559    0.0759813
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0736004   -0.0986591    0.2188513
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0025679   -0.0541227    0.0562097
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0724438   -0.1089061   -0.0371805
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1299278   -0.0103745    0.2507476
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0687500   -0.6222290    0.2958907
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.1794858   -0.4685547    0.0526831
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0718954   -0.8212752    0.3691454
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0461326   -0.2176267    0.2527569
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.2270163   -0.0181063    0.4131224
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0384615   -0.9840988    0.5340171
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0912606   -0.2102011    0.0159903
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0456785   -0.3312312    0.1786223
