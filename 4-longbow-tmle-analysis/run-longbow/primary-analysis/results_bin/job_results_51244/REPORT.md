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

agecat      studyid                    country                        meducyrs    wasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High             0       63     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     High             1        9     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low              0       54     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low              1        9     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium           0       45     195
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium           1       15     195
Birth       ki0047075b-MAL-ED          BRAZIL                         High             0       63     182
Birth       ki0047075b-MAL-ED          BRAZIL                         High             1        0     182
Birth       ki0047075b-MAL-ED          BRAZIL                         Low              0       48     182
Birth       ki0047075b-MAL-ED          BRAZIL                         Low              1        3     182
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium           0       65     182
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium           1        3     182
Birth       ki0047075b-MAL-ED          INDIA                          High             0       47     180
Birth       ki0047075b-MAL-ED          INDIA                          High             1        4     180
Birth       ki0047075b-MAL-ED          INDIA                          Low              0       48     180
Birth       ki0047075b-MAL-ED          INDIA                          Low              1       12     180
Birth       ki0047075b-MAL-ED          INDIA                          Medium           0       55     180
Birth       ki0047075b-MAL-ED          INDIA                          Medium           1       14     180
Birth       ki0047075b-MAL-ED          NEPAL                          High             0       30     155
Birth       ki0047075b-MAL-ED          NEPAL                          High             1        7     155
Birth       ki0047075b-MAL-ED          NEPAL                          Low              0       61     155
Birth       ki0047075b-MAL-ED          NEPAL                          Low              1        4     155
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           0       45     155
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           1        8     155
Birth       ki0047075b-MAL-ED          PERU                           High             0       80     278
Birth       ki0047075b-MAL-ED          PERU                           High             1        2     278
Birth       ki0047075b-MAL-ED          PERU                           Low              0       98     278
Birth       ki0047075b-MAL-ED          PERU                           Low              1        0     278
Birth       ki0047075b-MAL-ED          PERU                           Medium           0       94     278
Birth       ki0047075b-MAL-ED          PERU                           Medium           1        4     278
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       66     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        6     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0      120     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        9     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       54     258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        3     258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0        4     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        0     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       34     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        0     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0       63     103
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        2     103
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High             0       44      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High             1        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low              0       12      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low              1        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium           0       18      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium           1        6      88
Birth       ki1000108-IRC              INDIA                          High             0       77     343
Birth       ki1000108-IRC              INDIA                          High             1       24     343
Birth       ki1000108-IRC              INDIA                          Low              0       92     343
Birth       ki1000108-IRC              INDIA                          Low              1       34     343
Birth       ki1000108-IRC              INDIA                          Medium           0       82     343
Birth       ki1000108-IRC              INDIA                          Medium           1       34     343
Birth       ki1000109-EE               PAKISTAN                       High             0        0       1
Birth       ki1000109-EE               PAKISTAN                       High             1        0       1
Birth       ki1000109-EE               PAKISTAN                       Low              0        1       1
Birth       ki1000109-EE               PAKISTAN                       Low              1        0       1
Birth       ki1000109-EE               PAKISTAN                       Medium           0        0       1
Birth       ki1000109-EE               PAKISTAN                       Medium           1        0       1
Birth       ki1000304b-SAS-CompFeed    INDIA                          High             0       26     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          High             1        3     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low              0       71     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low              1        3     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium           0       58     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium           1        5     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     High             0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     High             1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low              0       11      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low              1        3      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium           0        6      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium           1        4      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             0        5      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low              0       10      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low              1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0        5      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1        1      23
Birth       ki1119695-PROBIT           BELARUS                        High             0     1786   13824
Birth       ki1119695-PROBIT           BELARUS                        High             1      454   13824
Birth       ki1119695-PROBIT           BELARUS                        Low              0     3895   13824
Birth       ki1119695-PROBIT           BELARUS                        Low              1     1047   13824
Birth       ki1119695-PROBIT           BELARUS                        Medium           0     5255   13824
Birth       ki1119695-PROBIT           BELARUS                        Medium           1     1387   13824
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High             0     5847   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High             1     1168   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low              0     2307   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low              1      389   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0     2686   12896
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1      499   12896
Birth       ki1135781-COHORTS          GUATEMALA                      High             0      124     748
Birth       ki1135781-COHORTS          GUATEMALA                      High             1       33     748
Birth       ki1135781-COHORTS          GUATEMALA                      Low              0      258     748
Birth       ki1135781-COHORTS          GUATEMALA                      Low              1       86     748
Birth       ki1135781-COHORTS          GUATEMALA                      Medium           0      177     748
Birth       ki1135781-COHORTS          GUATEMALA                      Medium           1       70     748
Birth       ki1135781-COHORTS          INDIA                          High             0      558    4879
Birth       ki1135781-COHORTS          INDIA                          High             1       98    4879
Birth       ki1135781-COHORTS          INDIA                          Low              0     1297    4879
Birth       ki1135781-COHORTS          INDIA                          Low              1      305    4879
Birth       ki1135781-COHORTS          INDIA                          Medium           0     2170    4879
Birth       ki1135781-COHORTS          INDIA                          Medium           1      451    4879
Birth       ki1135781-COHORTS          PHILIPPINES                    High             0      929    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    High             1      199    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low              0      727    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low              1      111    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium           0      792    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium           1      141    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High             0     4254   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High             1      394   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low              0     5553   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low              1      654   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     4372   15685
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      458   15685
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             0        4     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             1        0     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low              0      275     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low              1       18     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           0        3     300
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           1        0     300
6 months    ki0047075b-MAL-ED          BANGLADESH                     High             0       72     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     High             1        1     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low              0       60     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low              1        4     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium           0       58     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium           1        1     196
6 months    ki0047075b-MAL-ED          BRAZIL                         High             0       71     208
6 months    ki0047075b-MAL-ED          BRAZIL                         High             1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Low              0       55     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Low              1        1     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium           0       81     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium           1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          High             0       54     208
6 months    ki0047075b-MAL-ED          INDIA                          High             1        5     208
6 months    ki0047075b-MAL-ED          INDIA                          Low              0       65     208
6 months    ki0047075b-MAL-ED          INDIA                          Low              1        7     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium           0       72     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium           1        5     208
6 months    ki0047075b-MAL-ED          NEPAL                          High             0       53     221
6 months    ki0047075b-MAL-ED          NEPAL                          High             1        0     221
6 months    ki0047075b-MAL-ED          NEPAL                          Low              0       92     221
6 months    ki0047075b-MAL-ED          NEPAL                          Low              1        1     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium           0       73     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium           1        2     221
6 months    ki0047075b-MAL-ED          PERU                           High             0       81     272
6 months    ki0047075b-MAL-ED          PERU                           High             1        0     272
6 months    ki0047075b-MAL-ED          PERU                           Low              0       94     272
6 months    ki0047075b-MAL-ED          PERU                           Low              1        0     272
6 months    ki0047075b-MAL-ED          PERU                           Medium           0       97     272
6 months    ki0047075b-MAL-ED          PERU                           Medium           1        0     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       70     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        0     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0      122     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        5     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       55     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        2     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0        9     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        0     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       62     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        0     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0      131     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        1     203
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High             0      136     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High             1       21     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low              0       95     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low              1        9     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium           0       91     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium           1       16     368
6 months    ki1000108-IRC              INDIA                          High             0      111     408
6 months    ki1000108-IRC              INDIA                          High             1       13     408
6 months    ki1000108-IRC              INDIA                          Low              0      126     408
6 months    ki1000108-IRC              INDIA                          Low              1       19     408
6 months    ki1000108-IRC              INDIA                          Medium           0      117     408
6 months    ki1000108-IRC              INDIA                          Medium           1       22     408
6 months    ki1000109-EE               PAKISTAN                       High             0       15     373
6 months    ki1000109-EE               PAKISTAN                       High             1        0     373
6 months    ki1000109-EE               PAKISTAN                       Low              0      279     373
6 months    ki1000109-EE               PAKISTAN                       Low              1       46     373
6 months    ki1000109-EE               PAKISTAN                       Medium           0       30     373
6 months    ki1000109-EE               PAKISTAN                       Medium           1        3     373
6 months    ki1000304b-SAS-CompFeed    INDIA                          High             0      264    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          High             1       25    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low              0      501    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low              1       95    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium           0      403    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium           1       46    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High             0       32     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High             1        3     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low              0      248     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low              1       56     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium           0       31     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium           1       10     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     High             0      148     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     High             1        7     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low              0      180     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low              1       14     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium           0      174     536
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium           1       13     536
6 months    ki1017093b-PROVIDE         BANGLADESH                     High             0      195     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     High             1        8     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low              0      171     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low              1        9     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium           0      192     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium           1        7     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High             0      237     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High             1        3     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low              0      217     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low              1       12     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0      240     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1        6     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0      491    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1       21    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0       72    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1        2    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0     1370    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1       64    2020
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High             0      117     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High             1        0     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low              0       73     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low              1        0     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium           0       84     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium           1        3     277
6 months    ki1113344-GMS-Nepal        NEPAL                          High             0       63     560
6 months    ki1113344-GMS-Nepal        NEPAL                          High             1        4     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Low              0      359     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Low              1       40     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium           0       87     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium           1        7     560
6 months    ki1119695-PROBIT           BELARUS                        High             0     2641   15757
6 months    ki1119695-PROBIT           BELARUS                        High             1       15   15757
6 months    ki1119695-PROBIT           BELARUS                        Low              0     5585   15757
6 months    ki1119695-PROBIT           BELARUS                        Low              1       57   15757
6 months    ki1119695-PROBIT           BELARUS                        Medium           0     7401   15757
6 months    ki1119695-PROBIT           BELARUS                        Medium           1       58   15757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High             0     4353    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High             1      112    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low              0     1638    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low              1       79    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0     1995    8251
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1       74    8251
6 months    ki1135781-COHORTS          GUATEMALA                      High             0      179     953
6 months    ki1135781-COHORTS          GUATEMALA                      High             1        6     953
6 months    ki1135781-COHORTS          GUATEMALA                      Low              0      430     953
6 months    ki1135781-COHORTS          GUATEMALA                      Low              1       19     953
6 months    ki1135781-COHORTS          GUATEMALA                      Medium           0      313     953
6 months    ki1135781-COHORTS          GUATEMALA                      Medium           1        6     953
6 months    ki1135781-COHORTS          INDIA                          High             0      677    5407
6 months    ki1135781-COHORTS          INDIA                          High             1       60    5407
6 months    ki1135781-COHORTS          INDIA                          Low              0     1479    5407
6 months    ki1135781-COHORTS          INDIA                          Low              1      295    5407
6 months    ki1135781-COHORTS          INDIA                          Medium           0     2557    5407
6 months    ki1135781-COHORTS          INDIA                          Medium           1      339    5407
6 months    ki1135781-COHORTS          PHILIPPINES                    High             0      963    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    High             1       52    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Low              0      764    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Low              1       60    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium           0      818    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium           1       49    2706
6 months    ki1148112-LCNI-5           MALAWI                         High             0      295     813
6 months    ki1148112-LCNI-5           MALAWI                         High             1        3     813
6 months    ki1148112-LCNI-5           MALAWI                         Low              0      254     813
6 months    ki1148112-LCNI-5           MALAWI                         Low              1        7     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium           0      250     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium           1        4     813
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High             0     5463   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High             1      446   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low              0     5075   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low              1      537   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     4810   16767
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      436   16767
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High             0       64    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High             1        4    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low              0     1790    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low              1      111    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium           0       67    2038
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium           1        2    2038
24 months   ki0047075b-MAL-ED          BANGLADESH                     High             0       60     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     High             1        4     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low              0       52     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low              1        7     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium           0       45     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium           1        3     171
24 months   ki0047075b-MAL-ED          BRAZIL                         High             0       62     168
24 months   ki0047075b-MAL-ED          BRAZIL                         High             1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low              0       40     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low              1        2     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium           0       63     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium           1        1     168
24 months   ki0047075b-MAL-ED          INDIA                          High             0       51     199
24 months   ki0047075b-MAL-ED          INDIA                          High             1        4     199
24 months   ki0047075b-MAL-ED          INDIA                          Low              0       60     199
24 months   ki0047075b-MAL-ED          INDIA                          Low              1        9     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium           0       66     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium           1        9     199
24 months   ki0047075b-MAL-ED          NEPAL                          High             0       47     213
24 months   ki0047075b-MAL-ED          NEPAL                          High             1        1     213
24 months   ki0047075b-MAL-ED          NEPAL                          Low              0       89     213
24 months   ki0047075b-MAL-ED          NEPAL                          Low              1        2     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium           0       73     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium           1        1     213
24 months   ki0047075b-MAL-ED          PERU                           High             0       59     200
24 months   ki0047075b-MAL-ED          PERU                           High             1        0     200
24 months   ki0047075b-MAL-ED          PERU                           Low              0       73     200
24 months   ki0047075b-MAL-ED          PERU                           Low              1        1     200
24 months   ki0047075b-MAL-ED          PERU                           Medium           0       65     200
24 months   ki0047075b-MAL-ED          PERU                           Medium           1        2     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       67     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        0     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0      119     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       51     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0        7     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        0     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       51     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        3     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0      114     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        0     175
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High             0      152     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High             1        6     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low              0       95     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low              1       10     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium           0      102     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium           1        7     372
24 months   ki1000108-IRC              INDIA                          High             0      116     409
24 months   ki1000108-IRC              INDIA                          High             1        8     409
24 months   ki1000108-IRC              INDIA                          Low              0      136     409
24 months   ki1000108-IRC              INDIA                          Low              1       10     409
24 months   ki1000108-IRC              INDIA                          Medium           0      126     409
24 months   ki1000108-IRC              INDIA                          Medium           1       13     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     High             0      116     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     High             1       14     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low              0      131     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low              1       21     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium           0      128     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium           1       18     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     High             0      181     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     High             1       20     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low              0      149     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low              1       24     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium           0      183     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium           1       21     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High             0      174     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High             1       17     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low              0      132     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low              1       14     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0      163     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1       14     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High             0       47     495
24 months   ki1113344-GMS-Nepal        NEPAL                          High             1       11     495
24 months   ki1113344-GMS-Nepal        NEPAL                          Low              0      292     495
24 months   ki1113344-GMS-Nepal        NEPAL                          Low              1       58     495
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium           0       66     495
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium           1       21     495
24 months   ki1119695-PROBIT           BELARUS                        High             0      643    3971
24 months   ki1119695-PROBIT           BELARUS                        High             1       11    3971
24 months   ki1119695-PROBIT           BELARUS                        Low              0     1367    3971
24 months   ki1119695-PROBIT           BELARUS                        Low              1       14    3971
24 months   ki1119695-PROBIT           BELARUS                        Medium           0     1917    3971
24 months   ki1119695-PROBIT           BELARUS                        Medium           1       19    3971
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High             0      150     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High             1       30     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low              0       89     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low              1       25     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0      108     423
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1       21     423
24 months   ki1135781-COHORTS          GUATEMALA                      High             0      200    1068
24 months   ki1135781-COHORTS          GUATEMALA                      High             1        9    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Low              0      485    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Low              1       27    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Medium           0      334    1068
24 months   ki1135781-COHORTS          GUATEMALA                      Medium           1       13    1068
24 months   ki1135781-COHORTS          INDIA                          High             0      584    4166
24 months   ki1135781-COHORTS          INDIA                          High             1       17    4166
24 months   ki1135781-COHORTS          INDIA                          Low              0     1067    4166
24 months   ki1135781-COHORTS          INDIA                          Low              1      197    4166
24 months   ki1135781-COHORTS          INDIA                          Medium           0     2131    4166
24 months   ki1135781-COHORTS          INDIA                          Medium           1      170    4166
24 months   ki1135781-COHORTS          PHILIPPINES                    High             0      864    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    High             1       47    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Low              0      681    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Low              1       67    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium           0      737    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium           1       53    2449
24 months   ki1148112-LCNI-5           MALAWI                         High             0      213     556
24 months   ki1148112-LCNI-5           MALAWI                         High             1        1     556
24 months   ki1148112-LCNI-5           MALAWI                         Low              0      167     556
24 months   ki1148112-LCNI-5           MALAWI                         Low              1        5     556
24 months   ki1148112-LCNI-5           MALAWI                         Medium           0      166     556
24 months   ki1148112-LCNI-5           MALAWI                         Medium           1        4     556
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High             0     2305    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High             1      607    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low              0     2340    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low              1      659    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     2073    8592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      608    8592
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High             0       57    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High             1       14    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low              0     1482    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low              1      373    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium           0       67    2000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium           1        7    2000


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/1be356ec-f55e-478b-8cfa-6e5178a736f7/2b955908-a1aa-4be2-8148-90d7db33bcc2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1be356ec-f55e-478b-8cfa-6e5178a736f7/2b955908-a1aa-4be2-8148-90d7db33bcc2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1be356ec-f55e-478b-8cfa-6e5178a736f7/2b955908-a1aa-4be2-8148-90d7db33bcc2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1be356ec-f55e-478b-8cfa-6e5178a736f7/2b955908-a1aa-4be2-8148-90d7db33bcc2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    High                 NA                0.1250000   0.0484126   0.2015874
Birth       ki0047075b-MAL-ED          BANGLADESH    Low                  NA                0.1428571   0.0562264   0.2294878
Birth       ki0047075b-MAL-ED          BANGLADESH    Medium               NA                0.2500000   0.1401527   0.3598473
Birth       ki1000108-IRC              INDIA         High                 NA                0.2573498   0.1805436   0.3341560
Birth       ki1000108-IRC              INDIA         Low                  NA                0.2869781   0.2102231   0.3637331
Birth       ki1000108-IRC              INDIA         Medium               NA                0.2598191   0.1829053   0.3367329
Birth       ki1119695-PROBIT           BELARUS       High                 NA                0.2069936   0.1415012   0.2724859
Birth       ki1119695-PROBIT           BELARUS       Low                  NA                0.2090404   0.1435578   0.2745229
Birth       ki1119695-PROBIT           BELARUS       Medium               NA                0.2093662   0.1439927   0.2747397
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.1601258   0.1536791   0.1665726
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.1583631   0.1513873   0.1653390
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.1578338   0.1511904   0.1644773
Birth       ki1135781-COHORTS          GUATEMALA     High                 NA                0.2220993   0.1581276   0.2860709
Birth       ki1135781-COHORTS          GUATEMALA     Low                  NA                0.2473918   0.2026727   0.2921110
Birth       ki1135781-COHORTS          GUATEMALA     Medium               NA                0.2796949   0.2218795   0.3375102
Birth       ki1135781-COHORTS          INDIA         High                 NA                0.1824844   0.1695763   0.1953925
Birth       ki1135781-COHORTS          INDIA         Low                  NA                0.1776264   0.1659273   0.1893254
Birth       ki1135781-COHORTS          INDIA         Medium               NA                0.1737367   0.1629248   0.1845487
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                0.1574572   0.1438914   0.1710230
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.1538470   0.1398106   0.1678834
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.1553477   0.1405593   0.1701362
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0948408   0.0891255   0.1005562
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0967557   0.0911897   0.1023217
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0940427   0.0882613   0.0998241
6 months    ki0047075b-MAL-ED          INDIA         High                 NA                0.0847458   0.0135099   0.1559816
6 months    ki0047075b-MAL-ED          INDIA         Low                  NA                0.0972222   0.0286258   0.1658187
6 months    ki0047075b-MAL-ED          INDIA         Medium               NA                0.0649351   0.0097642   0.1201059
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.1337580   0.0804406   0.1870753
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0865385   0.0324291   0.1406478
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.1495327   0.0818708   0.2171946
6 months    ki1000108-IRC              INDIA         High                 NA                0.1067833   0.0522929   0.1612737
6 months    ki1000108-IRC              INDIA         Low                  NA                0.1337585   0.0778325   0.1896846
6 months    ki1000108-IRC              INDIA         Medium               NA                0.1532601   0.0928138   0.2137063
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0813709   0.0604411   0.1023007
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.1616222   0.1340346   0.1892098
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.1020136   0.0551314   0.1488959
6 months    ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0451613   0.0124396   0.0778830
6 months    ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.0721649   0.0357188   0.1086111
6 months    ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.0695187   0.0330318   0.1060057
6 months    ki1017093b-PROVIDE         BANGLADESH    High                 NA                0.0394089   0.0126209   0.0661968
6 months    ki1017093b-PROVIDE         BANGLADESH    Low                  NA                0.0500000   0.0181337   0.0818663
6 months    ki1017093b-PROVIDE         BANGLADESH    Medium               NA                0.0351759   0.0095581   0.0607937
6 months    ki1119695-PROBIT           BELARUS       High                 NA                0.0055438   0.0026320   0.0084555
6 months    ki1119695-PROBIT           BELARUS       Low                  NA                0.0101271   0.0067705   0.0134837
6 months    ki1119695-PROBIT           BELARUS       Medium               NA                0.0077784   0.0052610   0.0102957
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0250690   0.0203317   0.0298062
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0441146   0.0336868   0.0545423
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0359139   0.0272483   0.0445796
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                0.0324324   0.0068924   0.0579724
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0423163   0.0236861   0.0609465
6 months    ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0188088   0.0038933   0.0337243
6 months    ki1135781-COHORTS          INDIA         High                 NA                0.0880372   0.0667053   0.1093692
6 months    ki1135781-COHORTS          INDIA         Low                  NA                0.1500488   0.1332457   0.1668518
6 months    ki1135781-COHORTS          INDIA         Medium               NA                0.1191667   0.1069988   0.1313347
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0514464   0.0377021   0.0651906
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0709538   0.0530704   0.0888372
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0547692   0.0396110   0.0699275
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0797756   0.0710590   0.0884923
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0917682   0.0827780   0.1007585
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0825812   0.0742766   0.0908859
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0379747   0.0081316   0.0678178
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.0952381   0.0390156   0.1514606
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.0642202   0.0181371   0.1103033
24 months   ki1000108-IRC              INDIA         High                 NA                0.0645161   0.0212228   0.1078095
24 months   ki1000108-IRC              INDIA         Low                  NA                0.0684932   0.0274709   0.1095154
24 months   ki1000108-IRC              INDIA         Medium               NA                0.0935252   0.0450617   0.1419886
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.1077383   0.0513178   0.1641589
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.1091161   0.0632112   0.1550210
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.1222032   0.0675143   0.1768920
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                0.1002595   0.0585731   0.1419459
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                0.1351425   0.0834182   0.1868668
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               NA                0.1016557   0.0597428   0.1435686
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                0.0873570   0.0466173   0.1280966
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                0.0951969   0.0470100   0.1433838
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               NA                0.0774635   0.0373170   0.1176099
24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                0.1835831   0.0900932   0.2770730
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  NA                0.1654684   0.1257141   0.2052226
24 months   ki1113344-GMS-Nepal        NEPAL         Medium               NA                0.2425927   0.1370441   0.3481414
24 months   ki1119695-PROBIT           BELARUS       High                 NA                0.0169150   0.0054817   0.0283483
24 months   ki1119695-PROBIT           BELARUS       Low                  NA                0.0098464   0.0050761   0.0146167
24 months   ki1119695-PROBIT           BELARUS       Medium               NA                0.0099141   0.0004915   0.0193366
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.1634901   0.1086873   0.2182929
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.2135990   0.1369084   0.2902896
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.1586537   0.0940912   0.2232163
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.0430622   0.0155283   0.0705961
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.0527344   0.0333657   0.0721030
24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0374640   0.0174745   0.0574535
24 months   ki1135781-COHORTS          INDIA         High                 NA                0.0277652   0.0146526   0.0408778
24 months   ki1135781-COHORTS          INDIA         Low                  NA                0.1600404   0.1397058   0.1803750
24 months   ki1135781-COHORTS          INDIA         Medium               NA                0.0736745   0.0629695   0.0843795
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0546643   0.0396716   0.0696570
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0839710   0.0639943   0.1039478
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0674600   0.0491770   0.0857429
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.2280443   0.2077449   0.2483437
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.2098854   0.1933596   0.2264111
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.2271127   0.2073526   0.2468728
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.1971831   0.0971609   0.2972053
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.2010782   0.1790832   0.2230732
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0945946   0.0195393   0.1696499


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1692308   0.1164681   0.2219935
Birth       ki1000108-IRC              INDIA         NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1119695-PROBIT           BELARUS       NA                   NA                0.2089120   0.1435514   0.2742726
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.1594293   0.1531109   0.1657477
Birth       ki1135781-COHORTS          GUATEMALA     NA                   NA                0.2526738   0.2215120   0.2838356
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.1750359   0.1643722   0.1856996
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1555709   0.1423748   0.1687670
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0960153   0.0908094   0.1012212
6 months    ki0047075b-MAL-ED          INDIA         NA                   NA                0.0817308   0.0444108   0.1190507
6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1250000   0.0911644   0.1588356
6 months    ki1000108-IRC              INDIA         NA                   NA                0.1323529   0.0994307   0.1652752
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.0634328   0.0427791   0.0840865
6 months    ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0412371   0.0250690   0.0574052
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0082503   0.0066012   0.0098994
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0321173   0.0283128   0.0359219
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0325289   0.0212599   0.0437978
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.1283521   0.1194359   0.1372684
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0594974   0.0505830   0.0684118
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0846305   0.0798233   0.0894378
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0618280   0.0373207   0.0863352
24 months   ki1000108-IRC              INDIA         NA                   NA                0.0757946   0.0501131   0.1014762
24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1238318   0.0925894   0.1550741
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1818182   0.1478065   0.2158299
24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0110803   0.0050506   0.0171100
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.1796690   0.1430402   0.2162979
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0458801   0.0333262   0.0584341
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.0921747   0.0833896   0.1009599
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0681911   0.0582056   0.0781766
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.2181099   0.2082292   0.2279905
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.1970000   0.1761171   0.2178829


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED          BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          BANGLADESH    Low                  High              1.1428571   0.4826209   2.706312
Birth       ki0047075b-MAL-ED          BANGLADESH    Medium               High              2.0000000   0.9409946   4.250821
Birth       ki1000108-IRC              INDIA         High                 High              1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC              INDIA         Low                  High              1.1151283   0.7593837   1.637527
Birth       ki1000108-IRC              INDIA         Medium               High              1.0095949   0.6781507   1.503032
Birth       ki1119695-PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT           BELARUS       Low                  High              1.0098882   0.9812223   1.039392
Birth       ki1119695-PROBIT           BELARUS       Medium               High              1.0114623   0.9837810   1.039922
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  High              0.9889919   0.9662075   1.012314
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               High              0.9856863   0.9670623   1.004669
Birth       ki1135781-COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA     Low                  High              1.1138796   0.7965096   1.557706
Birth       ki1135781-COHORTS          GUATEMALA     Medium               High              1.2593236   0.8854623   1.791037
Birth       ki1135781-COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA         Low                  High              0.9733782   0.9244203   1.024929
Birth       ki1135781-COHORTS          INDIA         Medium               High              0.9520635   0.9103202   0.995721
Birth       ki1135781-COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  High              0.9770718   0.9342447   1.021862
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               High              0.9866030   0.9350895   1.040954
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  High              1.0201903   0.9814141   1.060499
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               High              0.9915847   0.9500213   1.034966
6 months    ki0047075b-MAL-ED          INDIA         High                 High              1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          INDIA         Low                  High              1.1472222   0.3828517   3.437673
6 months    ki0047075b-MAL-ED          INDIA         Medium               High              0.7662338   0.2319005   2.531750
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  High              0.6469780   0.3082149   1.358080
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               High              1.1179350   0.6116839   2.043177
6 months    ki1000108-IRC              INDIA         High                 High              1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA         Low                  High              1.2526166   0.6478494   2.421934
6 months    ki1000108-IRC              INDIA         Medium               High              1.4352439   0.7531022   2.735253
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 High              1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  High              1.9862406   1.5340725   2.571685
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               High              1.2536867   0.6785915   2.316166
6 months    ki1017093-NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH    Low                  High              1.5979381   0.6606807   3.864811
6 months    ki1017093-NIH-Birth        BANGLADESH    Medium               High              1.5393430   0.6291915   3.766066
6 months    ki1017093b-PROVIDE         BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH    Low                  High              1.2687500   0.4996933   3.221429
6 months    ki1017093b-PROVIDE         BANGLADESH    Medium               High              0.8925879   0.3296107   2.417134
6 months    ki1119695-PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS       Low                  High              1.8267562   0.9891392   3.373679
6 months    ki1119695-PROBIT           BELARUS       Medium               High              1.4030900   0.7720325   2.549972
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  High              1.7597280   1.3004280   2.381249
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               High              1.4326047   1.0544567   1.946364
6 months    ki1135781-COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA     Low                  High              1.3047513   0.5293082   3.216228
6 months    ki1135781-COHORTS          GUATEMALA     Medium               High              0.5799373   0.1896799   1.773131
6 months    ki1135781-COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA         Low                  High              1.7043784   1.3059362   2.224386
6 months    ki1135781-COHORTS          INDIA         Medium               High              1.3535947   1.0414339   1.759323
6 months    ki1135781-COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  High              1.3791801   0.9552284   1.991291
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               High              1.0645888   0.7246245   1.564050
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  High              1.1503293   0.9940122   1.331229
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               High              1.0351689   0.8915301   1.201950
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 High              1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  High              2.5079365   0.9385330   6.701678
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               High              1.6911315   0.5834495   4.901754
24 months   ki1000108-IRC              INDIA         High                 High              1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA         Low                  High              1.0616438   0.4318684   2.609794
24 months   ki1000108-IRC              INDIA         Medium               High              1.4496403   0.6209420   3.384305
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  High              1.0127883   0.5160161   1.987806
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               High              1.1342592   0.5696026   2.258669
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  High              1.3479272   0.7664128   2.370665
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               High              1.0139262   0.5645659   1.820950
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  High              1.0897457   0.5471904   2.170260
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               High              0.8867463   0.4411062   1.782607
24 months   ki1113344-GMS-Nepal        NEPAL         High                 High              1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL         Low                  High              0.9013268   0.5132624   1.582797
24 months   ki1113344-GMS-Nepal        NEPAL         Medium               High              1.3214328   0.6763385   2.581821
24 months   ki1119695-PROBIT           BELARUS       High                 High              1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS       Low                  High              0.5821072   0.2996416   1.130847
24 months   ki1119695-PROBIT           BELARUS       Medium               High              0.5861093   0.2192288   1.566966
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 High              1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  High              1.3064948   0.7983848   2.137977
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               High              0.9704179   0.5726621   1.644444
24 months   ki1135781-COHORTS          GUATEMALA     High                 High              1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA     Low                  High              1.2246094   0.5858103   2.559989
24 months   ki1135781-COHORTS          GUATEMALA     Medium               High              0.8699968   0.3783079   2.000736
24 months   ki1135781-COHORTS          INDIA         High                 High              1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA         Low                  High              5.7640731   3.5344405   9.400226
24 months   ki1135781-COHORTS          INDIA         Medium               High              2.6534878   1.6188348   4.349423
24 months   ki1135781-COHORTS          PHILIPPINES   High                 High              1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  High              1.5361228   1.0687340   2.207914
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               High              1.2340777   0.8396082   1.813879
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  High              0.9203712   0.8197083   1.033396
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               High              0.9959149   0.8776787   1.130079
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 High              1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  High              1.0197536   0.6067915   1.713764
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               High              0.4797298   0.1869375   1.231110


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH    High                 NA                 0.0442308   -0.0214807    0.1099422
Birth       ki1000108-IRC              INDIA         High                 NA                 0.0108717   -0.0523704    0.0741138
Birth       ki1119695-PROBIT           BELARUS       High                 NA                 0.0019185   -0.0029827    0.0068197
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                -0.0006966   -0.0018679    0.0004748
Birth       ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0305745   -0.0273353    0.0884844
Birth       ki1135781-COHORTS          INDIA         High                 NA                -0.0074485   -0.0143422   -0.0005549
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                -0.0018863   -0.0050246    0.0012520
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0011745   -0.0013978    0.0037468
6 months    ki0047075b-MAL-ED          INDIA         High                 NA                -0.0030150   -0.0629190    0.0568890
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                -0.0087580   -0.0482800    0.0307641
6 months    ki1000108-IRC              INDIA         High                 NA                 0.0255696   -0.0220255    0.0731648
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.0430669    0.0114824    0.0746514
6 months    ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.0182715   -0.0113600    0.0479031
6 months    ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.0018282   -0.0200444    0.0237009
6 months    ki1119695-PROBIT           BELARUS       High                 NA                 0.0027066   -0.0000278    0.0054409
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0070484    0.0032596    0.0108371
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0000964   -0.0228389    0.0230318
6 months    ki1135781-COHORTS          INDIA         High                 NA                 0.0403149    0.0196397    0.0609901
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0080511   -0.0033811    0.0194832
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0048549   -0.0025388    0.0122486
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.0238533   -0.0032516    0.0509582
24 months   ki1000108-IRC              INDIA         High                 NA                 0.0112785   -0.0261027    0.0486597
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.0160935   -0.0334320    0.0656190
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.0121973   -0.0224420    0.0468365
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                 0.0001917   -0.0320440    0.0324273
24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                -0.0017649   -0.0901319    0.0866021
24 months   ki1119695-PROBIT           BELARUS       High                 NA                -0.0058347   -0.0145995    0.0029302
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0161789   -0.0264625    0.0588203
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0028179   -0.0220618    0.0276977
24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.0644096    0.0502978    0.0785214
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0135268    0.0006232    0.0264304
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                -0.0099344   -0.0276086    0.0077398
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                -0.0001831   -0.0988763    0.0985101


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH    High                 NA                 0.2613636   -0.2393487    0.5597819
Birth       ki1000108-IRC              INDIA         High                 NA                 0.0405326   -0.2264183    0.2493772
Birth       ki1119695-PROBIT           BELARUS       High                 NA                 0.0091831   -0.0147060    0.0325098
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                -0.0043690   -0.0117422    0.0029504
Birth       ki1135781-COHORTS          GUATEMALA     High                 NA                 0.1210040   -0.1402225    0.3223832
Birth       ki1135781-COHORTS          INDIA         High                 NA                -0.0425544   -0.0826819   -0.0039142
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                -0.0121251   -0.0325262    0.0078729
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0122323   -0.0149062    0.0386451
6 months    ki0047075b-MAL-ED          INDIA         High                 NA                -0.0368893   -1.1021076    0.4885421
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                -0.0700637   -0.4373815    0.2033873
6 months    ki1000108-IRC              INDIA         High                 NA                 0.1931928   -0.2558248    0.4816651
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.3460916    0.1032165    0.5231890
6 months    ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.2880455   -0.3557125    0.6261160
6 months    ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.0443350   -0.6642877    0.4512393
6 months    ki1119695-PROBIT           BELARUS       High                 NA                 0.3280548   -0.0904913    0.5859570
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.2194564    0.0955143    0.3264147
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0029643   -1.0222350    0.5084250
6 months    ki1135781-COHORTS          INDIA         High                 NA                 0.3140961    0.1345516    0.4563926
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.1353178   -0.0785425    0.3067725
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0573658   -0.0341516    0.1407844
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.3858008   -0.2035002    0.6865471
24 months   ki1000108-IRC              INDIA         High                 NA                 0.1488033   -0.5154091    0.5218877
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.1299623   -0.3757739    0.4497893
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.1084617   -0.2583942    0.3683692
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                 0.0021894   -0.4431495    0.3101020
24 months   ki1113344-GMS-Nepal        NEPAL         High                 NA                -0.0097071   -0.6340752    0.3760946
24 months   ki1119695-PROBIT           BELARUS       High                 NA                -0.5265812   -1.5703499    0.0933335
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0900484   -0.1808378    0.2987929
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                 0.0614198   -0.6721728    0.4731808
24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.6987770    0.5223257    0.8100478
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.1983664   -0.0119546    0.3649750
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                -0.0455476   -0.1298194    0.0324384
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                -0.0009294   -0.6511113    0.3932210
