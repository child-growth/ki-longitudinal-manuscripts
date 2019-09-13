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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        feducyrs    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       31     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1       23     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       15     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1       25     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       20     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       35     149
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       18     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   1       26     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       28     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1       31     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       18     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1       26     147
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       32      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1       10      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       16      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1       12      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       15      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1       13      98
0-24 months   ki0047075b-MAL-ED          PERU                           High                   0       45     250
0-24 months   ki0047075b-MAL-ED          PERU                           High                   1       75     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       28     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    1       41     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       20     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1       41     250
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       15     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1       28     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       18     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       19     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       11     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1       19     110
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       20     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1      110     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       10     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       51     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0        3     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1       18     212
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   0      159    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   1      230    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    0      166    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    1      488    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      148    1530
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 1      339    1530
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   0       22     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   1       88     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       26     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1      121     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       24     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1      137     418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      150     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1       82     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0      115     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1      123     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      131     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       99     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      192     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   1      104     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      112     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1      130     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0       92     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1      128     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      303    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1      146    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0      811    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1      459    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      443    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      221    2383
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       64     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       83     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0       70     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1      187     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       61     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1      136     601
0-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2355   16314
0-24 months   ki1119695-PROBIT           BELARUS                        High                   1      352   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     5219   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    1     1199   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     6044   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1     1145   16314
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      674   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      326   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     1273   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1     1038   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     6366   13693
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1     4016   13693
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                   0       55    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                   1      179    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    0      122    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    1      445    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 0      114    1250
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 1      335    1250
0-24 months   ki1135781-COHORTS          INDIA                          High                   0      404    1447
0-24 months   ki1135781-COHORTS          INDIA                          High                   1      163    1447
0-24 months   ki1135781-COHORTS          INDIA                          Low                    0      240    1447
0-24 months   ki1135781-COHORTS          INDIA                          Low                    1      232    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium                 0      256    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium                 1      152    1447
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   0      466    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   1      565    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    0      160    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    1      668    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 0      267    2880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 1      754    2880
0-24 months   ki1148112-LCNI-5           MALAWI                         High                   0       90     813
0-24 months   ki1148112-LCNI-5           MALAWI                         High                   1      161     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0      107     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1      184     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0       98     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1      173     813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     3989   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1     2516   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     4998   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1     5794   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     4354   26241
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1     4590   26241
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0      172    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1      215    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0      937    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1     1300    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0      185    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1      269    3078
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   0       40     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   1       14     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    0       26     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    1       14     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       32     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       23     149
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   0       29     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   1       15     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    0       41     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    1       18     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 0       32     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 1       12     147
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   0       36      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   1        6      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    0       24      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    1        4      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 0       21      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 1        7      98
0-6 months    ki0047075b-MAL-ED          PERU                           High                   0       65     250
0-6 months    ki0047075b-MAL-ED          PERU                           High                   1       55     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    0       41     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    1       28     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 0       37     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 1       24     250
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       24     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1       19     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       28     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1        9     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       17     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1       13     110
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       81     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1       49     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       36     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       25     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0       10     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1       11     212
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                   0      255    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                   1      134    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                    0      338    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                    1      315    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      285    1527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                 1      200    1527
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                   0       71     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                   1       39     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       88     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1       58     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       95     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1       65     416
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                   0      188     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                   1       44     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    0      166     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    1       72     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      179     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       51     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      226     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       70     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      167     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       75     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      136     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1       84     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      378    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       71    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0     1002    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1      268    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      538    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1      126    2383
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   0      114     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   1       33     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    0      173     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    1       84     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 0      147     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 1       50     601
0-6 months    ki1119695-PROBIT           BELARUS                        High                   0     2492   16310
0-6 months    ki1119695-PROBIT           BELARUS                        High                   1      215   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    0     5701   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    1      717   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 0     6523   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 1      662   16310
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      779   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      219   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     1648   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      660   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     7746   13673
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1     2621   13673
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                   0      134    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                   1       60    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                    0      304    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                    1      152    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                 0      256    1020
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                 1      114    1020
0-6 months    ki1135781-COHORTS          INDIA                          High                   0      485    1421
0-6 months    ki1135781-COHORTS          INDIA                          High                   1       74    1421
0-6 months    ki1135781-COHORTS          INDIA                          Low                    0      361    1421
0-6 months    ki1135781-COHORTS          INDIA                          Low                    1       97    1421
0-6 months    ki1135781-COHORTS          INDIA                          Medium                 0      342    1421
0-6 months    ki1135781-COHORTS          INDIA                          Medium                 1       62    1421
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                   0      863    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                   1      168    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                    0      580    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                    1      248    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                 0      751    2880
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                 1      270    2880
0-6 months    ki1148112-LCNI-5           MALAWI                         High                   0       54     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                   1       19     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                    0       65     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                    1       39     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                 0       53     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                 1       37     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   0     4466   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   1     2013   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     5940   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    1     4831   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     5069   26179
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1     3860   26179
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   0      237    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   1      124    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     1383    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    1      733    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0      280    2907
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1      150    2907
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       26      89
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1        9      89
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       13      89
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1       11      89
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       18      89
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       12      89
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       17      94
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   1       11      94
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       23      94
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1       13      94
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       16      94
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1       14      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       29      78
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1        4      78
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       16      78
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1        8      78
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       15      78
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1        6      78
6-24 months   ki0047075b-MAL-ED          PERU                           High                   0       33     121
6-24 months   ki0047075b-MAL-ED          PERU                           High                   1       20     121
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       20     121
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    1       13     121
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       18     121
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1       17     121
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       11      59
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1        9      59
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       17      59
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       10      59
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0        6      59
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        6      59
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       18     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1       61     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0        7     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       26     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0        3     122
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1        7     122
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   0      149     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   1       96     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    0      121     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    1      173     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      134     812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 1      139     812
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   0       19     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   1       49     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       20     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1       63     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       20     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1       72     243
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      135     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1       38     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0       88     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1       51     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0       97     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       48     457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      183     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       34     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      101     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       55     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0       89     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1       44     506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      238    1595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       75    1595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0      640    1595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1      191    1595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      356    1595
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1       95    1595
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       62     425
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       50     425
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0       68     425
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1      103     425
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       56     425
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       86     425
6-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2292   14466
6-24 months   ki1119695-PROBIT           BELARUS                        High                   1      137   14466
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     5136   14466
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    1      482   14466
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     5936   14466
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1      483   14466
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      457    7748
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      107    7748
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0      907    7748
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      378    7748
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     4504    7748
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1     1395    7748
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                   0       33     831
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                   1      119     831
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    0       84     831
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    1      293     831
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 0       81     831
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 1      221     831
6-24 months   ki1135781-COHORTS          INDIA                          High                   0      388    1179
6-24 months   ki1135781-COHORTS          INDIA                          High                   1       89    1179
6-24 months   ki1135781-COHORTS          INDIA                          Low                    0      231    1179
6-24 months   ki1135781-COHORTS          INDIA                          Low                    1      135    1179
6-24 months   ki1135781-COHORTS          INDIA                          Medium                 0      246    1179
6-24 months   ki1135781-COHORTS          INDIA                          Medium                 1       90    1179
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   0      368    2007
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   1      397    2007
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    0      124    2007
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    1      420    2007
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 0      214    2007
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 1      484    2007
6-24 months   ki1148112-LCNI-5           MALAWI                         High                   0       86     707
6-24 months   ki1148112-LCNI-5           MALAWI                         High                   1      142     707
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0      105     707
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1      145     707
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0       93     707
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1      136     707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     2583   10148
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1      503   10148
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     2751   10148
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      963   10148
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     2618   10148
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      730   10148
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0      172    2064
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1       91    2064
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0      931    2064
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1      567    2064
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0      184    2064
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1      119    2064


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/691c6811-94da-4e20-b2c2-41eb05f98f5d/1f2825f2-dec2-47fa-8469-750a06bbdb43/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/691c6811-94da-4e20-b2c2-41eb05f98f5d/1f2825f2-dec2-47fa-8469-750a06bbdb43/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/691c6811-94da-4e20-b2c2-41eb05f98f5d/1f2825f2-dec2-47fa-8469-750a06bbdb43/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/691c6811-94da-4e20-b2c2-41eb05f98f5d/1f2825f2-dec2-47fa-8469-750a06bbdb43/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.4438314   0.3149484   0.5727144
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.5753495   0.4297861   0.7209129
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.6270766   0.4962063   0.7579469
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.5918905   0.4437186   0.7400623
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5312418   0.4064189   0.6560647
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.5854690   0.4371583   0.7337796
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2135412   0.0798687   0.3472138
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.3831309   0.1924786   0.5737832
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.3875440   0.1980382   0.5770499
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.6302550   0.5476732   0.7128369
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.5947885   0.4784317   0.7111453
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.6713637   0.5522999   0.7904275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.6449991   0.4986529   0.7913453
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.5112558   0.3457651   0.6767466
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.6194756   0.4393654   0.7995858
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.6448668   0.5812922   0.7084413
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.7223371   0.6546675   0.7900066
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.6944671   0.6521512   0.7367831
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.7981505   0.7242706   0.8720303
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.8139050   0.7512412   0.8765688
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.8534256   0.7981794   0.9086717
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.3969888   0.3402853   0.4536924
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4909278   0.4317957   0.5500600
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.4206520   0.3594557   0.4818483
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3944222   0.3444863   0.4443580
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.5131397   0.4538092   0.5724702
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.5411591   0.4821823   0.6001359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.3394258   0.2973214   0.3815301
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.3515939   0.3257750   0.3774128
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.3416014   0.3061939   0.3770089
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5876309   0.5073365   0.6679254
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.7333767   0.6792527   0.7875007
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6838445   0.6168696   0.7508194
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.1446119   0.1237719   0.1654520
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.1784662   0.1544703   0.2024620
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.1616660   0.1407840   0.1825481
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.3447720   0.3169957   0.3725483
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.4313235   0.4110532   0.4515938
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.3917042   0.3825005   0.4009079
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7346650   0.6776947   0.7916354
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7695724   0.7349961   0.8041488
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7573784   0.7175695   0.7971872
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.3092308   0.2744445   0.3440170
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.4494522   0.4072936   0.4916108
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3736599   0.3304878   0.4168321
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5883615   0.5594575   0.6172655
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7849862   0.7578233   0.8121491
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7291227   0.7023435   0.7559020
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.6401451   0.5819909   0.6982993
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.6194513   0.5648678   0.6740349
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.6545806   0.5987188   0.7104425
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4801912   0.4684102   0.4919722
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.5030723   0.4928999   0.5132448
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4908060   0.4800833   0.5015288
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.5518793   0.4980986   0.6056601
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.5828530   0.5573197   0.6083863
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.5885478   0.5410768   0.6360188
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2610639   0.1438552   0.3782727
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.3139886   0.1619555   0.4660218
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.4086931   0.2784503   0.5389360
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.3442900   0.1998867   0.4886933
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3062465   0.1894345   0.4230585
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2742036   0.1402298   0.4081775
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.4529968   0.3700096   0.5359840
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.4162505   0.3102341   0.5222669
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.4008108   0.2822296   0.5193920
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.4418605   0.2927490   0.5909719
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2432432   0.1043667   0.3821198
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.4333333   0.2551999   0.6114668
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.3936909   0.3119933   0.4753885
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.4144845   0.2923543   0.5366146
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.5435535   0.3586335   0.7284736
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.4107812   0.3583644   0.4631981
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4486430   0.4075227   0.4897634
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.4036713   0.3535585   0.4537841
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3588271   0.2698592   0.4477951
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3951573   0.3158500   0.4744646
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4181886   0.3430300   0.4933472
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2035048   0.1595310   0.2474787
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2795908   0.2297051   0.3294765
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2272943   0.1785774   0.2760112
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2780724   0.2345049   0.3216399
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3004450   0.2497542   0.3511359
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3334512   0.2802390   0.3866635
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1685185   0.1347622   0.2022748
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2027443   0.1810337   0.2244549
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1980833   0.1685330   0.2276337
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2330274   0.1627798   0.3032751
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3299710   0.2723581   0.3875839
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2520238   0.1893435   0.3147041
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0902507   0.0752578   0.1052437
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.1033913   0.0861283   0.1206543
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0957272   0.0810253   0.1104292
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2327312   0.2109493   0.2545132
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2636654   0.2473229   0.2800078
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2567302   0.2486441   0.2648163
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.3126521   0.2505528   0.3747513
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.3082342   0.2679900   0.3484783
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.3421409   0.2958951   0.3883867
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1445490   0.1212112   0.1678869
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.1866323   0.1560710   0.2171936
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1569474   0.1279331   0.1859618
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2021518   0.1806513   0.2236523
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2579599   0.2309359   0.2849839
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2544684   0.2301244   0.2788125
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.2714839   0.1702370   0.3727308
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.3841253   0.2897798   0.4784708
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.4265572   0.3243209   0.5287935
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4014496   0.3907670   0.4121321
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4148497   0.4054923   0.4242071
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4092814   0.3994163   0.4191466
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3423161   0.2985885   0.3860436
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3476362   0.3240385   0.3712338
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3448375   0.3012853   0.3883898
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2571429   0.1115274   0.4027584
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4583333   0.2578617   0.6588050
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.4000000   0.2237023   0.5762977
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.3980414   0.2140390   0.5820438
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3916519   0.2376312   0.5456725
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4157962   0.2246525   0.6069399
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.3721726   0.2395129   0.5048323
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.3860042   0.2152937   0.5567148
6-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.4962531   0.3296528   0.6628534
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.4500000   0.2300962   0.6699038
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.3703704   0.1866578   0.5540830
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.5000000   0.2146752   0.7853248
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.4050030   0.3281952   0.4818109
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.5797408   0.4879288   0.6715527
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.5129876   0.4523858   0.5735894
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.7241832   0.6160450   0.8323214
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.7604173   0.6673910   0.8534437
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.7976274   0.7122041   0.8830507
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2448686   0.1839640   0.3057731
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3557996   0.2758555   0.4357438
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3038750   0.2280676   0.3796824
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1628793   0.1142671   0.2114915
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3441523   0.2704338   0.4178709
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3294221   0.2498496   0.4089946
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2462662   0.1991694   0.2933630
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2265917   0.1980183   0.2551651
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2135761   0.1755276   0.2516246
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4543436   0.3598181   0.5488691
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6050033   0.5302470   0.6797595
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6050658   0.5228147   0.6873169
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0585111   0.0425840   0.0744381
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0852213   0.0693787   0.1010639
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0742776   0.0591477   0.0894076
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1979242   0.1614221   0.2344263
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.3032163   0.2755539   0.3308787
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2384424   0.2273804   0.2495044
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7713533   0.7059431   0.8367635
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7711821   0.7293000   0.8130641
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7462260   0.6974291   0.7950229
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1975942   0.1622566   0.2329319
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3430588   0.2948421   0.3912756
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.2723925   0.2249676   0.3198174
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5420344   0.5076235   0.5764453
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7589090   0.7235973   0.7942207
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6873694   0.6534325   0.7213064
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.6163534   0.5542608   0.6784461
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.5729672   0.5127012   0.6332332
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.6073798   0.5448206   0.6699390
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1919117   0.1756356   0.2081878
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2409768   0.2258247   0.2561288
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2152673   0.1989717   0.2315628
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3406088   0.2600952   0.4211224
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3783883   0.3494452   0.4073314
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3970760   0.3357429   0.4584092


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5570470   0.4770190   0.6370750
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5646258   0.4842023   0.6450494
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3571429   0.2617885   0.4524972
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6280000   0.5679657   0.6880343
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.6000000   0.5080312   0.6919688
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6908497   0.6505448   0.7311545
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4342857   0.3975409   0.4710305
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3466219   0.3275107   0.3657331
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6755408   0.6380799   0.7130017
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1652568   0.1463320   0.1841817
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3929015   0.3847209   0.4010821
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7672000   0.7437624   0.7906376
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3780235   0.3530310   0.4030160
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6899306   0.6730355   0.7068256
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6371464   0.6040748   0.6702180
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4915971   0.4836947   0.4994995
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5795971   0.5574204   0.6017738
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3422819   0.2658404   0.4187234
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3061224   0.2313639   0.3808810
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4280000   0.3665434   0.4894566
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3727273   0.2819539   0.4635007
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4009434   0.3348159   0.4670709
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4250164   0.3969651   0.4530677
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2385714   0.2069753   0.2701675
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1951322   0.1792173   0.2110471
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2778702   0.2420275   0.3137129
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0977315   0.0847284   0.1107345
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2559789   0.2486637   0.2632941
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3196078   0.2909760   0.3482397
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1639690   0.1447117   0.1832264
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2381944   0.2226342   0.2537546
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3558052   0.2982716   0.4133389
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4088773   0.4013389   0.4164158
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3464052   0.3252865   0.3675239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3595506   0.2592902   0.4598109
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4042553   0.3045164   0.5039942
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.4132231   0.3251210   0.5013252
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4237288   0.2965568   0.5509008
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5024631   0.4586872   0.5462389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2263323   0.2057897   0.2468748
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5623529   0.5151323   0.6095736
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0761786   0.0621943   0.0901630
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2426433   0.2330974   0.2521891
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7617329   0.7327499   0.7907158
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2663274   0.2410848   0.2915700
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6482312   0.6273346   0.6691278
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5983027   0.5621404   0.6344650
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2163973   0.2069603   0.2258344
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3764535   0.3511984   0.4017086


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.2963245   0.8887666   1.890775
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.4128711   0.9912717   2.013782
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              0.8975340   0.6405300   1.257657
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.9891509   0.6947578   1.408289
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.7941776   0.8104697   3.971862
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.8148439   0.8144629   4.043964
0-24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  High              0.9437267   0.7486173   1.189687
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               High              1.0652254   0.8594925   1.320204
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.7926458   0.5329531   1.178879
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              0.9604286   0.6635086   1.390220
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.1201338   0.9807775   1.279291
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.0769157   0.9560919   1.213008
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0197388   0.9046930   1.149414
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.0692540   0.9555238   1.196521
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.2366288   1.0345261   1.478214
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.0596066   0.8717975   1.287875
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.3009909   1.1067692   1.529296
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.3720302   1.1743896   1.602932
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0358492   0.8985371   1.194145
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0064098   0.8576166   1.181018
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2480226   1.0686044   1.457565
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1637313   0.9838590   1.376488
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.2341038   1.0513643   1.448605
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.1179301   0.9959514   1.254848
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.2510398   1.1409447   1.371759
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1361254   1.0461908   1.233791
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.0475147   0.9589650   1.144241
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0309166   0.9404301   1.130110
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.4534523   1.2644258   1.670738
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.2083530   1.0378252   1.406901
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.3341903   1.2576997   1.415333
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.2392428   1.1672291   1.315700
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              0.9676734   0.8538296   1.096696
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.0225505   0.9042642   1.156310
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0476501   1.0210770   1.074915
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0221054   0.9938214   1.051195
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0561240   0.9534098   1.169904
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.0664429   0.9404865   1.209268
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.2027270   0.6236525   2.319484
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.5654906   0.8998142   2.723630
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              0.8895017   0.5056935   1.564610
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              0.7964322   0.4186725   1.515037
0-6 months    ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  High              0.9188817   0.6831263   1.235999
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               High              0.8847982   0.6341126   1.234588
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.5504979   0.2836132   1.068526
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              0.9807018   0.5761784   1.669233
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0528170   0.7391838   1.499524
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              1.3806606   0.9369577   2.034482
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.0921702   0.9238757   1.291121
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9826917   0.8596424   1.123354
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.1012470   0.8020321   1.512090
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.1654319   0.8604711   1.578474
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.3738780   1.0643111   1.773486
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.1168987   0.8432559   1.479341
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.0804562   0.8780602   1.329505
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.1991526   0.9816604   1.464832
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2030979   0.9615248   1.505364
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1754395   0.9179161   1.505212
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.4160178   0.9997440   2.005620
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0815199   0.7315159   1.598988
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.1456005   0.9276778   1.414716
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0606807   0.9102568   1.235963
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1329178   1.0156441   1.263733
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1031188   1.0029295   1.213317
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9858697   0.7860152   1.236540
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0943184   0.8696977   1.376953
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              1.2911348   1.0598229   1.572932
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.0857730   0.8809129   1.338274
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.2760701   1.1094910   1.467659
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.2587987   1.1021002   1.437777
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              1.4149101   0.9053719   2.211214
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              1.5712062   1.0082088   2.448589
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0333793   1.0055463   1.061983
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0195090   0.9905961   1.049266
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0155415   0.8877319   1.161752
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.0073659   0.8510490   1.192394
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.7824074   0.8714746   3.645518
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.5555556   0.7589992   3.188084
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              0.9839475   0.5431009   1.782639
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.0446053   0.5444733   2.004139
6-24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  High              1.0371646   0.5889365   1.826530
6-24 months   ki0047075b-MAL-ED          PERU                           Medium               High              1.3333950   0.8185731   2.172002
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.8230453   0.4102244   1.651300
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.1111111   0.5241725   2.355270
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.4314481   1.0974742   1.867054
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.2666267   1.0072084   1.592861
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0500345   0.8660581   1.273093
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.1014166   0.9166568   1.323416
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.4530227   1.0439590   2.022374
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.2409719   0.8772160   1.755567
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.1129284   1.4654952   3.046388
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              2.0224920   1.3792131   2.965803
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.9201086   0.7321396   1.156337
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.8672569   0.6681947   1.125622
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3315985   1.0449161   1.696935
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.3317361   1.0392941   1.706467
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.4564991   1.1342804   1.870252
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.2694622   1.0550989   1.527377
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.5319816   1.2473068   1.881628
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.2047156   0.9961870   1.456895
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9997780   0.9044657   1.105134
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9674244   0.8699080   1.075873
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.7361786   1.3861092   2.174660
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.3785449   1.0778167   1.763181
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.4001123   1.2950547   1.513693
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.2681288   1.1716526   1.372549
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              0.9296082   0.8048618   1.073689
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              0.9854408   0.8543713   1.136618
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.2556649   1.1343130   1.390000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1216996   1.0031781   1.254224
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.1109176   0.8669448   1.423548
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1657832   0.8802741   1.543895


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1132156    0.0098952   0.2165359
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0272646   -0.1498889   0.0953597
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.1436016    0.0314390   0.2557642
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0022550   -0.0608849   0.0563748
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0449991   -0.1616775   0.0716793
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0459829   -0.0123810   0.1043468
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0296007   -0.0323559   0.0915574
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0372969   -0.0082193   0.0828131
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0831504    0.0454402   0.1208606
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0071962   -0.0306258   0.0450181
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0879098    0.0190964   0.1567233
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0206449    0.0043255   0.0369643
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0481295    0.0214780   0.0747810
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0325350   -0.0186433   0.0837132
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0687927    0.0419174   0.0956680
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1015691    0.0797617   0.1233764
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0029987   -0.0507940   0.0447966
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0114059    0.0023734   0.0204385
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0277178   -0.0216228   0.0770584
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0812179   -0.0181309   0.1805668
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0381675   -0.1570405   0.0807054
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0249968   -0.0804686   0.0304750
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0691332   -0.1835487   0.0452823
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0072525   -0.0426790   0.0571839
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0142351   -0.0263883   0.0548585
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0305959   -0.0457292   0.1069210
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0350666    0.0001902   0.0699430
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0240384   -0.0074687   0.0555456
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0266137   -0.0041600   0.0573874
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0448428   -0.0178026   0.1074882
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0074807   -0.0060378   0.0209992
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0232477    0.0025487   0.0439467
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0069558   -0.0480777   0.0619893
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0194200    0.0030070   0.0358330
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0360427    0.0189627   0.0531226
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0843214   -0.0051498   0.1737925
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0074278   -0.0005407   0.0153963
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0040892   -0.0355709   0.0437493
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1024077   -0.0183350   0.2231504
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0062139   -0.1478153   0.1602431
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0410505   -0.0593697   0.1414708
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0262712   -0.2044439   0.1519016
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0974601    0.0249349   0.1699852
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0330185   -0.0571540   0.1231909
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0549126    0.0042790   0.1055462
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0999665    0.0578052   0.1421279
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0199340   -0.0619529   0.0220850
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1080093    0.0264134   0.1896053
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0176675    0.0067817   0.0285534
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0447190    0.0092664   0.0801717
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0096204   -0.0688393   0.0495985
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0687332    0.0394744   0.0979919
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1061968    0.0801513   0.1322423
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0180507   -0.0689083   0.0328068
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0244856    0.0101482   0.0388230
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0358447   -0.0382977   0.1099871


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.2032424   -0.0074532   0.3698738
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0482879   -0.2895411   0.1478305
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.4020845   -0.0097428   0.6459465
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0035908   -0.1014432   0.0855684
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0749985   -0.2889882   0.1034660
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0665599   -0.0210632   0.1466637
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0357604   -0.0422037   0.1078922
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0858810   -0.0249496   0.1847272
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1741105    0.0911127   0.2495291
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0207608   -0.0946532   0.1240062
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1301325    0.0212935   0.2268679
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.1249261    0.0242162   0.2152418
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1224976    0.0519586   0.1877881
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0424074   -0.0267369   0.1068953
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1819800    0.1079314   0.2498820
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1472164    0.1144290   0.1787898
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0047064   -0.0825926   0.0675762
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0232018    0.0046641   0.0413942
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0478226   -0.0412185   0.1292492
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.2372838   -0.1129122   0.4772849
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.1246806   -0.5874108   0.2031638
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0584038   -0.1965412   0.0637860
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1854793   -0.5376130   0.0860111
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0180886   -0.1146307   0.1350049
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0334931   -0.0673335   0.1247951
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0785674   -0.1399337   0.2551864
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1469857   -0.0110649   0.2803297
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0795682   -0.0304877   0.1778702
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1363880   -0.0362783   0.2802843
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1613803   -0.0968733   0.3588293
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0765435   -0.0687965   0.2021195
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0908188    0.0062766   0.1681684
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0217635   -0.1665305   0.1796643
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.1184370    0.0137144   0.2120403
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1513161    0.0772037   0.2194763
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.2369874   -0.0594127   0.4504613
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0181663   -0.0015024   0.0374487
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0118046   -0.1095330   0.1198727
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.2848214   -0.1408093   0.5516513
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0153712   -0.4499362   0.3313541
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0993423   -0.1804391   0.3128114
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0620000   -0.5782413   0.2853792
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1939646    0.0387956   0.3240844
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0436059   -0.0834910   0.1557940
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1831756   -0.0022308   0.3342830
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3803238    0.2046311   0.5172070
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0880738   -0.2905409   0.0826291
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1920668    0.0319360   0.3257098
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.2319225    0.0774142   0.3605549
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1842996    0.0242707   0.3180822
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0126296   -0.0934461   0.0622136
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2580778    0.1412127   0.3590396
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1638255    0.1219551   0.2036993
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0301699   -0.1188204   0.0514563
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1131513    0.0447453   0.1766588
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0952168   -0.1256769   0.2727641
