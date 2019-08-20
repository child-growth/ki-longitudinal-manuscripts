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

agecat      studyid                    country                        meducyrs    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High               0       73     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     High               1        2     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                0       65     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                1        3     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium             0       62     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium             1        2     207
Birth       ki0047075b-MAL-ED          BRAZIL                         High               0       62     190
Birth       ki0047075b-MAL-ED          BRAZIL                         High               1        3     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                0       51     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                1        1     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium             0       69     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium             1        4     190
Birth       ki0047075b-MAL-ED          INDIA                          High               0       49     183
Birth       ki0047075b-MAL-ED          INDIA                          High               1        2     183
Birth       ki0047075b-MAL-ED          INDIA                          Low                0       60     183
Birth       ki0047075b-MAL-ED          INDIA                          Low                1        1     183
Birth       ki0047075b-MAL-ED          INDIA                          Medium             0       69     183
Birth       ki0047075b-MAL-ED          INDIA                          Medium             1        2     183
Birth       ki0047075b-MAL-ED          NEPAL                          High               0       37     160
Birth       ki0047075b-MAL-ED          NEPAL                          High               1        0     160
Birth       ki0047075b-MAL-ED          NEPAL                          Low                0       65     160
Birth       ki0047075b-MAL-ED          NEPAL                          Low                1        3     160
Birth       ki0047075b-MAL-ED          NEPAL                          Medium             0       52     160
Birth       ki0047075b-MAL-ED          NEPAL                          Medium             1        3     160
Birth       ki0047075b-MAL-ED          PERU                           High               0       83     286
Birth       ki0047075b-MAL-ED          PERU                           High               1        4     286
Birth       ki0047075b-MAL-ED          PERU                           Low                0       98     286
Birth       ki0047075b-MAL-ED          PERU                           Low                1        1     286
Birth       ki0047075b-MAL-ED          PERU                           Medium             0       97     286
Birth       ki0047075b-MAL-ED          PERU                           Medium             1        3     286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High               0       72     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High               1        0     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                0      131     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                1        2     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       57     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        0     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0        4     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1        0     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       34     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1        1     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0       65     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1        3     107
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High               0       49      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High               1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                0       15      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low                1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium             0       23      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium             1        2      90
Birth       ki1000108-IRC              INDIA                          High               0      110     388
Birth       ki1000108-IRC              INDIA                          High               1        3     388
Birth       ki1000108-IRC              INDIA                          Low                0      137     388
Birth       ki1000108-IRC              INDIA                          Low                1        5     388
Birth       ki1000108-IRC              INDIA                          Medium             0      125     388
Birth       ki1000108-IRC              INDIA                          Medium             1        8     388
Birth       ki1000109-EE               PAKISTAN                       High               0        0       2
Birth       ki1000109-EE               PAKISTAN                       High               1        0       2
Birth       ki1000109-EE               PAKISTAN                       Low                0        2       2
Birth       ki1000109-EE               PAKISTAN                       Low                1        0       2
Birth       ki1000109-EE               PAKISTAN                       Medium             0        0       2
Birth       ki1000109-EE               PAKISTAN                       Medium             1        0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          High               0       29     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          High               1        2     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                0       79     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                1        7     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium             0       68     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium             1        2     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     High               0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     High               1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                0       14      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium             0       10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium             1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High               0        7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High               1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                0       12      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                1        0      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium             0        7      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium             1        1      27
Birth       ki1119695-PROBIT           BELARUS                        High               0     2248   13884
Birth       ki1119695-PROBIT           BELARUS                        High               1        0   13884
Birth       ki1119695-PROBIT           BELARUS                        Low                0     4961   13884
Birth       ki1119695-PROBIT           BELARUS                        Low                1        1   13884
Birth       ki1119695-PROBIT           BELARUS                        Medium             0     6670   13884
Birth       ki1119695-PROBIT           BELARUS                        Medium             1        4   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High               0     7274   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High               1      213   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                0     2794   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                1      110   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0     3301   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1      118   13810
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High               0     5123   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High               1      429   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                0     6986   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                1      911   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     5437   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      701   19587
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High               0        6     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High               1        2     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                0      329     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                1       25     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium             0        5     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium             1        0     367
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
6 months    ki0047075b-MAL-ED          PERU                           Low                0       87     272
6 months    ki0047075b-MAL-ED          PERU                           Low                1        7     272
6 months    ki0047075b-MAL-ED          PERU                           Medium             0       93     272
6 months    ki0047075b-MAL-ED          PERU                           Medium             1        4     272
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
6 months    ki1000109-EE               PAKISTAN                       High               0       13     369
6 months    ki1000109-EE               PAKISTAN                       High               1        2     369
6 months    ki1000109-EE               PAKISTAN                       Low                0      237     369
6 months    ki1000109-EE               PAKISTAN                       Low                1       84     369
6 months    ki1000109-EE               PAKISTAN                       Medium             0       27     369
6 months    ki1000109-EE               PAKISTAN                       Medium             1        6     369
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     High               0      202     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     High               1        1     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                0      174     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                1        6     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium             0      193     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium             1        7     583
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
6 months    ki1113344-GMS-Nepal        NEPAL                          High               0       67     560
6 months    ki1113344-GMS-Nepal        NEPAL                          High               1        0     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                0      379     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                1       20     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium             0       94     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium             1        0     560
6 months    ki1119695-PROBIT           BELARUS                        High               0     2631   15761
6 months    ki1119695-PROBIT           BELARUS                        High               1       26   15761
6 months    ki1119695-PROBIT           BELARUS                        Low                0     5524   15761
6 months    ki1119695-PROBIT           BELARUS                        Low                1      120   15761
6 months    ki1119695-PROBIT           BELARUS                        Medium             0     7363   15761
6 months    ki1119695-PROBIT           BELARUS                        Medium             1       97   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High               0     4320    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High               1      163    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                0     1638    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                1       81    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0     1978    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1      102    8282
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
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High               0       63    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High               1        5    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                0     1794    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                1      105    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium             0       65    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium             1        4    2036
24 months   ki0047075b-MAL-ED          BANGLADESH                     High               0       59     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     High               1        5     171
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
24 months   ki0047075b-MAL-ED          INDIA                          Low                0       61     199
24 months   ki0047075b-MAL-ED          INDIA                          Low                1        8     199
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
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             0       46     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium             1        5     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               0        6     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High               1        1     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                0       32     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                1       22     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             0       86     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium             1       28     175
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High               0      107     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High               1       51     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                0       66     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                1       39     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium             0       76     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium             1       33     372
24 months   ki1000108-IRC              INDIA                          High               0      111     409
24 months   ki1000108-IRC              INDIA                          High               1       13     409
24 months   ki1000108-IRC              INDIA                          Low                0      131     409
24 months   ki1000108-IRC              INDIA                          Low                1       15     409
24 months   ki1000108-IRC              INDIA                          Medium             0      126     409
24 months   ki1000108-IRC              INDIA                          Medium             1       13     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     High               0      118     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     High               1       12     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                0      105     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                1       48     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium             0      113     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium             1       33     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     High               0      194     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     High               1        7     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                0      149     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                1       24     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium             0      185     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium             1       18     577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High               0      185     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High               1        6     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                0      133     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                1       13     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium             0      161     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium             1       16     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium             1        1       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High               0       56     496
24 months   ki1113344-GMS-Nepal        NEPAL                          High               1        2     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                0      306     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                1       44     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium             0       80     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium             1        8     496
24 months   ki1119695-PROBIT           BELARUS                        High               0      662    4035
24 months   ki1119695-PROBIT           BELARUS                        High               1        2    4035
24 months   ki1119695-PROBIT           BELARUS                        Low                0     1375    4035
24 months   ki1119695-PROBIT           BELARUS                        Low                1       33    4035
24 months   ki1119695-PROBIT           BELARUS                        Medium             0     1933    4035
24 months   ki1119695-PROBIT           BELARUS                        Medium             1       30    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High               0      152     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High               1       53     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                0       81     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                1       35     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium             0       93     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium             1       43     457
24 months   ki1135781-COHORTS          GUATEMALA                      High               0      115    1060
24 months   ki1135781-COHORTS          GUATEMALA                      High               1       94    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Low                0      273    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Low                1      235    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Medium             0      219    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Medium             1      124    1060
24 months   ki1135781-COHORTS          INDIA                          High               0      590    4201
24 months   ki1135781-COHORTS          INDIA                          High               1       18    4201
24 months   ki1135781-COHORTS          INDIA                          Low                0      820    4201
24 months   ki1135781-COHORTS          INDIA                          Low                1      454    4201
24 months   ki1135781-COHORTS          INDIA                          Medium             0     1970    4201
24 months   ki1135781-COHORTS          INDIA                          Medium             1      349    4201
24 months   ki1135781-COHORTS          PHILIPPINES                    High               0      759    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    High               1      155    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                0      459    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                1      285    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium             0      538    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium             1      249    2445
24 months   ki1148112-LCNI-5           MALAWI                         High               0      203     572
24 months   ki1148112-LCNI-5           MALAWI                         High               1       17     572
24 months   ki1148112-LCNI-5           MALAWI                         Low                0      150     572
24 months   ki1148112-LCNI-5           MALAWI                         Low                1       27     572
24 months   ki1148112-LCNI-5           MALAWI                         Medium             0      154     572
24 months   ki1148112-LCNI-5           MALAWI                         Medium             1       21     572
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High               0     2634    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High               1      293    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                0     2389    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                1      615    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium             0     2255    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium             1      435    8621
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High               0       63    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High               1        8    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                0     1671    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                1      190    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium             0       66    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium             1        8    2006


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
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/88d976df-1f94-4603-8212-0b64ae8a73df/11e3fcb9-ed51-41b2-914e-ef740f51c023/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/88d976df-1f94-4603-8212-0b64ae8a73df/11e3fcb9-ed51-41b2-914e-ef740f51c023/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/88d976df-1f94-4603-8212-0b64ae8a73df/11e3fcb9-ed51-41b2-914e-ef740f51c023/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/88d976df-1f94-4603-8212-0b64ae8a73df/11e3fcb9-ed51-41b2-914e-ef740f51c023/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0320709   0.0289334   0.0352084
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0319221   0.0281174   0.0357267
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0311187   0.0275395   0.0346979
Birth       ki1135781-COHORTS          INDIA         High                 NA                0.0156934   0.0057953   0.0255914
Birth       ki1135781-COHORTS          INDIA         Low                  NA                0.0420244   0.0325536   0.0514952
Birth       ki1135781-COHORTS          INDIA         Medium               NA                0.0237702   0.0180767   0.0294636
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0118738   0.0051610   0.0185865
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0194035   0.0103562   0.0284508
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0155216   0.0075886   0.0234547
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.1023996   0.0970117   0.1077876
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.1033538   0.0984803   0.1082273
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.1070989   0.1012386   0.1129591
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0820207   0.0392866   0.1247547
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.1498482   0.0815056   0.2181908
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.1231864   0.0601052   0.1862677
6 months    ki1000108-IRC              INDIA         High                 NA                0.0487805   0.0106657   0.0868952
6 months    ki1000108-IRC              INDIA         Low                  NA                0.0890411   0.0427870   0.1352952
6 months    ki1000108-IRC              INDIA         Medium               NA                0.0724638   0.0291557   0.1157718
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0432403   0.0247091   0.0617714
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.1217324   0.1049442   0.1385205
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.0902075   0.0600812   0.1203338
6 months    ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                0.0333333   0.0106073   0.0560594
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                0.0349345   0.0111365   0.0587325
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Medium               NA                0.0284553   0.0076632   0.0492473
6 months    ki1112895-Guatemala BSC    GUATEMALA     High                 NA                0.1196581   0.0607416   0.1785747
6 months    ki1112895-Guatemala BSC    GUATEMALA     Low                  NA                0.0821918   0.0190725   0.1453111
6 months    ki1112895-Guatemala BSC    GUATEMALA     Medium               NA                0.0574713   0.0084769   0.1064657
6 months    ki1119695-PROBIT           BELARUS       High                 NA                0.0097682   0.0061455   0.0133909
6 months    ki1119695-PROBIT           BELARUS       Low                  NA                0.0209444   0.0121858   0.0297029
6 months    ki1119695-PROBIT           BELARUS       Medium               NA                0.0132317   0.0080938   0.0183697
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0359491   0.0305346   0.0413636
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0451751   0.0347013   0.0556488
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0469721   0.0377886   0.0561555
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                0.1352413   0.0855917   0.1848908
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                0.1355646   0.1040291   0.1671002
6 months    ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0955453   0.0630062   0.1280844
6 months    ki1135781-COHORTS          INDIA         High                 NA                0.0067935   0.0008586   0.0127284
6 months    ki1135781-COHORTS          INDIA         Low                  NA                0.0782217   0.0657358   0.0907077
6 months    ki1135781-COHORTS          INDIA         Medium               NA                0.0368966   0.0300351   0.0437580
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0282165   0.0178517   0.0385813
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0627724   0.0459560   0.0795888
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0592076   0.0430628   0.0753525
6 months    ki1148112-LCNI-5           MALAWI        High                 NA                0.0658783   0.0369222   0.0948344
6 months    ki1148112-LCNI-5           MALAWI        Low                  NA                0.1113147   0.0707695   0.1518598
6 months    ki1148112-LCNI-5           MALAWI        Medium               NA                0.0758874   0.0412671   0.1105077
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0550273   0.0478421   0.0622125
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0643585   0.0576982   0.0710188
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0626791   0.0554220   0.0699361
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.3257655   0.2520763   0.3994547
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.3625358   0.2708110   0.4542606
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.3034947   0.2158449   0.3911446
24 months   ki1000108-IRC              INDIA         High                 NA                0.1121286   0.0573319   0.1669254
24 months   ki1000108-IRC              INDIA         Low                  NA                0.1008257   0.0527519   0.1488996
24 months   ki1000108-IRC              INDIA         Medium               NA                0.0911170   0.0426546   0.1395794
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0754897   0.0337520   0.1172274
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.3074890   0.2346059   0.3803721
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.2401272   0.1627221   0.3175322
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                0.0348259   0.0094582   0.0601935
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                0.1387283   0.0871753   0.1902814
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               NA                0.0886700   0.0495316   0.1278083
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                0.0314136   0.0066518   0.0561754
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                0.0890411   0.0427988   0.1352834
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               NA                0.0903955   0.0481107   0.1326803
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.2535290   0.1942336   0.3128244
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.2886206   0.2073321   0.3699091
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.3304453   0.2499849   0.4109058
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.4838278   0.4157519   0.5519036
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.4569164   0.4137815   0.5000513
24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.3747083   0.3210761   0.4283405
24 months   ki1135781-COHORTS          INDIA         High                 NA                0.0302334   0.0165289   0.0439379
24 months   ki1135781-COHORTS          INDIA         Low                  NA                0.3490883   0.3227700   0.3754066
24 months   ki1135781-COHORTS          INDIA         Medium               NA                0.1500754   0.1355065   0.1646443
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.1909904   0.1656024   0.2163784
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.3433170   0.3093601   0.3772739
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.3214962   0.2867564   0.3562360
24 months   ki1148112-LCNI-5           MALAWI        High                 NA                0.0816444   0.0443562   0.1189325
24 months   ki1148112-LCNI-5           MALAWI        Low                  NA                0.1544300   0.0982368   0.2106233
24 months   ki1148112-LCNI-5           MALAWI        Medium               NA                0.1199225   0.0693211   0.1705240
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.1238928   0.1060516   0.1417339
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.1762951   0.1616192   0.1909709
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.1534146   0.1371441   0.1696850
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.1126761   0.0392797   0.1860724
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.1020956   0.0859035   0.1182878
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.1081081   0.0197419   0.1964743


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0319334   0.0290009   0.0348659
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0285660   0.0240448   0.0330871
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0150820   0.0107558   0.0194081
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1042018   0.0995258   0.1088777
6 months    ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.1138211   0.0813725   0.1462698
6 months    ki1000108-IRC              INDIA         NA                   NA                0.0712531   0.0462303   0.0962759
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0958084   0.0774939   0.1141229
6 months    ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1112895-Guatemala BSC    GUATEMALA     NA                   NA                0.0902527   0.0564475   0.1240580
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0154178   0.0100323   0.0208033
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0417773   0.0374680   0.0460867
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1281513   0.1069071   0.1493954
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0463699   0.0407674   0.0519723
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0487445   0.0406327   0.0568562
6 months    ki1148112-LCNI-5           MALAWI        NA                   NA                0.0799508   0.0612962   0.0986054
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0606764   0.0568167   0.0645362
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.3306452   0.2827744   0.3785159
24 months   ki1000108-IRC              INDIA         NA                   NA                0.1002445   0.0711031   0.1293859
24 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.2167832   0.1777459   0.2558205
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0680934   0.0462948   0.0898920
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.2866521   0.2451477   0.3281565
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4273585   0.3975639   0.4571531
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.1954297   0.1834374   0.2074219
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2817996   0.2639639   0.2996353
24 months   ki1148112-LCNI-5           MALAWI        NA                   NA                0.1136364   0.0876051   0.1396676
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1557824   0.1470499   0.1645149
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.1026919   0.0870391   0.1183447


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level      estimate    ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  ----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 High               1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  High               0.9953590   0.9031636    1.0969657
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               High               0.9703090   0.8858390    1.0628336
Birth       ki1135781-COHORTS          INDIA         High                 High               1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          INDIA         Low                  High               2.6778455   1.3702152    5.2333799
Birth       ki1135781-COHORTS          INDIA         Medium               High               1.5146653   0.7713344    2.9743401
Birth       ki1135781-COHORTS          PHILIPPINES   High                 High               1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  High               1.6341449   0.7853343    3.4003729
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               High               1.3072179   0.6100306    2.8012017
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  High               1.0093184   0.9726889    1.0473273
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               High               1.0458911   1.0017818    1.0919424
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  High               1.8269571   0.9128741    3.6563336
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               High               1.5018955   0.7230242    3.1197988
6 months    ki1000108-IRC              INDIA         High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1000108-IRC              INDIA         Low                  High               1.8253425   0.7142605    4.6647898
6 months    ki1000108-IRC              INDIA         Medium               High               1.4855072   0.5554590    3.9728075
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA         Low                  High               2.8152544   1.8352718    4.3185196
6 months    ki1000304b-SAS-CompFeed    INDIA         Medium               High               2.0861909   1.5124593    2.8775601
6 months    ki1017093c-NIH-Crypto      BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Low                  High               1.0480349   0.3997689    2.7475307
6 months    ki1017093c-NIH-Crypto      BANGLADESH    Medium               High               0.8536585   0.3142418    2.3190194
6 months    ki1112895-Guatemala BSC    GUATEMALA     High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA     Low                  High               0.6868885   0.2758706    1.7102790
6 months    ki1112895-Guatemala BSC    GUATEMALA     Medium               High               0.4802956   0.1794552    1.2854673
6 months    ki1119695-PROBIT           BELARUS       High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1119695-PROBIT           BELARUS       Low                  High               2.1441390   1.2695951    3.6211009
6 months    ki1119695-PROBIT           BELARUS       Medium               High               1.3545746   0.8368349    2.1926338
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  High               1.2566401   0.9556508    1.6524281
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               High               1.3066274   1.0246365    1.6662252
6 months    ki1135781-COHORTS          GUATEMALA     High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     Low                  High               1.0023910   0.6497062    1.5465264
6 months    ki1135781-COHORTS          GUATEMALA     Medium               High               0.7064805   0.4290687    1.1632513
6 months    ki1135781-COHORTS          INDIA         High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          INDIA         Low                  High              11.5142370   4.7374574   27.9849811
6 months    ki1135781-COHORTS          INDIA         Medium               High               5.4311722   2.2232285   13.2679263
6 months    ki1135781-COHORTS          PHILIPPINES   High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  High               2.2246728   1.4123097    3.5043088
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               High               2.0983348   1.3285669    3.3141042
6 months    ki1148112-LCNI-5           MALAWI        High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5           MALAWI        Low                  High               1.6897013   0.9539332    2.9929672
6 months    ki1148112-LCNI-5           MALAWI        Medium               High               1.1519334   0.6110535    2.1715782
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  High               1.1695736   0.9960845    1.3732794
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               High               1.1390534   0.9600510    1.3514309
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  High               1.1128737   0.7917694    1.5642027
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               High               0.9316356   0.6453420    1.3449379
24 months   ki1000108-IRC              INDIA         High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1000108-IRC              INDIA         Low                  High               0.8991969   0.4581669    1.7647612
24 months   ki1000108-IRC              INDIA         Medium               High               0.8126112   0.3966469    1.6647981
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  High               4.0732558   2.2323884    7.4321355
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               High               3.1809249   1.6775412    6.0316152
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  High               3.9834847   1.7584394    9.0239962
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               High               2.5460943   1.0863754    5.9671788
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  High               2.8344749   1.1028551    7.2849534
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               High               2.8775895   1.1506812    7.1961902
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  High               1.1384125   0.7904396    1.6395726
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               High               1.3033828   0.9318840    1.8229807
24 months   ki1135781-COHORTS          GUATEMALA     High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     Low                  High               0.9443783   0.7995990    1.1153720
24 months   ki1135781-COHORTS          GUATEMALA     Medium               High               0.7744663   0.6355512    0.9437447
24 months   ki1135781-COHORTS          INDIA         High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          INDIA         Low                  High              11.5464491   7.2927731   18.2811784
24 months   ki1135781-COHORTS          INDIA         Medium               High               4.9638975   3.1227355    7.8906069
24 months   ki1135781-COHORTS          PHILIPPINES   High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  High               1.7975614   1.5273363    2.1155962
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               High               1.6833106   1.4213200    1.9935938
24 months   ki1148112-LCNI-5           MALAWI        High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5           MALAWI        Low                  High               1.8914963   1.0544217    3.3931000
24 months   ki1148112-LCNI-5           MALAWI        Medium               High               1.4688399   0.7884981    2.7362028
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  High               1.4229648   1.2053538    1.6798627
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               High               1.2382850   1.0395758    1.4749764
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  High               0.9060989   0.4620941    1.7767271
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               High               0.9594595   0.3377770    2.7253556


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                -0.0001375   -0.0012943   0.0010192
Birth       ki1135781-COHORTS          INDIA         High                 NA                 0.0128726    0.0030944   0.0226508
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0032082   -0.0026521   0.0090684
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0018021   -0.0008947   0.0044990
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.0318005   -0.0045181   0.0681191
6 months    ki1000108-IRC              INDIA         High                 NA                 0.0224726   -0.0121801   0.0571253
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.0525681    0.0381918   0.0669445
6 months    ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                -0.0011655   -0.0195299   0.0171989
6 months    ki1112895-Guatemala BSC    GUATEMALA     High                 NA                -0.0294054   -0.0704132   0.0116024
6 months    ki1119695-PROBIT           BELARUS       High                 NA                 0.0056496    0.0000598   0.0112394
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0058282    0.0018622   0.0097942
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                -0.0070900   -0.0519921   0.0378121
6 months    ki1135781-COHORTS          INDIA         High                 NA                 0.0395764    0.0320244   0.0471283
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0205280    0.0107372   0.0303188
6 months    ki1148112-LCNI-5           MALAWI        High                 NA                 0.0140725   -0.0106401   0.0387851
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0056491   -0.0007410   0.0120392
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.0048797   -0.0517888   0.0615482
24 months   ki1000108-IRC              INDIA         High                 NA                -0.0118841   -0.0567774   0.0330091
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.1412935    0.0963014   0.1862856
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.0500961    0.0233858   0.0768064
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                 0.0366798    0.0115274   0.0618321
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0331231   -0.0120671   0.0783132
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                -0.0564693   -0.1176959   0.0047574
24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.1651963    0.1484913   0.1819013
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0908092    0.0685908   0.1130275
24 months   ki1148112-LCNI-5           MALAWI        High                 NA                 0.0319920   -0.0007067   0.0646907
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0318896    0.0148563   0.0489229
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                -0.0099841   -0.0827447   0.0627764


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                -0.0043064   -0.0411989   0.0312790
Birth       ki1135781-COHORTS          INDIA         High                 NA                 0.4506269   -0.0109955   0.7014717
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.2127163   -0.2817183   0.5164182
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0172947   -0.0089387   0.0428461
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.2793900   -0.1086927   0.5316297
6 months    ki1000108-IRC              INDIA         High                 NA                 0.3153911   -0.3699702   0.6578835
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.5486796    0.3747695   0.6742161
6 months    ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                -0.0362319   -0.7974273   0.4026037
6 months    ki1112895-Guatemala BSC    GUATEMALA     High                 NA                -0.3258120   -0.8505799   0.0501478
6 months    ki1119695-PROBIT           BELARUS       High                 NA                 0.3664341    0.0233284   0.5890064
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.1395073    0.0402704   0.2284830
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                -0.0553253   -0.4710680   0.2429231
6 months    ki1135781-COHORTS          INDIA         High                 NA                 0.8534936    0.6522116   0.9382840
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.4211347    0.1979116   0.5822343
6 months    ki1148112-LCNI-5           MALAWI        High                 NA                 0.1760144   -0.1952068   0.4319375
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0931020   -0.0182046   0.1922410
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.0147581   -0.1724213   0.1720540
24 months   ki1000108-IRC              INDIA         High                 NA                -0.1185515   -0.6685694   0.2501616
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.6517732    0.4188834   0.7913295
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.5899076    0.1974132   0.7904578
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                 0.5386687    0.0572391   0.7742518
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.1155515   -0.0567545   0.2597626
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                -0.1321356   -0.2852049   0.0027030
24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.8452979    0.7579617   0.9011200
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.3222473    0.2405220   0.3951785
24 months   ki1148112-LCNI-5           MALAWI        High                 NA                 0.2815294   -0.0629403   0.5143660
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.2047062    0.0889374   0.3057642
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                -0.0972241   -1.0950458   0.4253583
