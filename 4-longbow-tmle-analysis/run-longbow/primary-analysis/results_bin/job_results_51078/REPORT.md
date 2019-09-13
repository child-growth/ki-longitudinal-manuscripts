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

agecat      studyid                    country                        meducyrs    stunted   n_cell       n
----------  -------------------------  -----------------------------  ---------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              0       66     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     High              1        9     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               0       51     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low               1       17     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            0       54     207
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium            1       10     207
Birth       ki0047075b-MAL-ED          BRAZIL                         High              0       58     190
Birth       ki0047075b-MAL-ED          BRAZIL                         High              1        7     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Low               0       46     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Low               1        6     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium            0       65     190
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium            1        8     190
Birth       ki0047075b-MAL-ED          INDIA                          High              0       42     183
Birth       ki0047075b-MAL-ED          INDIA                          High              1        9     183
Birth       ki0047075b-MAL-ED          INDIA                          Low               0       55     183
Birth       ki0047075b-MAL-ED          INDIA                          Low               1        6     183
Birth       ki0047075b-MAL-ED          INDIA                          Medium            0       59     183
Birth       ki0047075b-MAL-ED          INDIA                          Medium            1       12     183
Birth       ki0047075b-MAL-ED          NEPAL                          High              0       34     160
Birth       ki0047075b-MAL-ED          NEPAL                          High              1        3     160
Birth       ki0047075b-MAL-ED          NEPAL                          Low               0       60     160
Birth       ki0047075b-MAL-ED          NEPAL                          Low               1        8     160
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            0       49     160
Birth       ki0047075b-MAL-ED          NEPAL                          Medium            1        6     160
Birth       ki0047075b-MAL-ED          PERU                           High              0       77     286
Birth       ki0047075b-MAL-ED          PERU                           High              1       10     286
Birth       ki0047075b-MAL-ED          PERU                           Low               0       85     286
Birth       ki0047075b-MAL-ED          PERU                           Low               1       14     286
Birth       ki0047075b-MAL-ED          PERU                           Medium            0       90     286
Birth       ki0047075b-MAL-ED          PERU                           Medium            1       10     286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       63     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        9     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0      124     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        9     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       47     262
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1       10     262
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0        4     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        0     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       32     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        3     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       56     107
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1       12     107
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High              0       43      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          High              1        7      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low               0       13      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low               1        2      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0       18      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1        7      90
Birth       ki1000108-IRC              INDIA                          High              0      102     388
Birth       ki1000108-IRC              INDIA                          High              1       11     388
Birth       ki1000108-IRC              INDIA                          Low               0      126     388
Birth       ki1000108-IRC              INDIA                          Low               1       16     388
Birth       ki1000108-IRC              INDIA                          Medium            0      115     388
Birth       ki1000108-IRC              INDIA                          Medium            1       18     388
Birth       ki1000109-EE               PAKISTAN                       High              0        0       2
Birth       ki1000109-EE               PAKISTAN                       High              1        0       2
Birth       ki1000109-EE               PAKISTAN                       Low               0        1       2
Birth       ki1000109-EE               PAKISTAN                       Low               1        1       2
Birth       ki1000109-EE               PAKISTAN                       Medium            0        0       2
Birth       ki1000109-EE               PAKISTAN                       Medium            1        0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              0       25     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          High              1        6     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               0       61     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low               1       25     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            0       55     187
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium            1       15     187
Birth       ki1017093-NIH-Birth        BANGLADESH                     High              0        4      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     High              1        0      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low               0       13      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low               1        1      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium            0       10      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     Medium            1        0      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              0        6      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High              1        1      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               0       10      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        2      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0        6      27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        2      27
Birth       ki1119695-PROBIT           BELARUS                        High              0     2246   13884
Birth       ki1119695-PROBIT           BELARUS                        High              1        2   13884
Birth       ki1119695-PROBIT           BELARUS                        Low               0     4944   13884
Birth       ki1119695-PROBIT           BELARUS                        Low               1       18   13884
Birth       ki1119695-PROBIT           BELARUS                        Medium            0     6661   13884
Birth       ki1119695-PROBIT           BELARUS                        Medium            1       13   13884
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              0     6754   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High              1      733   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2584   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      320   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     3040   13810
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      379   13810
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              0     4040   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High              1     1512   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               0     5186   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low               1     2711   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     4029   19587
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     2109   19587
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              0        3     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High              1        5     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               0      249     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low               1      105     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            0        3     367
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium            1        2     367
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
6 months    ki0047075b-MAL-ED          INDIA                          Medium            0       64     208
6 months    ki0047075b-MAL-ED          INDIA                          Medium            1       13     208
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
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       48     203
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1       14     203
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
6 months    ki1000109-EE               PAKISTAN                       High              0        9     369
6 months    ki1000109-EE               PAKISTAN                       High              1        6     369
6 months    ki1000109-EE               PAKISTAN                       Low               0      149     369
6 months    ki1000109-EE               PAKISTAN                       Low               1      172     369
6 months    ki1000109-EE               PAKISTAN                       Medium            0       20     369
6 months    ki1000109-EE               PAKISTAN                       Medium            1       13     369
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
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              0      179     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     High              1       24     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               0      149     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               1       31     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            0      161     583
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            1       39     583
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
6 months    ki1113344-GMS-Nepal        NEPAL                          High              0       57     560
6 months    ki1113344-GMS-Nepal        NEPAL                          High              1       10     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               0      306     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Low               1       93     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            0       78     560
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            1       16     560
6 months    ki1119695-PROBIT           BELARUS                        High              0     2547   15761
6 months    ki1119695-PROBIT           BELARUS                        High              1      110   15761
6 months    ki1119695-PROBIT           BELARUS                        Low               0     5156   15761
6 months    ki1119695-PROBIT           BELARUS                        Low               1      488   15761
6 months    ki1119695-PROBIT           BELARUS                        Medium            0     7070   15761
6 months    ki1119695-PROBIT           BELARUS                        Medium            1      390   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              0     3816    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              1      667    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     1398    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      321    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     1689    8282
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      391    8282
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
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              0       41    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              1       27    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1420    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               1      479    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            0       51    2036
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       18    2036
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       34     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1       30     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       32     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1       27     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       29     171
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1       19     171
24 months   ki0047075b-MAL-ED          BRAZIL                         High              0       61     168
24 months   ki0047075b-MAL-ED          BRAZIL                         High              1        1     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low               0       40     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Low               1        2     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            0       61     168
24 months   ki0047075b-MAL-ED          BRAZIL                         Medium            1        3     168
24 months   ki0047075b-MAL-ED          INDIA                          High              0       33     199
24 months   ki0047075b-MAL-ED          INDIA                          High              1       22     199
24 months   ki0047075b-MAL-ED          INDIA                          Low               0       41     199
24 months   ki0047075b-MAL-ED          INDIA                          Low               1       28     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       44     199
24 months   ki0047075b-MAL-ED          INDIA                          Medium            1       31     199
24 months   ki0047075b-MAL-ED          NEPAL                          High              0       39     213
24 months   ki0047075b-MAL-ED          NEPAL                          High              1        9     213
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
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       39     175
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1       75     175
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              0       56     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High              1      102     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               0       18     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low               1       87     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            0       32     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium            1       77     372
24 months   ki1000108-IRC              INDIA                          High              0       80     409
24 months   ki1000108-IRC              INDIA                          High              1       44     409
24 months   ki1000108-IRC              INDIA                          Low               0       80     409
24 months   ki1000108-IRC              INDIA                          Low               1       66     409
24 months   ki1000108-IRC              INDIA                          Medium            0       79     409
24 months   ki1000108-IRC              INDIA                          Medium            1       60     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     High              0       78     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     High              1       52     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               0       49     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low               1      104     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            0       64     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium            1       82     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      156     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1       45     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0       98     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1       75     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      133     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1       70     577
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
24 months   ki1113344-GMS-Nepal        NEPAL                          High              0       42     496
24 months   ki1113344-GMS-Nepal        NEPAL                          High              1       16     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      185     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1      165     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0       46     496
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1       42     496
24 months   ki1119695-PROBIT           BELARUS                        High              0      626    4035
24 months   ki1119695-PROBIT           BELARUS                        High              1       38    4035
24 months   ki1119695-PROBIT           BELARUS                        Low               0     1256    4035
24 months   ki1119695-PROBIT           BELARUS                        Low               1      152    4035
24 months   ki1119695-PROBIT           BELARUS                        Medium            0     1809    4035
24 months   ki1119695-PROBIT           BELARUS                        Medium            1      154    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0       80     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1      125     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0       36     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1       80     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0       43     457
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1       93     457
24 months   ki1135781-COHORTS          GUATEMALA                      High              0       43    1060
24 months   ki1135781-COHORTS          GUATEMALA                      High              1      166    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Low               0       89    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Low               1      419    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0       90    1060
24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1      253    1060
24 months   ki1135781-COHORTS          INDIA                          High              0      499    4201
24 months   ki1135781-COHORTS          INDIA                          High              1      109    4201
24 months   ki1135781-COHORTS          INDIA                          Low               0      380    4201
24 months   ki1135781-COHORTS          INDIA                          Low               1      894    4201
24 months   ki1135781-COHORTS          INDIA                          Medium            0     1299    4201
24 months   ki1135781-COHORTS          INDIA                          Medium            1     1020    4201
24 months   ki1135781-COHORTS          PHILIPPINES                    High              0      483    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    High              1      431    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      201    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1      543    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      253    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1      534    2445
24 months   ki1148112-LCNI-5           MALAWI                         High              0      133     572
24 months   ki1148112-LCNI-5           MALAWI                         High              1       87     572
24 months   ki1148112-LCNI-5           MALAWI                         Low               0       94     572
24 months   ki1148112-LCNI-5           MALAWI                         Low               1       83     572
24 months   ki1148112-LCNI-5           MALAWI                         Medium            0       95     572
24 months   ki1148112-LCNI-5           MALAWI                         Medium            1       80     572
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     1790    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1     1137    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     1294    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1     1710    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     1306    8621
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1     1384    8621
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0       37    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1       34    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1126    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1      735    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0       43    2006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       31    2006


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/1cd6038c-19c2-4dc2-bd3e-fb9a327e14b3/58392b14-2501-43ff-bfb6-543d958a35bb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1cd6038c-19c2-4dc2-bd3e-fb9a327e14b3/58392b14-2501-43ff-bfb6-543d958a35bb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1cd6038c-19c2-4dc2-bd3e-fb9a327e14b3/58392b14-2501-43ff-bfb6-543d958a35bb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1cd6038c-19c2-4dc2-bd3e-fb9a327e14b3/58392b14-2501-43ff-bfb6-543d958a35bb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1200000    0.0462773   0.1937227
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2500000    0.1468318   0.3531682
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1562500    0.0670784   0.2454216
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 NA                0.1076923    0.0321332   0.1832514
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  NA                0.1153846    0.0283196   0.2024496
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium               NA                0.1095890    0.0377416   0.1814365
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                0.1764706    0.0715578   0.2813834
Birth       ki0047075b-MAL-ED          INDIA                          Low                  NA                0.0983607    0.0234230   0.1732983
Birth       ki0047075b-MAL-ED          INDIA                          Medium               NA                0.1690141    0.0816029   0.2564253
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                0.1309083    0.0611186   0.2006980
Birth       ki0047075b-MAL-ED          PERU                           Low                  NA                0.1256820    0.0598989   0.1914650
Birth       ki0047075b-MAL-ED          PERU                           Medium               NA                0.1011964    0.0397345   0.1626584
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1250000    0.0484630   0.2015370
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.0676692    0.0248998   0.1104386
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1754386    0.0765115   0.2743657
Birth       ki1000108-IRC              INDIA                          High                 NA                0.0947480    0.0392316   0.1502645
Birth       ki1000108-IRC              INDIA                          Low                  NA                0.1110820    0.0588262   0.1633379
Birth       ki1000108-IRC              INDIA                          Medium               NA                0.1297585    0.0710140   0.1885030
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1935484   -0.0222467   0.4093435
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2906977    0.1800337   0.4013617
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2142857    0.0869223   0.3416491
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1033952    0.0979713   0.1088192
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1028159    0.0963224   0.1093095
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1060325    0.0998385   0.1122265
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0561798    0.0223319   0.0900276
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0767263    0.0503293   0.1031234
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0329670    0.0117744   0.0541597
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.1258157    0.1132880   0.1383434
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.1180875    0.1077617   0.1284133
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.1192275    0.1098205   0.1286345
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0619010    0.0523371   0.0714648
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0611671    0.0509894   0.0713447
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0607700    0.0507348   0.0708052
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.3221879    0.3134800   0.3308959
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.3251837    0.3168829   0.3334844
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.3222648    0.3136289   0.3309007
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1095890    0.0377474   0.1814307
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2187500    0.1172098   0.3202902
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2203390    0.1143083   0.3263696
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.1525424    0.0605773   0.2445074
6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.1944444    0.1028068   0.2860821
6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.1688312    0.0849586   0.2527038
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                0.2809485    0.1831286   0.3787684
6 months    ki0047075b-MAL-ED          PERU                           Low                  NA                0.1852656    0.1064589   0.2640722
6 months    ki0047075b-MAL-ED          PERU                           Medium               NA                0.2053382    0.1245105   0.2861659
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1604198    0.0721306   0.2487090
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.2208321    0.1470287   0.2946356
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.1673483    0.0727133   0.2619832
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.2930274    0.2203465   0.3657083
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.3382614    0.2479261   0.4285966
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.2762668    0.1883608   0.3641727
6 months    ki1000108-IRC              INDIA                          High                 NA                0.2089590    0.1369056   0.2810124
6 months    ki1000108-IRC              INDIA                          Low                  NA                0.2553859    0.1825505   0.3282213
6 months    ki1000108-IRC              INDIA                          Medium               NA                0.2678226    0.1938715   0.3417737
6 months    ki1000109-EE               PAKISTAN                       High                 NA                0.4000000    0.1517454   0.6482546
6 months    ki1000109-EE               PAKISTAN                       Low                  NA                0.5358255    0.4811948   0.5904563
6 months    ki1000109-EE               PAKISTAN                       Medium               NA                0.3939394    0.2270022   0.5608766
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1738122    0.1159341   0.2316904
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3290455    0.2967449   0.3613461
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2939791    0.2651363   0.3228219
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3641697    0.1815190   0.5468203
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4350672    0.3790046   0.4911298
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4116934    0.2529863   0.5704004
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.1805522    0.1215533   0.2395511
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.3137335    0.2483561   0.3791109
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.2827066    0.2164474   0.3489659
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1242795    0.0795511   0.1690080
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1684889    0.1141654   0.2228124
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1928302    0.1375471   0.2481132
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1623936    0.1175996   0.2071876
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2449693    0.1902834   0.2996551
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2196690    0.1674035   0.2719345
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0917969    0.0667804   0.1168133
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0675676    0.0103647   0.1247704
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0996516    0.0841500   0.1151532
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                0.3153704    0.2309984   0.3997423
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  NA                0.3551740    0.2483449   0.4620031
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               NA                0.2863430    0.1907703   0.3819157
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1432431    0.0565900   0.2298962
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2285802    0.1872644   0.2698960
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1606124    0.0783722   0.2428527
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0502783    0.0341384   0.0664182
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0799938    0.0603118   0.0996758
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0525321    0.0403962   0.0646680
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1522742    0.1415357   0.1630126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1757596    0.1573562   0.1941630
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1854087    0.1686135   0.2022039
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.4217992    0.3578880   0.4857104
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.4188919    0.3748454   0.4629384
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.4155396    0.3649312   0.4661480
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1065568    0.0833582   0.1297554
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2565272    0.2366251   0.2764293
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1659865    0.1523762   0.1795969
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1730643    0.1497337   0.1963950
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2261555    0.1979927   0.2543184
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2199986    0.1926596   0.2473376
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                0.3168539    0.2641922   0.3695156
6 months    ki1148112-LCNI-5           MALAWI                         Low                  NA                0.4222811    0.3618543   0.4827080
6 months    ki1148112-LCNI-5           MALAWI                         Medium               NA                0.3626624    0.3025603   0.4227646
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2308912    0.2184667   0.2433156
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2612169    0.2484128   0.2740209
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2621632    0.2485660   0.2757604
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3894710    0.2766675   0.5022745
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2527266    0.2295867   0.2758665
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2657470    0.1636540   0.3678401
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.4885331    0.3711212   0.6059450
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4405907    0.3148301   0.5663514
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3918851    0.2478124   0.5359577
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.3757125    0.2416482   0.5097768
24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3923212    0.2793286   0.5053137
24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.3793413    0.2697613   0.4889214
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.1875000    0.0768219   0.2981781
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.2417582    0.1535836   0.3299329
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.1756757    0.0887678   0.2625835
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                0.2726960    0.1566944   0.3886976
24 months   ki0047075b-MAL-ED          PERU                           Low                  NA                0.4234726    0.3093458   0.5375993
24 months   ki0047075b-MAL-ED          PERU                           Medium               NA                0.3787188    0.2623666   0.4950710
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.2657034    0.1485792   0.3828277
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.3970620    0.3072268   0.4868972
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.3776541    0.2409797   0.5143286
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                0.6437576    0.5667769   0.7207382
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  NA                0.8256709    0.7529672   0.8983747
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               NA                0.7069017    0.6177683   0.7960352
24 months   ki1000108-IRC              INDIA                          High                 NA                0.3546336    0.2703804   0.4388867
24 months   ki1000108-IRC              INDIA                          Low                  NA                0.4509089    0.3693457   0.5324722
24 months   ki1000108-IRC              INDIA                          Medium               NA                0.4384759    0.3560211   0.5209307
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                0.4461044    0.3605843   0.5316245
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  NA                0.6637235    0.5906700   0.7367770
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               NA                0.5540675    0.4703360   0.6377990
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2410693    0.1830262   0.2991125
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4103523    0.3391531   0.4815516
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3332224    0.2701396   0.3963053
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.1488157    0.0990229   0.1986084
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3256430    0.2470910   0.4041950
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3059690    0.2378497   0.3740883
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.3198190    0.1973998   0.4422383
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.4772486    0.4238064   0.5306908
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4295997    0.3100046   0.5491948
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0587117    0.0323305   0.0850929
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.1052611    0.0644673   0.1460549
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0790490    0.0479161   0.1101819
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.6127217    0.5477822   0.6776612
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.6689761    0.5836505   0.7543018
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.6952444    0.6178045   0.7726844
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.8047417    0.7489787   0.8605046
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.8025030    0.7682900   0.8367161
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.7596988    0.7153323   0.8040653
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.2303825    0.1933039   0.2674610
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.6662770    0.6394423   0.6931118
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.4432203    0.4227304   0.4637102
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.5071837    0.4753356   0.5390318
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.6861619    0.6520800   0.7202437
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.6859777    0.6523066   0.7196489
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.4071132    0.3423460   0.4718805
24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.4562763    0.3827789   0.5297737
24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.4534958    0.3770962   0.5298953
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.4431964    0.4218857   0.4645071
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.5366383    0.5162279   0.5570487
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.4981201    0.4748040   0.5214362
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.4872034    0.3436255   0.6307813
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3953944    0.3688167   0.4219720
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.4151383    0.2697155   0.5605610


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1739130   0.1221531   0.2256729
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1105263   0.0658254   0.1552272
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1475410   0.0960175   0.1990645
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                0.1188811   0.0813061   0.1564562
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1068702   0.0693890   0.1443514
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2459893   0.1594019   0.3325767
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1036930   0.0986082   0.1087777
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0581948   0.0423724   0.0740172
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1182899   0.1095248   0.1270550
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0527962   0.0698268
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3232756   0.3156176   0.3309337
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1785714   0.1248161   0.2323268
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1730769   0.1215404   0.2246134
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2205882   0.1712211   0.2699554
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5176152   0.4665618   0.5686686
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2844311   0.2666491   0.3022132
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0964869   0.0836111   0.1093627
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3104693   0.2558835   0.3650551
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2125000   0.1785885   0.2464115
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765238
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1665057   0.1584820   0.1745293
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4075630   0.3763327   0.4387933
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1915758   0.1810911   0.2020606
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3628536   0.3297820   0.3959252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2514589   0.2433251   0.2595926
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2573674   0.2348896   0.2798452
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4444444   0.3697487   0.5191402
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4070352   0.3386053   0.4754651
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2065728   0.1520761   0.2610695
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3700000   0.3029201   0.4370799
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4495968   0.4057742   0.4934193
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6520788   0.6083612   0.6957964
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7905660   0.7660589   0.8150732
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4815520   0.4664409   0.4966632
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.5974942   0.6360437
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4370629   0.3963782   0.4777477
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4907783   0.4776560   0.5039007
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3988036   0.3729992   0.4246080


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  High              2.0833333   0.9938990   4.3669202
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.3020833   0.5629511   3.0116663
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 High              1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         Low                  High              1.0714286   0.3823707   3.0022156
Birth       ki0047075b-MAL-ED          BRAZIL                         Medium               High              1.0176125   0.3895365   2.6583777
Birth       ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low                  High              0.5573771   0.2120599   1.4650071
Birth       ki0047075b-MAL-ED          INDIA                          Medium               High              0.9577465   0.4355463   2.1060408
Birth       ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low                  High              0.9600763   0.4571536   2.0162727
Birth       ki0047075b-MAL-ED          PERU                           Medium               High              0.7730330   0.3448805   1.7327163
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              0.5413534   0.2245471   1.3051312
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.4035088   0.6105386   3.2263919
Birth       ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          Low                  High              1.1723943   0.5532102   2.4846041
Birth       ki1000108-IRC              INDIA                          Medium               High              1.3695116   0.6518233   2.8774089
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.5019380   0.5821735   3.8748203
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1071429   0.2616557   4.6846500
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              0.9943971   0.9450577   1.0463125
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0255069   0.9797753   1.0733730
Birth       ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  High              1.3657289   0.6824179   2.7332451
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               High              0.5868132   0.2431453   1.4162299
Birth       ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          Low                  High              0.9385753   0.8553951   1.0298441
Birth       ki1135781-COHORTS          INDIA                          Medium               High              0.9476364   0.8721266   1.0296838
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.9881437   0.8595060   1.1360339
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.9817293   0.8552463   1.1269180
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0092982   0.9895240   1.0294675
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0002386   0.9796785   1.0212302
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.9960937   0.8939880   4.4568721
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              2.0105932   0.8915563   4.5341893
6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              1.2746914   0.5930231   2.7399237
6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              1.1067821   0.5067511   2.4172942
6 months    ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low                  High              0.6594288   0.3811087   1.1410035
6 months    ki0047075b-MAL-ED          PERU                           Medium               High              0.7308747   0.4334434   1.2324053
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.3765893   0.7261822   2.6095353
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.0431898   0.4735170   2.2982169
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.1543676   0.8030699   1.6593383
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              0.9428018   0.6296842   1.4116205
6 months    ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          Low                  High              1.2221818   0.7803440   1.9141920
6 months    ki1000108-IRC              INDIA                          Medium               High              1.2816990   0.8273544   1.9855488
6 months    ki1000109-EE               PAKISTAN                       High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN                       Low                  High              1.3395639   0.7141864   2.5125532
6 months    ki1000109-EE               PAKISTAN                       Medium               High              0.9848485   0.4645081   2.0880723
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.8931088   1.2801183   2.7996327
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.6913600   1.1824565   2.4192846
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.1946827   0.7115194   2.0059423
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.1304989   0.6005028   2.1282625
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.7376334   1.1814251   2.5557016
6 months    ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.5657890   1.0480117   2.3393779
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.3557251   0.8379917   2.1933281
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.5515840   0.9804168   2.4554995
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.5084912   1.0621497   2.1423965
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.3526953   0.9428440   1.9407075
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              0.7360552   0.3024519   1.7912840
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.0855660   0.7931916   1.4857111
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Low                  High              1.1262123   0.7508135   1.6893063
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Medium               High              0.9079578   0.5905472   1.3959720
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.5957498   0.8481344   3.0023750
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1212572   0.5080569   2.4745609
6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.5910203   1.1645228   2.1737192
6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0448267   0.7510021   1.4536081
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1542312   1.0196889   1.3065255
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.2175975   1.0883543   1.3621886
6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9931073   0.8325751   1.1845925
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9851597   0.8184708   1.1857964
6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          Low                  High              2.4074227   1.9152302   3.0261032
6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.5577288   1.2379953   1.9600389
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.3067713   1.0922819   1.5633796
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.2711953   1.0634107   1.5195799
6 months    ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Low                  High              1.3327315   1.0715266   1.6576102
6 months    ki1148112-LCNI-5           MALAWI                         Medium               High              1.1445732   0.9066460   1.4449386
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1313420   1.0588836   1.2087587
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1354406   1.0636214   1.2121092
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.6488971   0.4810760   0.8752618
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.6823282   0.4204172   1.1074040
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              0.9018646   0.6294060   1.2922656
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              0.8021669   0.5217207   1.2333644
24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.0442057   0.6600716   1.6518897
24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.0096585   0.6390330   1.5952391
24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.2893773   0.6442223   2.5806212
24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              0.9369369   0.4337384   2.0239175
24 months   ki0047075b-MAL-ED          PERU                           High                 High              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low                  High              1.5529111   0.9411307   2.5623782
24 months   ki0047075b-MAL-ED          PERU                           Medium               High              1.3887951   0.8260349   2.3349519
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.4943803   0.9092026   2.4561881
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.4213370   0.8035276   2.5141622
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low                  High              1.2825806   1.1056439   1.4878326
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Medium               High              1.0980869   0.9227253   1.3067755
24 months   ki1000108-IRC              INDIA                          High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          Low                  High              1.2714784   0.9441632   1.7122647
24 months   ki1000108-IRC              INDIA                          Medium               High              1.2364196   0.9151329   1.6705043
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low                  High              1.4878210   1.1973154   1.8488122
24 months   ki1017093-NIH-Birth        BANGLADESH                     Medium               High              1.2420130   0.9769245   1.5790334
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.7022169   1.2714743   2.2788840
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.3822679   1.0211113   1.8711620
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.1882303   1.4486243   3.3054476
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              2.0560266   1.3794223   3.0645042
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.4922458   1.0020408   2.2222621
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.3432588   0.8367919   2.1562637
24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.7928472   1.1807568   2.7222381
24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.3463930   0.8936038   2.0286103
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0918107   0.9272188   1.2856195
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1346822   0.9768068   1.3180741
24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9972182   0.9198327   1.0811142
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.9440282   0.8629878   1.0326788
24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          Low                  High              2.8920473   2.4517391   3.4114305
24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.9238454   1.6289965   2.2720621
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.3528862   1.2508757   1.4632158
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.3525232   1.2509429   1.4623520
24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.1207602   0.8952078   1.4031418
24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.1139303   0.8841150   1.4034834
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.2108362   1.1418271   1.2840161
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1239263   1.0551365   1.1972009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.8115591   0.6011914   1.0955383
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.8520841   0.5400315   1.3444536


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0539130   -0.0107065    0.1185326
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.0028340   -0.0588188    0.0644869
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0289296   -0.1156850    0.0578257
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.0120272   -0.0704087    0.0463544
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.0181298   -0.0817154    0.0454559
Birth       ki1000108-IRC              INDIA                          High                 NA                 0.0212314   -0.0270903    0.0695530
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0524409   -0.1261613    0.2310431
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0002977   -0.0016224    0.0022179
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0020150   -0.0281782    0.0322082
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0075258   -0.0164635    0.0014119
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0005895   -0.0053457    0.0041667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0010877   -0.0033507    0.0055261
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0689824    0.0041266    0.1338382
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0205346   -0.0589358    0.1000049
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.0603603   -0.1406044    0.0198838
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0364306   -0.0411342    0.1139954
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0077856   -0.0481833    0.0637545
6 months    ki1000108-IRC              INDIA                          High                 NA                 0.0367412   -0.0251433    0.0986257
6 months    ki1000109-EE               PAKISTAN                       High                 NA                 0.1176152   -0.1257492    0.3609795
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.1106189    0.0567997    0.1644381
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0647777   -0.1114780    0.2410335
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.0876042    0.0343875    0.1408210
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0369554   -0.0016966    0.0756075
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0473966    0.0087393    0.0860540
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0046900   -0.0170934    0.0264734
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0049011   -0.0705456    0.0607434
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0692569   -0.0148869    0.1534006
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0124081   -0.0024624    0.0272786
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0142315    0.0064686    0.0219944
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0142362   -0.0704994    0.0420271
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0850191    0.0621463    0.1078918
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0381617    0.0188203    0.0575031
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0459998    0.0028912    0.0891083
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0205677    0.0107609    0.0303745
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1321036   -0.2425702   -0.0216370
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0440887   -0.1339695    0.0457922
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0313227   -0.0831845    0.1458299
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0190728   -0.0794085    0.1175541
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.0973040   -0.0023483    0.1969564
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0872377   -0.0162294    0.1907048
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0712962    0.0145399    0.1280525
24 months   ki1000108-IRC              INDIA                          High                 NA                 0.0610144   -0.0102439    0.1322726
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1086742    0.0373168    0.1800315
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0882201    0.0393274    0.1371128
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1079936    0.0627723    0.1532150
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1297777    0.0123708    0.2471847
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0265423    0.0034795    0.0496052
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0393570   -0.0073820    0.0860960
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0141756   -0.0640488    0.0356976
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2511695    0.2151508    0.2871882
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1095852    0.0847423    0.1344281
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0299497   -0.0212314    0.0811309
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0475819    0.0304408    0.0647230
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0883998   -0.2286443    0.0518447


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.3100000   -0.1682689    0.5924740
Birth       ki0047075b-MAL-ED          BRAZIL                         High                 NA                 0.0256410   -0.7270940    0.4503047
Birth       ki0047075b-MAL-ED          INDIA                          High                 NA                -0.1960784   -0.9517078    0.2669991
Birth       ki0047075b-MAL-ED          PERU                           High                 NA                -0.1011698   -0.7210903    0.2954611
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                -0.1696429   -0.9416710    0.2954190
Birth       ki1000108-IRC              INDIA                          High                 NA                 0.1830615   -0.3581479    0.5086039
Birth       ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.2131837   -1.0333287    0.6955338
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0028714   -0.0158190    0.0212180
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0346251   -0.6522240    0.4359429
Birth       ki1135781-COHORTS          INDIA                          High                 NA                -0.0636217   -0.1420778    0.0094448
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0096148   -0.0903255    0.0651214
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0033647   -0.0104570    0.0169974
6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.3863014   -0.0842433    0.6526370
6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1186441   -0.4824626    0.4760149
6 months    ki0047075b-MAL-ED          PERU                           High                 NA                -0.2736333   -0.6944133    0.0426528
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1850676   -0.3198776    0.4968360
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0258818   -0.1791436    0.1952581
6 months    ki1000108-IRC              INDIA                          High                 NA                 0.1495368   -0.1427451    0.3670612
6 months    ki1000109-EE               PAKISTAN                       High                 NA                 0.2272251   -0.4206270    0.5796356
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.3889127    0.1626509    0.5540359
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1510155   -0.3778157    0.4768715
6 months    ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.3266908    0.1005028    0.4960015
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2292024   -0.0474110    0.4327643
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.2259240    0.0210435    0.3879262
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0486078   -0.2061016    0.2495266
6 months    ki1112895-Guatemala BSC    GUATEMALA                      High                 NA                -0.0157860   -0.2509409    0.1751640
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.3259146   -0.2072143    0.6236036
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.1979390   -0.0614833    0.3939595
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0854715    0.0377734    0.1308052
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0349300   -0.1826870    0.0943672
6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.4437880    0.3135312    0.5493287
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1806674    0.0843695    0.2668375
6 months    ki1148112-LCNI-5           MALAWI                         High                 NA                 0.1267722   -0.0003066    0.2377070
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0817935    0.0419981    0.1199358
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.5132880   -1.0124687   -0.1379261
24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                -0.0991995   -0.3218652    0.0859586
24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0769532   -0.2525479    0.3197742
24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0923295   -0.5341831    0.4629939
24 months   ki0047075b-MAL-ED          PERU                           High                 NA                 0.2629839   -0.0632181    0.4891050
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.2471736   -0.1123802    0.4905091
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          High                 NA                 0.0997075    0.0156554    0.1765824
24 months   ki1000108-IRC              INDIA                          High                 NA                 0.1467934   -0.0432947    0.3022474
24 months   ki1017093-NIH-Birth        BANGLADESH                     High                 NA                 0.1958875    0.0551356    0.3156722
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.2679105    0.1043219    0.4016209
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.4205207    0.2245528    0.5669644
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.2886536   -0.0262154    0.5069128
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.3113323    0.0349552    0.5085584
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0603563   -0.0143779    0.1295844
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0179310   -0.0830097    0.0432371
24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.5215834    0.4411823    0.5904166
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.1776763    0.1358399    0.2174872
24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0685250   -0.0563150    0.1786108
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0969520    0.0613125    0.1312383
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.2216625   -0.6288163    0.0837154
