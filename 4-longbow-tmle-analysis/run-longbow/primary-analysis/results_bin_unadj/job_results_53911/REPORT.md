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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        meducyrs    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High               0       65     187
Birth       ki0047075b-MAL-ED          BANGLADESH                     High               1        2     187
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                0       62     187
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                1        3     187
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium             0       53     187
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium             1        2     187
Birth       ki0047075b-MAL-ED          BRAZIL                         High               0       18      65
Birth       ki0047075b-MAL-ED          BRAZIL                         High               1        0      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                0       17      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                1        0      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium             0       27      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium             1        3      65
Birth       ki0047075b-MAL-ED          INDIA                          High               0        8      40
Birth       ki0047075b-MAL-ED          INDIA                          High               1        0      40
Birth       ki0047075b-MAL-ED          INDIA                          Low                0       18      40
Birth       ki0047075b-MAL-ED          INDIA                          Low                1        0      40
Birth       ki0047075b-MAL-ED          INDIA                          Medium             0       12      40
Birth       ki0047075b-MAL-ED          INDIA                          Medium             1        2      40
Birth       ki0047075b-MAL-ED          NEPAL                          High               0        5      25
Birth       ki0047075b-MAL-ED          NEPAL                          High               1        0      25
Birth       ki0047075b-MAL-ED          NEPAL                          Low                0       12      25
Birth       ki0047075b-MAL-ED          NEPAL                          Low                1        0      25
Birth       ki0047075b-MAL-ED          NEPAL                          Medium             0        7      25
Birth       ki0047075b-MAL-ED          NEPAL                          Medium             1        1      25
Birth       ki0047075b-MAL-ED          PERU                           High               0       66     233
Birth       ki0047075b-MAL-ED          PERU                           High               1        2     233
Birth       ki0047075b-MAL-ED          PERU                           Low                0       83     233
Birth       ki0047075b-MAL-ED          PERU                           Low                1        1     233
Birth       ki0047075b-MAL-ED          PERU                           Medium             0       80     233
Birth       ki0047075b-MAL-ED          PERU                           Medium             1        1     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       35     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        0     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0       60     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1        2     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       26     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        0     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0        7     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1        0     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       32     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1        2     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0       58     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1        6     105
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High               0       49      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High               1        2      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                0       16      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                1        0      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium             0       23      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium             1        2      92
Birth       ki1000108-IRC              INDIA                          High               0      110     388
Birth       ki1000108-IRC              INDIA                          High               1        3     388
Birth       ki1000108-IRC              INDIA                          Low                0      137     388
Birth       ki1000108-IRC              INDIA                          Low                1        5     388
Birth       ki1000108-IRC              INDIA                          Medium             0      125     388
Birth       ki1000108-IRC              INDIA                          Medium             1        8     388
Birth       ki1000109-EE               PAKISTAN                       High               0        5     239
Birth       ki1000109-EE               PAKISTAN                       High               1        2     239
Birth       ki1000109-EE               PAKISTAN                       Low                0      171     239
Birth       ki1000109-EE               PAKISTAN                       Low                1       44     239
Birth       ki1000109-EE               PAKISTAN                       Medium             0       16     239
Birth       ki1000109-EE               PAKISTAN                       Medium             1        1     239
Birth       ki1000304b-SAS-CompFeed    INDIA                          High               0      235    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          High               1       13    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                0      535    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                1       52    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium             0      391    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium             1       26    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     High               0      165     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     High               1        5     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                0      215     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                1        9     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium             0      209     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium             1        5     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     High               0      170     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     High               1        1     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                0      164     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                1        1     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium             0      201     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium             1        2     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High               0      243     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High               1        4     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                0      230     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                1        2     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium             0      249     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium             1        4     732
Birth       ki1113344-GMS-Nepal        NEPAL                          High               0       82     693
Birth       ki1113344-GMS-Nepal        NEPAL                          High               1        3     693
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                0      462     693
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                1       23     693
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium             0      118     693
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium             1        5     693
Birth       ki1119695-PROBIT           BELARUS                        High               0     2249   13890
Birth       ki1119695-PROBIT           BELARUS                        High               1        0   13890
Birth       ki1119695-PROBIT           BELARUS                        Low                0     4963   13890
Birth       ki1119695-PROBIT           BELARUS                        Low                1        1   13890
Birth       ki1119695-PROBIT           BELARUS                        Medium             0     6673   13890
Birth       ki1119695-PROBIT           BELARUS                        Medium             1        4   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High               0     7301   13855
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High               1      214   13855
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                0     2802   13855
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                1      110   13855
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0     3310   13855
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1      118   13855
Birth       ki1135781-COHORTS          GUATEMALA                      High               0      177     842
Birth       ki1135781-COHORTS          GUATEMALA                      High               1        1     842
Birth       ki1135781-COHORTS          GUATEMALA                      Low                0      384     842
Birth       ki1135781-COHORTS          GUATEMALA                      Low                1        7     842
Birth       ki1135781-COHORTS          GUATEMALA                      Medium             0      270     842
Birth       ki1135781-COHORTS          GUATEMALA                      Medium             1        3     842
Birth       ki1135781-COHORTS          INDIA                          High               0      668    5216
Birth       ki1135781-COHORTS          INDIA                          High               1       10    5216
Birth       ki1135781-COHORTS          INDIA                          Low                0     1683    5216
Birth       ki1135781-COHORTS          INDIA                          Low                1       73    5216
Birth       ki1135781-COHORTS          INDIA                          Medium             0     2716    5216
Birth       ki1135781-COHORTS          INDIA                          Medium             1       66    5216
Birth       ki1135781-COHORTS          PHILIPPINES                    High               0     1156    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    High               1       13    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                0      882    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                1       18    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium             0      966    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium             1       15    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High               0     6145   22427
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High               1      538   22427
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                0     7731   22427
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                1     1064   22427
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     6103   22427
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      846   22427
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High               0      866    2817
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High               1       67    2817
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                0      892    2817
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                1       98    2817
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium             0      826    2817
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium             1       68    2817
6 months    ki0047075b-MAL-ED          BANGLADESH                     High               0       72     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     High               1        1     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                0       59     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                1        5     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium             0       58     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium             1        1     196
6 months    ki0047075b-MAL-ED          BRAZIL                         High               0       71     208
6 months    ki0047075b-MAL-ED          BRAZIL                         High               1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                0       56     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Low                1        0     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium             0       81     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium             1        0     208
6 months    ki0047075b-MAL-ED          INDIA                          High               0       58     208
6 months    ki0047075b-MAL-ED          INDIA                          High               1        1     208
6 months    ki0047075b-MAL-ED          INDIA                          Low                0       70     208
6 months    ki0047075b-MAL-ED          INDIA                          Low                1        2     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium             0       73     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium             1        4     208
6 months    ki0047075b-MAL-ED          NEPAL                          High               0       53     221
6 months    ki0047075b-MAL-ED          NEPAL                          High               1        0     221
6 months    ki0047075b-MAL-ED          NEPAL                          Low                0       93     221
6 months    ki0047075b-MAL-ED          NEPAL                          Low                1        0     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium             0       74     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium             1        1     221
6 months    ki0047075b-MAL-ED          PERU                           High               0       80     272
6 months    ki0047075b-MAL-ED          PERU                           High               1        1     272
6 months    ki0047075b-MAL-ED          PERU                           Low                0       88     272
6 months    ki0047075b-MAL-ED          PERU                           Low                1        6     272
6 months    ki0047075b-MAL-ED          PERU                           Medium             0       94     272
6 months    ki0047075b-MAL-ED          PERU                           Medium             1        3     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       68     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        2     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0      123     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1        4     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       57     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        0     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0        9     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1        0     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       60     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1        2     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0      126     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1        6     203
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High               0      144     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High               1       13     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                0       89     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                1       16     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium             0       94     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium             1       13     369
6 months    ki1000108-IRC              INDIA                          High               0      117     407
6 months    ki1000108-IRC              INDIA                          High               1        6     407
6 months    ki1000108-IRC              INDIA                          Low                0      133     407
6 months    ki1000108-IRC              INDIA                          Low                1       13     407
6 months    ki1000108-IRC              INDIA                          Medium             0      128     407
6 months    ki1000108-IRC              INDIA                          Medium             1       10     407
6 months    ki1000109-EE               PAKISTAN                       High               0       12     370
6 months    ki1000109-EE               PAKISTAN                       High               1        3     370
6 months    ki1000109-EE               PAKISTAN                       Low                0      248     370
6 months    ki1000109-EE               PAKISTAN                       Low                1       74     370
6 months    ki1000109-EE               PAKISTAN                       Medium             0       30     370
6 months    ki1000109-EE               PAKISTAN                       Medium             1        3     370
6 months    ki1000304b-SAS-CompFeed    INDIA                          High               0      278    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          High               1       12    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                0      521    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                1       76    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium             0      409    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium             1       40    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High               0       33     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High               1        2     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                0      257     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                1       47     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium             0       36     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium             1        5     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     High               0      152     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     High               1        3     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                0      174     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                1       21     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium             0      176     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium             1       11     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     High               0      208     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     High               1        1     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                0      181     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                1        6     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium             0      201     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium             1        7     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High               0      232     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High               1        8     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                0      221     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                1        8     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium             0      239     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium             1        7     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0      506    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        6    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0       73    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        1    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0     1423    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1       12    2021
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High               0      103     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High               1       14     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                0       67     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                1        6     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium             0       82     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium             1        5     277
6 months    ki1113344-GMS-Nepal        NEPAL                          High               0       68     561
6 months    ki1113344-GMS-Nepal        NEPAL                          High               1        0     561
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                0      378     561
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                1       21     561
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium             0       94     561
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium             1        0     561
6 months    ki1119695-PROBIT           BELARUS                        High               0     2631   15761
6 months    ki1119695-PROBIT           BELARUS                        High               1       26   15761
6 months    ki1119695-PROBIT           BELARUS                        Low                0     5524   15761
6 months    ki1119695-PROBIT           BELARUS                        Low                1      120   15761
6 months    ki1119695-PROBIT           BELARUS                        Medium             0     7363   15761
6 months    ki1119695-PROBIT           BELARUS                        Medium             1       97   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High               0     4535    8655
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High               1      167    8655
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                0     1714    8655
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                1       81    8655
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0     2055    8655
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1      103    8655
6 months    ki1135781-COHORTS          GUATEMALA                      High               0      161     952
6 months    ki1135781-COHORTS          GUATEMALA                      High               1       24     952
6 months    ki1135781-COHORTS          GUATEMALA                      Low                0      381     952
6 months    ki1135781-COHORTS          GUATEMALA                      Low                1       68     952
6 months    ki1135781-COHORTS          GUATEMALA                      Medium             0      288     952
6 months    ki1135781-COHORTS          GUATEMALA                      Medium             1       30     952
6 months    ki1135781-COHORTS          INDIA                          High               0      731    5413
6 months    ki1135781-COHORTS          INDIA                          High               1        5    5413
6 months    ki1135781-COHORTS          INDIA                          Low                0     1638    5413
6 months    ki1135781-COHORTS          INDIA                          Low                1      139    5413
6 months    ki1135781-COHORTS          INDIA                          Medium             0     2793    5413
6 months    ki1135781-COHORTS          INDIA                          Medium             1      107    5413
6 months    ki1135781-COHORTS          PHILIPPINES                    High               0      986    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    High               1       28    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                0      770    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                1       56    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium             0      820    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium             1       48    2708
6 months    ki1148112-LCNI-5           MALAWI                         High               0      279     813
6 months    ki1148112-LCNI-5           MALAWI                         High               1       19     813
6 months    ki1148112-LCNI-5           MALAWI                         Low                0      233     813
6 months    ki1148112-LCNI-5           MALAWI                         Low                1       28     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium             0      236     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium             1       18     813
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High               0     5673   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High               1      249   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                0     5201   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                1      421   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     4901   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      349   16794
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High               0     1659    4818
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High               1       59    4818
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                0     1458    4818
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                1      123    4818
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium             0     1430    4818
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium             1       89    4818
24 months   ki0047075b-MAL-ED          BANGLADESH                     High               0       57     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     High               1        7     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                0       53     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                1        6     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium             0       44     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium             1        4     171
24 months   ki0047075b-MAL-ED          BRAZIL                         High               0       62     168
24 months   ki0047075b-MAL-ED          BRAZIL                         High               1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                0       42     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low                1        0     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium             0       63     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium             1        1     168
24 months   ki0047075b-MAL-ED          INDIA                          High               0       53     199
24 months   ki0047075b-MAL-ED          INDIA                          High               1        2     199
24 months   ki0047075b-MAL-ED          INDIA                          Low                0       60     199
24 months   ki0047075b-MAL-ED          INDIA                          Low                1        9     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium             0       65     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium             1       10     199
24 months   ki0047075b-MAL-ED          NEPAL                          High               0       46     213
24 months   ki0047075b-MAL-ED          NEPAL                          High               1        2     213
24 months   ki0047075b-MAL-ED          NEPAL                          Low                0       89     213
24 months   ki0047075b-MAL-ED          NEPAL                          Low                1        2     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium             0       73     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium             1        1     213
24 months   ki0047075b-MAL-ED          PERU                           High               0       56     200
24 months   ki0047075b-MAL-ED          PERU                           High               1        3     200
24 months   ki0047075b-MAL-ED          PERU                           Low                0       67     200
24 months   ki0047075b-MAL-ED          PERU                           Low                1        7     200
24 months   ki0047075b-MAL-ED          PERU                           Medium             0       62     200
24 months   ki0047075b-MAL-ED          PERU                           Medium             1        5     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       63     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        4     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0      103     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1       17     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       45     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        6     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0        6     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1        1     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       32     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1       22     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0       85     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1       29     175
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High               0      106     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High               1       52     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                0       66     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                1       39     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium             0       74     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium             1       34     371
24 months   ki1000108-IRC              INDIA                          High               0      111     409
24 months   ki1000108-IRC              INDIA                          High               1       13     409
24 months   ki1000108-IRC              INDIA                          Low                0      131     409
24 months   ki1000108-IRC              INDIA                          Low                1       15     409
24 months   ki1000108-IRC              INDIA                          Medium             0      126     409
24 months   ki1000108-IRC              INDIA                          Medium             1       13     409
24 months   ki1000109-EE               PAKISTAN                       High               0        5     165
24 months   ki1000109-EE               PAKISTAN                       High               1        1     165
24 months   ki1000109-EE               PAKISTAN                       Low                0       88     165
24 months   ki1000109-EE               PAKISTAN                       Low                1       54     165
24 months   ki1000109-EE               PAKISTAN                       Medium             0       15     165
24 months   ki1000109-EE               PAKISTAN                       Medium             1        2     165
24 months   ki1017093-NIH-Birth        BANGLADESH                     High               0      117     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     High               1       13     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                0      104     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                1       49     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium             0      113     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium             1       33     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     High               0      193     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     High               1        8     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                0      150     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                1       24     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium             0      183     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium             1       20     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High               0      185     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High               1        6     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                0      133     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                1       13     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium             0      160     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium             1       17     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        1       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High               0       53     485
24 months   ki1113344-GMS-Nepal        NEPAL                          High               1        2     485
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                0      301     485
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                1       43     485
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium             0       78     485
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium             1        8     485
24 months   ki1119695-PROBIT           BELARUS                        High               0      662    4035
24 months   ki1119695-PROBIT           BELARUS                        High               1        2    4035
24 months   ki1119695-PROBIT           BELARUS                        Low                0     1375    4035
24 months   ki1119695-PROBIT           BELARUS                        Low                1       33    4035
24 months   ki1119695-PROBIT           BELARUS                        Medium             0     1933    4035
24 months   ki1119695-PROBIT           BELARUS                        Medium             1       30    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High               0      787    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High               1       75    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                0      298    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                1       47    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0      376    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1       56    1639
24 months   ki1135781-COHORTS          GUATEMALA                      High               0      101    1057
24 months   ki1135781-COHORTS          GUATEMALA                      High               1      108    1057
24 months   ki1135781-COHORTS          GUATEMALA                      Low                0      241    1057
24 months   ki1135781-COHORTS          GUATEMALA                      Low                1      265    1057
24 months   ki1135781-COHORTS          GUATEMALA                      Medium             0      199    1057
24 months   ki1135781-COHORTS          GUATEMALA                      Medium             1      143    1057
24 months   ki1135781-COHORTS          INDIA                          High               0      583    4198
24 months   ki1135781-COHORTS          INDIA                          High               1       25    4198
24 months   ki1135781-COHORTS          INDIA                          Low                0      721    4198
24 months   ki1135781-COHORTS          INDIA                          Low                1      551    4198
24 months   ki1135781-COHORTS          INDIA                          Medium             0     1871    4198
24 months   ki1135781-COHORTS          INDIA                          Medium             1      447    4198
24 months   ki1135781-COHORTS          PHILIPPINES                    High               0      752    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    High               1      162    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                0      453    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                1      291    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium             0      533    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium             1      254    2445
24 months   ki1148112-LCNI-5           MALAWI                         High               0      201     572
24 months   ki1148112-LCNI-5           MALAWI                         High               1       19     572
24 months   ki1148112-LCNI-5           MALAWI                         Low                0      150     572
24 months   ki1148112-LCNI-5           MALAWI                         Low                1       27     572
24 months   ki1148112-LCNI-5           MALAWI                         Medium             0      153     572
24 months   ki1148112-LCNI-5           MALAWI                         Medium             1       22     572
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High               0     2634    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High               1      293    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                0     2388    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                1      616    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     2255    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      435    8621
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High               0     1588    4741
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High               1      108    4741
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                0     1344    4741
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                1      192    4741
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium             0     1357    4741
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium             1      152    4741


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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/bdc5fb07-f256-41ba-a699-4d8fde023be8/637dc451-3119-43eb-b4b7-80c348a0b8aa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bdc5fb07-f256-41ba-a699-4d8fde023be8/637dc451-3119-43eb-b4b7-80c348a0b8aa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bdc5fb07-f256-41ba-a699-4d8fde023be8/637dc451-3119-43eb-b4b7-80c348a0b8aa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bdc5fb07-f256-41ba-a699-4d8fde023be8/637dc451-3119-43eb-b4b7-80c348a0b8aa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0524194   0.0369617   0.0678771
Birth       ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.0885860   0.0600275   0.1171446
Birth       ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.0623501   0.0328535   0.0918467
Birth       ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0294118   0.0039927   0.0548308
Birth       ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.0401786   0.0144406   0.0659165
Birth       ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.0233645   0.0031090   0.0436200
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0284764   0.0247157   0.0322371
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0377747   0.0308499   0.0446995
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0344224   0.0283192   0.0405256
Birth       ki1135781-COHORTS          INDIA         High                 NA                0.0147493   0.0056745   0.0238240
Birth       ki1135781-COHORTS          INDIA         Low                  NA                0.0415718   0.0322348   0.0509087
Birth       ki1135781-COHORTS          INDIA         Medium               NA                0.0237239   0.0180682   0.0293797
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0111206   0.0051082   0.0171330
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0200000   0.0108520   0.0291480
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0152905   0.0076107   0.0229703
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0805028   0.0734511   0.0875544
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.1209778   0.1139787   0.1279770
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.1217441   0.1128050   0.1306832
Birth       kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0718114   0.0478987   0.0957241
Birth       kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.0989899   0.0795040   0.1184758
Birth       kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0760626   0.0587024   0.0934228
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0828025   0.0396366   0.1259684
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.1523810   0.0835461   0.2212158
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.1214953   0.0595088   0.1834819
6 months    ki1000108-IRC              INDIA         High                 NA                0.0487805   0.0106657   0.0868952
6 months    ki1000108-IRC              INDIA         Low                  NA                0.0890411   0.0427870   0.1352952
6 months    ki1000108-IRC              INDIA         Medium               NA                0.0724638   0.0291557   0.1157718
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0413793   0.0226362   0.0601225
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.1273032   0.1083867   0.1462196
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.0890869   0.0621624   0.1160113
6 months    ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                0.0333333   0.0106073   0.0560594
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                0.0349345   0.0111365   0.0587325
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Medium               NA                0.0284553   0.0076632   0.0492473
6 months    ki1112895-Guatemala BSC    GUATEMALA     High                 NA                0.1196581   0.0607416   0.1785747
6 months    ki1112895-Guatemala BSC    GUATEMALA     Low                  NA                0.0821918   0.0190725   0.1453111
6 months    ki1112895-Guatemala BSC    GUATEMALA     Medium               NA                0.0574713   0.0084769   0.1064657
6 months    ki1119695-PROBIT           BELARUS       High                 NA                0.0097855   0.0061891   0.0133818
6 months    ki1119695-PROBIT           BELARUS       Low                  NA                0.0212615   0.0126112   0.0299118
6 months    ki1119695-PROBIT           BELARUS       Medium               NA                0.0130027   0.0079166   0.0180888
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0355168   0.0302263   0.0408073
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0451253   0.0355220   0.0547287
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0477294   0.0387340   0.0567248
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                0.1297297   0.0812860   0.1781734
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                0.1514477   0.1182717   0.1846236
6 months    ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0943396   0.0621962   0.1264831
6 months    ki1135781-COHORTS          INDIA         High                 NA                0.0067935   0.0008586   0.0127284
6 months    ki1135781-COHORTS          INDIA         Low                  NA                0.0782217   0.0657358   0.0907077
6 months    ki1135781-COHORTS          INDIA         Medium               NA                0.0368966   0.0300351   0.0437580
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0276134   0.0175258   0.0377010
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0677966   0.0506492   0.0849440
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0552995   0.0400914   0.0705077
6 months    ki1148112-LCNI-5           MALAWI        High                 NA                0.0637584   0.0360016   0.0915152
6 months    ki1148112-LCNI-5           MALAWI        Low                  NA                0.1072797   0.0697123   0.1448471
6 months    ki1148112-LCNI-5           MALAWI        Medium               NA                0.0708661   0.0392901   0.1024421
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0420466   0.0369365   0.0471567
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0748844   0.0677259   0.0820429
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0664762   0.0593429   0.0736095
6 months    kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0343423   0.0233105   0.0453740
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.0777989   0.0654655   0.0901322
6 months    kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0585912   0.0464214   0.0707609
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.3291139   0.2557465   0.4024813
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.3714286   0.2788832   0.4639739
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.3148148   0.2271039   0.4025258
24 months   ki1000108-IRC              INDIA         High                 NA                0.1048387   0.0508528   0.1588246
24 months   ki1000108-IRC              INDIA         Low                  NA                0.1027397   0.0534301   0.1520493
24 months   ki1000108-IRC              INDIA         Medium               NA                0.0935252   0.0450617   0.1419886
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.1000000   0.0483697   0.1516303
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.3202614   0.2462443   0.3942786
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.2260274   0.1581036   0.2939512
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                0.0398010   0.0127518   0.0668502
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                0.1379310   0.0866506   0.1892114
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               NA                0.0985222   0.0574904   0.1395540
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                0.0314136   0.0066518   0.0561754
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                0.0890411   0.0427988   0.1352834
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               NA                0.0960452   0.0525946   0.1394958
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0870070   0.0681862   0.1058277
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.1362319   0.1000235   0.1724403
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.1296296   0.0979454   0.1613138
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.5167464   0.4489656   0.5845272
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.5237154   0.4801783   0.5672525
24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.4181287   0.3658278   0.4704295
24 months   ki1135781-COHORTS          INDIA         High                 NA                0.0411184   0.0253333   0.0569036
24 months   ki1135781-COHORTS          INDIA         Low                  NA                0.4331761   0.4059420   0.4604102
24 months   ki1135781-COHORTS          INDIA         Medium               NA                0.1928387   0.1767759   0.2089014
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.1772429   0.1524810   0.2020048
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.3911290   0.3560560   0.4262020
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.3227446   0.2900741   0.3554151
24 months   ki1148112-LCNI-5           MALAWI        High                 NA                0.0863636   0.0492128   0.1235145
24 months   ki1148112-LCNI-5           MALAWI        Low                  NA                0.1525424   0.0995278   0.2055570
24 months   ki1148112-LCNI-5           MALAWI        Medium               NA                0.1257143   0.0765525   0.1748761
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.1001025   0.0889889   0.1112161
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.2050599   0.1899384   0.2201814
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.1617100   0.1463750   0.1770451
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0636792   0.0505742   0.0767843
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.1250000   0.1068211   0.1431789
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.1007290   0.0824742   0.1189837


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0726837   0.0523147   0.0930527
Birth       ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.0312500   0.0174085   0.0450915
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0319018   0.0289755   0.0348282
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0285660   0.0240448   0.0330871
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0150820   0.0107558   0.0194081
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1091541   0.1045948   0.1137135
Birth       kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0827121   0.0710164   0.0944078
6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1138211   0.0813725   0.1462698
6 months    ki1000108-IRC              INDIA         NA                   NA                0.0712531   0.0462303   0.0962759
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1112895-Guatemala BSC    GUATEMALA     NA                   NA                0.0902527   0.0564475   0.1240580
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0405546   0.0363986   0.0447105
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1281513   0.1069071   0.1493954
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0463699   0.0407674   0.0519723
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0487445   0.0406327   0.0568562
6 months    ki1148112-LCNI-5           MALAWI        NA                   NA                0.0799508   0.0612962   0.0986054
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0606764   0.0568167   0.0645362
6 months    kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0562474   0.0494699   0.0630249
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.3369272   0.2887662   0.3850883
24 months   ki1000108-IRC              INDIA         NA                   NA                0.1002445   0.0711031   0.1293859
24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.2214452   0.1821080   0.2607825
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0899654   0.0666186   0.1133122
24 months   ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0700389   0.0479542   0.0921236
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.1086028   0.0935351   0.1236705
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4881741   0.4580257   0.5183225
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.2436875   0.2306994   0.2566756
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2891616   0.2711872   0.3071359
24 months   ki1148112-LCNI-5           MALAWI        NA                   NA                0.1188811   0.0923348   0.1454274
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1558984   0.1471655   0.1646313
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0953385   0.0857703   0.1049067


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level      estimate    ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  ----------  -----------
Birth       ki1000304b-SAS-CompFeed    INDIA         High                 High               1.0000000   1.0000000    1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA         Low                  High               1.6899489   1.2364493    2.3097811
Birth       ki1000304b-SAS-CompFeed    INDIA         Medium               High               1.1894484   0.7448073    1.8995350
Birth       ki1017093-NIH-Birth        BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH    Low                  High               1.3660714   0.4658790    4.0056565
Birth       ki1017093-NIH-Birth        BANGLADESH    Medium               High               0.7943925   0.2335614    2.7018994
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 High               1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  High               1.3265283   1.0582649    1.6627948
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               High               1.2088054   0.9690401    1.5078949
Birth       ki1135781-COHORTS          INDIA         High                 High               1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          INDIA         Low                  High               2.8185639   1.4641118    5.4260215
Birth       ki1135781-COHORTS          INDIA         Medium               High               1.6084825   0.8314810    3.1115758
Birth       ki1135781-COHORTS          PHILIPPINES   High                 High               1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  High               1.7984615   0.8858124    3.6514095
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               High               1.3749706   0.6573636    2.8759489
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  High               1.5027785   1.3569438    1.6642865
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               High               1.5122975   1.3562113    1.6863477
Birth       kiGH5241-JiVitA-4          BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH    Low                  High               1.3784713   0.9343368    2.0337239
Birth       kiGH5241-JiVitA-4          BANGLADESH    Medium               High               1.0592006   0.7062326    1.5885787
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  High               1.8402930   0.9232314    3.6682878
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               High               1.4672897   0.7075042    3.0430054
6 months    ki1000108-IRC              INDIA         High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1000108-IRC              INDIA         Low                  High               1.8253425   0.7142605    4.6647898
6 months    ki1000108-IRC              INDIA         Medium               High               1.4855072   0.5554590    3.9728075
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  High               3.0764933   1.9394694    4.8801034
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               High               2.1529322   1.5557699    2.9793077
6 months    ki1017093c-NIH-Crypto      BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low                  High               1.0480349   0.3997689    2.7475307
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Medium               High               0.8536585   0.3142418    2.3190194
6 months    ki1112895-Guatemala BSC    GUATEMALA     High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA     Low                  High               0.6868885   0.2758706    1.7102790
6 months    ki1112895-Guatemala BSC    GUATEMALA     Medium               High               0.4802956   0.1794552    1.2854673
6 months    ki1119695-PROBIT           BELARUS       High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT           BELARUS       Low                  High               2.1727635   1.2993490    3.6332817
6 months    ki1119695-PROBIT           BELARUS       Medium               High               1.3287740   0.8171834    2.1606413
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  High               1.2705353   0.9798765    1.6474115
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               High               1.3438535   1.0568748    1.7087571
6 months    ki1135781-COHORTS          GUATEMALA     High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     Low                  High               1.1674091   0.7571874    1.7998765
6 months    ki1135781-COHORTS          GUATEMALA     Medium               High               0.7272013   0.4386494    1.2055681
6 months    ki1135781-COHORTS          INDIA         High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          INDIA         Low                  High              11.5142370   4.7374574   27.9849811
6 months    ki1135781-COHORTS          INDIA         Medium               High               5.4311722   2.2232285   13.2679263
6 months    ki1135781-COHORTS          PHILIPPINES   High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  High               2.4552058   1.5744151    3.8287460
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               High               2.0026333   1.2676959    3.1636453
6 months    ki1148112-LCNI-5           MALAWI        High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5           MALAWI        Low                  High               1.6825973   0.9623597    2.9418663
6 months    ki1148112-LCNI-5           MALAWI        Medium               High               1.1114795   0.5961566    2.0722519
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  High               1.7809851   1.5382858    2.0619756
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               High               1.5810119   1.3442293    1.8595032
6 months    kiGH5241-JiVitA-4          BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low                  High               2.2653974   1.5945100    3.2185594
6 months    kiGH5241-JiVitA-4          BANGLADESH    Medium               High               1.7060957   1.1597471    2.5098251
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  High               1.1285714   0.8078518    1.5766178
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               High               0.9565527   0.6694908    1.3666999
24 months   ki1000108-IRC              INDIA         High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1000108-IRC              INDIA         Low                  High               0.9799789   0.4847353    1.9812023
24 months   ki1000108-IRC              INDIA         Medium               High               0.8920864   0.4296742    1.8521433
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  High               3.2026143   1.8190192    5.6386094
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               High               2.2602739   1.2437058    4.1077548
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  High               3.4655167   1.5971257    7.5196371
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               High               2.4753691   1.1155197    5.4929124
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  High               2.8344749   1.1028551    7.2849534
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               High               3.0574388   1.2321130    7.5869111
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  High               1.5657585   1.1114719    2.2057235
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               High               1.4898765   1.0749767    2.0649118
24 months   ki1135781-COHORTS          GUATEMALA     High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     Low                  High               1.0134863   0.8677107    1.1837523
24 months   ki1135781-COHORTS          GUATEMALA     Medium               High               0.8091564   0.6750210    0.9699462
24 months   ki1135781-COHORTS          INDIA         High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          INDIA         Low                  High              10.5348417   7.1397594   15.5443460
24 months   ki1135781-COHORTS          INDIA         Medium               High               4.6898356   3.1663196    6.9464111
24 months   ki1135781-COHORTS          PHILIPPINES   High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  High               2.2067403   1.8691958    2.6052396
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               High               1.8209171   1.5323704    2.1637973
24 months   ki1148112-LCNI-5           MALAWI        High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5           MALAWI        Low                  High               1.7662801   1.0159844    3.0706628
24 months   ki1148112-LCNI-5           MALAWI        Medium               High               1.4556391   0.8139073    2.6033495
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  High               2.0484996   1.8002653    2.3309623
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               High               1.6154446   1.3990849    1.8652630
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  High               1.9629630   1.5200449    2.5349407
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               High               1.5818177   1.2029428    2.0800219


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.0202644    0.0038212   0.0367075
Birth       ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.0018382   -0.0199882   0.0236647
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0034255    0.0007118   0.0061392
Birth       ki1135781-COHORTS          INDIA         High                 NA                 0.0138167    0.0047954   0.0228379
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0039614   -0.0012496   0.0091723
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0286514    0.0227620   0.0345408
Birth       kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0109007   -0.0074653   0.0292668
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.0310186   -0.0054594   0.0674965
6 months    ki1000108-IRC              INDIA         High                 NA                 0.0224726   -0.0121801   0.0571253
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.0544291    0.0383084   0.0705498
6 months    ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                -0.0011655   -0.0195299   0.0171989
6 months    ki1112895-Guatemala BSC    GUATEMALA     High                 NA                -0.0294054   -0.0704132   0.0116024
6 months    ki1119695-PROBIT           BELARUS       High                 NA                 0.0056323    0.0000278   0.0112369
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0050378    0.0011843   0.0088913
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                -0.0015785   -0.0450067   0.0418498
6 months    ki1135781-COHORTS          INDIA         High                 NA                 0.0395764    0.0320244   0.0471283
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0211310    0.0115731   0.0306889
6 months    ki1148112-LCNI-5           MALAWI        High                 NA                 0.0161924   -0.0073371   0.0397219
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0186298    0.0141734   0.0230862
6 months    kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0219051    0.0130592   0.0307511
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.0078133   -0.0480210   0.0636476
24 months   ki1000108-IRC              INDIA         High                 NA                -0.0045942   -0.0492763   0.0400878
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.1214452    0.0704792   0.1724113
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.0501644    0.0224541   0.0778747
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                 0.0386253    0.0132246   0.0640260
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0215958    0.0071506   0.0360411
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                -0.0285723   -0.0892875   0.0321429
24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.2025690    0.1839764   0.2211617
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.1119187    0.0900599   0.1337775
24 months   ki1148112-LCNI-5           MALAWI        High                 NA                 0.0325175    0.0005298   0.0645051
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0557959    0.0456828   0.0659090
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0316593    0.0196922   0.0436264


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.2788018    0.0696446   0.4409376
Birth       ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.0588235   -0.9758330   0.5516761
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.1073750    0.0187178   0.1880221
Birth       ki1135781-COHORTS          INDIA         High                 NA                 0.4836766    0.0648618   0.7149194
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.2626548   -0.1651706   0.5333920
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.2624855    0.2065718   0.3144588
Birth       kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.1317914   -0.1276660   0.3315519
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.2725205   -0.1181970   0.5267144
6 months    ki1000108-IRC              INDIA         High                 NA                 0.3153911   -0.3699702   0.6578835
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.5681034    0.3771487   0.7005149
6 months    ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                -0.0362319   -0.7974273   0.4026037
6 months    ki1112895-Guatemala BSC    GUATEMALA     High                 NA                -0.3258120   -0.8505799   0.0501478
6 months    ki1119695-PROBIT           BELARUS       High                 NA                 0.3653135    0.0215890   0.5882845
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.1242225    0.0247386   0.2135582
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                -0.0123172   -0.4148127   0.2756736
6 months    ki1135781-COHORTS          INDIA         High                 NA                 0.8534936    0.6522116   0.9382840
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.4335067    0.2172768   0.5900023
6 months    ki1148112-LCNI-5           MALAWI        High                 NA                 0.2025297   -0.1486756   0.4463546
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.3070356    0.2321635   0.3746068
6 months    kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.3894428    0.2023706   0.5326400
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.0231899   -0.1574128   0.1756113
24 months   ki1000108-IRC              INDIA         High                 NA                -0.0458300   -0.6013752   0.3169868
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.5484210    0.2742037   0.7190347
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.5575966    0.1758141   0.7625284
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                 0.5514834    0.0815919   0.7809611
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.1988516    0.0569014   0.3194363
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                -0.0585290   -0.1905625   0.0588620
24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.8312657    0.7537135   0.8843978
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.3870455    0.3087887   0.4564422
24 months   ki1148112-LCNI-5           MALAWI        High                 NA                 0.2735294   -0.0440139   0.4944900
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.3578991    0.2932016   0.4166745
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.3320723    0.1998003   0.4424800
