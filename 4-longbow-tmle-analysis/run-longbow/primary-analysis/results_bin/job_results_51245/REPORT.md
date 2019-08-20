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
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
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

agecat      studyid                    country                        feducyrs    wasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High             0       44     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     High             1        5     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low              0       26     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low              1        9     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium           0       43     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium           1        7     134
Birth       ki0047075b-MAL-ED          INDIA                          High             0       34     121
Birth       ki0047075b-MAL-ED          INDIA                          High             1        4     121
Birth       ki0047075b-MAL-ED          INDIA                          Low              0       42     121
Birth       ki0047075b-MAL-ED          INDIA                          Low              1        6     121
Birth       ki0047075b-MAL-ED          INDIA                          Medium           0       29     121
Birth       ki0047075b-MAL-ED          INDIA                          Medium           1        6     121
Birth       ki0047075b-MAL-ED          NEPAL                          High             0       24      64
Birth       ki0047075b-MAL-ED          NEPAL                          High             1        3      64
Birth       ki0047075b-MAL-ED          NEPAL                          Low              0       17      64
Birth       ki0047075b-MAL-ED          NEPAL                          Low              1        1      64
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           0       19      64
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           1        0      64
Birth       ki0047075b-MAL-ED          PERU                           High             0      111     230
Birth       ki0047075b-MAL-ED          PERU                           High             1        1     230
Birth       ki0047075b-MAL-ED          PERU                           Low              0       62     230
Birth       ki0047075b-MAL-ED          PERU                           Low              1        1     230
Birth       ki0047075b-MAL-ED          PERU                           Medium           0       53     230
Birth       ki0047075b-MAL-ED          PERU                           Medium           1        2     230
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       34      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        1      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0       29      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        1      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       26      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        0      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0       62      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        1      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       26      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        1      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0        6      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        0      96
Birth       ki1000304b-SAS-CompFeed    INDIA                          High             0       29     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          High             1        4     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low              0       65     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low              1        3     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium           0       61     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium           1        4     166
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             0        5      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             1        2      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low              0       10      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low              1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0        5      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1        0      23
Birth       ki1119695-PROBIT           BELARUS                        High             0     1650   13359
Birth       ki1119695-PROBIT           BELARUS                        High             1      400   13359
Birth       ki1119695-PROBIT           BELARUS                        Low              0     4187   13359
Birth       ki1119695-PROBIT           BELARUS                        Low              1     1107   13359
Birth       ki1119695-PROBIT           BELARUS                        Medium           0     4744   13359
Birth       ki1119695-PROBIT           BELARUS                        Medium           1     1271   13359
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High             0      759   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High             1      155   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low              0     1779   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low              1      311   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0     8051   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1     1517   12572
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High             0     2970   15127
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High             1      297   15127
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low              0     6019   15127
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low              1      656   15127
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     4691   15127
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      494   15127
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             0       43     379
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             1        1     379
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low              0      267     379
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low              1       13     379
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           0       51     379
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           1        4     379
6 months    ki0047075b-MAL-ED          BANGLADESH                     High             0       49     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     High             1        1     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low              0       35     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low              1        1     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium           0       43     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium           1        3     132
6 months    ki0047075b-MAL-ED          INDIA                          High             0       42     138
6 months    ki0047075b-MAL-ED          INDIA                          High             1        1     138
6 months    ki0047075b-MAL-ED          INDIA                          Low              0       52     138
6 months    ki0047075b-MAL-ED          INDIA                          Low              1        2     138
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     High             0      195     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     High             1        8     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low              0      189     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low              1       11     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium           0      174     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium           1        5     582
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
6 months    ki1113344-GMS-Nepal        NEPAL                          High             0      124     562
6 months    ki1113344-GMS-Nepal        NEPAL                          High             1       12     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Low              0      216     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Low              1       27     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium           0      171     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium           1       12     562
6 months    ki1119695-PROBIT           BELARUS                        High             0     2494   15207
6 months    ki1119695-PROBIT           BELARUS                        High             1       18   15207
6 months    ki1119695-PROBIT           BELARUS                        Low              0     5900   15207
6 months    ki1119695-PROBIT           BELARUS                        Low              1       58   15207
6 months    ki1119695-PROBIT           BELARUS                        Medium           0     6685   15207
6 months    ki1119695-PROBIT           BELARUS                        Medium           1       52   15207
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High             0      535    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High             1       17    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low              0     1329    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low              1       69    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0     5914    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1      168    8032
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
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High             0      328    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High             1       18    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low              0     1876    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low              1      119    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium           0      386    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium           1       19    2746
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
24 months   ki0047075b-MAL-ED          PERU                           Medium           0       43     164
24 months   ki0047075b-MAL-ED          PERU                           Medium           1        0     164
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
24 months   ki1017093b-PROVIDE         BANGLADESH                     High             0      185     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     High             1       17     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low              0      169     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low              1       28     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium           0      159     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium           1       20     578
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
24 months   ki1113344-GMS-Nepal        NEPAL                          High             0       88     497
24 months   ki1113344-GMS-Nepal        NEPAL                          High             1       28     497
24 months   ki1113344-GMS-Nepal        NEPAL                          Low              0      185     497
24 months   ki1113344-GMS-Nepal        NEPAL                          Low              1       35     497
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium           0      134     497
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium           1       27     497
24 months   ki1119695-PROBIT           BELARUS                        High             0      612    3852
24 months   ki1119695-PROBIT           BELARUS                        High             1        8    3852
24 months   ki1119695-PROBIT           BELARUS                        Low              0     1473    3852
24 months   ki1119695-PROBIT           BELARUS                        Low              1       15    3852
24 months   ki1119695-PROBIT           BELARUS                        Medium           0     1724    3852
24 months   ki1119695-PROBIT           BELARUS                        Medium           1       20    3852
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High             0       11     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High             1        2     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low              0       74     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low              1       26     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0      241     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1       46     400
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
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High             0      275    2683
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High             1       58    2683
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low              0     1572    2683
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low              1      383    2683
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium           0      315    2683
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium           1       80    2683


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
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/c9d92412-6b63-47e9-990d-58eb0865b218/765afcbc-ccbb-4f1e-ac52-ef7972ab3da2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c9d92412-6b63-47e9-990d-58eb0865b218/765afcbc-ccbb-4f1e-ac52-ef7972ab3da2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c9d92412-6b63-47e9-990d-58eb0865b218/765afcbc-ccbb-4f1e-ac52-ef7972ab3da2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c9d92412-6b63-47e9-990d-58eb0865b218/765afcbc-ccbb-4f1e-ac52-ef7972ab3da2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1020408   0.0169678   0.1871138
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2571429   0.1118044   0.4024813
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1400000   0.0434610   0.2365390
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                0.2095654   0.1438303   0.2753004
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                0.2051168   0.1398230   0.2704106
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                0.2101596   0.1442801   0.2760391
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1586360   0.1501781   0.1670939
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1568896   0.1497120   0.1640672
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1574255   0.1510054   0.1638456
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                0.3149670   0.2369971   0.3929370
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2654959   0.2165574   0.3144344
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2239609   0.1726570   0.2752648
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.1694412   0.1479758   0.1909066
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.1663335   0.1452006   0.1874665
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.1773598   0.1551287   0.1995908
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1507453   0.1368095   0.1646812
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.1567124   0.1425066   0.1709182
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.1464317   0.1326290   0.1602344
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0957674   0.0899903   0.1015445
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0959925   0.0903432   0.1016418
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0955210   0.0897796   0.1012625
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1051050   0.0795050   0.1307050
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1354392   0.1010164   0.1698620
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1261749   0.0899955   0.1623542
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1907892   0.1119407   0.2696377
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1283476   0.0707588   0.1859364
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.2264753   0.1581988   0.2947517
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0394089   0.0126209   0.0661968
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0550000   0.0233769   0.0866231
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0279330   0.0037727   0.0520932
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0179211   0.0023434   0.0334989
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0448430   0.0176609   0.0720252
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0281690   0.0059337   0.0504043
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0339105   0.0156485   0.0521725
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0403677   0.0286096   0.0521259
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0543726   0.0352351   0.0735101
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0868215   0.0391721   0.1344709
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1117519   0.0711786   0.1523252
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.0665900   0.0293733   0.1038066
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0069968   0.0028621   0.0111316
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0096565   0.0060081   0.0133048
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0078670   0.0053158   0.0104182
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0306428   0.0162403   0.0450452
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0493017   0.0378615   0.0607418
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0276394   0.0235182   0.0317607
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0303030   0.0041328   0.0564732
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0295567   0.0130736   0.0460397
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0359281   0.0159577   0.0558986
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1180340   0.0909764   0.1450916
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.1091014   0.0796185   0.1385843
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1204197   0.0870763   0.1537632
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0564621   0.0411540   0.0717702
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0573171   0.0406553   0.0739789
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0596346   0.0442200   0.0750492
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0805439   0.0700686   0.0910192
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0897145   0.0816121   0.0978170
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0835920   0.0756009   0.0915830
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0505229   0.0226190   0.0784267
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0597190   0.0461644   0.0732736
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0472150   0.0243281   0.0701018
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0844062   0.0458963   0.1229161
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1383291   0.0889027   0.1877556
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1103262   0.0637018   0.1569505
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0771487   0.0407909   0.1135065
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1150331   0.0626100   0.1674562
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0772877   0.0348076   0.1197678
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2393645   0.1610899   0.3176391
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1576513   0.1090056   0.2062970
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1695808   0.1107896   0.2283720
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0129032   0.0046689   0.0211375
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0100806   0.0044919   0.0156694
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0114679   0.0005363   0.0223995
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0449438   0.0144926   0.0753950
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0408602   0.0228578   0.0588626
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0501393   0.0275534   0.0727251
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0616215   0.0414525   0.0817906
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1186922   0.0884488   0.1489356
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0868109   0.0585196   0.1151023
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0367709   0.0237196   0.0498222
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0721144   0.0528381   0.0913907
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0905014   0.0708535   0.1101493
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2197974   0.1990480   0.2405467
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2177973   0.2026113   0.2329833
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2225616   0.2045530   0.2405703
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1692390   0.1267807   0.2116973
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1967893   0.1762553   0.2173234
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2031606   0.1531776   0.2531436


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1567164   0.0949338   0.2184990
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2079497   0.1424160   0.2734834
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1577315   0.1513599   0.1641031
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2520891   0.2203065   0.2838718
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1711851   0.1506302   0.1917400
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1506598   0.1372339   0.1640858
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0956568   0.0903208   0.1009928
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1239669   0.0988748   0.1490591
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1815789   0.1427684   0.2203895
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0412371   0.0250690   0.0574052
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0431334   0.0342652   0.0520016
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0907473   0.0669775   0.1145172
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0084172   0.0066782   0.0101561
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0316235   0.0277962   0.0354508
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0320442   0.0205636   0.0435248
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1148014   0.0980067   0.1315962
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0581577   0.0490934   0.0672220
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0845079   0.0795688   0.0894470
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0568099   0.0457042   0.0679156
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1810865   0.1471967   0.2149763
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0111630   0.0050745   0.0172515
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0449102   0.0320802   0.0577401
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0875912   0.0726161   0.1025664
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0668392   0.0566723   0.0770060
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2187803   0.2086815   0.2288790
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1941856   0.1762345   0.2121367


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High              2.5200000   0.9203657   6.8998658
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.3720000   0.4650249   4.0479210
Birth       ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS                        Low                  High              0.9787726   0.9548446   1.0033002
Birth       ki1119695-PROBIT           BELARUS                        Medium               High              1.0028355   0.9881747   1.0177138
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              0.9889910   0.9477340   1.0320439
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9923692   0.9560899   1.0300251
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8429323   0.6222343   1.1419089
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High              0.7110613   0.5097965   0.9917843
Birth       ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              0.9816594   0.9180806   1.0496411
Birth       ki1135781-COHORTS          INDIA                          Medium               High              1.0467334   0.9751579   1.1235623
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.0395837   0.9951332   1.0860196
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9713847   0.9297311   1.0149046
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0023504   0.9654443   1.0406673
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              0.9974273   0.9596158   1.0367286
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.2886086   0.9376544   1.7709211
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.2004650   0.9443943   1.5259686
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              0.6727192   0.3660420   1.2363365
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.1870443   0.7121335   1.9786658
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.3956250   0.5729486   3.3995532
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.7087989   0.2359205   2.1295134
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.5022421   0.8671563   7.2204002
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.5718309   0.4858176   5.0855562
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1904193   0.6452408   2.1962314
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.6034145   0.8425411   3.0514097
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2871453   0.6662580   2.4866388
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.7669754   0.3502349   1.6795905
6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.3801175   0.6653173   2.8628809
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.1243613   0.5545101   2.2798293
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.6089158   0.9524970   2.7177096
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              0.9019888   0.5508546   1.4769483
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9753695   0.3489017   2.7266868
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              1.1856287   0.4245356   3.3111839
6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              0.9243219   0.6492088   1.3160190
6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.0202123   0.7128071   1.4601890
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.0151443   0.6821791   1.5106268
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.0561887   0.7261371   1.5362588
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1138584   0.9550935   1.2990148
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0378432   0.8847369   1.2174450
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.1820190   0.6487176   2.1537398
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.9345266   0.4597658   1.8995323
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.6388506   0.9172869   2.9280167
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.3070861   0.7016642   2.4348884
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.4910575   0.7735864   2.8739547
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.0018027   0.4855762   2.0668408
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.6586243   0.4199930   1.0328410
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.7084625   0.4398444   1.1411290
24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              0.7812500   0.3378333   1.8066650
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              0.8887615   0.2826228   2.7948807
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9091398   0.4051702   2.0399704
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.1155989   0.4944904   2.5168554
24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.9261478   1.2733530   2.9136033
24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.4087758   0.8881449   2.2346005
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.9611797   1.2575950   3.0583978
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              2.4612206   1.6233942   3.7314454
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              0.9909005   0.8818768   1.1134025
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0125765   0.8970983   1.1429195
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.1627894   0.8933957   1.5134159
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2004359   0.8470922   1.7011682


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0546756   -0.0212288   0.1305800
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0016157   -0.0045476   0.0013163
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0009046   -0.0063966   0.0045875
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0628779   -0.1326932   0.0069374
Birth       ki1135781-COHORTS          INDIA                          High                 NA                 0.0017439   -0.0043828   0.0078707
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0000855   -0.0036383   0.0034672
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0001106   -0.0026509   0.0024296
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0188620   -0.0027372   0.0404611
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0092103   -0.0765821   0.0581615
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0018282   -0.0200444   0.0237009
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0114495   -0.0029263   0.0258253
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0092229   -0.0077505   0.0261962
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0039258   -0.0378976   0.0457492
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0014203   -0.0026658   0.0055064
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0009807   -0.0129321   0.0148936
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0017412   -0.0220695   0.0255519
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0032326   -0.0245870   0.0181219
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0016956   -0.0108903   0.0142816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0039640   -0.0050941   0.0130220
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0062870   -0.0200896   0.0326636
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0280506   -0.0054123   0.0615134
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0104000   -0.0188626   0.0396626
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0582780   -0.1250389   0.0084829
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.0017402   -0.0108014   0.0073210
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0000336   -0.0276458   0.0275785
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0259697    0.0082554   0.0436840
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0300682    0.0175221   0.0426144
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0010171   -0.0194542   0.0174200
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0249466   -0.0144904   0.0643835


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.3488824   -0.3387079    0.6833110
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                -0.0077695   -0.0220678    0.0063288
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                -0.0057348   -0.0411614    0.0284864
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.2494273   -0.5599708   -0.0007037
Birth       ki1135781-COHORTS          INDIA                          High                 NA                 0.0101874   -0.0262830    0.0453617
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0005677   -0.0244283    0.0227373
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0011567   -0.0280718    0.0250538
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1521531   -0.0289507    0.3013812
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                -0.0507232   -0.4954272    0.2617366
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0443350   -0.6642877    0.4512393
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3898276   -0.3012672    0.7138863
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2138219   -0.2929181    0.5219527
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0432610   -0.5486407    0.4089336
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.1687424   -0.4812775    0.5335181
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0310124   -0.5257994    0.3846262
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0543365   -1.0743176    0.5688801
6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0281578   -0.2321539    0.1420646
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0291558   -0.2131766    0.2230823
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0469066   -0.0666905    0.1484062
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1106681   -0.4973164    0.4717808
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2494341   -0.1090388    0.4920384
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1187909   -0.2855912    0.3959747
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.3218241   -0.7443631   -0.0016372
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                -0.1558890   -1.4211257    0.4481578
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0007491   -0.8498780    0.4586137
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2964874    0.0705248    0.4675167
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.4498594    0.2430992    0.6001396
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0046490   -0.0925641    0.0761918
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1284678   -0.0998799    0.3094079
