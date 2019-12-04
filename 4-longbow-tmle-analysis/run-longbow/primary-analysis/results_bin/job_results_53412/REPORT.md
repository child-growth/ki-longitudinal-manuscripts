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




# Results Detail

## Results Plots
![](/tmp/8cb8ce75-e7a9-4a3a-aa1a-50fd4ff3008c/524f790c-ab16-4c22-9873-3039691f85e8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8cb8ce75-e7a9-4a3a-aa1a-50fd4ff3008c/524f790c-ab16-4c22-9873-3039691f85e8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8cb8ce75-e7a9-4a3a-aa1a-50fd4ff3008c/524f790c-ab16-4c22-9873-3039691f85e8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8cb8ce75-e7a9-4a3a-aa1a-50fd4ff3008c/524f790c-ab16-4c22-9873-3039691f85e8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
Birth       ki1000108-IRC              INDIA                          High                 NA                0.1010307   0.0459775   0.1560839
Birth       ki1000108-IRC              INDIA                          Low                  NA                0.1185931   0.0657047   0.1714814
Birth       ki1000108-IRC              INDIA                          Medium               NA                0.1381164   0.0796207   0.1966120
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2522964   0.2023069   0.3022860
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2775917   0.2486521   0.3065314
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2931071   0.2544455   0.3317687
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1520193   0.0972582   0.2067803
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.1624285   0.1136702   0.2111869
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.1624642   0.1107643   0.2141641
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0826335   0.0384423   0.1268247
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0915547   0.0454636   0.1376457
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1003023   0.0578646   0.1427400
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1069578   0.0708724   0.1430431
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1518765   0.1077383   0.1960148
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1566073   0.1125142   0.2007003
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1854364   0.1512696   0.2196032
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1767243   0.1472055   0.2062431
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1686013   0.1284447   0.2087580
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1032709   0.0978013   0.1087406
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1020369   0.0954657   0.1086080
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1054984   0.0993255   0.1116713
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0561798   0.0223319   0.0900276
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0767263   0.0503293   0.1031234
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0329670   0.0117744   0.0541597
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.1253800   0.1132113   0.1375487
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.1171633   0.1068421   0.1274846
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.1194748   0.1100973   0.1288523
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0618307   0.0523899   0.0712716
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0604143   0.0506621   0.0701664
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0611165   0.0510998   0.0711333
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.3296750   0.3211636   0.3381864
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.3305279   0.3222309   0.3388248
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.3293399   0.3208187   0.3378610
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2943047   0.2690958   0.3195135
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3068235   0.2836228   0.3300242
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3061950   0.2831649   0.3292250
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1095890   0.0377474   0.1814307
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2187500   0.1172098   0.3202902
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2203390   0.1143083   0.3263696
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.1525424   0.0605773   0.2445074
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.1944444   0.1028068   0.2860821
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.1558442   0.0746348   0.2370535
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.2769425   0.1780984   0.3757866
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.1930163   0.1125532   0.2734793
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.2036683   0.1234236   0.2839130
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1743493   0.0856929   0.2630056
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2136188   0.1423123   0.2849254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1933800   0.0875169   0.2992431
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.2884121   0.2166723   0.3601520
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.3385419   0.2481495   0.4289343
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.2811230   0.1925226   0.3697235
6 months    ki1000108-IRC              INDIA                          High                 NA                0.2091019   0.1385469   0.2796569
6 months    ki1000108-IRC              INDIA                          Low                  NA                0.2671783   0.1976047   0.3367520
6 months    ki1000108-IRC              INDIA                          Medium               NA                0.2792363   0.2061013   0.3523712
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1687028   0.1114992   0.2259064
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3170552   0.2845309   0.3495794
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2955242   0.2662158   0.3248326
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3449625   0.1746461   0.5152789
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4344754   0.3783253   0.4906254
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4196536   0.2643993   0.5749079
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1939680   0.1310608   0.2568752
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3227075   0.2554757   0.3899393
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2694763   0.2046019   0.3343507
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1180136   0.0746216   0.1614055
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1749440   0.1199310   0.2299569
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1856966   0.1322678   0.2391253
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1646431   0.1198655   0.2094206
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2466046   0.1918583   0.3013509
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2212599   0.1689876   0.2735322
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0917969   0.0667804   0.1168133
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0675676   0.0103647   0.1247704
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0996516   0.0841500   0.1151532
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.3000783   0.2177143   0.3824422
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.3559193   0.2442056   0.4676330
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.2817784   0.1862096   0.3773472
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1281531   0.0461904   0.2101159
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2386492   0.1962323   0.2810661
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1525290   0.0761407   0.2289174
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0512912   0.0355252   0.0670572
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0806927   0.0615252   0.0998601
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0522402   0.0398239   0.0646565
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1511733   0.1408674   0.1614793
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1690733   0.1514182   0.1867283
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1794954   0.1631027   0.1958880
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4283223   0.3644635   0.4921812
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4164560   0.3714618   0.4614501
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4178285   0.3665366   0.4691205
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1133965   0.0890548   0.1377382
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2585669   0.2386576   0.2784761
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1659192   0.1523314   0.1795070
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1730132   0.1498293   0.1961971
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2304687   0.2022424   0.2586949
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2202035   0.1926758   0.2477313
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.3213639   0.2693486   0.3733793
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.4159665   0.3565852   0.4753479
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.3620824   0.3031253   0.4210396
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2358626   0.2226215   0.2491038
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2655174   0.2519856   0.2790491
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2623482   0.2485874   0.2761090
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2146648   0.1920281   0.2373015
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2862723   0.2610019   0.3115427
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2602186   0.2354322   0.2850050
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.5037044   0.3938757   0.6135332
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4286463   0.3167127   0.5405800
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.4462201   0.2916334   0.6008068
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.4413159   0.3074484   0.5751834
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.4351080   0.3189684   0.5512476
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.3998227   0.2896576   0.5099879
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.1987863   0.0800271   0.3175455
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2346234   0.1436731   0.3255737
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1860663   0.0934769   0.2786558
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.2926343   0.1755787   0.4096899
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.4408998   0.3253879   0.5564117
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.4033226   0.2870499   0.5195952
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.2539148   0.1480926   0.3597370
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.3895572   0.3013116   0.4778028
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.3872322   0.2465522   0.5279122
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6500696   0.5749595   0.7251796
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.8239918   0.7497708   0.8982127
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.7080869   0.6199008   0.7962731
24 months   ki1000108-IRC              INDIA                          High                 NA                0.3532595   0.2691764   0.4373426
24 months   ki1000108-IRC              INDIA                          Low                  NA                0.4556083   0.3741864   0.5370301
24 months   ki1000108-IRC              INDIA                          Medium               NA                0.4430878   0.3616629   0.5245128
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.4639689   0.3805029   0.5474349
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.6908857   0.6235518   0.7582196
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.5386446   0.4591261   0.6181632
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2408073   0.1833030   0.2983115
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4123879   0.3422327   0.4825432
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3372842   0.2746766   0.3998918
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1477712   0.0981363   0.1974060
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3326101   0.2543530   0.4108671
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3092704   0.2412531   0.3772877
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3047423   0.1849208   0.4245639
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.4696719   0.4171551   0.5221887
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4856279   0.3804854   0.5907704
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0582697   0.0321695   0.0843699
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.1053926   0.0642727   0.1465124
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0792273   0.0479959   0.1104588
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.3131522   0.2827502   0.3435543
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.4001988   0.3453249   0.4550727
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.3673835   0.3199874   0.4147797
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.8346267   0.7803361   0.8889173
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.8291463   0.7971167   0.8611758
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7766756   0.7333712   0.8199800
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.3198575   0.2743746   0.3653405
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.7197278   0.6907295   0.7487261
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.5315668   0.5105483   0.5525853
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5077255   0.4756066   0.5398444
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.6941584   0.6603567   0.7279601
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6897337   0.6563456   0.7231218
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.4162414   0.3519635   0.4805193
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.4459227   0.3732028   0.5186425
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.4599351   0.3842052   0.5356650
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4496435   0.4278806   0.4714063
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.5402460   0.5181904   0.5623016
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4962235   0.4720332   0.5204139
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3509502   0.3242850   0.3776154
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.4260198   0.3976853   0.4543543
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.4292987   0.3986361   0.4599613


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
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765238
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
Birth       ki1000108-IRC              INDIA                          Low                  High              1.1738320   0.5797257   2.376782
Birth       ki1000108-IRC              INDIA                          Medium               High              1.3670731   0.6846124   2.729849
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.1002603   0.9523376   1.271159
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1617567   0.9969485   1.353810
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.0684734   0.6687300   1.707169
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.0687080   0.6606763   1.728739
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.1079606   0.5310842   2.311454
Birth       ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.2138208   0.6133941   2.401981
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.4199672   0.9181750   2.195994
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.4641972   0.9525164   2.250747
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.9530184   0.8326244   1.090821
Birth       ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.9092138   0.7321645   1.129077
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              0.9880500   0.9370273   1.041851
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0215689   0.9753528   1.069975
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High              1.3657289   0.6824179   2.733245
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High              0.5868132   0.2431453   1.416230
Birth       ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              0.9344655   0.8539635   1.022556
Birth       ki1135781-COHORTS          INDIA                          Medium               High              0.9529017   0.8801518   1.031665
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.9770908   0.8590966   1.111291
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9884491   0.8630696   1.132043
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0025871   0.9826256   1.022954
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              0.9989835   0.9784751   1.019922
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0425370   0.9638614   1.127635
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.0404013   0.9616264   1.125629
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.9960937   0.8939880   4.456872
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              2.0105932   0.8915563   4.534189
6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              1.2746914   0.5930231   2.739924
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              1.0216450   0.4604930   2.266611
6 months    ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High              0.6969543   0.4027696   1.206013
6 months    ki0047075b-MAL-ED          PERU                           Medium               High              0.7354172   0.4330883   1.248795
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.2252351   0.6693357   2.242822
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.1091530   0.5258455   2.339509
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.1738129   0.8160764   1.688367
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              0.9747268   0.6527599   1.455500
6 months    ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          Low                  High              1.2777423   0.8378049   1.948694
6 months    ki1000108-IRC              INDIA                          Medium               High              1.3354076   0.8756476   2.036565
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.8793708   1.2551713   2.813986
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.7517441   1.2140589   2.527561
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.2594856   0.7559086   2.098539
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.2165194   0.6565476   2.254093
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.6637152   1.1327726   2.443516
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.3892822   0.9301058   2.075146
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.4824055   0.9141293   2.403955
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.5735188   0.9873559   2.507668
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.4978135   1.0589943   2.118468
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.3438764   0.9406319   1.919990
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.7360552   0.3024519   1.791284
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0855660   0.7931916   1.485711
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              1.1860883   0.7801882   1.803162
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              0.9390164   0.6061586   1.454655
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.8622188   0.9585633   3.617767
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1902091   0.5291798   2.676969
6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.5732267   1.1716301   2.112478
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0185019   0.7468845   1.388898
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1184067   0.9895334   1.264064
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1873480   1.0622253   1.327209
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9722957   0.8153384   1.159468
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9755002   0.8111771   1.173111
6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              2.2802016   1.8195219   2.857519
6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.4631774   1.1662949   1.835632
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.3320870   1.1155922   1.590595
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.2727555   1.0648647   1.521232
6 months    ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              1.2943784   1.0451388   1.603055
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              1.1267053   0.8973995   1.414604
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1257288   1.0499779   1.206945
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1122922   1.0402531   1.189320
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.3335782   1.1679331   1.522716
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2122088   1.0522206   1.396523
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              0.8509878   0.6222162   1.163872
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              0.8858769   0.5926140   1.324265
24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              0.9859332   0.6600796   1.472647
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.9059786   0.6037609   1.359474
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.1802794   0.5783679   2.408604
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              0.9360118   0.4297209   2.038807
24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High              1.5066582   0.9333019   2.432245
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              1.3782478   0.8463442   2.244438
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.5342043   0.9546002   2.465727
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.5250476   0.8771631   2.651469
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.2675439   1.0948385   1.467493
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.0892479   0.9190696   1.290937
24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          Low                  High              1.2897268   0.9606628   1.731508
24 months   ki1000108-IRC              INDIA                          Medium               High              1.2542842   0.9319386   1.688125
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.4890776   1.2209273   1.816121
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.1609498   0.9259799   1.455544
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.7125227   1.2841754   2.283749
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.4006397   1.0400830   1.886187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.2508452   1.4948946   3.389071
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              2.0929005   1.4045683   3.118561
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.5412099   1.0258036   2.315578
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.5935689   1.0183446   2.493715
24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.8087032   1.1841179   2.762738
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.3596663   0.9025037   2.048404
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.2779688   1.0827569   1.508376
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1731787   1.0009047   1.375104
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9934337   0.9213033   1.071211
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9305664   0.8545094   1.013393
24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              2.2501511   1.9423072   2.606787
24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.6618861   1.4353605   1.924162
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.3671923   1.2643659   1.478381
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.3584775   1.2564873   1.468746
24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.0713078   0.8572440   1.338826
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.1049719   0.8823150   1.383817
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.2014987   1.1310176   1.276372
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1035933   1.0343253   1.177500
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.2139038   1.1002107   1.339346
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2232467   1.1072617   1.351381


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0624152   -0.0067958   0.1316262
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.0060591   -0.0700384   0.0579202
Birth       ki1000108-IRC              INDIA                          High                 NA                 0.0149487   -0.0330682   0.0629655
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0264576   -0.0010144   0.0539295
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0075202   -0.0396312   0.0546716
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0064203   -0.0310575   0.0438981
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0310204   -0.0001651   0.0622059
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0093902   -0.0304839   0.0117034
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0002296   -0.0018157   0.0022749
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0020150   -0.0281782   0.0322082
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0070901   -0.0155726   0.0013923
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0005193   -0.0051112   0.0040726
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0006073   -0.0051235   0.0039088
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0092097   -0.0059733   0.0243927
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0689824    0.0041266   0.1338382
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0157269   -0.0633729   0.0948266
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0563542   -0.1374960   0.0247875
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0225011   -0.0541346   0.0991369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0124009   -0.0427930   0.0675948
6 months    ki1000108-IRC              INDIA                          High                 NA                 0.0365984   -0.0236898   0.0968865
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1157283    0.0609218   0.1705348
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0839848   -0.0800951   0.2480648
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0741884    0.0177078   0.1306690
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0409268    0.0031053   0.0787484
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0451472    0.0065366   0.0837577
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0046900   -0.0170934   0.0264734
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0103911   -0.0530629   0.0738450
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0893157    0.0094155   0.1692158
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0113952   -0.0028197   0.0256101
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0119694    0.0046171   0.0193216
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0207593   -0.0772212   0.0357025
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0781793    0.0542672   0.1020915
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0382128    0.0190423   0.0573832
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0414897   -0.0006308   0.0836102
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0155962    0.0050333   0.0261591
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0379296    0.0191118   0.0567474
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0417161   -0.1253793   0.0419470
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0242304   -0.1368940   0.0884331
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0124813   -0.0930077   0.1179703
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0773657   -0.0234191   0.1781506
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0990264    0.0057094   0.1923434
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0669115    0.0119724   0.1218507
24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0672784   -0.0033540   0.1379107
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1047957    0.0360792   0.1735122
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0879125    0.0398105   0.1360144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1090382    0.0639366   0.1541397
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1468040    0.0324971   0.2611110
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0269843    0.0038285   0.0501401
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0340107    0.0124299   0.0555914
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0238415   -0.0724516   0.0247687
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2332630    0.1893619   0.2771641
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1151784    0.0900637   0.1402930
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0243180   -0.0263759   0.0750120
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0414829    0.0235244   0.0594413
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0504419    0.0288765   0.0720073


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.3432836   -0.1542075   0.6263441
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.0542986   -0.8156860   0.3878095
Birth       ki1000108-IRC              INDIA                          High                 NA                 0.1288908   -0.3981280   0.4572520
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0949137   -0.0150477   0.1929629
Birth       ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0471370   -0.2992332   0.3011664
Birth       ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0720946   -0.4605927   0.4105075
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.2248209   -0.0321451   0.4178119
Birth       ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0533396   -0.1812479   0.0607185
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0022183   -0.0177402   0.0217855
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0346251   -0.6522240   0.4359429
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0599387   -0.1342985   0.0095464
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0084694   -0.0862976   0.0637827
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                -0.0018456   -0.0156657   0.0117864
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0303436   -0.0210494   0.0791497
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.3863014   -0.0842433   0.6526370
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0934625   -0.5216944   0.4599374
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.2554725   -0.6816641   0.0627075
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1143058   -0.3737901   0.4289854
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0412245   -0.1609830   0.2082137
6 months    ki1000108-IRC              INDIA                          High                 NA                 0.1489553   -0.1344493   0.3615606
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.4068764    0.1777459   0.5721570
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1957928   -0.2942105   0.5002751
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.2766610    0.0352320   0.4576734
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2574980   -0.0176766   0.4582667
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.2152014    0.0109226   0.3772896
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0486078   -0.2061016   0.2495266
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                 0.0334689   -0.1939996   0.2176024
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.4107056   -0.0914455   0.6818276
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.1817808   -0.0644144   0.3710320
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0733674    0.0273158   0.1172387
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0509352   -0.1991866   0.0789883
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.4080856    0.2715854   0.5190065
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1809094    0.0855247   0.2663451
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.1143428   -0.0095305   0.2230163
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0620229    0.0190408   0.1031216
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1501602    0.0724730   0.2213406
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0902969   -0.2887574   0.0776019
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0580947   -0.3656380   0.1801895
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0590782   -0.5999301   0.4466421
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.2090965   -0.1160269   0.4395043
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.2805747   -0.0378861   0.5013203
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0933240    0.0124526   0.1675727
24 months   ki1000108-IRC              INDIA                          High                 NA                 0.1599817   -0.0264490   0.3125516
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1842514    0.0528066   0.2974552
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2674389    0.1063304   0.3995032
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.4245880    0.2291334   0.5704847
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.3251140    0.0181170   0.5361248
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.3165167    0.0408461   0.5129568
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0979674    0.0337587   0.1579093
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0294054   -0.0911361   0.0288329
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.4217218    0.3365419   0.4959657
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1849055    0.1429567   0.2248012
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0551981   -0.0671627   0.1635290
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0844647    0.0471891   0.1202820
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1256674    0.0703007   0.1777369
