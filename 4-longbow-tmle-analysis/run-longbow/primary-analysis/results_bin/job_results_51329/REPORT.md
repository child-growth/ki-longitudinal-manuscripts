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

agecat        studyid                    country                        feducyrs    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ---------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0        6     70
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1       12     70
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0        9     70
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       18     70
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0       10     70
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1       15     70
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  0        7    103
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       21    103
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       16    103
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       31    103
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       15    103
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       13    103
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0        2     34
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1        9     34
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0        2     34
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1        9     34
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0        4     34
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1        8     34
0-24 months   ki0047075b-MAL-ED          PERU                           High                  0        2     25
0-24 months   ki0047075b-MAL-ED          PERU                           High                  1        8     25
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   0        1     25
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   1        3     25
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                0        1     25
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                1       10     25
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        2     28
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        7     28
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0        3     28
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        8     28
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        1     28
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        7     28
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        2     33
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1       17     33
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        4     33
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        9     33
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        0     33
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        1     33
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0       30    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       49    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0       62    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       72    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0       36    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       58    307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0       35    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       71    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0       46    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       72    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0       36    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       51    311
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       46    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       67    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0      140    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      241    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0       79    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      138    711
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       68    559
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       52    559
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      117    559
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      125    559
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       82    559
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1      115    559
0-24 months   ki1119695-PROBIT           BELARUS                        High                  0       95   4266
0-24 months   ki1119695-PROBIT           BELARUS                        High                  1      557   4266
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   0      247   4266
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   1     1454   4266
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                0      255   4266
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                1     1658   4266
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0       84   3438
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1      141   3438
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      318   3438
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      312   3438
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     1167   3438
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1     1416   3438
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0      905   7284
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1      798   7284
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     1847   7284
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1241   7284
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     1449   7284
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     1044   7284
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0      101   1151
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1       36   1151
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      623   1151
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      224   1151
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0      128   1151
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       39   1151
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  0        2     34
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  1        7     34
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   0        2     34
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   1       10     34
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                0        3     34
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                1       10     34
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  0        1     46
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  1       12     46
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   0        5     46
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   1       15     46
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                0        6     46
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                1        7     46
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  0        2     16
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  1        6     16
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   0        1     16
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   1        5     16
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                0        1     16
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                1        1     16
0-6 months    ki0047075b-MAL-ED          PERU                           High                  0        0      7
0-6 months    ki0047075b-MAL-ED          PERU                           High                  1        2      7
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   0        0      7
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   1        2      7
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                0        0      7
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                1        3      7
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        1      8
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        3      8
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0        1      8
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        2      8
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        0      8
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        1      8
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        1      9
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        4      9
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        0      9
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        3      9
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        0      9
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        1      9
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  0       11    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  1       41    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   0       17    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   1       55    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                0       11    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                1       49    184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  0       11    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       69    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0        7    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       63    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0        3    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       45    198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0       19    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       36    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0       53    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      132    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0       29    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1       71    340
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  0       19    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  1       20    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   0       31    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   1       40    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                0       25    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                1       45    180
0-6 months    ki1119695-PROBIT           BELARUS                        High                  0       78   4101
0-6 months    ki1119695-PROBIT           BELARUS                        High                  1      552   4101
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   0      190   4101
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   1     1438   4101
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                0      203   4101
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                1     1640   4101
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  0       34   2427
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  1      138   2427
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      110   2427
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      295   2427
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0      483   2427
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1     1367   2427
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  0      310   4555
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  1      798   4555
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   0      664   4555
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1241   4555
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                0      498   4555
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     1044   4555
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  0       15    305
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  1       21    305
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      102    305
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      124    305
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       17    305
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       26    305
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
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0        9     57
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1        6     57
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0        0     18
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1        3     18
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0        1     18
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1        4     18
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0        3     18
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1        7     18
6-24 months   ki0047075b-MAL-ED          PERU                           High                  0        2     18
6-24 months   ki0047075b-MAL-ED          PERU                           High                  1        6     18
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   0        1     18
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   1        1     18
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                0        1     18
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                1        7     18
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0        1     20
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        4     20
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0        2     20
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        6     20
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0        1     20
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        6     20
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0        1     24
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1       13     24
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0        4     24
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        6     24
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0        0     24
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        0     24
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       17    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0       25    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1        9    123
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       49    379
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       32    379
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0       86    379
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1       85    379
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       57    379
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       70    379
6-24 months   ki1119695-PROBIT           BELARUS                        High                  0       17    165
6-24 months   ki1119695-PROBIT           BELARUS                        High                  1        5    165
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   0       57    165
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   1       16    165
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                0       52    165
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                1       18    165
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0       50   1011
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1        3   1011
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0      208   1011
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1       17   1011
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0      684   1011
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1       49   1011
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
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0       86    846
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1       15    846
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      521    846
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      100    846
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0      111    846
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       13    846


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
![](/tmp/b8bf8a4c-3980-4986-9208-8c45601a95db/e0a0ae8a-a5d0-4dbd-ada8-2a66c094989e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b8bf8a4c-3980-4986-9208-8c45601a95db/e0a0ae8a-a5d0-4dbd-ada8-2a66c094989e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b8bf8a4c-3980-4986-9208-8c45601a95db/e0a0ae8a-a5d0-4dbd-ada8-2a66c094989e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b8bf8a4c-3980-4986-9208-8c45601a95db/e0a0ae8a-a5d0-4dbd-ada8-2a66c094989e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.6666667   0.4269601   0.9063732
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.6666667   0.5025048   0.8308285
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.6000000   0.3938977   0.8061023
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.7500000   0.5458782   0.9541218
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.6595745   0.5113855   0.8077634
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4642857   0.2805212   0.6480502
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.4235539   0.3539596   0.4931481
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3604159   0.3085821   0.4122498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3865092   0.3212399   0.4517786
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.6163871   0.5040662   0.7287079
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.5491391   0.4692806   0.6289975
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.6003118   0.5016374   0.6989862
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.6392254   0.5398348   0.7386160
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.6303821   0.5473616   0.7134026
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.5917197   0.4953836   0.6880558
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5925014   0.4909959   0.6940068
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.6355077   0.5836145   0.6874008
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.6383571   0.5729170   0.7037972
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4272037   0.3301932   0.5242142
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5188881   0.4455665   0.5922098
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5792715   0.5104683   0.6480746
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.8669126   0.8401238   0.8937014
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.8507101   0.8341652   0.8672550
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.8643421   0.8491480   0.8795362
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.5814666   0.5225219   0.6404113
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.5218077   0.4855576   0.5580578
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.5485259   0.5297315   0.5673202
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4916256   0.3860215   0.5972297
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4527565   0.3781101   0.5274029
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4113508   0.3243855   0.4983161
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2597474   0.1947707   0.3247240
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1851479   0.1299893   0.2403065
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3346669   0.2615844   0.4077495
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.6409971   0.5967482   0.6852459
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.5844356   0.5402705   0.6286007
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.5998922   0.5562151   0.6435694
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4497456   0.4269168   0.4725744
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4102337   0.3934784   0.4269890
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4201535   0.4017419   0.4385651
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2705869   0.1965716   0.3446022
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2632735   0.2334984   0.2930486
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2284269   0.1658079   0.2910459
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.5613074   0.4488553   0.6737596
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4663665   0.3876841   0.5450490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.5611283   0.4626087   0.6596479
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.7828692   0.6674973   0.8982411
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.7707890   0.6716185   0.8699596
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.8216504   0.7254198   0.9178810
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.6154302   0.4854273   0.7454331
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.7092918   0.6432606   0.7753231
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.6992322   0.6079630   0.7905014
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5020571   0.3328171   0.6712971
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5613632   0.4445094   0.6782170
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6413644   0.5270079   0.7557209
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.8870383   0.8615217   0.9125549
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.8790112   0.8629751   0.8950473
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.8885830   0.8741254   0.9030407
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.7844808   0.7330907   0.8358708
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.7338204   0.6931151   0.7745257
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.7411029   0.7214681   0.7607378
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7954545   0.6753723   0.9155368
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7840909   0.6974785   0.8707033
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.6811594   0.5723603   0.7899585
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.3683869   0.2884028   0.4483710
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.3329814   0.2417905   0.4241723
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.4872943   0.3919662   0.5826224
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.7356653   0.6831744   0.7881563
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7585032   0.6946632   0.8223433
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7291319   0.6731974   0.7850663
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.7222503   0.6951397   0.7493608
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.6567210   0.6349993   0.6784428
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.6675588   0.6434038   0.6917139
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.6094782   0.4565676   0.7623888
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.5479657   0.4830362   0.6128951
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.5949492   0.4407730   0.7491253
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.6000000   0.3097494   0.8902506
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5925926   0.3610568   0.8241284
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4000000   0.1868580   0.6131420
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3436526   0.2600786   0.4272265
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2788000   0.2165695   0.3410304
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2453364   0.1667304   0.3239425
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2962963   0.1169057   0.4756869
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2741935   0.1576971   0.3906900
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2647059   0.1193576   0.4100542
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.5037489   0.3581862   0.6493116
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.5561275   0.4850093   0.6272456
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.5654167   0.4733369   0.6574965
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4125127   0.2974278   0.5275976
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5029206   0.4166059   0.5892352
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5608307   0.4708790   0.6507825
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.2272727   0.0505503   0.4039952
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2191781   0.1256550   0.3127012
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2571429   0.1538174   0.3604683
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5541890   0.4879950   0.6203831
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4704720   0.4116852   0.5292589
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.5097093   0.4524359   0.5669826
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1545308   0.0810575   0.2280041
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1615748   0.1327537   0.1903960
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1075949   0.0506863   0.1645035


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6428571   0.5282860   0.7574282
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6310680   0.5256054   0.7365305
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3822441   0.3470990   0.4173892
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6272855   0.5895954   0.6649756
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5223614   0.4773383   0.5673845
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8600563   0.8497279   0.8703846
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5436300   0.5268423   0.5604178
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4441341   0.3908676   0.4974005
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2560297   0.2186976   0.2933617
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6092757   0.5839352   0.6346162
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4232565   0.4119131   0.4345998
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2597741   0.2335880   0.2859602
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5147059   0.4610948   0.5683169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7029412   0.6536517   0.7522307
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5833333   0.5108676   0.6557991
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8851500   0.8753163   0.8949836
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7416564   0.7242528   0.7590599
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7512438   0.6914852   0.8110023
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3954155   0.3440450   0.4467860
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7402032   0.7074271   0.7729793
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6768386   0.6632567   0.6904206
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5606557   0.5048650   0.6164465
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5438596   0.3951895   0.6925298
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2866242   0.2446853   0.3285631
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5579515   0.5056058   0.6102972
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4934037   0.4386266   0.5481808
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2363636   0.1715730   0.3011543
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5073446   0.4725123   0.5421770
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1513002   0.1269239   0.1756766


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.0000000   0.6465372   1.5467015
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              0.9000000   0.5471431   1.4804171
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              0.8794326   0.6179291   1.2516028
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.6190476   0.3826504   1.0014883
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              0.8509329   0.6847425   1.0574587
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9125385   0.7225633   1.1524618
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.8908997   0.7089668   1.1195198
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.9739202   0.7653568   1.2393182
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              0.9861655   0.8056693   1.2070988
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9256823   0.7414413   1.1557055
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0725843   0.8872708   1.2966019
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0773934   0.8825493   1.3152541
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2146153   0.9293336   1.5874711
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.3559609   1.0496265   1.7516991
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              0.9813101   0.9462652   1.0176529
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              0.9970348   0.9623634   1.0329554
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              0.8973992   0.7952836   1.0126267
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9433488   0.8495791   1.0474681
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9209376   0.7099639   1.1946046
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8367156   0.6261616   1.1180709
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              0.7127998   0.4839161   1.0499417
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.2884324   0.9248991   1.7948531
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.9117601   0.8233904   1.0096139
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9358735   0.8468794   1.0342196
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              0.9121462   0.8564059   0.9715144
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              0.9342027   0.8755001   0.9968413
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.9729720   0.7268394   1.3024536
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.8441905   0.5761473   1.2369364
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              0.8308576   0.6395238   1.0794348
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9996808   0.7658673   1.3048759
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.9845694   0.8091631   1.1979994
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.0495373   0.8693289   1.2671023
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1525138   0.9142904   1.4528077
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1361681   0.8862916   1.4564935
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.1181262   0.7518400   1.6628620
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.2774730   0.8716025   1.8723412
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              0.9909507   0.9578431   1.0252027
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0017415   0.9693006   1.0352680
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              0.9354217   0.8594303   1.0181325
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9447050   0.8814222   1.0125313
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9857143   0.8175465   1.1884739
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8563147   0.6873624   1.0667951
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              0.9038905   0.6390460   1.2784963
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.3227787   0.9871163   1.7725809
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.0310439   0.9236918   1.1508725
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9911190   0.8930413   1.0999679
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              0.9092708   0.8651849   0.9556031
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              0.9242764   0.8776403   0.9733906
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.8990735   0.6828128   1.1838282
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.9761615   0.6805496   1.4001790
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              0.9876543   0.5300611   1.8402804
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.6666667   0.3234894   1.3739072
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              0.8112845   0.5842119   1.1266161
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.7139083   0.4778411   1.0665995
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.9254032   0.4416757   1.9389139
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.8933824   0.3944468   2.0234211
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1039775   0.8046321   1.5146878
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1224177   0.8049768   1.5650407
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2191638   0.8783764   1.6921680
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.3595478   0.9839995   1.8784259
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              0.9643836   0.3972348   2.3412745
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.1314286   0.4715246   2.7148757
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.8489379   0.7142160   1.0090722
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9197390   0.7804913   1.0838300
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0455834   0.6292438   1.7373945
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.6962684   0.3417113   1.4187110


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0238095   -0.2265022    0.1788831
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.1189320   -0.2936260    0.0557619
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0413097   -0.1017847    0.0191652
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0333252   -0.1276485    0.0609981
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0154312   -0.0920732    0.0612108
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0347841   -0.0575216    0.1270899
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0951577    0.0086603    0.1816551
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0068564   -0.0315109    0.0177982
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0378366   -0.0944753    0.0188021
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0474915   -0.1385791    0.0435961
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.0037177   -0.0544885    0.0470530
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0317214   -0.0680257    0.0045830
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0264891   -0.0461533   -0.0068249
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0108128   -0.0795739    0.0579484
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0466016   -0.1455590    0.0523559
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0051743   -0.0917358    0.1020844
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0875110   -0.0311232    0.2061451
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0812762   -0.0681454    0.2306979
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.0018883   -0.0253051    0.0215285
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0428244   -0.0925608    0.0069120
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0442108   -0.1522742    0.0638527
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0270286   -0.0355241    0.0895813
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0045379   -0.0361643    0.0452400
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0454116   -0.0695820   -0.0212413
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0488225   -0.1929906    0.0953456
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0561404   -0.3070550    0.1947743
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0570284   -0.1287941    0.0147374
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0198735   -0.1770318    0.1372847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0542026   -0.0783324    0.1867375
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0808910   -0.0223011    0.1840831
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0090909   -0.1555312    0.1737130
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0468444   -0.1037711    0.0100823
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0032306   -0.0718481    0.0653869


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0370370   -0.4049867    0.2345509
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.1884615   -0.5024086    0.0598823
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.1080716   -0.2786254    0.0397324
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0571555   -0.2317739    0.0927088
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0247377   -0.1549733    0.0908125
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0554518   -0.1040275    0.1918940
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1821683   -0.0020448    0.3325162
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0079720   -0.0370493    0.0202900
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0695999   -0.1790726    0.0297086
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1069305   -0.3327038    0.0805945
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.0145206   -0.2333713    0.1654970
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0520640   -0.1134142    0.0059057
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0625841   -0.1100828   -0.0171177
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0416237   -0.3429371    0.1920843
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0905402   -0.3010876    0.0859355
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0065660   -0.1243706    0.1222547
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1244926   -0.0622721    0.2784210
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1393307   -0.1609479    0.3619424
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                -0.0021333   -0.0289404    0.0239754
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0577416   -0.1271020    0.0073505
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0588501   -0.2133559    0.0759813
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0683549   -0.1041071    0.2138782
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0061306   -0.0504102    0.0596279
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0670937   -0.1035062   -0.0318827
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0870810   -0.3777187    0.1422450
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.1032258   -0.6778110    0.2745862
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.1989656   -0.4790443    0.0280761
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0718954   -0.8212752    0.3691454
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0971457   -0.1755520    0.3065845
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1639449   -0.0738630    0.3490900
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0384615   -0.9840988    0.5340171
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0923325   -0.2108291    0.0145676
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0213520   -0.5921437    0.3448079
