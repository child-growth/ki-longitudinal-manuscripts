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

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        single    stunted   n_cell       n  outcome_variable 
----------  -------------------------  -----------------------------  -------  --------  -------  ------  -----------------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               0      187     231  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     0               1       44     231  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               0        0     231  stunted          
Birth       ki0047075b-MAL-ED          BANGLADESH                     1               1        0     231  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0               0       51      65  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         0               1        6      65  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1               0        5      65  stunted          
Birth       ki0047075b-MAL-ED          BRAZIL                         1               1        3      65  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          0               0       37      47  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          0               1       10      47  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          1               0        0      47  stunted          
Birth       ki0047075b-MAL-ED          INDIA                          1               1        0      47  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          0               0       25      27  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          0               1        2      27  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          1               0        0      27  stunted          
Birth       ki0047075b-MAL-ED          NEPAL                          1               1        0      27  stunted          
Birth       ki0047075b-MAL-ED          PERU                           0               0      187     233  stunted          
Birth       ki0047075b-MAL-ED          PERU                           0               1       22     233  stunted          
Birth       ki0047075b-MAL-ED          PERU                           1               0       20     233  stunted          
Birth       ki0047075b-MAL-ED          PERU                           1               1        4     233  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               0       60     123  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0               1        3     123  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       53     123  stunted          
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               1        7     123  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       99     125  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       23     125  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        3     125  stunted          
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        0     125  stunted          
Birth       ki1119695-PROBIT           BELARUS                        0               0    13317   13890  stunted          
Birth       ki1119695-PROBIT           BELARUS                        0               1       31   13890  stunted          
Birth       ki1119695-PROBIT           BELARUS                        1               0      540   13890  stunted          
Birth       ki1119695-PROBIT           BELARUS                        1               1        2   13890  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               0    11620   13817  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0               1     1322   13817  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0      768   13817  stunted          
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1      107   13817  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      0               0      679     767  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      0               1       40     767  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      1               0       43     767  stunted          
Birth       ki1135781-COHORTS          GUATEMALA                      1               1        5     767  stunted          
Birth       ki1135781-COHORTS          INDIA                          0               0     4206    4778  stunted          
Birth       ki1135781-COHORTS          INDIA                          0               1      565    4778  stunted          
Birth       ki1135781-COHORTS          INDIA                          1               0        7    4778  stunted          
Birth       ki1135781-COHORTS          INDIA                          1               1        0    4778  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    0               0     2760    3010  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    0               1      176    3010  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0       68    3010  stunted          
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1        6    3010  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               0     1959    2819  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0               1      855    2819  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               0        4    2819  stunted          
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1               1        1    2819  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               0      197     241  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     0               1       44     241  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               0        0     241  stunted          
6 months    ki0047075b-MAL-ED          BANGLADESH                     1               1        0     241  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0               0      175     209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         0               1        4     209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1               0       28     209  stunted          
6 months    ki0047075b-MAL-ED          BRAZIL                         1               1        2     209  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          0               0      191     234  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          0               1       43     234  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          1               0        0     234  stunted          
6 months    ki0047075b-MAL-ED          INDIA                          1               1        0     234  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          0               0      224     236  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          0               1       12     236  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          1               0        0     236  stunted          
6 months    ki0047075b-MAL-ED          NEPAL                          1               1        0     236  stunted          
6 months    ki0047075b-MAL-ED          PERU                           0               0      192     273  stunted          
6 months    ki0047075b-MAL-ED          PERU                           0               1       48     273  stunted          
6 months    ki0047075b-MAL-ED          PERU                           1               0       21     273  stunted          
6 months    ki0047075b-MAL-ED          PERU                           1               1       12     273  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               0      121     254  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       19     254  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       83     254  stunted          
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1               1       31     254  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0      182     247  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1       57     247  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        6     247  stunted          
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        2     247  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0     1654    2013  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1      181    2013  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      164    2013  stunted          
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1       14    2013  stunted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               0      173     277  stunted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0               1       75     277  stunted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               0       18     277  stunted          
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1               1       11     277  stunted          
6 months    ki1119695-PROBIT           BELARUS                        0               0    14188   15761  stunted          
6 months    ki1119695-PROBIT           BELARUS                        0               1      930   15761  stunted          
6 months    ki1119695-PROBIT           BELARUS                        1               0      585   15761  stunted          
6 months    ki1119695-PROBIT           BELARUS                        1               1       58   15761  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               0     6820    8638  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0               1     1305    8638  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0      411    8638  stunted          
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1      102    8638  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      0               0      499     893  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      0               1      327     893  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      1               0       30     893  stunted          
6 months    ki1135781-COHORTS          GUATEMALA                      1               1       37     893  stunted          
6 months    ki1135781-COHORTS          INDIA                          0               0     3991    4971  stunted          
6 months    ki1135781-COHORTS          INDIA                          0               1      971    4971  stunted          
6 months    ki1135781-COHORTS          INDIA                          1               0        7    4971  stunted          
6 months    ki1135781-COHORTS          INDIA                          1               1        2    4971  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    0               0     2055    2676  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    0               1      553    2676  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0       54    2676  stunted          
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1       14    2676  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               0     3598    4822  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0               1     1216    4822  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               0        7    4822  stunted          
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1               1        1    4822  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               0      111     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     0               1      101     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               0        0     212  stunted          
24 months   ki0047075b-MAL-ED          BANGLADESH                     1               1        0     212  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0               0      144     169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         0               1        4     169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1               0       18     169  stunted          
24 months   ki0047075b-MAL-ED          BRAZIL                         1               1        3     169  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          0               0      129     225  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          0               1       96     225  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          1               0        0     225  stunted          
24 months   ki0047075b-MAL-ED          INDIA                          1               1        0     225  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          0               0      178     228  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          0               1       50     228  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          1               0        0     228  stunted          
24 months   ki0047075b-MAL-ED          NEPAL                          1               1        0     228  stunted          
24 months   ki0047075b-MAL-ED          PERU                           0               0      111     201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           0               1       65     201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           1               0       16     201  stunted          
24 months   ki0047075b-MAL-ED          PERU                           1               1        9     201  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               0       85     238  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0               1       46     238  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               0       69     238  stunted          
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1               1       38     238  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               0       59     214  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0               1      149     214  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               0        0     214  stunted          
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1               1        6     214  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               0        5       6  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               1        1       6  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        0       6  stunted          
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6  stunted          
24 months   ki1119695-PROBIT           BELARUS                        0               0     3559    4035  stunted          
24 months   ki1119695-PROBIT           BELARUS                        0               1      331    4035  stunted          
24 months   ki1119695-PROBIT           BELARUS                        1               0      132    4035  stunted          
24 months   ki1119695-PROBIT           BELARUS                        1               1       13    4035  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               0     1014    1637  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0               1      519    1637  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0       56    1637  stunted          
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       48    1637  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      0               0      177    1010  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      0               1      746    1010  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      1               0       10    1010  stunted          
24 months   ki1135781-COHORTS          GUATEMALA                      1               1       77    1010  stunted          
24 months   ki1135781-COHORTS          INDIA                          0               0     1622    3753  stunted          
24 months   ki1135781-COHORTS          INDIA                          0               1     2122    3753  stunted          
24 months   ki1135781-COHORTS          INDIA                          1               0        3    3753  stunted          
24 months   ki1135781-COHORTS          INDIA                          1               1        6    3753  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    0               0      880    2416  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    0               1     1477    2416  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0       24    2416  stunted          
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1       35    2416  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               0     2836    4744  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0               1     1902    4744  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               0        5    4744  stunted          
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1               1        1    4744  stunted          


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/49cf63f7-286d-48b6-9ccb-407713bc62a4/a50f7ceb-e516-4cbf-9d06-c35fb899e04c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/49cf63f7-286d-48b6-9ccb-407713bc62a4/a50f7ceb-e516-4cbf-9d06-c35fb899e04c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/49cf63f7-286d-48b6-9ccb-407713bc62a4/a50f7ceb-e516-4cbf-9d06-c35fb899e04c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/49cf63f7-286d-48b6-9ccb-407713bc62a4/a50f7ceb-e516-4cbf-9d06-c35fb899e04c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1021480   0.0969303   0.1073658
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1222857   0.1005775   0.1439939
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0556328   0.0388678   0.0723978
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1041667   0.0176920   0.1906413
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0599455   0.0513537   0.0685373
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0810811   0.0199126   0.1422496
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.2000000   0.1493010   0.2506990
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.3636364   0.1992089   0.5280638
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.1357143   0.0788706   0.1925580
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2719298   0.1900895   0.3537701
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0986376   0.0849915   0.1122837
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0786517   0.0390957   0.1182076
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.3024194   0.2451517   0.3596870
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.3793103   0.2023936   0.5562271
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0615161   0.0478304   0.0752018
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0902022   0.0609997   0.1194046
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1606154   0.1526311   0.1685997
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1988304   0.1642907   0.2333701
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3958838   0.3625146   0.4292530
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.5522388   0.4331034   0.6713742
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2120399   0.1963494   0.2277304
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2058824   0.1097595   0.3020052
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.3693182   0.2978389   0.4407975
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.3600000   0.1713737   0.5486263
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3511450   0.2692337   0.4330563
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3551402   0.2642738   0.4460065
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0850900   0.0543677   0.1158123
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0896552   0.0500934   0.1292169
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3385519   0.3148561   0.3622476
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4615385   0.3656988   0.5573782
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.8082340   0.7828233   0.8336447
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8850575   0.8180027   0.9521122
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6266440   0.6071012   0.6461869
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5932203   0.4707546   0.7156861


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1034233   0.0983457   0.1085009
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0586701   0.0420278   0.0753124
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0604651   0.0519489   0.0689813
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1478551   0.2458457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0968703   0.0839461   0.1097946
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3104693   0.2558835   0.3650551
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0626864   0.0488489   0.0765238
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1628849   0.1550974   0.1706725
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4076148   0.3753675   0.4398620
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2118834   0.1963977   0.2273691
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.2921001   0.4137823
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0852540   0.0554439   0.1150642
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3463653   0.3233089   0.3694217
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8148515   0.7908851   0.8388178
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6258278   0.6065280   0.6451276


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1971420   0.9952252   1.440025
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                 1.8723958   0.7741873   4.528447
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.3525799   0.6275750   2.915145
6 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 1.8181818   1.0826943   3.053295
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 2.0036934   1.1962950   3.356018
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.7973803   0.4732978   1.343373
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.2542529   0.7581664   2.074941
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.4663188   1.1317394   1.899811
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2379288   1.0332950   1.483088
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 1.3949518   1.1065489   1.758522
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9709605   0.6052100   1.557747
24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 0.9747692   0.5575963   1.704056
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.0113775   0.7153936   1.429820
24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.0536514   0.6161681   1.801751
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3632726   1.0950029   1.697267
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0950510   1.0088120   1.188662
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9466624   0.7682828   1.166458


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0012753   -0.0001410   0.0026915
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0030373   -0.0025377   0.0086123
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0005196   -0.0010290   0.0020683
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0197802   -0.0019636   0.0415241
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0611361    0.0156412   0.1066310
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0017673   -0.0054756   0.0019411
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0080500   -0.0116153   0.0277152
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0011703    0.0001543   0.0021863
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0022695    0.0001556   0.0043835
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0117310    0.0020630   0.0213991
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0001565   -0.0026317   0.0023187
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0011590   -0.0262516   0.0239336
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0017961   -0.0532043   0.0567966
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0001641   -0.0015387   0.0018668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0078134    0.0013751   0.0142518
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0066175    0.0002991   0.0129359
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0008162   -0.0039234   0.0022910


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0123306   -0.0014480   0.0259196
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0517694   -0.0470659   0.1412754
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0085936   -0.0173296   0.0338562
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0900000   -0.0133927   0.1828439
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.3105714    0.0481228   0.5006585
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0182436   -0.0571908   0.0192689
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0259284   -0.0394954   0.0872345
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0186692    0.0025728   0.0345058
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0139334    0.0008801   0.0268162
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0287796    0.0047314   0.0522468
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0007385   -0.0124887   0.0108754
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0031480   -0.0736742   0.0627455
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0050891   -0.1636132   0.1493326
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0019243   -0.0186117   0.0220462
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0225584    0.0037899   0.0409732
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0081211    0.0003080   0.0158730
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0013042   -0.0062817   0.0036487
