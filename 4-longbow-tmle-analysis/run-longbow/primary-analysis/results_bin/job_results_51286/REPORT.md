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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

* arm
* W_mage
* feducyrs
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* impsan
* delta_W_mage
* delta_feducyrs
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        meducyrs    swasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              0       71     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              1        1     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               0       61     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               1        2     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            0       57     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            1        3     195
Birth       ki0047075b-MAL-ED          BRAZIL                         High              0       63     182
Birth       ki0047075b-MAL-ED          BRAZIL                         High              1        0     182
Birth       ki0047075b-MAL-ED          BRAZIL                         Low               0       51     182
Birth       ki0047075b-MAL-ED          BRAZIL                         Low               1        0     182
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium            0       68     182
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium            1        0     182
Birth       ki0047075b-MAL-ED          INDIA                          High              0       50     180
Birth       ki0047075b-MAL-ED          INDIA                          High              1        1     180
Birth       ki0047075b-MAL-ED          INDIA                          Low               0       59     180
Birth       ki0047075b-MAL-ED          INDIA                          Low               1        1     180
Birth       ki0047075b-MAL-ED          INDIA                          Medium            0       64     180
Birth       ki0047075b-MAL-ED          INDIA                          Medium            1        5     180
Birth       ki0047075b-MAL-ED          NEPAL                          High              0       36     155
Birth       ki0047075b-MAL-ED          NEPAL                          High              1        1     155
Birth       ki0047075b-MAL-ED          NEPAL                          Low               0       65     155
Birth       ki0047075b-MAL-ED          NEPAL                          Low               1        0     155
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            0       51     155
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            1        2     155
Birth       ki0047075b-MAL-ED          PERU                           High              0       82     278
Birth       ki0047075b-MAL-ED          PERU                           High              1        0     278
Birth       ki0047075b-MAL-ED          PERU                           Low               0       98     278
Birth       ki0047075b-MAL-ED          PERU                           Low               1        0     278
Birth       ki0047075b-MAL-ED          PERU                           Medium            0       98     278
Birth       ki0047075b-MAL-ED          PERU                           Medium            1        0     278
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       72     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        0     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0      127     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        2     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       57     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        0     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        4     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       34     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        0     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       64     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        1     103
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High              0       48      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High              1        0      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low               0       14      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low               1        2      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0       21      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1        3      88
Birth       ki1000108-IRC              INDIA                          High              0       89     343
Birth       ki1000108-IRC              INDIA                          High              1       12     343
Birth       ki1000108-IRC              INDIA                          Low               0      102     343
Birth       ki1000108-IRC              INDIA                          Low               1       24     343
Birth       ki1000108-IRC              INDIA                          Medium            0       98     343
Birth       ki1000108-IRC              INDIA                          Medium            1       18     343
Birth       ki1000109-EE               PAKISTAN                       High              0        0       1
Birth       ki1000109-EE               PAKISTAN                       High              1        0       1
Birth       ki1000109-EE               PAKISTAN                       Low               0        1       1
Birth       ki1000109-EE               PAKISTAN                       Low               1        0       1
Birth       ki1000109-EE               PAKISTAN                       Medium            0        0       1
Birth       ki1000109-EE               PAKISTAN                       Medium            1        0       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              0       29     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               0       73     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            0       59     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            1        4     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     High              0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     High              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low               0       13      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low               1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium            0        9      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium            1        1      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              0        6      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               0       11      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0        5      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        1      23
Birth       ki1119695-PROBIT           BELARUS                        High              0     2102   13824
Birth       ki1119695-PROBIT           BELARUS                        High              1      138   13824
Birth       ki1119695-PROBIT           BELARUS                        Low               0     4599   13824
Birth       ki1119695-PROBIT           BELARUS                        Low               1      343   13824
Birth       ki1119695-PROBIT           BELARUS                        Medium            0     6212   13824
Birth       ki1119695-PROBIT           BELARUS                        Medium            1      430   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              0     6547   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              1      468   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2549   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      147   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     3010   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      175   12896
Birth       ki1135781-COHORTS          GUATEMALA                      High              0      145     748
Birth       ki1135781-COHORTS          GUATEMALA                      High              1       12     748
Birth       ki1135781-COHORTS          GUATEMALA                      Low               0      325     748
Birth       ki1135781-COHORTS          GUATEMALA                      Low               1       19     748
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            0      220     748
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            1       27     748
Birth       ki1135781-COHORTS          INDIA                          High              0      632    4879
Birth       ki1135781-COHORTS          INDIA                          High              1       24    4879
Birth       ki1135781-COHORTS          INDIA                          Low               0     1513    4879
Birth       ki1135781-COHORTS          INDIA                          Low               1       89    4879
Birth       ki1135781-COHORTS          INDIA                          Medium            0     2494    4879
Birth       ki1135781-COHORTS          INDIA                          Medium            1      127    4879
Birth       ki1135781-COHORTS          PHILIPPINES                    High              0     1076    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    High              1       52    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               0      810    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               1       28    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            0      892    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            1       41    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              0     4585   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              1       63   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               0     6096   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               1      111   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     4750   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            1       80   15685
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              0        4     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              1        0     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               0      290     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               1        3     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            0        3     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            1        0     300
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              0       73     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              1        0     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               0       62     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               1        2     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            0       59     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            1        0     196
6 months    ki0047075b-MAL-ED          BRAZIL                         High              0       71     208
6 months    ki0047075b-MAL-ED          BRAZIL                         High              1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Low               0       56     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Low               1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium            0       81     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium            1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          High              0       58     208
6 months    ki0047075b-MAL-ED          INDIA                          High              1        1     208
6 months    ki0047075b-MAL-ED          INDIA                          Low               0       71     208
6 months    ki0047075b-MAL-ED          INDIA                          Low               1        1     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium            0       75     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium            1        2     208
6 months    ki0047075b-MAL-ED          NEPAL                          High              0       53     221
6 months    ki0047075b-MAL-ED          NEPAL                          High              1        0     221
6 months    ki0047075b-MAL-ED          NEPAL                          Low               0       93     221
6 months    ki0047075b-MAL-ED          NEPAL                          Low               1        0     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            0       75     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            1        0     221
6 months    ki0047075b-MAL-ED          PERU                           High              0       81     272
6 months    ki0047075b-MAL-ED          PERU                           High              1        0     272
6 months    ki0047075b-MAL-ED          PERU                           Low               0       94     272
6 months    ki0047075b-MAL-ED          PERU                           Low               1        0     272
6 months    ki0047075b-MAL-ED          PERU                           Medium            0       97     272
6 months    ki0047075b-MAL-ED          PERU                           Medium            1        0     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       70     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0      125     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       56     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        1     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        9     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       62     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        0     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0      132     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0     203
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High              0      152     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High              1        5     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low               0      101     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low               1        3     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0      103     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1        4     368
6 months    ki1000108-IRC              INDIA                          High              0      118     408
6 months    ki1000108-IRC              INDIA                          High              1        6     408
6 months    ki1000108-IRC              INDIA                          Low               0      138     408
6 months    ki1000108-IRC              INDIA                          Low               1        7     408
6 months    ki1000108-IRC              INDIA                          Medium            0      130     408
6 months    ki1000108-IRC              INDIA                          Medium            1        9     408
6 months    ki1000109-EE               PAKISTAN                       High              0       15     373
6 months    ki1000109-EE               PAKISTAN                       High              1        0     373
6 months    ki1000109-EE               PAKISTAN                       Low               0      316     373
6 months    ki1000109-EE               PAKISTAN                       Low               1        9     373
6 months    ki1000109-EE               PAKISTAN                       Medium            0       33     373
6 months    ki1000109-EE               PAKISTAN                       Medium            1        0     373
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              0      285    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              1        4    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               0      565    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               1       31    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            0      441    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            1        8    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              0       35     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              1        0     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               0      287     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               1       17     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0       39     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1        2     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     High              0      153     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     High              1        2     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low               0      191     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low               1        3     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium            0      187     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium            1        0     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              0      202     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              1        1     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               0      177     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               1        3     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            0      198     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            1        1     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              0      240     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      229     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      246     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      508    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        4    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0       74    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        0    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0     1426    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        8    2020
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High              0      117     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High              1        0     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low               0       73     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low               1        0     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium            0       87     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium            1        0     277
6 months    ki1113344-GMS-Nepal        NEPAL                          High              0       67     560
6 months    ki1113344-GMS-Nepal        NEPAL                          High              1        0     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               0      394     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               1        5     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            0       92     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            1        2     560
6 months    ki1119695-PROBIT           BELARUS                        High              0     2655   15757
6 months    ki1119695-PROBIT           BELARUS                        High              1        1   15757
6 months    ki1119695-PROBIT           BELARUS                        Low               0     5632   15757
6 months    ki1119695-PROBIT           BELARUS                        Low               1       10   15757
6 months    ki1119695-PROBIT           BELARUS                        Medium            0     7454   15757
6 months    ki1119695-PROBIT           BELARUS                        Medium            1        5   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              0     4430    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              1       35    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     1696    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               1       21    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     2046    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1       23    8251
6 months    ki1135781-COHORTS          GUATEMALA                      High              0      182     953
6 months    ki1135781-COHORTS          GUATEMALA                      High              1        3     953
6 months    ki1135781-COHORTS          GUATEMALA                      Low               0      447     953
6 months    ki1135781-COHORTS          GUATEMALA                      Low               1        2     953
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            0      318     953
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            1        1     953
6 months    ki1135781-COHORTS          INDIA                          High              0      730    5407
6 months    ki1135781-COHORTS          INDIA                          High              1        7    5407
6 months    ki1135781-COHORTS          INDIA                          Low               0     1705    5407
6 months    ki1135781-COHORTS          INDIA                          Low               1       69    5407
6 months    ki1135781-COHORTS          INDIA                          Medium            0     2811    5407
6 months    ki1135781-COHORTS          INDIA                          Medium            1       85    5407
6 months    ki1135781-COHORTS          PHILIPPINES                    High              0     1006    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    High              1        9    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               0      811    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               1       13    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            0      854    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            1       13    2706
6 months    ki1148112-LCNI-5           MALAWI                         High              0      298     813
6 months    ki1148112-LCNI-5           MALAWI                         High              1        0     813
6 months    ki1148112-LCNI-5           MALAWI                         Low               0      261     813
6 months    ki1148112-LCNI-5           MALAWI                         Low               1        0     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium            0      254     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium            1        0     813
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              0     5837   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              1       72   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               0     5531   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               1       81   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     5170   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            1       76   16767
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              0       68    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              1        0    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1885    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               1       16    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            0       69    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            1        0    2038
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       64     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1        0     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       59     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1        0     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       48     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1        0     171
24 months   ki0047075b-MAL-ED          BRAZIL                         High              0       62     168
24 months   ki0047075b-MAL-ED          BRAZIL                         High              1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low               0       41     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low               1        1     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            0       64     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            1        0     168
24 months   ki0047075b-MAL-ED          INDIA                          High              0       55     199
24 months   ki0047075b-MAL-ED          INDIA                          High              1        0     199
24 months   ki0047075b-MAL-ED          INDIA                          Low               0       68     199
24 months   ki0047075b-MAL-ED          INDIA                          Low               1        1     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       74     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium            1        1     199
24 months   ki0047075b-MAL-ED          NEPAL                          High              0       48     213
24 months   ki0047075b-MAL-ED          NEPAL                          High              1        0     213
24 months   ki0047075b-MAL-ED          NEPAL                          Low               0       91     213
24 months   ki0047075b-MAL-ED          NEPAL                          Low               1        0     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       74     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1        0     213
24 months   ki0047075b-MAL-ED          PERU                           High              0       59     200
24 months   ki0047075b-MAL-ED          PERU                           High              1        0     200
24 months   ki0047075b-MAL-ED          PERU                           Low               0       74     200
24 months   ki0047075b-MAL-ED          PERU                           Low               1        0     200
24 months   ki0047075b-MAL-ED          PERU                           Medium            0       66     200
24 months   ki0047075b-MAL-ED          PERU                           Medium            1        1     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       67     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0      120     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       51     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        7     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       54     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        0     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0      114     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0     175
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              0      158     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              1        0     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               0      103     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0      108     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1        1     372
24 months   ki1000108-IRC              INDIA                          High              0      122     409
24 months   ki1000108-IRC              INDIA                          High              1        2     409
24 months   ki1000108-IRC              INDIA                          Low               0      145     409
24 months   ki1000108-IRC              INDIA                          Low               1        1     409
24 months   ki1000108-IRC              INDIA                          Medium            0      137     409
24 months   ki1000108-IRC              INDIA                          Medium            1        2     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     High              0      128     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     High              1        2     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               0      149     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               1        3     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            0      141     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            1        5     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      199     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1        2     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0      169     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1        4     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      201     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1        3     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              0      190     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      145     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      175     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        2     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High              0       56     495
24 months   ki1113344-GMS-Nepal        NEPAL                          High              1        2     495
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      341     495
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1        9     495
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0       83     495
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1        4     495
24 months   ki1119695-PROBIT           BELARUS                        High              0      654    3971
24 months   ki1119695-PROBIT           BELARUS                        High              1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        Low               0     1379    3971
24 months   ki1119695-PROBIT           BELARUS                        Low               1        2    3971
24 months   ki1119695-PROBIT           BELARUS                        Medium            0     1934    3971
24 months   ki1119695-PROBIT           BELARUS                        Medium            1        2    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0      164     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1       16     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0      106     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1        8     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0      123     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1        6     423
24 months   ki1135781-COHORTS          GUATEMALA                      High              0      209    1068
24 months   ki1135781-COHORTS          GUATEMALA                      High              1        0    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Low               0      509    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Low               1        3    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0      346    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1        1    1068
24 months   ki1135781-COHORTS          INDIA                          High              0      599    4166
24 months   ki1135781-COHORTS          INDIA                          High              1        2    4166
24 months   ki1135781-COHORTS          INDIA                          Low               0     1238    4166
24 months   ki1135781-COHORTS          INDIA                          Low               1       26    4166
24 months   ki1135781-COHORTS          INDIA                          Medium            0     2286    4166
24 months   ki1135781-COHORTS          INDIA                          Medium            1       15    4166
24 months   ki1135781-COHORTS          PHILIPPINES                    High              0      903    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    High              1        8    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      741    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1        7    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      780    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1       10    2449
24 months   ki1148112-LCNI-5           MALAWI                         High              0      214     556
24 months   ki1148112-LCNI-5           MALAWI                         High              1        0     556
24 months   ki1148112-LCNI-5           MALAWI                         Low               0      172     556
24 months   ki1148112-LCNI-5           MALAWI                         Low               1        0     556
24 months   ki1148112-LCNI-5           MALAWI                         Medium            0      169     556
24 months   ki1148112-LCNI-5           MALAWI                         Medium            1        1     556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     2809    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1      103    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     2881    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1      118    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     2569    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      112    8592
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0       71    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1        0    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1804    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1       51    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0       72    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1        2    2000


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/8d405337-e18c-4d99-9c01-215d0ea324ea/dfa9a4ff-575a-45ff-a68e-930f6d475c91/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8d405337-e18c-4d99-9c01-215d0ea324ea/dfa9a4ff-575a-45ff-a68e-930f6d475c91/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8d405337-e18c-4d99-9c01-215d0ea324ea/dfa9a4ff-575a-45ff-a68e-930f6d475c91/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8d405337-e18c-4d99-9c01-215d0ea324ea/dfa9a4ff-575a-45ff-a68e-930f6d475c91/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC        INDIA         High                 NA                0.1387671   0.0790368   0.1984975
Birth       ki1000108-IRC        INDIA         Low                  NA                0.2051415   0.1359747   0.2743084
Birth       ki1000108-IRC        INDIA         Medium               NA                0.1337938   0.0748507   0.1927369
Birth       ki1119695-PROBIT     BELARUS       High                 NA                0.0654729   0.0330211   0.0979246
Birth       ki1119695-PROBIT     BELARUS       Low                  NA                0.0660470   0.0321353   0.0999587
Birth       ki1119695-PROBIT     BELARUS       Medium               NA                0.0660218   0.0330958   0.0989478
Birth       ki1126311-ZVITAMBO   ZIMBABWE      High                 NA                0.0612812   0.0570243   0.0655380
Birth       ki1126311-ZVITAMBO   ZIMBABWE      Low                  NA                0.0610081   0.0563088   0.0657074
Birth       ki1126311-ZVITAMBO   ZIMBABWE      Medium               NA                0.0623691   0.0576004   0.0671378
Birth       ki1135781-COHORTS    GUATEMALA     High                 NA                0.0804175   0.0395830   0.1212520
Birth       ki1135781-COHORTS    GUATEMALA     Low                  NA                0.0572025   0.0331073   0.0812977
Birth       ki1135781-COHORTS    GUATEMALA     Medium               NA                0.1041148   0.0649997   0.1432299
Birth       ki1135781-COHORTS    INDIA         High                 NA                0.0326189   0.0190054   0.0462325
Birth       ki1135781-COHORTS    INDIA         Low                  NA                0.0562026   0.0449069   0.0674983
Birth       ki1135781-COHORTS    INDIA         Medium               NA                0.0486425   0.0403257   0.0569593
Birth       ki1135781-COHORTS    PHILIPPINES   High                 NA                0.0449610   0.0328760   0.0570461
Birth       ki1135781-COHORTS    PHILIPPINES   Low                  NA                0.0349914   0.0224702   0.0475125
Birth       ki1135781-COHORTS    PHILIPPINES   Medium               NA                0.0439921   0.0306371   0.0573470
Birth       kiGH5241-JiVitA-3    BANGLADESH    High                 NA                0.0163013   0.0134700   0.0191325
Birth       kiGH5241-JiVitA-3    BANGLADESH    Low                  NA                0.0168045   0.0141601   0.0194488
Birth       kiGH5241-JiVitA-3    BANGLADESH    Medium               NA                0.0156324   0.0130387   0.0182262
6 months    ki1000108-IRC        INDIA         High                 NA                0.0483871   0.0105720   0.0862022
6 months    ki1000108-IRC        INDIA         Low                  NA                0.0482759   0.0133443   0.0832074
6 months    ki1000108-IRC        INDIA         Medium               NA                0.0647482   0.0237890   0.1057074
6 months    ki1126311-ZVITAMBO   ZIMBABWE      High                 NA                0.0085578   0.0055738   0.0115418
6 months    ki1126311-ZVITAMBO   ZIMBABWE      Low                  NA                0.0113266   0.0060801   0.0165732
6 months    ki1126311-ZVITAMBO   ZIMBABWE      Medium               NA                0.0107905   0.0061651   0.0154159
6 months    ki1135781-COHORTS    INDIA         High                 NA                0.0094980   0.0024947   0.0165012
6 months    ki1135781-COHORTS    INDIA         Low                  NA                0.0388952   0.0298972   0.0478931
6 months    ki1135781-COHORTS    INDIA         Medium               NA                0.0293508   0.0232029   0.0354988
6 months    ki1135781-COHORTS    PHILIPPINES   High                 NA                0.0088670   0.0030987   0.0146353
6 months    ki1135781-COHORTS    PHILIPPINES   Low                  NA                0.0157767   0.0072669   0.0242865
6 months    ki1135781-COHORTS    PHILIPPINES   Medium               NA                0.0149942   0.0069033   0.0230852
6 months    kiGH5241-JiVitA-3    BANGLADESH    High                 NA                0.0128642   0.0092079   0.0165204
6 months    kiGH5241-JiVitA-3    BANGLADESH    Low                  NA                0.0129329   0.0098716   0.0159942
6 months    kiGH5241-JiVitA-3    BANGLADESH    Medium               NA                0.0141618   0.0105193   0.0178043
24 months   ki1126311-ZVITAMBO   ZIMBABWE      High                 NA                0.0888889   0.0472657   0.1305121
24 months   ki1126311-ZVITAMBO   ZIMBABWE      Low                  NA                0.0701754   0.0232290   0.1171219
24 months   ki1126311-ZVITAMBO   ZIMBABWE      Medium               NA                0.0465116   0.0101280   0.0828952
24 months   ki1135781-COHORTS    PHILIPPINES   High                 NA                0.0087816   0.0027219   0.0148412
24 months   ki1135781-COHORTS    PHILIPPINES   Low                  NA                0.0093583   0.0024568   0.0162598
24 months   ki1135781-COHORTS    PHILIPPINES   Medium               NA                0.0126582   0.0048609   0.0204555
24 months   kiGH5241-JiVitA-3    BANGLADESH    High                 NA                0.0392164   0.0314496   0.0469833
24 months   kiGH5241-JiVitA-3    BANGLADESH    Low                  NA                0.0349123   0.0266817   0.0431430
24 months   kiGH5241-JiVitA-3    BANGLADESH    Medium               NA                0.0438080   0.0332927   0.0543233


### Parameter: E(Y)


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC        INDIA         NA                   NA                0.1574344   0.1188345   0.1960344
Birth       ki1119695-PROBIT     BELARUS       NA                   NA                0.0658999   0.0328405   0.0989593
Birth       ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0612593   0.0571203   0.0653983
Birth       ki1135781-COHORTS    GUATEMALA     NA                   NA                0.0775401   0.0583612   0.0967191
Birth       ki1135781-COHORTS    INDIA         NA                   NA                0.0491904   0.0431214   0.0552594
Birth       ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0161938   0.0138266   0.0185610
6 months    ki1000108-IRC        INDIA         NA                   NA                0.0539216   0.0319786   0.0758646
6 months    ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0095746   0.0074733   0.0116759
6 months    ki1135781-COHORTS    INDIA         NA                   NA                0.0297762   0.0252454   0.0343071
6 months    ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0129342   0.0086762   0.0171922
6 months    kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0136578   0.0115849   0.0157307
24 months   ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0709220   0.0464309   0.0954131
24 months   ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0102082   0.0062264   0.0141901
24 months   kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0387570   0.0344303   0.0430837


### Parameter: RR


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC        INDIA         High                 High              1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC        INDIA         Low                  High              1.4783151   0.8761500   2.494339
Birth       ki1000108-IRC        INDIA         Medium               High              0.9641604   0.5348933   1.737927
Birth       ki1119695-PROBIT     BELARUS       High                 High              1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT     BELARUS       Low                  High              1.0087690   0.9703146   1.048747
Birth       ki1119695-PROBIT     BELARUS       Medium               High              1.0083836   0.9711873   1.047004
Birth       ki1126311-ZVITAMBO   ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE      Low                  High              0.9955439   0.9504757   1.042749
Birth       ki1126311-ZVITAMBO   ZIMBABWE      Medium               High              1.0177536   0.9715543   1.066150
Birth       ki1135781-COHORTS    GUATEMALA     High                 High              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS    GUATEMALA     Low                  High              0.7113188   0.3694013   1.369715
Birth       ki1135781-COHORTS    GUATEMALA     Medium               High              1.2946778   0.6895681   2.430783
Birth       ki1135781-COHORTS    INDIA         High                 High              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS    INDIA         Low                  High              1.7230048   1.0843559   2.737796
Birth       ki1135781-COHORTS    INDIA         Medium               High              1.4912359   0.9502354   2.340246
Birth       ki1135781-COHORTS    PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS    PHILIPPINES   Low                  High              0.7782596   0.4977335   1.216892
Birth       ki1135781-COHORTS    PHILIPPINES   Medium               High              0.9784489   0.6528154   1.466513
Birth       kiGH5241-JiVitA-3    BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3    BANGLADESH    Low                  High              1.0308711   0.8989714   1.182124
Birth       kiGH5241-JiVitA-3    BANGLADESH    Medium               High              0.9589712   0.8166678   1.126071
6 months    ki1000108-IRC        INDIA         High                 High              1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC        INDIA         Low                  High              0.9977011   0.3439183   2.894314
6 months    ki1000108-IRC        INDIA         Medium               High              1.3381295   0.4895938   3.657299
6 months    ki1126311-ZVITAMBO   ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO   ZIMBABWE      Low                  High              1.3235512   0.7412563   2.363269
6 months    ki1126311-ZVITAMBO   ZIMBABWE      Medium               High              1.2608969   0.7255372   2.191288
6 months    ki1135781-COHORTS    INDIA         High                 High              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS    INDIA         Low                  High              4.0951039   1.8908265   8.869072
6 months    ki1135781-COHORTS    INDIA         Medium               High              3.0902230   1.4358105   6.650932
6 months    ki1135781-COHORTS    PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS    PHILIPPINES   Low                  High              1.7792611   0.7642414   4.142369
6 months    ki1135781-COHORTS    PHILIPPINES   Medium               High              1.6910163   0.7262384   3.937462
6 months    kiGH5241-JiVitA-3    BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3    BANGLADESH    Low                  High              1.0053445   0.6932275   1.457988
6 months    kiGH5241-JiVitA-3    BANGLADESH    Medium               High              1.1008711   0.7557775   1.603537
24 months   ki1126311-ZVITAMBO   ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO   ZIMBABWE      Low                  High              0.7894737   0.3488986   1.786389
24 months   ki1126311-ZVITAMBO   ZIMBABWE      Medium               High              0.5232558   0.2102674   1.302135
24 months   ki1135781-COHORTS    PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS    PHILIPPINES   Low                  High              1.0656751   0.3881533   2.925812
24 months   ki1135781-COHORTS    PHILIPPINES   Medium               High              1.4414557   0.5715907   3.635109
24 months   kiGH5241-JiVitA-3    BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3    BANGLADESH    Low                  High              0.8902471   0.6562310   1.207715
24 months   kiGH5241-JiVitA-3    BANGLADESH    Medium               High              1.1170830   0.8166004   1.528134


### Parameter: PAR


agecat      studyid              country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC        INDIA         High                 NA                 0.0186673   -0.0324616   0.0697962
Birth       ki1119695-PROBIT     BELARUS       High                 NA                 0.0004270   -0.0013360   0.0021900
Birth       ki1126311-ZVITAMBO   ZIMBABWE      High                 NA                -0.0000218   -0.0009972   0.0009535
Birth       ki1135781-COHORTS    GUATEMALA     High                 NA                -0.0028774   -0.0392005   0.0334457
Birth       ki1135781-COHORTS    INDIA         High                 NA                 0.0165715    0.0034899   0.0296530
Birth       ki1135781-COHORTS    PHILIPPINES   High                 NA                -0.0032225   -0.0124069   0.0059619
Birth       kiGH5241-JiVitA-3    BANGLADESH    High                 NA                -0.0001074   -0.0017087   0.0014938
6 months    ki1000108-IRC        INDIA         High                 NA                 0.0055345   -0.0267498   0.0378187
6 months    ki1126311-ZVITAMBO   ZIMBABWE      High                 NA                 0.0010168   -0.0013496   0.0033833
6 months    ki1135781-COHORTS    INDIA         High                 NA                 0.0202783    0.0127813   0.0277752
6 months    ki1135781-COHORTS    PHILIPPINES   High                 NA                 0.0040672   -0.0010750   0.0092095
6 months    kiGH5241-JiVitA-3    BANGLADESH    High                 NA                 0.0007936   -0.0023362   0.0039235
24 months   ki1126311-ZVITAMBO   ZIMBABWE      High                 NA                -0.0179669   -0.0472559   0.0113221
24 months   ki1135781-COHORTS    PHILIPPINES   High                 NA                 0.0014267   -0.0035989   0.0064523
24 months   kiGH5241-JiVitA-3    BANGLADESH    High                 NA                -0.0004595   -0.0073606   0.0064417


### Parameter: PAF


agecat      studyid              country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC        INDIA         High                 NA                 0.1185717   -0.2702593   0.3883802
Birth       ki1119695-PROBIT     BELARUS       High                 NA                 0.0064796   -0.0195907   0.0318834
Birth       ki1126311-ZVITAMBO   ZIMBABWE      High                 NA                -0.0003567   -0.0164048   0.0154381
Birth       ki1135781-COHORTS    GUATEMALA     High                 NA                -0.0371089   -0.6295926   0.3399609
Birth       ki1135781-COHORTS    INDIA         High                 NA                 0.3368844    0.0137244   0.5541588
Birth       ki1135781-COHORTS    PHILIPPINES   High                 NA                -0.0772069   -0.3207729   0.1214427
Birth       kiGH5241-JiVitA-3    BANGLADESH    High                 NA                -0.0066343   -0.1105610   0.0875669
6 months    ki1000108-IRC        INDIA         High                 NA                 0.1026393   -0.7462155   0.5388563
6 months    ki1126311-ZVITAMBO   ZIMBABWE      High                 NA                 0.1062003   -0.1765223   0.3209837
6 months    ki1135781-COHORTS    INDIA         High                 NA                 0.6810218    0.3441589   0.8448601
6 months    ki1135781-COHORTS    PHILIPPINES   High                 NA                 0.3144546   -0.2005200   0.6085259
6 months    kiGH5241-JiVitA-3    BANGLADESH    High                 NA                 0.0581078   -0.2009264   0.2612695
24 months   ki1126311-ZVITAMBO   ZIMBABWE      High                 NA                -0.2533333   -0.7319954   0.0930435
24 months   ki1135781-COHORTS    PHILIPPINES   High                 NA                 0.1397585   -0.5193606   0.5129429
24 months   kiGH5241-JiVitA-3    BANGLADESH    High                 NA                -0.0118549   -0.2067111   0.1515364
