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

**Outcome Variable:** ever_co

## Predictor Variables

**Intervention Variable:** single

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        single    ever_co   n_cell       n
------------  -------------------------  -----------------------------  -------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0      224     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1       39     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0        0     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        0     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      196     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        1     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       35     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        1     233
0-24 months   ki0047075b-MAL-ED          INDIA                          0               0      196     249
0-24 months   ki0047075b-MAL-ED          INDIA                          0               1       53     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1               0        0     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          0               0      219     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          0               1       21     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1               0        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1               1        0     240
0-24 months   ki0047075b-MAL-ED          PERU                           0               0      260     302
0-24 months   ki0047075b-MAL-ED          PERU                           0               1        8     302
0-24 months   ki0047075b-MAL-ED          PERU                           1               0       30     302
0-24 months   ki0047075b-MAL-ED          PERU                           1               1        4     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      165     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       11     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0      125     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1       11     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      229     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       22     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        9     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     261
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     2039    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      112    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      217    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        7    2375
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0               0      232     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0               1       20     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1               0       28     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1               1        2     282
0-24 months   ki1119695-PROBIT           BELARUS                        0               0    16178   16897
0-24 months   ki1119695-PROBIT           BELARUS                        0               1       26   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1               0      692   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1               1        1   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0    12476   13879
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1      526   13879
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0      825   13879
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       52   13879
0-24 months   ki1135781-COHORTS          GUATEMALA                      0               0      972    1197
0-24 months   ki1135781-COHORTS          GUATEMALA                      0               1      127    1197
0-24 months   ki1135781-COHORTS          GUATEMALA                      1               0       85    1197
0-24 months   ki1135781-COHORTS          GUATEMALA                      1               1       13    1197
0-24 months   ki1135781-COHORTS          INDIA                          0               0     4840    5374
0-24 months   ki1135781-COHORTS          INDIA                          0               1      525    5374
0-24 months   ki1135781-COHORTS          INDIA                          1               0        7    5374
0-24 months   ki1135781-COHORTS          INDIA                          1               1        2    5374
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0               0     2396    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0               1      535    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1               0       56    3005
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1               1       18    3005
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0      254     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1        9     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0        0     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        0     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0               0      197     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        0     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1               0       36     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        0     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0               0      232     249
0-6 months    ki0047075b-MAL-ED          INDIA                          0               1       17     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1               0        0     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1               1        0     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          0               0      233     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0               1        7     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1               0        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1               1        0     240
0-6 months    ki0047075b-MAL-ED          PERU                           0               0      268     302
0-6 months    ki0047075b-MAL-ED          PERU                           0               1        0     302
0-6 months    ki0047075b-MAL-ED          PERU                           1               0       32     302
0-6 months    ki0047075b-MAL-ED          PERU                           1               1        2     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      174     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        2     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0      133     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        3     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      247     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1        4     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0       10     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     261
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     2133    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1       18    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      223    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        1    2375
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               0      233     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               1        5     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               0       25     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               1        2     265
0-6 months    ki1119695-PROBIT           BELARUS                        0               0    16182   16893
0-6 months    ki1119695-PROBIT           BELARUS                        0               1       18   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1               0      692   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1               1        1   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               0    12770   13784
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               1      148   13784
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0      849   13784
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1       17   13784
0-6 months    ki1135781-COHORTS          GUATEMALA                      0               0      872     958
0-6 months    ki1135781-COHORTS          GUATEMALA                      0               1       17     958
0-6 months    ki1135781-COHORTS          GUATEMALA                      1               0       68     958
0-6 months    ki1135781-COHORTS          GUATEMALA                      1               1        1     958
0-6 months    ki1135781-COHORTS          INDIA                          0               0     5020    5169
0-6 months    ki1135781-COHORTS          INDIA                          0               1      141    5169
0-6 months    ki1135781-COHORTS          INDIA                          1               0        8    5169
0-6 months    ki1135781-COHORTS          INDIA                          1               1        0    5169
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0               0     2868    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0               1       62    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1               0       68    3004
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1               1        6    3004
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0      204     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1       35     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0        0     239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        0     239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      176     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       29     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          0               0      186     233
6-24 months   ki0047075b-MAL-ED          INDIA                          0               1       47     233
6-24 months   ki0047075b-MAL-ED          INDIA                          1               0        0     233
6-24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     233
6-24 months   ki0047075b-MAL-ED          NEPAL                          0               0      219     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0               1       16     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1               0        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          1               1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           0               0      230     270
6-24 months   ki0047075b-MAL-ED          PERU                           0               1        8     270
6-24 months   ki0047075b-MAL-ED          PERU                           1               0       29     270
6-24 months   ki0047075b-MAL-ED          PERU                           1               1        3     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      135     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        9     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0      105     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1       10     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      217     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       20     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        7     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        1     245
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1712    2002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      107    2002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      177    2002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        6    2002
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0               0      219     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0               1       17     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1               0       29     266
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1               1        1     266
6-24 months   ki1119695-PROBIT           BELARUS                        0               0    15910   16598
6-24 months   ki1119695-PROBIT           BELARUS                        0               1        9   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1               0      679   16598
6-24 months   ki1119695-PROBIT           BELARUS                        1               1        0   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0     9592   10649
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1      394   10649
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0      625   10649
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       38   10649
6-24 months   ki1135781-COHORTS          GUATEMALA                      0               0      900    1110
6-24 months   ki1135781-COHORTS          GUATEMALA                      0               1      116    1110
6-24 months   ki1135781-COHORTS          GUATEMALA                      1               0       81    1110
6-24 months   ki1135781-COHORTS          GUATEMALA                      1               1       13    1110
6-24 months   ki1135781-COHORTS          INDIA                          0               0     4549    5023
6-24 months   ki1135781-COHORTS          INDIA                          0               1      465    5023
6-24 months   ki1135781-COHORTS          INDIA                          1               0        7    5023
6-24 months   ki1135781-COHORTS          INDIA                          1               1        2    5023
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0               0     2188    2774
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0               1      514    2774
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1               0       55    2774
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1               1       17    2774


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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA

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




# Results Detail

## Results Plots
![](/tmp/1123f1d9-0821-483c-8d1c-746aed408b8c/c57c4863-431c-43e9-8b18-eee40e8d7107/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1123f1d9-0821-483c-8d1c-746aed408b8c/c57c4863-431c-43e9-8b18-eee40e8d7107/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1123f1d9-0821-483c-8d1c-746aed408b8c/c57c4863-431c-43e9-8b18-eee40e8d7107/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1123f1d9-0821-483c-8d1c-746aed408b8c/c57c4863-431c-43e9-8b18-eee40e8d7107/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0619370   0.0266169   0.0972572
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.0851647   0.0387502   0.1315793
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0520688   0.0426781   0.0614595
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0312500   0.0084599   0.0540401
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0405649   0.0371680   0.0439617
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0591593   0.0426817   0.0756369
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1164389   0.0973712   0.1355065
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1309278   0.0576134   0.2042421
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1825679   0.1685699   0.1965659
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2506486   0.1585477   0.3427495
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0114628   0.0096254   0.0133003
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0197697   0.0099664   0.0295730
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0211604   0.0159465   0.0263744
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0810811   0.0197904   0.1423718
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0625000   0.0228875   0.1021125
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.0869565   0.0353581   0.1385549
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0588235   0.0480079   0.0696391
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0327869   0.0069796   0.0585942
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0394066   0.0355894   0.0432238
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0605055   0.0408095   0.0802014
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1155593   0.0957181   0.1354006
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1317945   0.0598506   0.2037384
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1902308   0.1753916   0.2050699
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2449233   0.1534908   0.3363558


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0705128   0.0420601   0.0989655
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0501053   0.0413295   0.0588811
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0416457   0.0383219   0.0449694
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1169591   0.0987457   0.1351724
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1840266   0.1701694   0.1978839
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0119704   0.0101548   0.0137860
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0226365   0.0173166   0.0279564
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.0733591   0.0415449   0.1051733
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0564436   0.0463321   0.0665551
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0405672   0.0368200   0.0443144
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1162162   0.0973542   0.1350783
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1914203   0.1767774   0.2060633


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.3750211   0.6222696   3.038367
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6001674   0.2831440   1.272147
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.4583877   1.0906412   1.950132
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.1244339   0.6274838   2.014955
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.3729061   0.9437986   1.997111
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.7246803   1.0241327   2.904430
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 3.8317349   1.7302287   8.485695
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.3913043   0.5839281   3.315010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.5573770   0.2483727   1.250819
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.5354141   1.0934067   2.156102
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.1404920   0.6435555   2.021149
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.2875060   0.8798047   1.884136


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0085758   -0.0166060   0.0337576
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0019635   -0.0043012   0.0003741
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0010808    0.0000687   0.0020928
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0005202   -0.0053003   0.0063407
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0014587   -0.0009327   0.0038501
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0005076   -0.0000864   0.0011016
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0014761   -0.0000972   0.0030493
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0108591   -0.0180623   0.0397805
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0023800   -0.0049588   0.0001989
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0011606    0.0000329   0.0022883
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0006569   -0.0056999   0.0070136
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0011895   -0.0013667   0.0037458


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1216203   -0.3139889   0.4128178
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0391883   -0.0864337   0.0060025
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0259513    0.0014214   0.0498787
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0044478   -0.0465804   0.0529880
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0079265   -0.0051512   0.0208341
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0424030   -0.0081057   0.0903811
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0652078   -0.0052026   0.1306862
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1480263   -0.3460906   0.4607650
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0421655   -0.0882963   0.0020098
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0286089    0.0005190   0.0559094
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0056521   -0.0505760   0.0588709
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0062143   -0.0072338   0.0194828
