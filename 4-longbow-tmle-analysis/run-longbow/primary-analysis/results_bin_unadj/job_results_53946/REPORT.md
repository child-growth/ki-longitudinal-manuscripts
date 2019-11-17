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

unadjusted

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/a9058970-d776-424d-9ba6-aeacb4123816/959d8163-456b-43ab-94d4-46842cd2205f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a9058970-d776-424d-9ba6-aeacb4123816/959d8163-456b-43ab-94d4-46842cd2205f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a9058970-d776-424d-9ba6-aeacb4123816/959d8163-456b-43ab-94d4-46842cd2205f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a9058970-d776-424d-9ba6-aeacb4123816/959d8163-456b-43ab-94d4-46842cd2205f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.4259259   0.2935940   0.5582578
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.6250000   0.4744655   0.7755345
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.6545455   0.5284515   0.7806394
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.6136364   0.4692728   0.7579999
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5254237   0.3975704   0.6532771
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.5909091   0.4451370   0.7366811
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2380952   0.1086231   0.3675674
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.4285714   0.2443293   0.6128135
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.4642857   0.2786098   0.6499616
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.6250000   0.5382073   0.7117927
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.5942029   0.4781073   0.7102985
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.6721311   0.5540908   0.7901715
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.6744186   0.5337194   0.8151178
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.5135135   0.3517272   0.6752998
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.6666667   0.4972078   0.8361255
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.5912596   0.5098374   0.6726819
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.7461774   0.6806454   0.8117094
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.6960986   0.6579970   0.7342001
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.8000000   0.7251603   0.8748397
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.8231293   0.7613743   0.8848842
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.8509317   0.7958515   0.9060118
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.3534483   0.2918910   0.4150055
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.5168067   0.4532744   0.5803390
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.4347826   0.3706707   0.4988945
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3513514   0.2969306   0.4057721
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.5371901   0.4743275   0.6000527
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.5818182   0.5165954   0.6470410
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.3251670   0.2818292   0.3685049
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.3614173   0.3349902   0.3878445
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.3328313   0.2969817   0.3686810
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5433526   0.4690732   0.6176320
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6891892   0.6364259   0.7419525
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6519824   0.5899718   0.7139930
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.1300332   0.1108237   0.1492428
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.1868183   0.1631805   0.2104562
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.1592711   0.1385078   0.1800344
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.3490000   0.3194561   0.3785439
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.4701557   0.4498104   0.4905011
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.4072433   0.3977921   0.4166945
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7649573   0.7106065   0.8193081
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7848325   0.7509943   0.8186706
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7461024   0.7058282   0.7863767
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2874780   0.2502124   0.3247436
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.4915254   0.4464090   0.5366419
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3725490   0.3256191   0.4194789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5480116   0.5176271   0.5783962
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.8067633   0.7798649   0.8336617
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.7384917   0.7115313   0.7654521
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.6414343   0.5820681   0.7008004
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.6323024   0.5768683   0.6877365
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.6383764   0.5811367   0.6956161
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.3888376   0.3751255   0.4025498
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.5380621   0.5272182   0.5489060
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.5148703   0.5032430   0.5264976
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.4915798   0.4560567   0.5271029
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.6390169   0.6146045   0.6634293
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.5828516   0.5584799   0.6072234
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2777778   0.1579113   0.3976442
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.3500000   0.2016898   0.4983102
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.4181818   0.2873826   0.5489811
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.3636364   0.2210131   0.5062596
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3050847   0.1871938   0.4229757
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2727273   0.1406838   0.4047707
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.4583333   0.3690060   0.5476607
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.4057971   0.2897015   0.5218927
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.3934426   0.2706054   0.5162799
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.4651163   0.3153523   0.6148803
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2432432   0.1043667   0.3821198
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.4666667   0.2873283   0.6460051
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                0.3846154   0.3007873   0.4684435
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.4098361   0.2861271   0.5335451
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.5238095   0.3096969   0.7379221
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3444730   0.2753468   0.4135992
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4823890   0.4403385   0.5244394
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.4123711   0.3526862   0.4720560
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3545455   0.2650413   0.4440496
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3972603   0.3177915   0.4767291
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4062500   0.3300580   0.4824420
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1896552   0.1391737   0.2401366
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3025210   0.2441209   0.3609211
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2260870   0.1719893   0.2801846
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2364865   0.1880469   0.2849261
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3099174   0.2516131   0.3682217
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3818182   0.3175775   0.4460588
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1581292   0.1243737   0.1918847
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2110236   0.1885778   0.2334694
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1897590   0.1599283   0.2195897
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2774566   0.2106889   0.3442244
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3614865   0.3067161   0.4162568
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2951542   0.2357771   0.3545313
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0794237   0.0672571   0.0915904
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.1117170   0.0933637   0.1300704
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0921364   0.0776795   0.1065932
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2204409   0.1947210   0.2461608
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2867042   0.2682581   0.3051503
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2533745   0.2450037   0.2617452
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.3092784   0.2442075   0.3743492
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.3333333   0.2900448   0.3766218
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.3081081   0.2610395   0.3551767
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1323792   0.1042751   0.1604834
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2117904   0.1743585   0.2492223
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1534653   0.1183062   0.1886245
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1629486   0.1404012   0.1854959
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2995169   0.2683124   0.3307215
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2644466   0.2373892   0.2915041
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.2602740   0.1594295   0.3611185
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.3750000   0.2817816   0.4682184
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.4111111   0.3092665   0.5129557
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.3138314   0.3008796   0.3267833
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.4502044   0.4394104   0.4609984
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4346511   0.4229813   0.4463210
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2836579   0.2518162   0.3154997
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3848238   0.3596449   0.4100028
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3495394   0.3252087   0.3738701
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2352941   0.0918961   0.3786921
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4583333   0.2578488   0.6588179
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.4333333   0.2549953   0.6116714
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.4074074   0.2210673   0.5937475
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3611111   0.2033582   0.5188641
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4666667   0.2871777   0.6461556
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.3773585   0.2463172   0.5083998
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.3939394   0.2265354   0.5613434
6-24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.4857143   0.3194462   0.6519823
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.4736842   0.2472117   0.7001567
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.3703704   0.1866305   0.5541103
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.5000000   0.2146328   0.7853672
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3918367   0.3115574   0.4721160
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.5884354   0.5083124   0.6685583
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.5091575   0.4487812   0.5695339
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.7205882   0.6137184   0.8274580
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.7590361   0.6668402   0.8512321
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.7826087   0.6981503   0.8670671
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2196532   0.1578922   0.2814142
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3669065   0.2866964   0.4471166
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3333333   0.2562541   0.4104126
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1566820   0.1082700   0.2050940
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3525641   0.2775172   0.4276110
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3308271   0.2507844   0.4108697
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2396166   0.1923138   0.2869194
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2298436   0.2012288   0.2584583
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2106430   0.1729981   0.2482879
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4423077   0.3467336   0.5378818
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6139241   0.5379155   0.6899326
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.6044776   0.5215841   0.6873711
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0564018   0.0412076   0.0715960
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0857957   0.0703911   0.1012002
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0752454   0.0597978   0.0906930
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2107843   0.1784685   0.2431002
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.3095412   0.2850862   0.3339961
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2541700   0.2434138   0.2649262
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.7828947   0.7173143   0.8484752
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.7771883   0.7351572   0.8192195
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7317881   0.6817918   0.7817844
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1865828   0.1516072   0.2215584
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3688525   0.3194005   0.4183044
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.2678571   0.2204862   0.3152281
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5189542   0.4835396   0.5543689
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7720588   0.7367979   0.8073197
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6934097   0.6591958   0.7276237
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.6228070   0.5598496   0.6857644
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.5800000   0.5187757   0.6412243
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.5938865   0.5302343   0.6575386
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1614058   0.1470568   0.1757547
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2582996   0.2425915   0.2740077
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2168963   0.2012968   0.2324959
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3054945   0.2698872   0.3411018
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.4331723   0.4002249   0.4661197
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3785920   0.3510811   0.4061028


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.4673913   0.9904155   2.174075
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.5367589   1.0662053   2.214984
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              0.8562461   0.6103871   1.201135
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.9629630   0.6848013   1.354112
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.8000000   0.8999615   3.600154
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.9500000   0.9928486   3.829889
0-24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           Low                  High              0.9507246   0.7480880   1.208250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium               High              1.0754098   0.8596850   1.345268
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.7614166   0.5218144   1.111037
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              0.9885057   0.7114857   1.373385
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.2620130   1.0872837   1.464822
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1773145   1.0024416   1.382694
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0289116   0.9126380   1.159999
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.0636646   0.9492907   1.191819
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.4621849   1.1814636   1.809607
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.2301166   0.9791282   1.545443
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.5289256   1.2591533   1.856496
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.6559441   1.3677550   2.004855
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1114820   0.9547315   1.293968
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0235703   0.8623749   1.214896
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2684014   1.0844512   1.483554
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1999250   1.0158464   1.417360
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.4366966   1.2242169   1.686055
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.2248491   1.0951239   1.369941
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.3471510   1.2249743   1.481513
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1668863   1.0688276   1.273941
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.0259821   0.9441607   1.114894
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9753518   0.8920911   1.066383
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.7097848   1.4586791   2.004117
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.2959220   1.0816288   1.552671
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.4721645   1.3799346   1.570559
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.3475839   1.2610295   1.440079
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              0.9857634   0.8677756   1.119794
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              0.9952327   0.8749036   1.132111
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.3837707   1.3303749   1.439310
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.3241267   1.2717985   1.378608
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.2999251   1.2010787   1.406906
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1856705   1.0920456   1.287322
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.2600000   0.6882003   2.306887
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.5054545   0.8835037   2.565234
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              0.8389831   0.4837642   1.455032
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              0.7500000   0.4022133   1.398512
0-6 months    ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           Low                  High              0.8853755   0.6263079   1.251605
0-6 months    ki0047075b-MAL-ED          PERU                           Medium               High              0.8584203   0.5940980   1.240343
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.5229730   0.2715250   1.007276
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.0033333   0.6077246   1.656470
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0655738   0.7343279   1.546240
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium               High              1.3619048   0.8569696   2.164353
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.4003680   1.1098773   1.766890
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1971072   0.9424212   1.520621
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.1204777   0.8119292   1.546281
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.1458333   0.8366422   1.569290
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.5951108   1.1481296   2.216107
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.1920949   0.8334323   1.705106
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.3105077   0.9923295   1.730706
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.6145455   1.2385995   2.104600
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.3345015   1.0513316   1.693941
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2000255   0.9205687   1.564317
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3028575   0.9803868   1.731396
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0637849   0.7773835   1.455701
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.4065955   1.1347232   1.743607
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.1600615   0.9995771   1.346312
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.3005945   1.1383538   1.485958
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1493987   1.0181395   1.297580
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              1.0777778   0.8416876   1.380090
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9962162   0.7681283   1.292033
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              1.5998761   1.2137154   2.108899
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.1592855   0.8482838   1.584308
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.8381067   1.5457810   2.185715
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.6228837   1.3663099   1.927639
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              1.4407895   0.9092357   2.283098
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              1.5795322   0.9972502   2.501801
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.4345421   1.3682731   1.504021
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.3849828   1.3207326   1.452359
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.3566477   1.1922678   1.543691
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2322568   1.0825372   1.402683
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.9479167   0.9199737   4.124443
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.8416667   0.8827489   3.842244
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              0.8863636   0.4708979   1.668388
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.1454545   0.6301478   2.082156
6-24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          PERU                           Low                  High              1.0439394   0.6030298   1.807223
6-24 months   ki0047075b-MAL-ED          PERU                           Medium               High              1.2871429   0.7904194   2.096022
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.7818930   0.3925769   1.557291
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.0555556   0.5013438   2.222422
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.5017361   1.1457077   1.968400
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.2994124   1.0348411   1.631625
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.0533563   0.8696023   1.275939
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.0860692   0.9040660   1.304713
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.6703900   1.1698742   2.385045
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.5175439   1.0544782   2.183961
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.2501885   1.5462116   3.274680
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              2.1114551   1.4260923   3.126195
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.9592138   0.7595494   1.211364
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              0.8790835   0.6735696   1.147302
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3880022   1.0820193   1.780514
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.3666450   1.0580598   1.765230
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.5211507   1.2014243   1.925964
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.3340948   1.1273532   1.578750
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.4685208   1.2358814   1.744952
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.2058297   1.0285211   1.413705
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9927111   0.8985049   1.096795
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9347209   0.8389514   1.041423
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.9768834   1.5699719   2.489260
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.4355939   1.1094527   1.857609
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.4877204   1.3704373   1.615041
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.3361674   1.2282540   1.453562
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              0.9312676   0.8046375   1.077826
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              0.9535642   0.8229355   1.104928
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.6003118   1.4390605   1.779632
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.3437953   1.2000867   1.504713
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.4179381   1.2373293   1.624910
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2392758   1.0850021   1.415485


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1378325    0.0319925   0.2436724
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0422078   -0.1638971   0.0794815
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.1190476    0.0118694   0.2262258
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0030000   -0.0594935   0.0654935
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0562368   -0.1686540   0.0561804
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0995900    0.0304356   0.1687445
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0277512   -0.0352294   0.0907318
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0822660    0.0309948   0.1335372
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1262212    0.0824642   0.1699783
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0214549   -0.0177324   0.0606422
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0974520    0.0338375   0.1610665
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0352236    0.0197299   0.0507173
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0646118    0.0360916   0.0931320
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0022427   -0.0467200   0.0512055
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0905455    0.0601314   0.1209597
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1419189    0.1185167   0.1653211
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0042879   -0.0537036   0.0451278
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1043198    0.0927520   0.1158877
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0904900    0.0611798   0.1198002
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0712155   -0.0280351   0.1704661
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0507112   -0.1682750   0.0668526
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0303333   -0.0943340   0.0336673
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0742072   -0.1894674   0.0410531
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0210450   -0.0318550   0.0739449
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0805434    0.0205873   0.1404994
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0348776   -0.0424228   0.1121781
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0503448    0.0071989   0.0934908
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0656243    0.0258276   0.1054210
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0370030    0.0059653   0.0680407
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0415089   -0.0171635   0.1001813
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0183077    0.0051598   0.0314557
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0361568    0.0112859   0.0610277
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0103295   -0.0483505   0.0690094
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0315898    0.0083678   0.0548118
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0752459    0.0555859   0.0949058
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0955313    0.0065435   0.1845191
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0973107    0.0860302   0.1085911
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0633300    0.0360982   0.0905619
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.1283422    0.0063135   0.2503710
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0011947   -0.1558118   0.1582013
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0358646   -0.0635874   0.1353167
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0426497   -0.2276203   0.1423208
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1106263    0.0371136   0.1841390
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0366134   -0.0525349   0.1257617
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0807854    0.0288758   0.1326950
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1061638    0.0636505   0.1486771
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0132843   -0.0554905   0.0289219
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1233489    0.0413372   0.2053605
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0197768    0.0104367   0.0291169
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0493606    0.0180678   0.0806535
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0211619   -0.0808902   0.0385664
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0797446    0.0502379   0.1092513
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1292769    0.1021706   0.1563833
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0245043   -0.0766089   0.0276002
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0537978    0.0412026   0.0663931
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0734558    0.0435704   0.1033412


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.2444885    0.0274820   0.4130725
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0738636   -0.3099772   0.1196922
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.3333333   -0.0403132   0.5727782
0-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0047771   -0.0998828   0.0994780
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0909713   -0.2903350   0.0775897
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1441559    0.0371937   0.2392351
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0335260   -0.0457624   0.1068028
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1888072    0.0618582   0.2985776
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.2642974    0.1658996   0.3510874
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0618970   -0.0582521   0.1684050
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1520776    0.0459406   0.2464070
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.2131445    0.1209727   0.2956515
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1562136    0.0843492   0.2224378
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0029233   -0.0629839   0.0647440
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2395236    0.1547888   0.3157635
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2057003    0.1700694   0.2398014
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0067298   -0.0873556   0.0679176
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2115345    0.1876288   0.2347368
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1554624    0.1027529   0.2050754
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.2040598   -0.1370274   0.4428272
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.1620553   -0.6057524   0.1590406
0-6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0708723   -0.2315900   0.0688724
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1898323   -0.5266938   0.0727014
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0518784   -0.0880127   0.1737829
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1895065    0.0330162   0.3206714
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0895623   -0.1322979   0.2679516
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2097701    0.0092456   0.3697093
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.2172194    0.0745602   0.3378873
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1896305    0.0144430   0.3336775
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1301359   -0.0745812   0.2958527
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.1873270    0.0555382   0.3007262
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1409086    0.0383417   0.2325361
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0323193   -0.1698513   0.1995512
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.1926570    0.0393285   0.3215135
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3159009    0.2298567   0.3923319
0-6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.2684932   -0.0286647   0.4798089
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2366838    0.2088263   0.2635604
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1825136    0.0993838   0.2579703
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.3529412   -0.0805799   0.6125367
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0029240   -0.4658740   0.3217967
6-24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0867925   -0.1888409   0.2985201
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0989474   -0.6249220   0.2567734
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.2201681    0.0608768   0.3524408
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0483536   -0.0772550   0.1593161
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2688916    0.0759330   0.4215577
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.4039015    0.2263199   0.5407230
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                -0.0586939   -0.2625698   0.1122608
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.2180632    0.0572434   0.3514496
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.2596111    0.1265182   0.3724245
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1897427    0.0601634   0.3014565
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0277812   -0.1093038   0.0477502
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2994231    0.1814976   0.4003586
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1994303    0.1554983   0.2410769
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                -0.0409564   -0.1318706   0.0426554
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2499858    0.1900997   0.3054437
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1938403    0.1102473   0.2695796
