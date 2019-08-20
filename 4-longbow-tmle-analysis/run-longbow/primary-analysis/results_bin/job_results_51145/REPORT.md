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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        single    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  -------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0      104     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1      161     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     265
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     265
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      154     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1       43     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       25     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1       11     233
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0      101     249
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    1      148     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        0     249
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      157     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       83     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        0     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     240
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0      101     303
0-24 months   ki0047075b-MAL-ED          PERU                           0                    1      167     303
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0       14     303
0-24 months   ki0047075b-MAL-ED          PERU                           1                    1       21     303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0       82     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       94     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       61     314
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       77     314
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       38     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1      214     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        3     262
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        7     262
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1400    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      751    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      148    2375
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       76    2375
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      118     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    1      134     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0        8     282
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1       22     282
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0    13524   16897
0-24 months   ki1119695-PROBIT           BELARUS                        0                    1     2680   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0      543   16897
0-24 months   ki1119695-PROBIT           BELARUS                        1                    1      150   16897
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     7948   14015
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     5178   14015
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      507   14015
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      382   14015
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0      254    1207
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    1      855    1207
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0       12    1207
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1       86    1207
0-24 months   ki1135781-COHORTS          INDIA                          0                    0     3293    5384
0-24 months   ki1135781-COHORTS          INDIA                          0                    1     2082    5384
0-24 months   ki1135781-COHORTS          INDIA                          1                    0        4    5384
0-24 months   ki1135781-COHORTS          INDIA                          1                    1        5    5384
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0      924    3018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    1     2019    3018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0       21    3018
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       54    3018
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0      171     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    1       94     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     265
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     265
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0      161     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    1       36     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0       27     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    1        9     233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0      165     249
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    1       84     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0        0     249
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    1        0     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0      198     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    1       42     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0        0     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    1        0     240
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0      154     303
0-6 months    ki0047075b-MAL-ED          PERU                           0                    1      114     303
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0       20     303
0-6 months    ki0047075b-MAL-ED          PERU                           1                    1       15     303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0      118     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       58     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       83     314
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       55     314
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0      147     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1      105     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        7     262
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        3     262
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1726    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      425    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      184    2375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       40    2375
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0      167     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    1       71     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0       14     265
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1       13     265
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0    14615   16893
0-6 months    ki1119695-PROBIT           BELARUS                        0                    1     1585   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0      597   16893
0-6 months    ki1119695-PROBIT           BELARUS                        1                    1       96   16893
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     9755   13993
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     3351   13993
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      626   13993
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      261   13993
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0      622     974
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    1      283     974
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0       36     974
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    1       33     974
0-6 months    ki1135781-COHORTS          INDIA                          0                    0     4207    5203
0-6 months    ki1135781-COHORTS          INDIA                          0                    1      988    5203
0-6 months    ki1135781-COHORTS          INDIA                          1                    0        6    5203
0-6 months    ki1135781-COHORTS          INDIA                          1                    1        2    5203
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0     2246    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    1      697    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0       52    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1       23    3018
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0       92     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    1       67     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0        0     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1        0     159
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0      138     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    1        7     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0       21     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1        2     168
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0       91     155
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    1       64     155
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0        0     155
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    1        0     155
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0      154     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    1       41     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0        0     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1        0     195
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0       77     149
6-24 months   ki0047075b-MAL-ED          PERU                           0                    1       53     149
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0       13     149
6-24 months   ki0047075b-MAL-ED          PERU                           1                    1        6     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0       58     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    1       36     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0       43     159
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1       22     159
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0       31     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    1      109     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0        1     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1        4     145
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1115    1589
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      326    1589
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0      112    1589
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1       36    1589
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0      105     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    1       63     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0        8     185
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1        9     185
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0    13270   14951
6-24 months   ki1119695-PROBIT           BELARUS                        0                    1     1095   14951
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0      532   14951
6-24 months   ki1119695-PROBIT           BELARUS                        1                    1       54   14951
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0     5632    7922
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    1     1827    7922
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0      342    7922
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1      121    7922
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0      186     820
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    1      572     820
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0        9     820
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    1       53     820
6-24 months   ki1135781-COHORTS          INDIA                          0                    0     3016    4117
6-24 months   ki1135781-COHORTS          INDIA                          0                    1     1094    4117
6-24 months   ki1135781-COHORTS          INDIA                          1                    0        4    4117
6-24 months   ki1135781-COHORTS          INDIA                          1                    1        3    4117
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0      724    2097
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    1     1322    2097
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0       20    2097
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1       31    2097


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/4bd24675-5d4a-4e14-9238-959b310c519f/4a058eaa-9001-4c51-912a-2ee539f81501/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4bd24675-5d4a-4e14-9238-959b310c519f/4a058eaa-9001-4c51-912a-2ee539f81501/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4bd24675-5d4a-4e14-9238-959b310c519f/4a058eaa-9001-4c51-912a-2ee539f81501/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4bd24675-5d4a-4e14-9238-959b310c519f/4a058eaa-9001-4c51-912a-2ee539f81501/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.2187520   0.1610110   0.2764930
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.3249553   0.1705711   0.4793395
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.6242685   0.5661243   0.6824128
0-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.5989468   0.4307393   0.7671544
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.4822300   0.3897526   0.5747073
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.6222083   0.5438273   0.7005894
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3486936   0.3285780   0.3688093
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3414049   0.2780081   0.4048016
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.5317460   0.4700280   0.5934641
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.7333333   0.5748097   0.8918569
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.1669245   0.1470633   0.1867857
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.1869845   0.1587470   0.2152219
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3962042   0.3878209   0.4045875
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4269600   0.3919358   0.4619842
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7715354   0.7468034   0.7962675
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8939953   0.8338483   0.9541424
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6864372   0.6695635   0.7033109
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6931151   0.6072260   0.7790042
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.1827411   0.1286598   0.2368224
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2500000   0.1082473   0.3917527
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.4291406   0.3697381   0.4885431
0-6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.3919509   0.2137480   0.5701539
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2932972   0.2104037   0.3761908
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.4626342   0.3818022   0.5434662
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1981293   0.1812708   0.2149877
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1714657   0.1192067   0.2237247
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.2970198   0.2385764   0.3554631
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.5100032   0.3086480   0.7113584
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.1001716   0.0864163   0.1139269
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.1492554   0.1239595   0.1745512
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2566217   0.2491189   0.2641245
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2935804   0.2604478   0.3267131
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3148555   0.2845589   0.3451522
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4496298   0.3225136   0.5767461
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2371436   0.2216790   0.2526082
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2545531   0.1773619   0.3317444
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.4076923   0.3229347   0.4924499
6-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.3157895   0.1060755   0.5255034
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3677297   0.2708213   0.4646381
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3248117   0.2062916   0.4433318
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2254031   0.2038185   0.2469877
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2480849   0.1758912   0.3202786
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.3750000   0.3015949   0.4484051
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.5294118   0.2914989   0.7673246
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0761549   0.0620303   0.0902795
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0937847   0.0612287   0.1263408
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2459950   0.2362021   0.2557879
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2626046   0.2180671   0.3071422
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7546174   0.7239651   0.7852698
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8548387   0.7671013   0.9425761
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6461740   0.6253914   0.6669566
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6034796   0.4800252   0.7269341


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2317597   0.1774632   0.2860561
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6204620   0.5657315   0.6751926
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5445860   0.4894148   0.5997572
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3482105   0.3290467   0.3673744
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5531915   0.4950624   0.6113206
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1674854   0.1488048   0.1861659
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3967178   0.3886181   0.4048175
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7796189   0.7562250   0.8030128
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6868787   0.6703303   0.7034272
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1931330   0.1423366   0.2439295
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4257426   0.3699763   0.4815088
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3598726   0.3067005   0.4130447
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1957895   0.1798275   0.2117515
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3169811   0.2608532   0.3731091
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0995087   0.0864641   0.1125533
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2581291   0.2508782   0.2653799
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3244353   0.2950189   0.3538517
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2385686   0.2233602   0.2537770
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3647799   0.2897219   0.4398379
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2278162   0.2071874   0.2484451
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3891892   0.3187405   0.4596379
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2458975   0.2364144   0.2553806
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7621951   0.7330377   0.7913526
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6452074   0.6247246   0.6656902


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 1.4854966   0.8612026   2.562347
0-24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 0.9594378   0.7138097   1.289589
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.2902731   1.0309456   1.614833
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9790969   0.8065517   1.188555
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.3791045   1.0790454   1.762603
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.1201739   0.9489085   1.322350
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0776262   0.9903558   1.172587
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.1587224   1.0757287   1.248119
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.0097284   0.8900857   1.145453
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 1.3680556   0.7216559   2.593447
0-6 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           1                    0                 0.9133392   0.5678248   1.469095
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.5773561   1.1354495   2.191249
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8654235   0.6310127   1.186914
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.7170683   1.1070149   2.663310
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.4899971   1.2270231   1.809331
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1440202   1.0183343   1.285219
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 1.4280513   1.0611380   1.921833
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.0734134   0.7879646   1.462269
6-24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          PERU                           1                    0                 0.7745780   0.3862340   1.553387
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.8832892   0.5598475   1.393593
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1006278   0.8106993   1.494243
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.4117647   0.8647352   2.304844
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.2315005   0.8604988   1.762458
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0675203   0.8969769   1.270489
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.1328107   1.0144231   1.265015
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9339274   0.7593008   1.148715


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0130077   -0.0125627   0.0385780
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0038065   -0.0237229   0.0161099
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0623560   -0.0085401   0.1332522
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0004831   -0.0065196   0.0055534
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0214455    0.0019436   0.0409473
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0005608   -0.0028154   0.0039371
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0005136   -0.0016560   0.0026832
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0080835    0.0022198   0.0139471
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0004415   -0.0021121   0.0029951
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0103919   -0.0132574   0.0340413
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0033980   -0.0236078   0.0168118
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0665754    0.0016014   0.1315494
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0023398   -0.0073505   0.0026709
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0199614   -0.0008883   0.0408111
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0006629   -0.0037677   0.0024419
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0015073   -0.0005087   0.0035234
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0095798    0.0008432   0.0183163
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0014250   -0.0010893   0.0039393
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0117192   -0.0409824   0.0175441
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0029499   -0.0668078   0.0609081
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0024132   -0.0042670   0.0090934
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0141892   -0.0095805   0.0379589
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0006962   -0.0004520   0.0018444
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0000975   -0.0025748   0.0023799
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0075777    0.0003202   0.0148352
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0009666   -0.0042844   0.0023512


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0561257   -0.0603665   0.1598200
0-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0061349   -0.0387594   0.0254648
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1145017   -0.0271590   0.2366253
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0013874   -0.0188741   0.0157991
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0387668    0.0025234   0.0736932
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0033486   -0.0171214   0.0234065
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0012946   -0.0041893   0.0067486
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0103685    0.0027780   0.0179012
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0006428   -0.0030826   0.0043544
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0538071   -0.0764105   0.1682718
0-6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0079814   -0.0565935   0.0383941
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1849970   -0.0188114   0.3480345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0119506   -0.0378615   0.0133135
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0629734   -0.0053138   0.1266221
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0066619   -0.0382595   0.0239740
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0058394   -0.0020014   0.0136189
0-6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0295276    0.0022125   0.0560949
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0059730   -0.0046368   0.0164708
6-24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0295958   -0.1063031   0.0417928
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0080867   -0.1993402   0.1526685
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0105925   -0.0191699   0.0394858
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0364583   -0.0266802   0.0957140
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0090590   -0.0062488   0.0241339
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0003964   -0.0105222   0.0096279
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0099420    0.0003332   0.0194583
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0014981   -0.0066533   0.0036307
