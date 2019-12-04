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
* hhwealth_quart
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* W_nrooms
* impsan
* delta_W_mage
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single
* delta_W_nrooms
* delta_impsan

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
![](/tmp/21e2d711-b0ad-4547-8e02-049edcc84dbf/9ba4660c-59b2-4ff2-9e61-76e54ffb1b25/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/21e2d711-b0ad-4547-8e02-049edcc84dbf/9ba4660c-59b2-4ff2-9e61-76e54ffb1b25/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/21e2d711-b0ad-4547-8e02-049edcc84dbf/9ba4660c-59b2-4ff2-9e61-76e54ffb1b25/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/21e2d711-b0ad-4547-8e02-049edcc84dbf/9ba4660c-59b2-4ff2-9e61-76e54ffb1b25/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         High                 NA                0.0430905   0.0298362   0.0563447
Birth       ki1000304b-SAS-CompFeed    INDIA         Low                  NA                0.0838659   0.0620979   0.1056339
Birth       ki1000304b-SAS-CompFeed    INDIA         Medium               NA                0.0583115   0.0286549   0.0879682
Birth       ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0294118   0.0039927   0.0548308
Birth       ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.0401786   0.0144406   0.0659165
Birth       ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.0233645   0.0031090   0.0436200
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0322529   0.0291037   0.0354021
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0321567   0.0281993   0.0361142
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0311282   0.0276049   0.0346515
Birth       ki1135781-COHORTS          INDIA         High                 NA                0.0156999   0.0058219   0.0255778
Birth       ki1135781-COHORTS          INDIA         Low                  NA                0.0419176   0.0324819   0.0513534
Birth       ki1135781-COHORTS          INDIA         Medium               NA                0.0238234   0.0181256   0.0295213
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0121675   0.0051850   0.0191500
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0196101   0.0104753   0.0287450
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0152495   0.0074385   0.0230604
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.1080043   0.1027697   0.1132389
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.1086629   0.1037511   0.1135746
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.1118048   0.1062102   0.1173993
Birth       kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0852519   0.0704330   0.1000707
Birth       kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.0838266   0.0712994   0.0963538
Birth       kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0808805   0.0685931   0.0931678
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.0816228   0.0393295   0.1239161
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.1535243   0.0850880   0.2219606
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.1172829   0.0567184   0.1778473
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
6 months    ki1119695-PROBIT           BELARUS       High                 NA                0.0096440   0.0062530   0.0130350
6 months    ki1119695-PROBIT           BELARUS       Low                  NA                0.0212382   0.0124707   0.0300058
6 months    ki1119695-PROBIT           BELARUS       Medium               NA                0.0131269   0.0079944   0.0182594
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0358048   0.0305491   0.0410605
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.0429077   0.0332457   0.0525696
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.0478310   0.0385032   0.0571588
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                0.1402118   0.0887461   0.1916775
6 months    ki1135781-COHORTS          GUATEMALA     Low                  NA                0.1346234   0.1032143   0.1660326
6 months    ki1135781-COHORTS          GUATEMALA     Medium               NA                0.0980014   0.0645777   0.1314250
6 months    ki1135781-COHORTS          INDIA         High                 NA                0.0067935   0.0008586   0.0127284
6 months    ki1135781-COHORTS          INDIA         Low                  NA                0.0782217   0.0657358   0.0907077
6 months    ki1135781-COHORTS          INDIA         Medium               NA                0.0368966   0.0300351   0.0437580
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                0.0288943   0.0182203   0.0395683
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.0624126   0.0456932   0.0791319
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.0584925   0.0426546   0.0743304
6 months    ki1148112-LCNI-5           MALAWI        High                 NA                0.0651213   0.0361445   0.0940980
6 months    ki1148112-LCNI-5           MALAWI        Low                  NA                0.1132517   0.0738126   0.1526909
6 months    ki1148112-LCNI-5           MALAWI        Medium               NA                0.0758244   0.0402851   0.1113637
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.0527950   0.0458868   0.0597032
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.0657433   0.0586017   0.0728849
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.0638179   0.0562999   0.0713358
6 months    kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0391922   0.0272945   0.0510898
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.0725093   0.0603831   0.0846355
6 months    kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.0562043   0.0441966   0.0682120
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                0.3318258   0.2577342   0.4059173
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  NA                0.3621734   0.2694592   0.4548876
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               NA                0.3162227   0.2266545   0.4057910
24 months   ki1000108-IRC              INDIA         High                 NA                0.1035600   0.0481974   0.1589225
24 months   ki1000108-IRC              INDIA         Low                  NA                0.0988613   0.0502257   0.1474970
24 months   ki1000108-IRC              INDIA         Medium               NA                0.0977077   0.0482488   0.1471666
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                0.0791549   0.0367266   0.1215831
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  NA                0.3122450   0.2378172   0.3866727
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               NA                0.2405145   0.1640682   0.3169608
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                0.0398010   0.0127518   0.0668502
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  NA                0.1379310   0.0866506   0.1892114
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               NA                0.0985222   0.0574904   0.1395540
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                0.0314136   0.0066518   0.0561754
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  NA                0.0890411   0.0427988   0.1352834
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               NA                0.0960452   0.0525946   0.1394958
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                0.0852902   0.0670011   0.1035793
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  NA                0.1266357   0.0883139   0.1649574
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               NA                0.1303772   0.0965660   0.1641885
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                0.5426634   0.4782373   0.6070895
24 months   ki1135781-COHORTS          GUATEMALA     Low                  NA                0.5184307   0.4751407   0.5617207
24 months   ki1135781-COHORTS          GUATEMALA     Medium               NA                0.4355832   0.3792492   0.4919172
24 months   ki1135781-COHORTS          INDIA         High                 NA                0.0429786   0.0265990   0.0593581
24 months   ki1135781-COHORTS          INDIA         Low                  NA                0.4220168   0.3948629   0.4491706
24 months   ki1135781-COHORTS          INDIA         Medium               NA                0.1938951   0.1777634   0.2100269
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                0.1979768   0.1718630   0.2240906
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  NA                0.3454427   0.3109240   0.3799613
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               NA                0.3248406   0.2902645   0.3594168
24 months   ki1148112-LCNI-5           MALAWI        High                 NA                0.0894559   0.0509714   0.1279403
24 months   ki1148112-LCNI-5           MALAWI        Low                  NA                0.1548269   0.0998761   0.2097778
24 months   ki1148112-LCNI-5           MALAWI        Medium               NA                0.1267112   0.0742494   0.1791731
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                0.1218707   0.1018078   0.1419336
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  NA                0.1768939   0.1618310   0.1919568
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               NA                0.1547031   0.1387698   0.1706364
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                0.0761749   0.0610825   0.0912673
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  NA                0.1146291   0.0971897   0.1320684
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               NA                0.1016685   0.0819892   0.1213478


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
Birth       ki1000304b-SAS-CompFeed    INDIA         Low                  High               1.9462759   1.2897353    2.9370289
Birth       ki1000304b-SAS-CompFeed    INDIA         Medium               High               1.3532352   0.8168488    2.2418413
Birth       ki1017093-NIH-Birth        BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH    Low                  High               1.3660714   0.4658790    4.0056565
Birth       ki1017093-NIH-Birth        BANGLADESH    Medium               High               0.7943925   0.2335614    2.7018994
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 High               1.0000000   1.0000000    1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Low                  High               0.9970187   0.8995673    1.1050271
Birth       ki1126311-ZVITAMBO         ZIMBABWE      Medium               High               0.9651303   0.8829801    1.0549235
Birth       ki1135781-COHORTS          INDIA         High                 High               1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          INDIA         Low                  High               2.6699349   1.3682901    5.2098253
Birth       ki1135781-COHORTS          INDIA         Medium               High               1.5174292   0.7739553    2.9750962
Birth       ki1135781-COHORTS          PHILIPPINES   High                 High               1.0000000   1.0000000    1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   Low                  High               1.6116838   0.7697165    3.3746514
Birth       ki1135781-COHORTS          PHILIPPINES   Medium               High               1.2532966   0.5808544    2.7042101
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Low                  High               1.0060976   0.9679515    1.0457469
Birth       kiGH5241-JiVitA-3          BANGLADESH    Medium               High               1.0351884   0.9947047    1.0773197
Birth       kiGH5241-JiVitA-4          BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH    Low                  High               0.9832818   0.8505251    1.1367603
Birth       kiGH5241-JiVitA-4          BANGLADESH    Medium               High               0.9487241   0.8222421    1.0946624
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Low                  High               1.8808992   0.9474630    3.7339526
6 months    ki1000108-CMC-V-BCS-2002   INDIA         Medium               High               1.4368878   0.6908427    2.9885917
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
6 months    ki1119695-PROBIT           BELARUS       Low                  High               2.2022203   1.3296650    3.6473655
6 months    ki1119695-PROBIT           BELARUS       Medium               High               1.3611430   0.8453208    2.1917245
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Low                  High               1.1983784   0.9185957    1.5633765
6 months    ki1126311-ZVITAMBO         ZIMBABWE      Medium               High               1.3358839   1.0500758    1.6994829
6 months    ki1135781-COHORTS          GUATEMALA     High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     Low                  High               0.9601435   0.6222811    1.4814454
6 months    ki1135781-COHORTS          GUATEMALA     Medium               High               0.6989523   0.4243549    1.1512399
6 months    ki1135781-COHORTS          INDIA         High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          INDIA         Low                  High              11.5142370   4.7374574   27.9849811
6 months    ki1135781-COHORTS          INDIA         Medium               High               5.4311722   2.2232285   13.2679263
6 months    ki1135781-COHORTS          PHILIPPINES   High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   Low                  High               2.1600312   1.3689036    3.4083734
6 months    ki1135781-COHORTS          PHILIPPINES   Medium               High               2.0243617   1.2809553    3.1992064
6 months    ki1148112-LCNI-5           MALAWI        High                 High               1.0000000   1.0000000    1.0000000
6 months    ki1148112-LCNI-5           MALAWI        Low                  High               1.7390901   0.9875845    3.0624563
6 months    ki1148112-LCNI-5           MALAWI        Medium               High               1.1643565   0.6097751    2.2233214
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Low                  High               1.2452546   1.0507721    1.4757331
6 months    kiGH5241-JiVitA-3          BANGLADESH    Medium               High               1.2087850   1.0155807    1.4387447
6 months    kiGH5241-JiVitA-4          BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    Low                  High               1.8500972   1.3210671    2.5909809
6 months    kiGH5241-JiVitA-4          BANGLADESH    Medium               High               1.4340692   0.9895959    2.0781760
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Low                  High               1.0914565   0.7762301    1.5346962
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Medium               High               0.9529783   0.6644416    1.3668132
24 months   ki1000108-IRC              INDIA         High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1000108-IRC              INDIA         Low                  High               0.9546288   0.4618812    1.9730529
24 months   ki1000108-IRC              INDIA         Medium               High               0.9434892   0.4525947    1.9668190
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH    Low                  High               3.9447358   2.1936287    7.0936983
24 months   ki1017093-NIH-Birth        BANGLADESH    Medium               High               3.0385309   1.6285667    5.6691997
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Low                  High               3.4655167   1.5971257    7.5196371
24 months   ki1017093b-PROVIDE         BANGLADESH    Medium               High               2.4753691   1.1155197    5.4929124
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Low                  High               2.8344749   1.1028551    7.2849534
24 months   ki1017093c-NIH-Crypto      BANGLADESH    Medium               High               3.0574388   1.2321130    7.5869111
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Low                  High               1.4847623   1.0262067    2.1482212
24 months   ki1126311-ZVITAMBO         ZIMBABWE      Medium               High               1.5286311   1.0942013    2.1355423
24 months   ki1135781-COHORTS          GUATEMALA     High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     Low                  High               0.9553449   0.8286752    1.1013771
24 months   ki1135781-COHORTS          GUATEMALA     Medium               High               0.8026767   0.6753455    0.9540151
24 months   ki1135781-COHORTS          INDIA         High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          INDIA         Low                  High               9.8192417   6.6721302   14.4507833
24 months   ki1135781-COHORTS          INDIA         Medium               High               4.5114391   3.0549242    6.6623855
24 months   ki1135781-COHORTS          PHILIPPINES   High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   Low                  High               1.7448642   1.4829408    2.0530496
24 months   ki1135781-COHORTS          PHILIPPINES   Medium               High               1.6408014   1.3885118    1.9389314
24 months   ki1148112-LCNI-5           MALAWI        High                 High               1.0000000   1.0000000    1.0000000
24 months   ki1148112-LCNI-5           MALAWI        Low                  High               1.7307634   0.9903280    3.0247979
24 months   ki1148112-LCNI-5           MALAWI        Medium               High               1.4164664   0.7792782    2.5746609
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Low                  High               1.4514880   1.2034589    1.7506351
24 months   kiGH5241-JiVitA-3          BANGLADESH    Medium               High               1.2694035   1.0485842    1.5367246
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 High               1.0000000   1.0000000    1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Low                  High               1.5048140   1.1709505    1.9338692
24 months   kiGH5241-JiVitA-4          BANGLADESH    Medium               High               1.3346723   1.0087501    1.7658983


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.0295933    0.0098866   0.0492999
Birth       ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.0018382   -0.0199882   0.0236647
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                -0.0003510   -0.0015045   0.0008024
Birth       ki1135781-COHORTS          INDIA         High                 NA                 0.0128661    0.0031147   0.0226175
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0029145   -0.0032126   0.0090415
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0011498   -0.0017026   0.0040023
Birth       kiGH5241-JiVitA-4          BANGLADESH    High                 NA                -0.0025398   -0.0094608   0.0043813
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.0321983   -0.0038162   0.0682128
6 months    ki1000108-IRC              INDIA         High                 NA                 0.0224726   -0.0121801   0.0571253
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.0525681    0.0381918   0.0669445
6 months    ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                -0.0011655   -0.0195299   0.0171989
6 months    ki1112895-Guatemala BSC    GUATEMALA     High                 NA                -0.0294054   -0.0704132   0.0116024
6 months    ki1119695-PROBIT           BELARUS       High                 NA                 0.0057738    0.0002508   0.0112968
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0047498    0.0009415   0.0085581
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                -0.0120605   -0.0586132   0.0344921
6 months    ki1135781-COHORTS          INDIA         High                 NA                 0.0395764    0.0320244   0.0471283
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0198502    0.0098309   0.0298694
6 months    ki1148112-LCNI-5           MALAWI        High                 NA                 0.0148295   -0.0098567   0.0395158
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0078814    0.0015738   0.0141890
6 months    kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0170552    0.0071393   0.0269712
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.0051015   -0.0517178   0.0619208
24 months   ki1000108-IRC              INDIA         High                 NA                -0.0033155   -0.0491382   0.0425072
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.1422904    0.0970083   0.1875725
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.0501644    0.0224541   0.0778747
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                 0.0386253    0.0132246   0.0640260
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.0233126    0.0091482   0.0374770
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                -0.0544893   -0.1125055   0.0035268
24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.2007089    0.1816664   0.2197514
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.0911847    0.0683967   0.1139728
24 months   ki1148112-LCNI-5           MALAWI        High                 NA                 0.0294253   -0.0036906   0.0625411
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0340277    0.0145430   0.0535124
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.0191636    0.0055652   0.0327621


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.4071511    0.1757641   0.5735811
Birth       ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.0588235   -0.9758330   0.5516761
Birth       ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                -0.0110038   -0.0478265   0.0245249
Birth       ki1135781-COHORTS          INDIA         High                 NA                 0.4503994   -0.0095889   0.7008081
Birth       ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.1932433   -0.3281226   0.5099426
Birth       kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.0105341   -0.0159235   0.0363027
Birth       kiGH5241-JiVitA-4          BANGLADESH    High                 NA                -0.0307059   -0.1169758   0.0489009
6 months    ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.2828851   -0.1005952   0.5327494
6 months    ki1000108-IRC              INDIA         High                 NA                 0.3153911   -0.3699702   0.6578835
6 months    ki1000304b-SAS-CompFeed    INDIA         High                 NA                 0.5486796    0.3747695   0.6742161
6 months    ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                -0.0362319   -0.7974273   0.4026037
6 months    ki1112895-Guatemala BSC    GUATEMALA     High                 NA                -0.3258120   -0.8505799   0.0501478
6 months    ki1119695-PROBIT           BELARUS       High                 NA                 0.3744884    0.0457340   0.5899836
6 months    ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.1171219    0.0189418   0.2054766
6 months    ki1135781-COHORTS          GUATEMALA     High                 NA                -0.0941117   -0.5250810   0.2150709
6 months    ki1135781-COHORTS          INDIA         High                 NA                 0.8534936    0.6522116   0.9382840
6 months    ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.4072292    0.1768233   0.5731448
6 months    ki1148112-LCNI-5           MALAWI        High                 NA                 0.1854833   -0.1863001   0.4407507
6 months    kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.1298921    0.0204371   0.2271168
6 months    kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.3032184    0.0987156   0.4613192
24 months   ki1000108-CMC-V-BCS-2002   INDIA         High                 NA                 0.0151412   -0.1687865   0.1701248
24 months   ki1000108-IRC              INDIA         High                 NA                -0.0330740   -0.6075433   0.3361038
24 months   ki1017093-NIH-Birth        BANGLADESH    High                 NA                 0.6425533    0.4137023   0.7820764
24 months   ki1017093b-PROVIDE         BANGLADESH    High                 NA                 0.5575966    0.1758141   0.7625284
24 months   ki1017093c-NIH-Crypto      BANGLADESH    High                 NA                 0.5514834    0.0815919   0.7809611
24 months   ki1126311-ZVITAMBO         ZIMBABWE      High                 NA                 0.2146594    0.0764783   0.3321653
24 months   ki1135781-COHORTS          GUATEMALA     High                 NA                -0.1116186   -0.2375408   0.0014908
24 months   ki1135781-COHORTS          INDIA         High                 NA                 0.8236325    0.7432636   0.8788427
24 months   ki1135781-COHORTS          PHILIPPINES   High                 NA                 0.3153418    0.2334045   0.3885213
24 months   ki1148112-LCNI-5           MALAWI        High                 NA                 0.2475184   -0.0829269   0.4771313
24 months   kiGH5241-JiVitA-3          BANGLADESH    High                 NA                 0.2182683    0.0842956   0.3326401
24 months   kiGH5241-JiVitA-4          BANGLADESH    High                 NA                 0.2010062    0.0476753   0.3296497
