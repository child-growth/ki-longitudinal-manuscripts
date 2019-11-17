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

agecat        studyid                    country                        feducyrs    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       31     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1       23     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       15     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1       25     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       19     149
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       36     149
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       17     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   1       27     147
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
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       14     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1       29     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       18     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       19     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       10     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1       20     110
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       19     212
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1      111     212
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
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      130     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1      100     700
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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       79     696
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       94     696
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0       92     696
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1      204     696
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       79     696
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1      148     696
0-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2355   16314
0-24 months   ki1119695-PROBIT           BELARUS                        High                   1      352   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     5219   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    1     1199   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     6044   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1     1145   16314
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      651   13694
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      349   13694
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     1225   13694
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1     1087   13694
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     6154   13694
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1     4228   13694
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     3975   26233
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1     2529   26233
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     4982   26233
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1     5803   26233
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     4339   26233
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1     4605   26233
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0      634    5276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1      613    5276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0      705    5276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1     1248    5276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0      866    5276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1     1210    5276
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   0       39     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   1       15     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    0       26     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    1       14     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       32     149
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       23     149
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   0       28     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   1       16     147
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
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       23     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1       20     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       28     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1        9     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       16     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1       14     110
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       80     212
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1       50     212
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      178     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       52     700
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   0      125     696
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   1       48     696
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    0      189     696
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    1      107     696
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 0      160     696
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 1       67     696
0-6 months    ki1119695-PROBIT           BELARUS                        High                   0     2492   16310
0-6 months    ki1119695-PROBIT           BELARUS                        High                   1      215   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    0     5701   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    1      717   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 0     6523   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 1      662   16310
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      778   13679
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      220   13679
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     1647   13679
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      662   13679
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     7744   13679
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1     2628   13679
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   0     4445   26171
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   1     2033   26171
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     5918   26171
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    1     4846   26171
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     5048   26171
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1     3881   26171
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   0      846    4980
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   1      335    4980
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    0     1135    4980
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    1      710    4980
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0     1271    4980
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1      683    4980
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       26      88
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1        8      88
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       13      88
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1       11      88
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       17      88
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1       13      88
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       16      93
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   1       11      93
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       23      93
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1       13      93
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       16      93
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1       14      93
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
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       10      58
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1        9      58
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       17      58
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1       10      58
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0        6      58
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        6      58
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0       17     121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1       61     121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0        7     121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1       26     121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0        3     121
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1        7     121
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
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      135     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1       38     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0       88     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1       51     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0       96     456
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1       48     456
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0       58     396
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       46     396
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0       61     396
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1       97     396
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0       53     396
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       81     396
6-24 months   ki1119695-PROBIT           BELARUS                        High                   0     2292   14466
6-24 months   ki1119695-PROBIT           BELARUS                        High                   1      137   14466
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     5136   14466
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    1      482   14466
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     5936   14466
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1      483   14466
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      483    8280
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1      129    8280
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0      948    8280
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      425    8280
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     4695    8280
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1     1600    8280
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     2577   10116
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1      496   10116
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     2748   10116
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      957   10116
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     2614   10116
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      724   10116
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0      632    3544
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1      278    3544
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0      704    3544
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1      538    3544
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0      865    3544
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1      527    3544


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
![](/tmp/e9516942-6e67-4207-991e-d1ab9bf534aa/09950c0b-e3f6-4f24-901b-11c352d3b9cc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e9516942-6e67-4207-991e-d1ab9bf534aa/09950c0b-e3f6-4f24-901b-11c352d3b9cc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e9516942-6e67-4207-991e-d1ab9bf534aa/09950c0b-e3f6-4f24-901b-11c352d3b9cc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e9516942-6e67-4207-991e-d1ab9bf534aa/09950c0b-e3f6-4f24-901b-11c352d3b9cc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.4594091   0.3273433   0.5914749
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.6007250   0.4440303   0.7574197
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.6548401   0.5264028   0.7832775
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.6031007   0.4559567   0.7502447
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5412877   0.4155620   0.6670135
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.6148023   0.4661765   0.7634281
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2458153   0.1167218   0.3749088
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.4050821   0.2203436   0.5898205
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.4452888   0.2542709   0.6363068
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.6286977   0.5412766   0.7161189
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.5848901   0.4665664   0.7032137
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.6726009   0.5564390   0.7887627
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.6675965   0.5265612   0.8086318
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.5029502   0.3387811   0.6671192
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.6487187   0.4727931   0.8246442
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.6626050   0.5972382   0.7279717
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.7131539   0.6447194   0.7815885
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.6929837   0.6503275   0.7356400
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.8038357   0.7300253   0.8776460
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.8160656   0.7539275   0.8782037
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.8552277   0.8001720   0.9102834
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.4126816   0.3538863   0.4714768
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4827521   0.4227452   0.5427590
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.4105726   0.3502215   0.4709237
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3936115   0.3443704   0.4428525
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.5179178   0.4572894   0.5785462
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.5424930   0.4816124   0.6033737
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.3397230   0.2968924   0.3825535
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.3515021   0.3256939   0.3773104
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.3435393   0.3082495   0.3788292
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5798554   0.5119512   0.6477596
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6658111   0.6147872   0.7168350
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6604353   0.6011096   0.7197609
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.1438607   0.1232945   0.1644269
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.1791545   0.1547483   0.2035606
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.1605758   0.1397754   0.1813762
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.3737298   0.3454400   0.4020197
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.4469629   0.4266786   0.4672472
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.4112212   0.4019156   0.4205269
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7483613   0.6914129   0.8053098
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7684519   0.7341972   0.8027066
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7642471   0.7258487   0.8026455
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.3054888   0.2705704   0.3404071
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.4504205   0.4080894   0.4927517
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3742955   0.3311101   0.4174809
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5878041   0.5587529   0.6168553
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7857995   0.7585079   0.8130910
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7298337   0.7030079   0.7566596
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.6439897   0.5854536   0.7025258
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.6201394   0.5662026   0.6740762
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.6495077   0.5936928   0.7053226
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4767636   0.4650437   0.4884836
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.5105893   0.5004978   0.5206808
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4930759   0.4825320   0.5036198
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.5203173   0.4871565   0.5534782
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.6219334   0.5988766   0.6449903
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.5834169   0.5601721   0.6066617
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.3042055   0.1840302   0.4243807
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.3101100   0.1513143   0.4689056
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.4206074   0.2916647   0.5495500
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.3251578   0.1839317   0.4663839
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.2944306   0.1810313   0.4078299
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2719374   0.1340912   0.4097835
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.4554010   0.3660869   0.5447151
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.4040266   0.2863780   0.5216753
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.3969438   0.2704839   0.5234036
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.4651163   0.3153523   0.6148803
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2432432   0.1043667   0.3821198
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.4666667   0.2873283   0.6460051
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.3921692   0.3090572   0.4752811
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.3796578   0.2596444   0.4996712
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.5148380   0.2991503   0.7305258
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.4150222   0.3565447   0.4734997
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4470173   0.4075906   0.4864441
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.4025694   0.3545755   0.4505633
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3561758   0.2666092   0.4457424
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3890644   0.3101713   0.4679575
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4143091   0.3392539   0.4893643
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2055818   0.1606718   0.2504918
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2803999   0.2289859   0.3318139
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2202111   0.1721299   0.2682924
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2741002   0.2299204   0.3182800
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3062266   0.2544825   0.3579707
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3302951   0.2770274   0.3835627
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1653094   0.1320197   0.1985991
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2033889   0.1816804   0.2250975
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1990618   0.1695635   0.2285601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3104806   0.2531425   0.3678188
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3377843   0.2904238   0.3851448
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3020306   0.2506918   0.3533693
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0890250   0.0731915   0.1048585
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.1039831   0.0865969   0.1213693
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0948744   0.0803865   0.1093623
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2322793   0.2097732   0.2547853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2649850   0.2484605   0.2815096
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2571647   0.2490539   0.2652755
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.3211099   0.2589018   0.3833180
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.3135500   0.2734598   0.3536402
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.3374133   0.2902148   0.3846118
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1428685   0.1193556   0.1663815
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.1833426   0.1533574   0.2133279
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1601279   0.1312484   0.1890074
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2038747   0.1821097   0.2256398
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2579041   0.2310564   0.2847518
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2565102   0.2319909   0.2810294
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.2670493   0.1631995   0.3708991
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.3709457   0.2773152   0.4645761
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.4113195   0.3069895   0.5156496
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.3979755   0.3873021   0.4086490
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4223613   0.4127632   0.4319594
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4121533   0.4024081   0.4218985
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3156122   0.2886867   0.3425377
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3642542   0.3427100   0.3857983
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3496398   0.3279425   0.3713370
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2352941   0.0918961   0.3786921
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4583333   0.2578488   0.6588179
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.4333333   0.2549953   0.6116714
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.4308152   0.2242518   0.6373785
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3522546   0.1871486   0.5173607
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4562184   0.2659706   0.6464663
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.3910257   0.2574407   0.5246106
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.4275802   0.2543166   0.6008439
6-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.4957813   0.3281264   0.6634361
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.4736842   0.2472117   0.7001567
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.3703704   0.1866305   0.5541103
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.5000000   0.2146328   0.7853672
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.4298583   0.3515849   0.5081318
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.5701622   0.4765838   0.6637406
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.5039291   0.4406932   0.5671649
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.7023385   0.5935754   0.8111015
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.7459348   0.6540893   0.8377803
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.7820646   0.6974669   0.8666622
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2457954   0.1853120   0.3062788
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3535293   0.2741026   0.4329561
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3071349   0.2317092   0.3825607
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1618037   0.1131797   0.2104277
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3414051   0.2684105   0.4143996
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3278829   0.2484057   0.4073600
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2454480   0.1979225   0.2929736
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2268396   0.1983557   0.2553235
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2154252   0.1772906   0.2535598
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4592775   0.3665548   0.5520003
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6092748   0.5348020   0.6837476
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6026479   0.5188786   0.6864172
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0594559   0.0441765   0.0747353
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0836671   0.0682498   0.0990844
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0755191   0.0599161   0.0911221
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2219419   0.1845495   0.2593343
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.3141763   0.2876388   0.3407137
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2562656   0.2453172   0.2672140
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7812964   0.7166166   0.8459762
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7694607   0.7275827   0.8113386
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7430390   0.6942520   0.7918259
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1986577   0.1632297   0.2340857
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3377475   0.2894694   0.3860256
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.2732868   0.2263347   0.3202388
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5430890   0.5087059   0.5774722
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7609910   0.7258211   0.7961609
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6879037   0.6539589   0.7218485
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.6241963   0.5618053   0.6865874
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.5746557   0.5143442   0.6349673
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.6010986   0.5389643   0.6632328
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1873750   0.1718129   0.2029371
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2415356   0.2263412   0.2567300
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2149252   0.1986600   0.2311905
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3134605   0.2783666   0.3485544
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.4252680   0.3924592   0.4580768
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3783365   0.3507474   0.4059256


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5637584   0.4838620   0.6436548
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5714286   0.4911565   0.6517006
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3571429   0.2617885   0.4524972
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6280000   0.5679657   0.6880343
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.6181818   0.5269763   0.7093874
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6908497   0.6505448   0.7311545
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8277512   0.7915095   0.8639929
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4357143   0.3989556   0.4724730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4775726   0.4419904   0.5131548
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3466219   0.3275107   0.3657331
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6408046   0.6051362   0.6764730
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1652568   0.1463320   0.1841817
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4136118   0.4053631   0.4218605
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7672000   0.7437624   0.7906376
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3780235   0.3530310   0.4030160
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6899306   0.6730355   0.7068256
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6371464   0.6040748   0.6702180
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4931575   0.4852626   0.5010523
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5820697   0.5655159   0.5986236
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3489933   0.2722008   0.4257857
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3129252   0.2377120   0.3881383
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4280000   0.3665434   0.4894566
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3909091   0.2993052   0.4825130
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4056604   0.3394074   0.4719134
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4250164   0.3969651   0.4530677
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3894231   0.3425088   0.4363374
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2400000   0.2083392   0.2716608
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3021108   0.2694011   0.3348205
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1951322   0.1792173   0.2110471
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3189655   0.2843148   0.3536162
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0977315   0.0847284   0.1107345
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2565977   0.2492783   0.2639171
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3196078   0.2909760   0.3482397
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1639690   0.1447117   0.1832264
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2381944   0.2226342   0.2537546
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3558052   0.2982716   0.4133389
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4111421   0.4035964   0.4186878
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3469880   0.3313196   0.3626563
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3636364   0.2625541   0.4647186
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4086022   0.3081534   0.5090509
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.4132231   0.3251210   0.5013252
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4310345   0.3024734   0.5595956
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5024631   0.4586872   0.5462389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3004386   0.2583143   0.3425629
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2263323   0.2057897   0.2468748
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5656566   0.5167753   0.6145378
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0761786   0.0621943   0.0901630
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2601449   0.2506947   0.2695951
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7617329   0.7327499   0.7907158
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2663274   0.2410848   0.2915700
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6482312   0.6273346   0.6691278
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5983027   0.5621404   0.6344650
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2152036   0.2057612   0.2246461
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3789503   0.3597979   0.3981028


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.3076036   0.8893450   1.922569
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.4253965   1.0067750   2.018083
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              0.8975080   0.6416025   1.255482
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.0194023   0.7242863   1.434765
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.6479123   0.8342046   3.255335
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.8114773   0.9186242   3.572136
0-24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  High              0.9303200   0.7279983   1.188870
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               High              1.0698319   0.8572124   1.335189
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.7533745   0.5096594   1.113632
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              0.9717227   0.6890236   1.370410
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.0762882   0.9422557   1.229386
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.0458475   0.9314575   1.174285
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0152144   0.9017006   1.143018
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.0639335   0.9517626   1.189324
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.1697932   0.9776694   1.399672
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.9948896   0.8187852   1.208871
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.3158097   1.1196783   1.546297
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.3782450   1.1788419   1.611377
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0346729   0.8957188   1.195183
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0112338   0.8607780   1.187988
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.1482364   1.0028177   1.314742
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1389655   0.9872369   1.314013
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.2453327   1.0622302   1.459998
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.1161895   0.9974844   1.249021
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1959519   1.0961074   1.304891
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1003169   1.0180797   1.189197
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.0268460   0.9414631   1.119973
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0212273   0.9337894   1.116853
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.4744258   1.2809135   1.697173
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.2252349   1.0512357   1.428034
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.3368390   1.2597187   1.418681
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.2416275   1.1691438   1.318605
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              0.9629648   0.8507068   1.090036
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.0085684   0.8912724   1.141301
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0709485   1.0435342   1.099083
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0342146   1.0066380   1.062547
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.1952964   1.1151843   1.281163
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1212713   1.0441630   1.204074
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.0194095   0.5350191   1.942353
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.3826423   0.8399803   2.275887
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              0.9055008   0.5129967   1.598318
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              0.8363243   0.4301484   1.626040
0-6 months    ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  High              0.8871887   0.6246310   1.260110
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               High              0.8716356   0.5994497   1.267410
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.5229730   0.2715250   1.007276
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.0033333   0.6077246   1.656470
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              0.9680970   0.6667121   1.405722
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              1.3127958   0.8249320   2.089182
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.0770926   0.9035986   1.283898
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.9699948   0.8538346   1.101958
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0923380   0.7923141   1.505971
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.1632153   0.8563087   1.580119
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.3639333   1.0512982   1.769540
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.0711604   0.8046648   1.425916
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.1172070   0.9040245   1.380661
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.2050159   0.9818095   1.478967
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.2303534   0.9825218   1.540698
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2041774   0.9400518   1.542514
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.0879400   0.8825250   1.341167
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.9727839   0.7737760   1.222975
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.1680218   0.9422535   1.447885
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0657055   0.9108490   1.246890
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1408037   1.0195791   1.276441
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1071358   1.0032933   1.221726
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9764571   0.7828809   1.217897
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0507721   0.8360373   1.320661
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              1.2832959   1.0520169   1.565420
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.1208058   0.9101373   1.380237
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.2650125   1.1001648   1.454561
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.2581755   1.1010247   1.437757
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              1.3890531   0.8735739   2.208707
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              1.5402382   0.9681337   2.450419
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0612746   1.0319749   1.091406
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0356248   1.0067530   1.065325
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.1541193   1.0475303   1.271554
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1078144   1.0084987   1.216911
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.9479167   0.9199737   4.124443
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.8416667   0.8827489   3.842244
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              0.8176468   0.4177159   1.600481
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.0589655   0.5602286   2.001697
6-24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  High              1.0934837   0.6441332   1.856304
6-24 months   ki0047075b-MAL-ED          PERU                           Medium               High              1.2678995   0.7809411   2.058502
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.7818930   0.3925769   1.557291
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.0555556   0.5013438   2.222422
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.3263957   1.0180493   1.728134
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1723143   0.9474276   1.450581
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0620731   0.8715593   1.294231
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.1135152   0.9219135   1.344938
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.4383075   1.0361899   1.996476
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.2495553   0.8882268   1.757872
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.1099954   1.4618508   3.045510
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              2.0264236   1.3790519   2.977693
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.9241858   0.7340819   1.163521
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.8776816   0.6755457   1.140300
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3265939   1.0506057   1.675083
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.3121650   1.0292195   1.672896
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.4072124   1.1107141   1.782859
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.2701695   1.0628616   1.517912
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.4155790   1.1726431   1.708844
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1546518   0.9705397   1.373690
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9848512   0.8924108   1.086867
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9510334   0.8563208   1.056222
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.7001483   1.3559476   2.131723
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.3756668   1.0776706   1.756064
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.4012270   1.2965307   1.514378
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.2666499   1.1704490   1.370758
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              0.9206330   0.7976462   1.062583
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              0.9629960   0.8352784   1.110242
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.2890491   1.1651427   1.426132
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1470325   1.0275314   1.280432
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.3566878   1.1886562   1.548473
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2069671   1.0605927   1.373543


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1043493   -0.0018212   0.2105197
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0316722   -0.1548244   0.0914801
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.1113276    0.0059386   0.2167165
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0006977   -0.0635424   0.0621469
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0494147   -0.1626883   0.0638590
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0282447   -0.0293635   0.0858529
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0239155   -0.0379987   0.0858298
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0230327   -0.0243175   0.0703830
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0839611    0.0467619   0.1211603
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0068989   -0.0315538   0.0453517
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0609492    0.0041340   0.1177644
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0213961    0.0053338   0.0374584
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0398820    0.0127350   0.0670289
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0188387   -0.0322958   0.0699732
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0725347    0.0454942   0.0995753
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1021264    0.0801441   0.1241088
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0068433   -0.0549541   0.0412675
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0163939    0.0075338   0.0252539
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0617524    0.0351459   0.0883589
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0447878   -0.0547538   0.1443294
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0122326   -0.1275715   0.1031063
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0274010   -0.0915489   0.0367468
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0742072   -0.1894674   0.0410531
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0134912   -0.0369457   0.0639281
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0099942   -0.0344833   0.0544717
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0332473   -0.0435527   0.1100472
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0344182   -0.0013146   0.0701509
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0280106   -0.0041449   0.0601662
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0298228   -0.0004838   0.0601295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0084849   -0.0377084   0.0546782
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0087065   -0.0049163   0.0223293
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0243184    0.0028812   0.0457557
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0015020   -0.0566311   0.0536270
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0211005    0.0044384   0.0377626
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0343197    0.0170456   0.0515939
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0887559   -0.0030376   0.1805495
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0131666    0.0053353   0.0209979
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0313757    0.0098568   0.0528947
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1283422    0.0063135   0.2503710
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0222130   -0.1979991   0.1535730
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0221975   -0.0800530   0.1244479
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0426497   -0.2276203   0.1423208
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0726047    0.0006006   0.1446089
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0548632   -0.0363287   0.1460550
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0546432    0.0045624   0.1047240
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1010421    0.0589785   0.1431058
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0191157   -0.0615366   0.0233051
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1063790    0.0273340   0.1854240
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0167227    0.0060674   0.0273781
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0382030    0.0019212   0.0744849
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0195635   -0.0781487   0.0390216
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0676697    0.0383785   0.0969609
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1051421    0.0790945   0.1311898
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0258936   -0.0769073   0.0251200
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0278286    0.0140641   0.0415932
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0654898    0.0360223   0.0949574


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1850957   -0.0286484   0.3544257
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0554263   -0.2946768   0.1396118
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.3117172   -0.0522653   0.5497967
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                -0.0011110   -0.1063533   0.0941200
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0799355   -0.2809329   0.0895224
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0408840   -0.0458968   0.1204644
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0288922   -0.0489651   0.1009707
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0528620   -0.0621973   0.1554579
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1758080    0.0941305   0.2501212
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0199034   -0.0975526   0.1247896
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0951135    0.0016287   0.1798447
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.1294719    0.0307135   0.2181681
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0964237    0.0283385   0.1597380
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0245551   -0.0444566   0.0890068
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.1918789    0.1172572   0.2601925
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1480242    0.1149688   0.1798451
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0107406   -0.0891413   0.0620166
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0332427    0.0151142   0.0510375
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1060911    0.0586657   0.1511272
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1283344   -0.2075346   0.3707832
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0390912   -0.4809222   0.2709202
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0640211   -0.2251789   0.0759384
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1898323   -0.5266938   0.0727014
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0332574   -0.0995358   0.1500129
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0235148   -0.0874126   0.1231265
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0853757   -0.1349116   0.2629051
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1434091   -0.0180170   0.2792380
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0927165   -0.0199305   0.1929220
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1528339   -0.0172416   0.2944741
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0266013   -0.1295334   0.1611535
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0890858   -0.0580370   0.2157509
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0947726    0.0072663   0.1745655
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0046997   -0.1928798   0.1537946
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.1286859    0.0221793   0.2235915
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1440828    0.0690110   0.2131011
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.2494509   -0.0577482   0.4674310
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0320244    0.0128009   0.0508735
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0904231    0.0259938   0.1505905
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.3529412   -0.0805799   0.6125367
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0543634   -0.5849660   0.2986081
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0537178   -0.2291322   0.2714780
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0989474   -0.6249220   0.2567734
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1444977   -0.0098529   0.2752565
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0724552   -0.0566268   0.1857680
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1818781   -0.0007662   0.3311890
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3844159    0.2087908   0.5210575
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0844587   -0.2890494   0.0876605
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1880629    0.0345569   0.3171614
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.2195197    0.0716915   0.3438071
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1468529   -0.0047136   0.2755548
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0256829   -0.1055845   0.0484440
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2540847    0.1370628   0.3552374
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1621985    0.1203473   0.2020586
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0432785   -0.1321804   0.0386427
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1293129    0.0635321   0.1904731
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1728190    0.0907785   0.2474569
