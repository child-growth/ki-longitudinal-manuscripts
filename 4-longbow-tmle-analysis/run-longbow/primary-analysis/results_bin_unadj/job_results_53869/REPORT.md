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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        meducyrs    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              0       59     187
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              1        8     187
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               0       47     187
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               1       18     187
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            0       47     187
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            1        8     187
Birth       ki0047075b-MAL-ED          BRAZIL                         High              0       18      65
Birth       ki0047075b-MAL-ED          BRAZIL                         High              1        0      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Low               0       14      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Low               1        3      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium            0       24      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium            1        6      65
Birth       ki0047075b-MAL-ED          INDIA                          High              0        7      40
Birth       ki0047075b-MAL-ED          INDIA                          High              1        1      40
Birth       ki0047075b-MAL-ED          INDIA                          Low               0       17      40
Birth       ki0047075b-MAL-ED          INDIA                          Low               1        1      40
Birth       ki0047075b-MAL-ED          INDIA                          Medium            0        8      40
Birth       ki0047075b-MAL-ED          INDIA                          Medium            1        6      40
Birth       ki0047075b-MAL-ED          NEPAL                          High              0        5      25
Birth       ki0047075b-MAL-ED          NEPAL                          High              1        0      25
Birth       ki0047075b-MAL-ED          NEPAL                          Low               0       12      25
Birth       ki0047075b-MAL-ED          NEPAL                          Low               1        0      25
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            0        6      25
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            1        2      25
Birth       ki0047075b-MAL-ED          PERU                           High              0       60     233
Birth       ki0047075b-MAL-ED          PERU                           High              1        8     233
Birth       ki0047075b-MAL-ED          PERU                           Low               0       72     233
Birth       ki0047075b-MAL-ED          PERU                           Low               1       12     233
Birth       ki0047075b-MAL-ED          PERU                           Medium            0       75     233
Birth       ki0047075b-MAL-ED          PERU                           Medium            1        6     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       34     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        1     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       56     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        6     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       23     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        3     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        7     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       29     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        5     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       49     105
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1       15     105
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High              0       43      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High              1        8      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low               0       14      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low               1        2      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0       18      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1        7      92
Birth       ki1000108-IRC              INDIA                          High              0      102     388
Birth       ki1000108-IRC              INDIA                          High              1       11     388
Birth       ki1000108-IRC              INDIA                          Low               0      126     388
Birth       ki1000108-IRC              INDIA                          Low               1       16     388
Birth       ki1000108-IRC              INDIA                          Medium            0      115     388
Birth       ki1000108-IRC              INDIA                          Medium            1       18     388
Birth       ki1000109-EE               PAKISTAN                       High              0        4     239
Birth       ki1000109-EE               PAKISTAN                       High              1        3     239
Birth       ki1000109-EE               PAKISTAN                       Low               0      122     239
Birth       ki1000109-EE               PAKISTAN                       Low               1       93     239
Birth       ki1000109-EE               PAKISTAN                       Medium            0       14     239
Birth       ki1000109-EE               PAKISTAN                       Medium            1        3     239
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              0      197    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              1       51    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               0      398    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               1      189    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            0      308    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            1      109    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     High              0      144     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     High              1       26     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low               0      188     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low               1       36     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium            0      179     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium            1       35     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     High              0      157     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     High              1       14     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low               0      150     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low               1       15     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium            0      184     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium            1       19     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              0      222     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              1       25     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      199     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       33     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      210     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       43     732
Birth       ki1113344-GMS-Nepal        NEPAL                          High              0       74     693
Birth       ki1113344-GMS-Nepal        NEPAL                          High              1       11     693
Birth       ki1113344-GMS-Nepal        NEPAL                          Low               0      396     693
Birth       ki1113344-GMS-Nepal        NEPAL                          Low               1       89     693
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium            0      101     693
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium            1       22     693
Birth       ki1119695-PROBIT           BELARUS                        High              0     2247   13890
Birth       ki1119695-PROBIT           BELARUS                        High              1        2   13890
Birth       ki1119695-PROBIT           BELARUS                        Low               0     4946   13890
Birth       ki1119695-PROBIT           BELARUS                        Low               1       18   13890
Birth       ki1119695-PROBIT           BELARUS                        Medium            0     6664   13890
Birth       ki1119695-PROBIT           BELARUS                        Medium            1       13   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              0     6781   13855
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              1      734   13855
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2591   13855
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      321   13855
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     3049   13855
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      379   13855
Birth       ki1135781-COHORTS          GUATEMALA                      High              0      168     842
Birth       ki1135781-COHORTS          GUATEMALA                      High              1       10     842
Birth       ki1135781-COHORTS          GUATEMALA                      Low               0      361     842
Birth       ki1135781-COHORTS          GUATEMALA                      Low               1       30     842
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            0      264     842
Birth       ki1135781-COHORTS          GUATEMALA                      Medium            1        9     842
Birth       ki1135781-COHORTS          INDIA                          High              0      626    5216
Birth       ki1135781-COHORTS          INDIA                          High              1       52    5216
Birth       ki1135781-COHORTS          INDIA                          Low               0     1505    5216
Birth       ki1135781-COHORTS          INDIA                          Low               1      251    5216
Birth       ki1135781-COHORTS          INDIA                          Medium            0     2468    5216
Birth       ki1135781-COHORTS          INDIA                          Medium            1      314    5216
Birth       ki1135781-COHORTS          PHILIPPINES                    High              0     1114    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    High              1       55    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               0      830    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Low               1       70    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            0      919    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium            1       62    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              0     4851   22427
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              1     1832   22427
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               0     5700   22427
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               1     3095   22427
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     4496   22427
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     2453   22427
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              0      674    2817
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              1      259    2817
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               0      670    2817
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               1      320    2817
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            0      618    2817
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            1      276    2817
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              0       65     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     High              1        8     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               0       50     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               1       14     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            0       46     196
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            1       13     196
6 months    ki0047075b-MAL-ED          BRAZIL                         High              0       70     208
6 months    ki0047075b-MAL-ED          BRAZIL                         High              1        1     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Low               0       54     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Low               1        2     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium            0       78     208
6 months    ki0047075b-MAL-ED          BRAZIL                         Medium            1        3     208
6 months    ki0047075b-MAL-ED          INDIA                          High              0       50     208
6 months    ki0047075b-MAL-ED          INDIA                          High              1        9     208
6 months    ki0047075b-MAL-ED          INDIA                          Low               0       58     208
6 months    ki0047075b-MAL-ED          INDIA                          Low               1       14     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium            0       65     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium            1       12     208
6 months    ki0047075b-MAL-ED          NEPAL                          High              0       51     221
6 months    ki0047075b-MAL-ED          NEPAL                          High              1        2     221
6 months    ki0047075b-MAL-ED          NEPAL                          Low               0       87     221
6 months    ki0047075b-MAL-ED          NEPAL                          Low               1        6     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            0       73     221
6 months    ki0047075b-MAL-ED          NEPAL                          Medium            1        2     221
6 months    ki0047075b-MAL-ED          PERU                           High              0       60     272
6 months    ki0047075b-MAL-ED          PERU                           High              1       21     272
6 months    ki0047075b-MAL-ED          PERU                           Low               0       75     272
6 months    ki0047075b-MAL-ED          PERU                           Low               1       19     272
6 months    ki0047075b-MAL-ED          PERU                           Medium            0       77     272
6 months    ki0047075b-MAL-ED          PERU                           Medium            1       20     272
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       58     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              1       12     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0      100     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1       27     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       46     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1       11     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        7     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        2     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       47     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1       15     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0      107     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1       25     203
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High              0      112     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High              1       45     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low               0       69     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low               1       36     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0       77     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1       30     369
6 months    ki1000108-IRC              INDIA                          High              0       98     407
6 months    ki1000108-IRC              INDIA                          High              1       25     407
6 months    ki1000108-IRC              INDIA                          Low               0      108     407
6 months    ki1000108-IRC              INDIA                          Low               1       38     407
6 months    ki1000108-IRC              INDIA                          Medium            0      101     407
6 months    ki1000108-IRC              INDIA                          Medium            1       37     407
6 months    ki1000109-EE               PAKISTAN                       High              0       11     370
6 months    ki1000109-EE               PAKISTAN                       High              1        4     370
6 months    ki1000109-EE               PAKISTAN                       Low               0      160     370
6 months    ki1000109-EE               PAKISTAN                       Low               1      162     370
6 months    ki1000109-EE               PAKISTAN                       Medium            0       19     370
6 months    ki1000109-EE               PAKISTAN                       Medium            1       14     370
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              0      250    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          High              1       40    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               0      381    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               1      216    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            0      325    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            1      124    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              0       23     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              1       12     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               0      171     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               1      133     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0       23     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1       18     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     High              0      128     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     High              1       27     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low               0      130     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low               1       65     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium            0      135     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium            1       52     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              0      185     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              1       24     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               0      154     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               1       33     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            0      169     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            1       39     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              0      203     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              1       37     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      173     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       56     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      189     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       57     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      465    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       47    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0       69    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        5    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0     1292    2021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1      143    2021
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High              0       81     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High              1       36     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low               0       47     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low               1       26     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium            0       63     277
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium            1       24     277
6 months    ki1113344-GMS-Nepal        NEPAL                          High              0       58     561
6 months    ki1113344-GMS-Nepal        NEPAL                          High              1       10     561
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               0      303     561
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               1       96     561
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            0       78     561
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            1       16     561
6 months    ki1119695-PROBIT           BELARUS                        High              0     2547   15761
6 months    ki1119695-PROBIT           BELARUS                        High              1      110   15761
6 months    ki1119695-PROBIT           BELARUS                        Low               0     5156   15761
6 months    ki1119695-PROBIT           BELARUS                        Low               1      488   15761
6 months    ki1119695-PROBIT           BELARUS                        Medium            0     7070   15761
6 months    ki1119695-PROBIT           BELARUS                        Medium            1      390   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              0     4012    8655
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              1      690    8655
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     1466    8655
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      329    8655
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     1765    8655
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      393    8655
6 months    ki1135781-COHORTS          GUATEMALA                      High              0      114     952
6 months    ki1135781-COHORTS          GUATEMALA                      High              1       71     952
6 months    ki1135781-COHORTS          GUATEMALA                      Low               0      252     952
6 months    ki1135781-COHORTS          GUATEMALA                      Low               1      197     952
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            0      198     952
6 months    ki1135781-COHORTS          GUATEMALA                      Medium            1      120     952
6 months    ki1135781-COHORTS          INDIA                          High              0      680    5413
6 months    ki1135781-COHORTS          INDIA                          High              1       56    5413
6 months    ki1135781-COHORTS          INDIA                          Low               0     1264    5413
6 months    ki1135781-COHORTS          INDIA                          Low               1      513    5413
6 months    ki1135781-COHORTS          INDIA                          Medium            0     2432    5413
6 months    ki1135781-COHORTS          INDIA                          Medium            1      468    5413
6 months    ki1135781-COHORTS          PHILIPPINES                    High              0      852    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    High              1      162    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               0      610    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Low               1      216    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            0      674    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            1      194    2708
6 months    ki1148112-LCNI-5           MALAWI                         High              0      207     813
6 months    ki1148112-LCNI-5           MALAWI                         High              1       91     813
6 months    ki1148112-LCNI-5           MALAWI                         Low               0      149     813
6 months    ki1148112-LCNI-5           MALAWI                         Low               1      112     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium            0      162     813
6 months    ki1148112-LCNI-5           MALAWI                         Medium            1       92     813
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              0     4783   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              1     1139   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               0     3988   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               1     1634   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     3800   16794
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     1450   16794
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              0     1378    4818
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              1      340    4818
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1103    4818
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               1      478    4818
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            0     1120    4818
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            1      399    4818
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       34     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1       30     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       31     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1       28     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       27     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1       21     171
24 months   ki0047075b-MAL-ED          BRAZIL                         High              0       61     168
24 months   ki0047075b-MAL-ED          BRAZIL                         High              1        1     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low               0       39     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low               1        3     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            0       61     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            1        3     168
24 months   ki0047075b-MAL-ED          INDIA                          High              0       33     199
24 months   ki0047075b-MAL-ED          INDIA                          High              1       22     199
24 months   ki0047075b-MAL-ED          INDIA                          Low               0       39     199
24 months   ki0047075b-MAL-ED          INDIA                          Low               1       30     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       44     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium            1       31     199
24 months   ki0047075b-MAL-ED          NEPAL                          High              0       38     213
24 months   ki0047075b-MAL-ED          NEPAL                          High              1       10     213
24 months   ki0047075b-MAL-ED          NEPAL                          Low               0       69     213
24 months   ki0047075b-MAL-ED          NEPAL                          Low               1       22     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       61     213
24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1       13     213
24 months   ki0047075b-MAL-ED          PERU                           High              0       42     200
24 months   ki0047075b-MAL-ED          PERU                           High              1       17     200
24 months   ki0047075b-MAL-ED          PERU                           Low               0       43     200
24 months   ki0047075b-MAL-ED          PERU                           Low               1       31     200
24 months   ki0047075b-MAL-ED          PERU                           Medium            0       41     200
24 months   ki0047075b-MAL-ED          PERU                           Medium            1       26     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       50     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1       17     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       73     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1       47     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       31     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1       20     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        4     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        3     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       10     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1       44     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       38     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1       76     175
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              0       55     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              1      103     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               0       18     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               1       87     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0       32     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1       76     371
24 months   ki1000108-IRC              INDIA                          High              0       80     409
24 months   ki1000108-IRC              INDIA                          High              1       44     409
24 months   ki1000108-IRC              INDIA                          Low               0       79     409
24 months   ki1000108-IRC              INDIA                          Low               1       67     409
24 months   ki1000108-IRC              INDIA                          Medium            0       78     409
24 months   ki1000108-IRC              INDIA                          Medium            1       61     409
24 months   ki1000109-EE               PAKISTAN                       High              0        4     165
24 months   ki1000109-EE               PAKISTAN                       High              1        2     165
24 months   ki1000109-EE               PAKISTAN                       Low               0       36     165
24 months   ki1000109-EE               PAKISTAN                       Low               1      106     165
24 months   ki1000109-EE               PAKISTAN                       Medium            0        9     165
24 months   ki1000109-EE               PAKISTAN                       Medium            1        8     165
24 months   ki1017093-NIH-Birth        BANGLADESH                     High              0       77     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     High              1       53     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               0       45     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               1      108     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            0       63     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            1       83     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      156     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1       45     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0       99     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1       75     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      133     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1       70     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              0      163     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              1       28     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               0       97     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       49     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      122     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       55     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0        2       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0        3       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        1       6
24 months   ki1113344-GMS-Nepal        NEPAL                          High              0       40     485
24 months   ki1113344-GMS-Nepal        NEPAL                          High              1       15     485
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      182     485
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1      162     485
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0       44     485
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1       42     485
24 months   ki1119695-PROBIT           BELARUS                        High              0      626    4035
24 months   ki1119695-PROBIT           BELARUS                        High              1       38    4035
24 months   ki1119695-PROBIT           BELARUS                        Low               0     1256    4035
24 months   ki1119695-PROBIT           BELARUS                        Low               1      152    4035
24 months   ki1119695-PROBIT           BELARUS                        Medium            0     1809    4035
24 months   ki1119695-PROBIT           BELARUS                        Medium            1      154    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0      597    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1      265    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0      200    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      145    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0      273    1639
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      159    1639
24 months   ki1135781-COHORTS          GUATEMALA                      High              0       40    1057
24 months   ki1135781-COHORTS          GUATEMALA                      High              1      169    1057
24 months   ki1135781-COHORTS          GUATEMALA                      Low               0       76    1057
24 months   ki1135781-COHORTS          GUATEMALA                      Low               1      430    1057
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0       84    1057
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1      258    1057
24 months   ki1135781-COHORTS          INDIA                          High              0      466    4198
24 months   ki1135781-COHORTS          INDIA                          High              1      142    4198
24 months   ki1135781-COHORTS          INDIA                          Low               0      304    4198
24 months   ki1135781-COHORTS          INDIA                          Low               1      968    4198
24 months   ki1135781-COHORTS          INDIA                          Medium            0     1106    4198
24 months   ki1135781-COHORTS          INDIA                          Medium            1     1212    4198
24 months   ki1135781-COHORTS          PHILIPPINES                    High              0      480    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    High              1      434    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      195    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1      549    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      247    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1      540    2445
24 months   ki1148112-LCNI-5           MALAWI                         High              0      132     572
24 months   ki1148112-LCNI-5           MALAWI                         High              1       88     572
24 months   ki1148112-LCNI-5           MALAWI                         Low               0       94     572
24 months   ki1148112-LCNI-5           MALAWI                         Low               1       83     572
24 months   ki1148112-LCNI-5           MALAWI                         Medium            0       94     572
24 months   ki1148112-LCNI-5           MALAWI                         Medium            1       81     572
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     1789    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1     1138    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     1292    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1     1712    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     1306    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     1384    8621
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0     1148    4741
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1      548    4741
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0      834    4741
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1      702    4741
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0      856    4741
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1      653    4741


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/91bafb0a-5403-473c-a1a7-51b3038c092f/24ed2f79-4e9d-4efc-b712-632d7832c228/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/91bafb0a-5403-473c-a1a7-51b3038c092f/24ed2f79-4e9d-4efc-b712-632d7832c228/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/91bafb0a-5403-473c-a1a7-51b3038c092f/24ed2f79-4e9d-4efc-b712-632d7832c228/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/91bafb0a-5403-473c-a1a7-51b3038c092f/24ed2f79-4e9d-4efc-b712-632d7832c228/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1194030   0.0415507   0.1972552
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2769231   0.1678475   0.3859987
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1454545   0.0520297   0.2388794
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                0.1176471   0.0409040   0.1943902
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                0.1428571   0.0678643   0.2178500
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                0.0740741   0.0169182   0.1312299
Birth       ki1000108-IRC              INDIA                          High                 NA                0.0973451   0.0426200   0.1520703
Birth       ki1000108-IRC              INDIA                          Low                  NA                0.1126761   0.0606020   0.1647501
Birth       ki1000108-IRC              INDIA                          Medium               NA                0.1353383   0.0771259   0.1935508
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2056452   0.1509180   0.2603723
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3219761   0.2955975   0.3483548
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2613909   0.2214591   0.3013227
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1529412   0.0987910   0.2070914
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.1607143   0.1125790   0.2088496
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.1635514   0.1139555   0.2131473
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0818713   0.0407402   0.1230025
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0909091   0.0470038   0.1348144
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0935961   0.0534916   0.1337005
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1012146   0.0635749   0.1388543
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1422414   0.0972638   0.1872190
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1699605   0.1236469   0.2162740
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1294118   0.0580040   0.2008195
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1835052   0.1490312   0.2179792
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1788618   0.1110858   0.2466378
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0976713   0.0909591   0.1043835
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1102335   0.0988582   0.1216088
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1105601   0.1000622   0.1210580
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0561798   0.0223319   0.0900276
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0767263   0.0503293   0.1031234
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0329670   0.0117744   0.0541597
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.0766962   0.0566637   0.0967286
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.1429385   0.1265663   0.1593107
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.1128684   0.1011089   0.1246280
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0470488   0.0349087   0.0591888
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0777778   0.0602776   0.0952780
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0632008   0.0479719   0.0784297
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2741284   0.2622002   0.2860565
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.3519045   0.3407965   0.3630125
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.3530004   0.3406486   0.3653522
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2775991   0.2408633   0.3143349
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3232323   0.2890935   0.3573711
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3087248   0.2749826   0.3424671
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1095890   0.0377474   0.1814307
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2187500   0.1172098   0.3202902
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2203390   0.1143083   0.3263696
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.1525424   0.0605773   0.2445074
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.1944444   0.1028068   0.2860821
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.1558442   0.0746348   0.2370535
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.2592593   0.1636487   0.3548698
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.2021277   0.1207953   0.2834601
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.2061856   0.1255270   0.2868442
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1714286   0.0829655   0.2598917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2125984   0.1412998   0.2838970
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1929825   0.0903304   0.2956345
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.2866242   0.2157965   0.3574519
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.3428571   0.2519435   0.4337708
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.2803738   0.1951487   0.3655990
6 months    ki1000108-IRC              INDIA                          High                 NA                0.2032520   0.1320475   0.2744566
6 months    ki1000108-IRC              INDIA                          Low                  NA                0.2602740   0.1890122   0.3315358
6 months    ki1000108-IRC              INDIA                          Medium               NA                0.2681159   0.1941171   0.3421148
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1379310   0.0882652   0.1875969
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3618090   0.3300301   0.3935880
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2761693   0.2344643   0.3178742
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3428571   0.1853962   0.5003181
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4375000   0.3816615   0.4933385
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4390244   0.2869190   0.5911298
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1741935   0.1144292   0.2339579
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3333333   0.2671072   0.3995594
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2780749   0.2137974   0.3423524
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1148325   0.0715732   0.1580919
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1764706   0.1217863   0.2311549
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1875000   0.1344130   0.2405870
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1541667   0.1084490   0.1998843
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2445415   0.1888337   0.3002493
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2317073   0.1789458   0.2844689
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0917969   0.0667804   0.1168133
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0675676   0.0103647   0.1247704
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0996516   0.0841500   0.1151532
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.3076923   0.2239108   0.3914739
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.3561644   0.2461157   0.4662130
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.2758621   0.1817749   0.3699492
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1470588   0.0628057   0.2313120
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2406015   0.1986224   0.2825806
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1702128   0.0941712   0.2462543
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0414001   0.0280035   0.0547966
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0864635   0.0666548   0.1062722
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0522788   0.0402094   0.0643482
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1467461   0.1366313   0.1568608
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1832869   0.1653874   0.2011864
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1821131   0.1658289   0.1983972
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.3837838   0.3136705   0.4538971
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4387528   0.3928287   0.4846768
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.3773585   0.3240546   0.4306624
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0760870   0.0569303   0.0952436
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2886888   0.2676176   0.3097600
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1613793   0.1479888   0.1747698
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1597633   0.1372080   0.1823186
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2615012   0.2315268   0.2914756
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2235023   0.1957832   0.2512214
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.3053691   0.2530456   0.3576926
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.4291188   0.3690351   0.4892025
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.3622047   0.3030600   0.4213495
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1923337   0.1809806   0.2036868
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2906439   0.2773761   0.3039117
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2761905   0.2623929   0.2899881
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1979045   0.1753492   0.2204598
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3023403   0.2758574   0.3288232
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2626728   0.2383772   0.2869684
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.4687500   0.3461327   0.5913673
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4745763   0.3467843   0.6023682
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.4375000   0.2967490   0.5782510
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.4000000   0.2702025   0.5297975
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.4347826   0.3175195   0.5520457
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.4133333   0.3016065   0.5250601
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2083333   0.0931738   0.3234929
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2417582   0.1535836   0.3299329
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1756757   0.0887678   0.2625835
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.2881356   0.1722825   0.4039887
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.4189189   0.3062241   0.5316138
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.3880597   0.2710820   0.5050374
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.2537313   0.1493171   0.3581456
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.3916667   0.3041480   0.4791854
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.3921569   0.2578794   0.5264343
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6518987   0.5775200   0.7262774
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.8285714   0.7563866   0.9007563
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.7037037   0.6174693   0.7899381
24 months   ki1000108-IRC              INDIA                          High                 NA                0.3548387   0.2705211   0.4391564
24 months   ki1000108-IRC              INDIA                          Low                  NA                0.4589041   0.3779756   0.5398326
24 months   ki1000108-IRC              INDIA                          Medium               NA                0.4388489   0.3562509   0.5214469
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.4076923   0.3231210   0.4922636
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.7058824   0.6335994   0.7781653
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.5684932   0.4880600   0.6489263
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2238806   0.1662041   0.2815571
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4310345   0.3573886   0.5046804
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3448276   0.2793858   0.4102693
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1465969   0.0963865   0.1968073
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3356164   0.2589464   0.4122865
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3107345   0.2424892   0.3789797
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2727273   0.1549049   0.3905497
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.4709302   0.4181281   0.5237324
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4883721   0.3826174   0.5941268
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0572289   0.0305812   0.0838766
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.1079545   0.0637205   0.1521886
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0784513   0.0484862   0.1084165
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.3074246   0.2766119   0.3382373
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.4202899   0.3681883   0.4723914
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.3680556   0.3225636   0.4135475
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.8086124   0.7552535   0.8619714
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.8498024   0.8186588   0.8809460
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7543860   0.7087440   0.8000279
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2335526   0.1999184   0.2671869
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.7610063   0.7375670   0.7844455
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.5228645   0.5025289   0.5432002
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.4748359   0.4424554   0.5072164
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.7379032   0.7062964   0.7695101
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6861499   0.6537219   0.7185779
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.4000000   0.3352079   0.4647921
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.4689266   0.3953446   0.5425085
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.4628571   0.3889175   0.5367968
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.3887940   0.3680358   0.4095521
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.5699068   0.5500605   0.5897531
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.5144981   0.4931555   0.5358408
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3231132   0.2974471   0.3487793
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.4570312   0.4285011   0.4855614
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.4327369   0.4028742   0.4625996


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1818182   0.1263894   0.2372469
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                0.1115880   0.0710726   0.1521034
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2787540   0.2475949   0.3099131
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1595395   0.1304091   0.1886699
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0890538   0.0649864   0.1131212
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1379781   0.1129774   0.1629789
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1760462   0.1476696   0.2044227
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1035005   0.0984282   0.1085729
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0581948   0.0423724   0.0740172
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1182899   0.1095248   0.1270550
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3290676   0.3216916   0.3364437
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3035144   0.2834906   0.3235382
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1785714   0.1248161   0.2323268
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1682692   0.1173060   0.2192324
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2205882   0.1712211   0.2699554
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1589404   0.1297581   0.1881227
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0964869   0.0836111   0.1093627
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3104693   0.2558835   0.3650551
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2174688   0.1833021   0.2516355
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765239
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1631427   0.1553579   0.1709275
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4075630   0.3763327   0.4387933
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1915758   0.1810911   0.2020606
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3628536   0.3297820   0.3959252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2514589   0.2433251   0.2595926
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2525944   0.2385189   0.2666699
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4619883   0.3870446   0.5369320
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4170854   0.3484054   0.4857655
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2112676   0.1563184   0.2662168
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3700000   0.3029201   0.4370799
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7169811   0.6710815   0.7628807
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4205379   0.3726382   0.4684376
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5687646   0.5218455   0.6156837
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3287197   0.2903909   0.3670485
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4515464   0.4072114   0.4958814
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3471629   0.3241082   0.3702176
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8107852   0.7871616   0.8344089
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.5531205   0.5380793   0.5681618
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6229039   0.6036892   0.6421186
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4405594   0.3998393   0.4812796
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4911263   0.4780235   0.5042291
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4013921   0.3844229   0.4183613


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High              2.3192308   1.0827284   4.967849
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.2181818   0.4877850   3.042256
Birth       ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          PERU                           Low                  High              1.2142857   0.5256316   2.805177
Birth       ki0047075b-MAL-ED          PERU                           Medium               High              0.6296296   0.2292335   1.729387
Birth       ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC              INDIA                          Low                  High              1.1574904   0.5590569   2.396507
Birth       ki1000108-IRC              INDIA                          Medium               High              1.3902939   0.6850014   2.821771
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.5656879   1.2714315   1.928046
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.2710773   1.0186408   1.586072
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.0508242   0.6608858   1.670835
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.0693745   0.6709264   1.704452
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.1103896   0.5531261   2.229085
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.1432090   0.5906934   2.212530
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.4053448   0.8625537   2.289706
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.6792095   1.0589659   2.662734
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.4179944   0.7916407   2.539925
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.3821138   0.7076849   2.699279
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1286170   0.9970155   1.277589
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1319606   1.0067623   1.272728
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High              1.3657289   0.6824179   2.733245
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High              0.5868132   0.2431453   1.416230
Birth       ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              1.8636981   1.4012426   2.478779
Birth       ki1135781-COHORTS          INDIA                          Medium               High              1.4716308   1.1108945   1.949508
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.6531313   1.1738824   2.328038
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.3433046   0.9437302   1.912058
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.2837215   1.2199818   1.350791
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.2877194   1.2188202   1.360513
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.1643852   0.9800672   1.383367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1121246   0.9347056   1.323220
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.9960937   0.8939880   4.456872
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              2.0105932   0.8915563   4.534189
6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              1.2746914   0.5930231   2.739924
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              1.0216450   0.4604930   2.266611
6 months    ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High              0.7796353   0.4516977   1.345659
6 months    ki0047075b-MAL-ED          PERU                           Medium               High              0.7952872   0.4645571   1.361473
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.2401575   0.6701866   2.294869
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.1257310   0.5365092   2.362066
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.1961905   0.8325050   1.718754
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              0.9781931   0.6611405   1.447290
6 months    ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          Low                  High              1.2805479   0.8209131   1.997535
6 months    ki1000108-IRC              INDIA                          Medium               High              1.3191304   0.8444989   2.060518
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.6231156   1.7464742   3.939786
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              2.0022272   1.3744272   2.916789
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.2760417   0.7922304   2.055314
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.2804878   0.7203289   2.276251
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.9135802   1.2872529   2.844654
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.5963557   1.0555152   2.414320
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.5367647   0.9435448   2.502950
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.6328125   1.0192344   2.615764
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.5862150   1.0913388   2.305497
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.5029664   1.0341237   2.184369
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.7360552   0.3024519   1.791284
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0855660   0.7931916   1.485711
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              1.1575342   0.7667857   1.747405
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              0.8965517   0.5794792   1.387116
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.6360902   0.8988940   2.977872
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1574468   0.5597331   2.393432
6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              2.0884864   1.5601704   2.795704
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.2627710   0.9453999   1.686684
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.2490073   1.1082878   1.407594
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.2410082   1.1085181   1.389333
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              1.1432291   0.9261742   1.411152
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9832580   0.7805056   1.238680
6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              3.7941957   2.9192673   4.931347
6 months    ki1135781-COHORTS          INDIA                          Medium               High              2.1209852   1.6270799   2.764817
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.6368039   1.3646431   1.963244
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.3989589   1.1592934   1.688171
6 months    ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              1.4052461   1.1262966   1.753283
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              1.1861210   0.9361274   1.502875
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.5111441   1.4059235   1.624240
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.4359965   1.3344467   1.545274
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.5277077   1.3260177   1.760075
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.3272703   1.1435239   1.540542
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.0124294   0.6955440   1.473686
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              0.9333333   0.6165387   1.412906
24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.0869565   0.7127941   1.657526
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.0333333   0.6773688   1.576361
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.1604396   0.5984279   2.250262
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              0.8432432   0.4015950   1.770588
24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High              1.4538951   0.8962591   2.358482
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              1.3467954   0.8148101   2.226111
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.5436275   0.9664427   2.465522
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.5455594   0.9048803   2.639856
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.2710125   1.1010456   1.467217
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.0794678   0.9130474   1.276222
24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          Low                  High              1.2932752   0.9620058   1.738618
24 months   ki1000108-IRC              INDIA                          Medium               High              1.2367560   0.9133458   1.674684
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.7314095   1.3738247   2.182068
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.3944172   1.0847842   1.792429
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.9252874   1.4133250   2.622703
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.5402299   1.1184614   2.121046
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.2893836   1.5167670   3.455558
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              2.1196529   1.4111128   3.183961
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.7267442   1.1050707   2.698149
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.7906977   1.1044602   2.903317
24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.8863636   1.1864343   2.999212
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.3708341   0.9138785   2.056276
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.3671315   1.1656738   1.603406
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1972222   1.0210916   1.403734
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.0509390   0.9745320   1.133337
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9329389   0.8530459   1.020314
24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              3.2583931   2.8121967   3.775385
24 months   ki1135781-COHORTS          INDIA                          Medium               High              2.2387439   1.9285032   2.598893
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.5540174   1.4337797   1.684338
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.4450254   1.3299720   1.570032
24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.1723164   0.9356251   1.468885
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.1571429   0.9216898   1.452744
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.4658323   1.3776503   1.559659
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.3233182   1.2407413   1.411391
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.4144617   1.2802240   1.562775
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.3392734   1.2088510   1.483767


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0624152   -0.0067958   0.1316262
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.0060591   -0.0700384   0.0579202
Birth       ki1000108-IRC              INDIA                          High                 NA                 0.0186342   -0.0289908   0.0662593
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0731088    0.0420986   0.1041191
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0065983   -0.0396735   0.0528701
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0071825   -0.0274235   0.0417884
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0367636    0.0038140   0.0697132
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0466344   -0.0215818   0.1148506
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0058292    0.0011487   0.0105098
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0020150   -0.0281782   0.0322082
Birth       ki1135781-COHORTS          INDIA                          High                 NA                 0.0415937    0.0222598   0.0609276
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0142627    0.0039227   0.0246027
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0549393    0.0450726   0.0648059
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0259152   -0.0042402   0.0560707
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0689824    0.0041266   0.1338382
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0157269   -0.0633729   0.0948266
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0386710   -0.1169908   0.0396488
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0254218   -0.0514734   0.1023170
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0141888   -0.0400629   0.0684405
6 months    ki1000108-IRC              INDIA                          High                 NA                 0.0424482   -0.0188638   0.1037603
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1465001    0.1002750   0.1927252
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0860902   -0.0646062   0.2367866
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0939629    0.0399596   0.1479661
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0441079    0.0063204   0.0818953
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0556235    0.0158885   0.0953586
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0046900   -0.0170934   0.0264734
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0027770   -0.0610137   0.0665677
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0704100   -0.0104917   0.1513117
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0212863    0.0100963   0.0324763
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0163966    0.0092029   0.0235904
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0237792   -0.0393129   0.0868714
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.1154889    0.0960695   0.1349083
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0514627    0.0323791   0.0705462
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0574845    0.0147707   0.1001983
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0591252    0.0499593   0.0682911
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0546899    0.0362357   0.0731441
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0067617   -0.1037013   0.0901779
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0170854   -0.0936020   0.1277729
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0029343   -0.0985745   0.1044430
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0818644   -0.0181492   0.1818780
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0992098    0.0072007   0.1912190
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0650824    0.0109815   0.1191833
24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0656992   -0.0056659   0.1370643
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1610723    0.0902275   0.2319170
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1048391    0.0550191   0.1546591
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1102125    0.0646424   0.1557825
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1788191    0.0661284   0.2915098
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0280251    0.0043685   0.0516818
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0397383    0.0177774   0.0616993
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0021728   -0.0455694   0.0499150
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.3195679    0.2874771   0.3516587
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1480680    0.1228927   0.1732433
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0405594   -0.0106939   0.0918128
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1023323    0.0862244   0.1184403
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0782789    0.0575730   0.0989848


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.3432836   -0.1542075   0.6263441
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.0542986   -0.8156860   0.3878095
Birth       ki1000108-IRC              INDIA                          High                 NA                 0.1606686   -0.3659840   0.4842713
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.2622701    0.1204733   0.3812065
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0413584   -0.2972458   0.2915809
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0806530   -0.4022094   0.3972378
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.2664449   -0.0106145   0.4675485
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.2648987   -0.2425656   0.5651144
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0563206    0.0100662   0.1004138
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0346251   -0.6522240   0.4359429
Birth       ki1135781-COHORTS          INDIA                          High                 NA                 0.3516253    0.1679490   0.4947548
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2326272    0.0475041   0.3817705
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1669543    0.1364349   0.1963951
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0853839   -0.0199490   0.1798387
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.3863014   -0.0842433   0.6526370
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0934625   -0.5216944   0.4599374
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.1753086   -0.5888389   0.1305913
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1291429   -0.3626165   0.4434295
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0471682   -0.1513476   0.2114558
6 months    ki1000108-IRC              INDIA                          High                 NA                 0.1727642   -0.1174172   0.3875886
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.5150635    0.3171954   0.6555919
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.2007011   -0.2407365   0.4850811
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.3504032    0.1185897   0.5212491
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2775120    0.0015277   0.4772124
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.2651389    0.0520681   0.4303168
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0486078   -0.2061016   0.2495266
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0089445   -0.2193701   0.1945096
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.3237705   -0.1684635   0.6086430
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.3395682    0.1584203   0.4817245
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1005048    0.0554895   0.1433747
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0583449   -0.1099324   0.2011097
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.6028364    0.4930796   0.6888290
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2436380    0.1488471   0.3278723
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.1584234    0.0321187   0.2682458
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2351287    0.1981026   0.2704451
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.2165127    0.1396095   0.2865421
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0146361   -0.2477530   0.1749277
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0409639   -0.2648144   0.2728179
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0138889   -0.6052013   0.3942098
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.2212552   -0.1015387   0.4494578
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.2810945   -0.0317381   0.4990734
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0907728    0.0112242   0.1639217
24 months   ki1000108-IRC              INDIA                          High                 NA                 0.1562266   -0.0319981   0.3101212
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.2831967    0.1448531   0.3991594
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.3189317    0.1510926   0.4535870
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.4291607    0.2304597   0.5765556
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.3960149    0.0870134   0.6004345
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.3287248    0.0425351   0.5293714
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1144659    0.0489219   0.1754929
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0026799   -0.0579774   0.0598595
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.5777545    0.5154516   0.6320466
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2377060    0.1951468   0.2780148
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0920635   -0.0322076   0.2013731
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2083626    0.1743913   0.2409360
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1950185    0.1417669   0.2449660
