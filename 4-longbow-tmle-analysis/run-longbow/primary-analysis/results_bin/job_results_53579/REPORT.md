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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        feducyrs    wasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High             0       40     119
Birth       ki0047075b-MAL-ED          BANGLADESH                     High             1        4     119
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low              0       25     119
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low              1        8     119
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium           0       35     119
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium           1        7     119
Birth       ki0047075b-MAL-ED          INDIA                          High             0        6      23
Birth       ki0047075b-MAL-ED          INDIA                          High             1        1      23
Birth       ki0047075b-MAL-ED          INDIA                          Low              0       11      23
Birth       ki0047075b-MAL-ED          INDIA                          Low              1        2      23
Birth       ki0047075b-MAL-ED          INDIA                          Medium           0        3      23
Birth       ki0047075b-MAL-ED          INDIA                          Medium           1        0      23
Birth       ki0047075b-MAL-ED          NEPAL                          High             0        2       9
Birth       ki0047075b-MAL-ED          NEPAL                          High             1        1       9
Birth       ki0047075b-MAL-ED          NEPAL                          Low              0        3       9
Birth       ki0047075b-MAL-ED          NEPAL                          Low              1        0       9
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           0        3       9
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           1        0       9
Birth       ki0047075b-MAL-ED          PERU                           High             0       83     190
Birth       ki0047075b-MAL-ED          PERU                           High             1        1     190
Birth       ki0047075b-MAL-ED          PERU                           Low              0       55     190
Birth       ki0047075b-MAL-ED          PERU                           Low              1        1     190
Birth       ki0047075b-MAL-ED          PERU                           Medium           0       48     190
Birth       ki0047075b-MAL-ED          PERU                           Medium           1        2     190
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       10      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        0      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0       13      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        1      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0        9      33
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        0      33
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0       62      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        0      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       25      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        1      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0        8      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        0      96
Birth       ki1000304b-SAS-CompFeed    INDIA                          High             0      244    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          High             1       26    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low              0      421    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low              1       55    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium           0      318    1101
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium           1       37    1101
Birth       ki1017093b-PROVIDE         BANGLADESH                     High             0      131     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     High             1       30     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low              0      142     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low              1       43     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium           0      142     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium           1       44     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             0      211     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             1       66     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low              0      168     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low              1       61     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0      156     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1       45     707
Birth       ki1113344-GMS-Nepal        NEPAL                          High             0      118     640
Birth       ki1113344-GMS-Nepal        NEPAL                          High             1       44     640
Birth       ki1113344-GMS-Nepal        NEPAL                          Low              0      223     640
Birth       ki1113344-GMS-Nepal        NEPAL                          Low              1       43     640
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium           0      167     640
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium           1       45     640
Birth       ki1119695-PROBIT           BELARUS                        High             0     1651   13364
Birth       ki1119695-PROBIT           BELARUS                        High             1      400   13364
Birth       ki1119695-PROBIT           BELARUS                        Low              0     4190   13364
Birth       ki1119695-PROBIT           BELARUS                        Low              1     1107   13364
Birth       ki1119695-PROBIT           BELARUS                        Medium           0     4746   13364
Birth       ki1119695-PROBIT           BELARUS                        Medium           1     1270   13364
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High             0      759   12573
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High             1      155   12573
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low              0     1779   12573
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low              1      312   12573
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0     8051   12573
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1     1517   12573
Birth       ki1135781-COHORTS          GUATEMALA                      High             0       95     718
Birth       ki1135781-COHORTS          GUATEMALA                      High             1       41     718
Birth       ki1135781-COHORTS          GUATEMALA                      Low              0      232     718
Birth       ki1135781-COHORTS          GUATEMALA                      Low              1       79     718
Birth       ki1135781-COHORTS          GUATEMALA                      Medium           0      210     718
Birth       ki1135781-COHORTS          GUATEMALA                      Medium           1       61     718
Birth       ki1135781-COHORTS          INDIA                          High             0      418    1291
Birth       ki1135781-COHORTS          INDIA                          High             1       89    1291
Birth       ki1135781-COHORTS          INDIA                          Low              0      359    1291
Birth       ki1135781-COHORTS          INDIA                          Low              1       55    1291
Birth       ki1135781-COHORTS          INDIA                          Medium           0      293    1291
Birth       ki1135781-COHORTS          INDIA                          Medium           1       77    1291
Birth       ki1135781-COHORTS          PHILIPPINES                    High             0      818    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    High             1      176    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Low              0      673    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Low              1      100    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium           0      826    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium           1      135    2728
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High             0     3606   17367
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High             1      443   17367
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low              0     6633   17367
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low              1      819   17367
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     5234   17367
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      632   17367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             0      457    2323
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             1       53    2323
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low              0      820    2323
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low              1       93    2323
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           0      814    2323
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           1       86    2323
6 months    ki0047075b-MAL-ED          BANGLADESH                     High             0       49     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     High             1        1     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low              0       35     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low              1        1     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium           0       43     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium           1        3     132
6 months    ki0047075b-MAL-ED          INDIA                          High             0       42     138
6 months    ki0047075b-MAL-ED          INDIA                          High             1        1     138
6 months    ki0047075b-MAL-ED          INDIA                          Low              0       51     138
6 months    ki0047075b-MAL-ED          INDIA                          Low              1        3     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium           0       34     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium           1        7     138
6 months    ki0047075b-MAL-ED          NEPAL                          High             0       40      95
6 months    ki0047075b-MAL-ED          NEPAL                          High             1        0      95
6 months    ki0047075b-MAL-ED          NEPAL                          Low              0       27      95
6 months    ki0047075b-MAL-ED          NEPAL                          Low              1        0      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium           0       27      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium           1        1      95
6 months    ki0047075b-MAL-ED          PERU                           High             0      107     224
6 months    ki0047075b-MAL-ED          PERU                           High             1        0     224
6 months    ki0047075b-MAL-ED          PERU                           Low              0       60     224
6 months    ki0047075b-MAL-ED          PERU                           Low              1        0     224
6 months    ki0047075b-MAL-ED          PERU                           Medium           0       57     224
6 months    ki0047075b-MAL-ED          PERU                           Medium           1        0     224
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       33      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        0      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0       32      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        3      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       24      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        0      92
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0      126     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        1     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       55     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        0     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0       19     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        0     201
6 months    ki1000304b-SAS-CompFeed    INDIA                          High             0      311    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          High             1       38    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low              0      476    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low              1       72    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium           0      379    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium           1       55    1331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High             0       82     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High             1       19     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low              0      115     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low              1       17     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium           0      114     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium           1       33     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     High             0      201     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     High             1        8     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low              0      197     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low              1       11     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium           0      180     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium           1        6     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High             0      274     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High             1        5     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low              0      213     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low              1       10     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0      207     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0      358    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1       13    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0     1038    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       44    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0      534    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1       30    2017
6 months    ki1113344-GMS-Nepal        NEPAL                          High             0      125     563
6 months    ki1113344-GMS-Nepal        NEPAL                          High             1       12     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low              0      216     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low              1       27     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium           0      171     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium           1       12     563
6 months    ki1119695-PROBIT           BELARUS                        High             0     2494   15208
6 months    ki1119695-PROBIT           BELARUS                        High             1       18   15208
6 months    ki1119695-PROBIT           BELARUS                        Low              0     5900   15208
6 months    ki1119695-PROBIT           BELARUS                        Low              1       58   15208
6 months    ki1119695-PROBIT           BELARUS                        Medium           0     6686   15208
6 months    ki1119695-PROBIT           BELARUS                        Medium           1       52   15208
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High             0      552    8266
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High             1       17    8266
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low              0     1364    8266
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low              1       69    8266
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0     6096    8266
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1      168    8266
6 months    ki1135781-COHORTS          GUATEMALA                      High             0      160     905
6 months    ki1135781-COHORTS          GUATEMALA                      High             1        5     905
6 months    ki1135781-COHORTS          GUATEMALA                      Low              0      394     905
6 months    ki1135781-COHORTS          GUATEMALA                      Low              1       12     905
6 months    ki1135781-COHORTS          GUATEMALA                      Medium           0      322     905
6 months    ki1135781-COHORTS          GUATEMALA                      Medium           1       12     905
6 months    ki1135781-COHORTS          INDIA                          High             0      483    1385
6 months    ki1135781-COHORTS          INDIA                          High             1       61    1385
6 months    ki1135781-COHORTS          INDIA                          Low              0      399    1385
6 months    ki1135781-COHORTS          INDIA                          Low              1       51    1385
6 months    ki1135781-COHORTS          INDIA                          Medium           0      344    1385
6 months    ki1135781-COHORTS          INDIA                          Medium           1       47    1385
6 months    ki1135781-COHORTS          PHILIPPINES                    High             0      843    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    High             1       49    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Low              0      699    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Low              1       45    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium           0      871    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium           1       55    2562
6 months    ki1148112-LCNI-5           MALAWI                         High             0      248     812
6 months    ki1148112-LCNI-5           MALAWI                         High             1        3     812
6 months    ki1148112-LCNI-5           MALAWI                         Low              0      285     812
6 months    ki1148112-LCNI-5           MALAWI                         Low              1        5     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium           0      265     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium           1        6     812
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High             0     3956   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High             1      315   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low              0     5711   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low              1      580   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     5077   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      466   16105
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High             0     1055    4690
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High             1       43    4690
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low              0     1611    4690
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low              1      115    4690
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium           0     1758    4690
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium           1      108    4690
24 months   ki0047075b-MAL-ED          BANGLADESH                     High             0       37     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     High             1        3     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low              0       30     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low              1        5     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium           0       35     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium           1        7     117
24 months   ki0047075b-MAL-ED          INDIA                          High             0       41     132
24 months   ki0047075b-MAL-ED          INDIA                          High             1        1     132
24 months   ki0047075b-MAL-ED          INDIA                          Low              0       47     132
24 months   ki0047075b-MAL-ED          INDIA                          Low              1        4     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium           0       32     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium           1        7     132
24 months   ki0047075b-MAL-ED          NEPAL                          High             0       37      91
24 months   ki0047075b-MAL-ED          NEPAL                          High             1        1      91
24 months   ki0047075b-MAL-ED          NEPAL                          Low              0       26      91
24 months   ki0047075b-MAL-ED          NEPAL                          Low              1        1      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium           0       24      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium           1        2      91
24 months   ki0047075b-MAL-ED          PERU                           High             0       75     164
24 months   ki0047075b-MAL-ED          PERU                           High             1        2     164
24 months   ki0047075b-MAL-ED          PERU                           Low              0       44     164
24 months   ki0047075b-MAL-ED          PERU                           Low              1        0     164
24 months   ki0047075b-MAL-ED          PERU                           Medium           0       42     164
24 months   ki0047075b-MAL-ED          PERU                           Medium           1        1     164
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       34      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        0      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0       33      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        1      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       23      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        0      91
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0      113     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        1     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       45     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        2     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0       16     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        0     177
24 months   ki1017093b-PROVIDE         BANGLADESH                     High             0      187     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     High             1       15     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low              0      171     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low              1       27     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium           0      159     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium           1       20     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High             0      195     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High             1       16     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low              0      127     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low              1       17     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0      147     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1       12     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High             0       86     486
24 months   ki1113344-GMS-Nepal        NEPAL                          High             1       27     486
24 months   ki1113344-GMS-Nepal        NEPAL                          Low              0      182     486
24 months   ki1113344-GMS-Nepal        NEPAL                          Low              1       36     486
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium           0      128     486
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium           1       27     486
24 months   ki1119695-PROBIT           BELARUS                        High             0      612    3853
24 months   ki1119695-PROBIT           BELARUS                        High             1        8    3853
24 months   ki1119695-PROBIT           BELARUS                        Low              0     1474    3853
24 months   ki1119695-PROBIT           BELARUS                        Low              1       15    3853
24 months   ki1119695-PROBIT           BELARUS                        Medium           0     1724    3853
24 months   ki1119695-PROBIT           BELARUS                        Medium           1       20    3853
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High             0       11     410
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High             1        2     410
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low              0       76     410
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low              1       27     410
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0      246     410
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1       48     410
24 months   ki1135781-COHORTS          GUATEMALA                      High             0      170    1002
24 months   ki1135781-COHORTS          GUATEMALA                      High             1        8    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Low              0      446    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Low              1       19    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Medium           0      341    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Medium           1       18    1002
24 months   ki1135781-COHORTS          INDIA                          High             0      504    1370
24 months   ki1135781-COHORTS          INDIA                          High             1       32    1370
24 months   ki1135781-COHORTS          INDIA                          Low              0      393    1370
24 months   ki1135781-COHORTS          INDIA                          Low              1       55    1370
24 months   ki1135781-COHORTS          INDIA                          Medium           0      353    1370
24 months   ki1135781-COHORTS          INDIA                          Medium           1       33    1370
24 months   ki1135781-COHORTS          PHILIPPINES                    High             0      769    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    High             1       29    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Low              0      642    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Low              1       51    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium           0      753    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium           1       75    2319
24 months   ki1148112-LCNI-5           MALAWI                         High             0      168     555
24 months   ki1148112-LCNI-5           MALAWI                         High             1        2     555
24 months   ki1148112-LCNI-5           MALAWI                         Low              0      189     555
24 months   ki1148112-LCNI-5           MALAWI                         Low              1        5     555
24 months   ki1148112-LCNI-5           MALAWI                         Medium           0      188     555
24 months   ki1148112-LCNI-5           MALAWI                         Medium           1        3     555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High             0     1642    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High             1      413    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low              0     2606    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low              1      765    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     2208    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      630    8264
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High             0      884    4602
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High             1      208    4602
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low              0     1372    4602
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low              1      322    4602
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium           0     1454    4602
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium           1      362    4602


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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




# Results Detail

## Results Plots
![](/tmp/0d879b43-c41d-4ad8-b4d8-9a65c9ee6c82/3cf2422d-a40f-4ac8-8186-8202cfc481cc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0d879b43-c41d-4ad8-b4d8-9a65c9ee6c82/3cf2422d-a40f-4ac8-8186-8202cfc481cc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0d879b43-c41d-4ad8-b4d8-9a65c9ee6c82/3cf2422d-a40f-4ac8-8186-8202cfc481cc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0d879b43-c41d-4ad8-b4d8-9a65c9ee6c82/3cf2422d-a40f-4ac8-8186-8202cfc481cc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0963579   0.0623878   0.1303280
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1156361   0.0771350   0.1541373
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1041317   0.0588957   0.1493676
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1977582   0.1362155   0.2593008
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2251870   0.1639764   0.2863975
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2365384   0.1745623   0.2985145
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2307765   0.1825924   0.2789606
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2847880   0.2275860   0.3419900
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2179368   0.1621980   0.2736757
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2297967   0.1920211   0.2675723
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2029262   0.1692900   0.2365625
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1835636   0.1500269   0.2171004
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                0.2087412   0.1433141   0.2741683
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                0.2050638   0.1399022   0.2702254
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                0.2098909   0.1440496   0.2757322
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1597471   0.1520232   0.1674710
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1573287   0.1501871   0.1644704
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1576177   0.1511933   0.1640421
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                0.3159736   0.2396025   0.3923447
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2699117   0.2210172   0.3188061
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2177062   0.1674470   0.2679654
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.1703617   0.1487781   0.1919453
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.1654840   0.1444352   0.1865328
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.1773061   0.1554761   0.1991360
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1508995   0.1369335   0.1648655
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.1574984   0.1431603   0.1718364
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.1456813   0.1320695   0.1592931
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1094828   0.1037442   0.1152214
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1090590   0.1035598   0.1145581
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1089266   0.1032393   0.1146138
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0956349   0.0798407   0.1114290
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1023875   0.0864482   0.1183267
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0999882   0.0822102   0.1177662
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1070557   0.0802093   0.1339021
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1300473   0.0971357   0.1629588
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1282732   0.0935284   0.1630181
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1860972   0.1077406   0.2644537
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1283222   0.0705248   0.1861197
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.2267085   0.1580898   0.2953271
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0382775   0.0122440   0.0643110
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0528846   0.0224447   0.0833245
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0322581   0.0068454   0.0576708
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0179211   0.0023434   0.0334989
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0448430   0.0176609   0.0720252
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0281690   0.0059337   0.0504043
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0338050   0.0156364   0.0519736
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0403614   0.0286077   0.0521150
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0544353   0.0352307   0.0736399
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0848188   0.0378734   0.1317642
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1134512   0.0730163   0.1538862
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.0678452   0.0295037   0.1061868
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0070575   0.0028650   0.0112500
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0096384   0.0058916   0.0133853
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0078434   0.0052983   0.0103886
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0294534   0.0155827   0.0433240
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0480691   0.0369257   0.0592125
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0268473   0.0228447   0.0308500
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0303030   0.0041328   0.0564732
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0295567   0.0130736   0.0460397
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0359281   0.0159577   0.0558986
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1124977   0.0861675   0.1388278
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.1078367   0.0787691   0.1369042
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1178241   0.0853600   0.1502883
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0551180   0.0400159   0.0702202
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0590072   0.0421618   0.0758526
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0591736   0.0438545   0.0744926
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0813665   0.0709219   0.0918111
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0908278   0.0825790   0.0990767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0833352   0.0751939   0.0914766
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0407001   0.0195520   0.0618481
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0658255   0.0530547   0.0785963
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0577729   0.0433687   0.0721771
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0759926   0.0397477   0.1122375
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1342543   0.0858761   0.1826324
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1080669   0.0612555   0.1548783
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0776964   0.0412267   0.1141661
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1142763   0.0628175   0.1657352
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0762328   0.0344097   0.1180559
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2429016   0.1632391   0.3225640
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1629848   0.1136342   0.2123355
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1747844   0.1143935   0.2351752
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0129032   0.0046670   0.0211394
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0100739   0.0044872   0.0156605
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0114679   0.0005337   0.0224021
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0449438   0.0144926   0.0753950
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0408602   0.0228578   0.0588626
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0501393   0.0275534   0.0727251
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0606728   0.0405915   0.0807541
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1185077   0.0882944   0.1487210
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0856837   0.0576557   0.1137117
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0366713   0.0237052   0.0496373
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0725270   0.0531084   0.0919457
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0904795   0.0708427   0.1101162
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2197224   0.1992309   0.2402139
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2198990   0.2046805   0.2351175
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2222189   0.2042267   0.2402112
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1945326   0.1637894   0.2252757
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1875142   0.1655414   0.2094870
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1997157   0.1782033   0.2212282


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1071753   0.0763487   0.1380019
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2199248   0.1846953   0.2551543
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2432815   0.2116319   0.2749310
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2062500   0.1748784   0.2376216
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2077971   0.1423827   0.2732114
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1577985   0.1514260   0.1641709
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2520891   0.2203065   0.2838718
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1711851   0.1506302   0.1917400
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1506598   0.1372339   0.1640858
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1090574   0.1037994   0.1143154
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0998709   0.0841992   0.1155426
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1239669   0.0988748   0.1490591
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1815789   0.1427684   0.2203895
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0414594   0.0255348   0.0573839
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0431334   0.0342652   0.0520016
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0905861   0.0668565   0.1143158
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0084166   0.0066777   0.0101555
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0307283   0.0270076   0.0344489
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0320442   0.0205636   0.0435248
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1148014   0.0980067   0.1315962
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0581577   0.0490934   0.0672220
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0845079   0.0795688   0.0894470
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0567164   0.0477001   0.0657328
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1070812   0.0818727   0.1322897
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1851852   0.1506144   0.2197560
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0111601   0.0050716   0.0172486
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0449102   0.0320802   0.0577401
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0875912   0.0726161   0.1025664
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0668392   0.0566723   0.0770060
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2187803   0.2086815   0.2288790
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1938288   0.1801571   0.2075004


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.2000693   0.8660390   1.6629347
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.0806761   0.6239201   1.8718117
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.1386988   0.7539347   1.7198239
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.1960993   0.7962403   1.7967609
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.2340423   0.9285546   1.6400334
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9443631   0.6842099   1.3034327
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.8830686   0.7826796   0.9963340
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.7988089   0.6918202   0.9223432
Birth       ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              0.9823833   0.9600627   1.0052227
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              1.0055080   0.9925538   1.0186312
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              0.9848614   0.9503552   1.0206205
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9866707   0.9581148   1.0160777
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8542222   0.6345342   1.1499704
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High              0.6890011   0.4950521   0.9589344
Birth       ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              0.9713684   0.9075991   1.0396184
Birth       ki1135781-COHORTS          INDIA                          Medium               High              1.0407623   0.9746225   1.1113906
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.0437301   0.9973915   1.0922217
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9654193   0.9261611   1.0063417
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              0.9961284   0.9648603   1.0284098
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              0.9949192   0.9623871   1.0285510
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0706079   0.9987267   1.1476626
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.0455201   0.9319982   1.1728696
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.2147625   0.8974935   1.6441880
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1981912   1.0031645   1.4311332
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              0.6895443   0.3721015   1.2778001
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.2182263   0.7252597   2.0462676
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.3816106   0.5668016   3.3677531
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.8427419   0.2976437   2.3861209
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.5022421   0.8671563   7.2204002
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.5718309   0.4858176   5.0855562
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1939470   0.6478560   2.2003494
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.6102727   0.8465811   3.0628821
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3375716   0.6921513   2.5848362
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.7998843   0.3622759   1.7660986
6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.3657103   0.6529530   2.8565065
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.1113674   0.5465943   2.2596969
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.6320399   0.9654888   2.7587622
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9115195   0.5561878   1.4938621
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9753695   0.3489017   2.7266868
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              1.1856287   0.4245356   3.3111839
6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              0.9585681   0.6715029   1.3683526
6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.0473475   0.7298312   1.5030006
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.0705603   0.7206455   1.5903786
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.0735787   0.7363073   1.5653400
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1162806   0.9587622   1.2996782
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0241960   0.8731766   1.2013348
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.6173315   0.9301494   2.8121946
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.4194789   0.7993271   2.5207708
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.7666748   0.9712726   3.2134543
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.4220711   0.7463637   2.7095185
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.4708063   0.7671428   2.8199070
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9811628   0.4761676   2.0217261
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.6709913   0.4296417   1.0479180
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.7195687   0.4469550   1.1584592
24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              0.7807253   0.3375301   1.8058597
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              0.8887615   0.2825384   2.7957154
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9091398   0.4051702   2.0399704
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.1155989   0.4944904   2.5168554
24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.9532263   1.2871450   2.9639962
24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.4122256   0.8871893   2.2479770
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.9777626   1.2690793   3.0821913
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              2.4673135   1.6292965   3.7363584
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0008037   0.8921797   1.1226528
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0113623   0.8960637   1.1414966
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.9639219   0.7907225   1.1750588
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.0266442   0.8474059   1.2437938


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0108174   -0.0179029    0.0395378
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0221667   -0.0306887    0.0750220
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0125049   -0.0246660    0.0496759
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0235467   -0.0420443   -0.0050491
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0009441   -0.0033573    0.0014691
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0019486   -0.0062523    0.0023551
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0638845   -0.1318923    0.0041233
Birth       ki1135781-COHORTS          INDIA                          High                 NA                 0.0008234   -0.0054399    0.0070867
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0002397   -0.0037697    0.0032903
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0004254   -0.0028657    0.0020148
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0042360   -0.0018450    0.0103169
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0169112   -0.0018697    0.0356921
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0045182   -0.0715070    0.0624705
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0031819   -0.0183012    0.0246649
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0114495   -0.0029263    0.0258253
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0093284   -0.0075706    0.0262273
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0057673   -0.0355072    0.0470419
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0013592   -0.0027745    0.0054928
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0012749   -0.0121265    0.0146763
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0017412   -0.0220695    0.0255519
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0023038   -0.0185425    0.0231501
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0030396   -0.0093739    0.0154532
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0031414   -0.0058766    0.0121595
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0160163   -0.0017868    0.0338195
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0310885   -0.0011226    0.0632997
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0098522   -0.0195429    0.0392474
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0577164   -0.1257421    0.0103094
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0017431   -0.0108060    0.0073198
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0000336   -0.0276458    0.0275785
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0269184    0.0092647    0.0445722
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0301679    0.0176863    0.0426495
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0009421   -0.0191566    0.0172723
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0007038   -0.0270904    0.0256828


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1009320   -0.1995245    0.3261303
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1007919   -0.1740298    0.3112823
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0514011   -0.1143477    0.1924964
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.1141657   -0.2077491   -0.0278338
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0045434   -0.0163317    0.0071082
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0123486   -0.0399923    0.0145602
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.2534202   -0.5549665   -0.0103511
Birth       ki1135781-COHORTS          INDIA                          High                 NA                 0.0048101   -0.0324731    0.0407469
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0015909   -0.0252941    0.0215644
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0039009   -0.0265336    0.0182329
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0424144   -0.0196006    0.1006575
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1364172   -0.0229592    0.2709628
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0248830   -0.4687866    0.2848620
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0767464   -0.6169746    0.4728444
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3898276   -0.3012672    0.7138863
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2162678   -0.2878276    0.5230448
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0636669   -0.5228619    0.4242947
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.1614860   -0.4976504    0.5305274
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0414894   -0.5107455    0.3918615
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0543365   -1.0743176    0.5688801
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0200676   -0.1793419    0.1857599
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0522656   -0.1869515    0.2432710
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0371730   -0.0757942    0.1382777
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2823934   -0.1268115    0.5429944
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2903269   -0.0729619    0.5306116
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1125346   -0.2934920    0.3911096
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.3116684   -0.7331267    0.0073005
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.1561890   -1.4222360    0.4481243
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0007491   -0.8498780    0.4586137
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.3073187    0.0819564    0.4773588
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.4513508    0.2461537    0.6006931
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0043064   -0.0911176    0.0755980
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0036310   -0.1494044    0.1236546
