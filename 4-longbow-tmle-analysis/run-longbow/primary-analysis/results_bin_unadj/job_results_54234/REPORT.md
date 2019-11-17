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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        single    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  -------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      235     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       13     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0        0     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      186     218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        1     218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       30     218
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        1     218
0-24 months   ki0047075b-MAL-ED          INDIA                          0                 0      218     239
0-24 months   ki0047075b-MAL-ED          INDIA                          0                 1       21     239
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 0        0     239
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0     239
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      234     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        4     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     238
0-24 months   ki0047075b-MAL-ED          PERU                           0                 0      249     284
0-24 months   ki0047075b-MAL-ED          PERU                           0                 1        1     284
0-24 months   ki0047075b-MAL-ED          PERU                           1                 0       34     284
0-24 months   ki0047075b-MAL-ED          PERU                           1                 1        0     284
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      155     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      118     275
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        1     275
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      244     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        9     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     253
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1896    2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       53    2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      194    2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        5    2148
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                 0      221     251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                 1        3     251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 0       26     251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 1        1     251
0-24 months   ki1119695-PROBIT           BELARUS                        0                 0    15755   16581
0-24 months   ki1119695-PROBIT           BELARUS                        0                 1      149   16581
0-24 months   ki1119695-PROBIT           BELARUS                        1                 0      667   16581
0-24 months   ki1119695-PROBIT           BELARUS                        1                 1       10   16581
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 0     8747    9489
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 1      154    9489
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      577    9489
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       11    9489
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                 0      880     990
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                 1       30     990
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                 0       76     990
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                 1        4     990
0-24 months   ki1135781-COHORTS          INDIA                          0                 0     3707    4127
0-24 months   ki1135781-COHORTS          INDIA                          0                 1      413    4127
0-24 months   ki1135781-COHORTS          INDIA                          1                 0        7    4127
0-24 months   ki1135781-COHORTS          INDIA                          1                 1        0    4127
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                 0     2571    2778
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                 1      136    2778
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 0       63    2778
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 1        8    2778
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     4842    5276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      426    5276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0        8    5276
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1        0    5276
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      241     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        7     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0        0     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      187     218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0     218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       30     218
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        1     218
0-6 months    ki0047075b-MAL-ED          INDIA                          0                 0      219     238
0-6 months    ki0047075b-MAL-ED          INDIA                          0                 1       19     238
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 0        0     238
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 1        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      231     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        7     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 0        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0     238
0-6 months    ki0047075b-MAL-ED          PERU                           0                 0      250     284
0-6 months    ki0047075b-MAL-ED          PERU                           0                 1        0     284
0-6 months    ki0047075b-MAL-ED          PERU                           1                 0       34     284
0-6 months    ki0047075b-MAL-ED          PERU                           1                 1        0     284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      154     274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        2     274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      118     274
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0     274
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      244     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        9     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     253
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1814    2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       45    2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      178    2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        7    2044
0-6 months    ki1119695-PROBIT           BELARUS                        0                 0    11923   13545
0-6 months    ki1119695-PROBIT           BELARUS                        0                 1     1090   13545
0-6 months    ki1119695-PROBIT           BELARUS                        1                 0      476   13545
0-6 months    ki1119695-PROBIT           BELARUS                        1                 1       56   13545
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                 0      581     632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                 1       14     632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 0       37     632
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 1        0     632
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                 0      767     842
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                 1       50     842
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                 0       24     842
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                 1        1     842
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      235     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       13     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0        0     248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        0     248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      186     218
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        1     218
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       30     218
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        1     218
6-24 months   ki0047075b-MAL-ED          INDIA                          0                 0      218     239
6-24 months   ki0047075b-MAL-ED          INDIA                          0                 1       21     239
6-24 months   ki0047075b-MAL-ED          INDIA                          1                 0        0     239
6-24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0     239
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      234     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        4     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0        0     238
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0     238
6-24 months   ki0047075b-MAL-ED          PERU                           0                 0      249     284
6-24 months   ki0047075b-MAL-ED          PERU                           0                 1        1     284
6-24 months   ki0047075b-MAL-ED          PERU                           1                 0       34     284
6-24 months   ki0047075b-MAL-ED          PERU                           1                 1        0     284
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      155     275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1     275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      118     275
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        1     275
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      244     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        9     253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0     253
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1896    2148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       53    2148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      194    2148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        5    2148
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                 0      221     251
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                 1        3     251
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 0       26     251
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 1        1     251
6-24 months   ki1119695-PROBIT           BELARUS                        0                 0    15755   16581
6-24 months   ki1119695-PROBIT           BELARUS                        0                 1      149   16581
6-24 months   ki1119695-PROBIT           BELARUS                        1                 0      667   16581
6-24 months   ki1119695-PROBIT           BELARUS                        1                 1       10   16581
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 0     8747    9489
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 1      154    9489
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      577    9489
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       11    9489
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                 0      880     990
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                 1       30     990
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                 0       76     990
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                 1        4     990
6-24 months   ki1135781-COHORTS          INDIA                          0                 0     3707    4127
6-24 months   ki1135781-COHORTS          INDIA                          0                 1      413    4127
6-24 months   ki1135781-COHORTS          INDIA                          1                 0        7    4127
6-24 months   ki1135781-COHORTS          INDIA                          1                 1        0    4127
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                 0     2571    2778
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                 1      136    2778
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 0       63    2778
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 1        8    2778
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0     4842    5276
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1      426    5276
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0        8    5276
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1        0    5276


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/9166959e-192d-425f-967c-f3cbd9127060/b9caf59c-8d15-4364-94e7-ad4eca38a39f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9166959e-192d-425f-967c-f3cbd9127060/b9caf59c-8d15-4364-94e7-ad4eca38a39f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9166959e-192d-425f-967c-f3cbd9127060/b9caf59c-8d15-4364-94e7-ad4eca38a39f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9166959e-192d-425f-967c-f3cbd9127060/b9caf59c-8d15-4364-94e7-ad4eca38a39f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0271934   0.0199709   0.0344159
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0251256   0.0033758   0.0468754
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0093687   0.0050895   0.0136480
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0147710   0.0048345   0.0247076
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0173014   0.0145925   0.0200104
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0187075   0.0077556   0.0296594
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0502401   0.0420098   0.0584704
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1126761   0.0391140   0.1862381
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0242066   0.0172184   0.0311947
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0378378   0.0103364   0.0653393
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0837624   0.0559704   0.1115543
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.1052632   0.0652260   0.1453003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0271934   0.0199709   0.0344159
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0251256   0.0033758   0.0468754
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0093687   0.0050895   0.0136480
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0147710   0.0048345   0.0247076
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0173014   0.0145925   0.0200104
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0187075   0.0077556   0.0296594
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0502401   0.0420098   0.0584704
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1126761   0.0391140   0.1862381


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270019   0.0201456   0.0338581
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0173886   0.0147584   0.0200187
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0518359   0.0435904   0.0600814
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0254403   0.0186125   0.0322681
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0846069   0.0570929   0.1121208
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270019   0.0201456   0.0338581
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0095893   0.0052864   0.0138922
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0173886   0.0147584   0.0200187
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0518359   0.0435904   0.0600814


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9239594   0.3736040   2.285042
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.5766360   0.8540925   2.910435
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0812682   0.5898598   1.982066
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.2427506   1.1440794   4.396487
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.5631231   0.7150723   3.416933
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.2566876   0.8814121   1.791743
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9239594   0.3736040   2.285042
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.5766360   0.8540925   2.910435
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0812682   0.5898598   1.982066
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.2427506   1.1440794   4.396487


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0001916   -0.0023149   0.0019318
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0002206   -0.0001379   0.0005791
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0000871   -0.0006120   0.0007863
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0015957   -0.0003313   0.0035227
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012338   -0.0013401   0.0038076
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0008445   -0.0005499   0.0022389
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0001916   -0.0023149   0.0019318
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0002206   -0.0001379   0.0005791
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0000871   -0.0006120   0.0007863
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0015957   -0.0003313   0.0035227


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0070947   -0.0888621   0.0685324
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0230024   -0.0154335   0.0599834
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0050107   -0.0360123   0.0444092
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0307844   -0.0068119   0.0669768
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0484959   -0.0573614   0.1437553
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0099812   -0.0075178   0.0271762
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0070947   -0.0888621   0.0685324
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0230024   -0.0154335   0.0599834
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0050107   -0.0360123   0.0444092
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0307844   -0.0068119   0.0669768
