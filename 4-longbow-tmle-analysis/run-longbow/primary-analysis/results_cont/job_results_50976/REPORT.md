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

**Outcome Variable:** haz

## Predictor Variables

**Intervention Variable:** enwast

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* vagbrth
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        enwast    n_cell       n
----------  -------------------------  -----------------------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0            201     241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1             40     241
Birth       ki0047075b-MAL-ED          BRAZIL                         0            177     183
Birth       ki0047075b-MAL-ED          BRAZIL                         1              6     183
Birth       ki0047075b-MAL-ED          INDIA                          0            170     203
Birth       ki0047075b-MAL-ED          INDIA                          1             33     203
Birth       ki0047075b-MAL-ED          NEPAL                          0            148     169
Birth       ki0047075b-MAL-ED          NEPAL                          1             21     169
Birth       ki0047075b-MAL-ED          PERU                           0            273     279
Birth       ki0047075b-MAL-ED          PERU                           1              6     279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0            240     260
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             20     260
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            116     118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              2     118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             74      85
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             11      85
Birth       ki1000108-IRC              INDIA                          0            256     369
Birth       ki1000108-IRC              INDIA                          1            113     369
Birth       ki1000109-EE               PAKISTAN                       0              1       2
Birth       ki1000109-EE               PAKISTAN                       1              1       2
Birth       ki1000109-ResPak           PAKISTAN                       0              6       6
Birth       ki1000109-ResPak           PAKISTAN                       1              0       6
Birth       ki1000304b-SAS-CompFeed    INDIA                          0            155     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1             11     166
Birth       ki1017093-NIH-Birth        BANGLADESH                     0             21      28
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              7      28
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             20      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              3      23
Birth       ki1101329-Keneba           GAMBIA                         0           1504    1537
Birth       ki1101329-Keneba           GAMBIA                         1             33    1537
Birth       ki1114097-CMIN             BANGLADESH                     0              5       8
Birth       ki1114097-CMIN             BANGLADESH                     1              3       8
Birth       ki1114097-CMIN             BRAZIL                         0            103     111
Birth       ki1114097-CMIN             BRAZIL                         1              8     111
Birth       ki1114097-CMIN             PERU                           0             10      10
Birth       ki1114097-CMIN             PERU                           1              0      10
Birth       ki1114097-CONTENT          PERU                           0              2       2
Birth       ki1114097-CONTENT          PERU                           1              0       2
Birth       ki1119695-PROBIT           BELARUS                        0          10936   13877
Birth       ki1119695-PROBIT           BELARUS                        1           2941   13877
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0          10856   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           2236   13092
Birth       ki1135781-COHORTS          GUATEMALA                      0            564     762
Birth       ki1135781-COHORTS          GUATEMALA                      1            198     762
Birth       ki1135781-COHORTS          INDIA                          0           5097    6231
Birth       ki1135781-COHORTS          INDIA                          1           1134    6231
Birth       ki1135781-COHORTS          PHILIPPINES                    0           2448    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    1            462    2910
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0          14203   15745
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           1542   15745
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0            647     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             36     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     0            188     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1             41     229
6 months    ki0047075b-MAL-ED          BRAZIL                         0            195     202
6 months    ki0047075b-MAL-ED          BRAZIL                         1              7     202
6 months    ki0047075b-MAL-ED          INDIA                          0            193     233
6 months    ki0047075b-MAL-ED          INDIA                          1             40     233
6 months    ki0047075b-MAL-ED          NEPAL                          0            205     232
6 months    ki0047075b-MAL-ED          NEPAL                          1             27     232
6 months    ki0047075b-MAL-ED          PERU                           0            261     266
6 months    ki0047075b-MAL-ED          PERU                           1              5     266
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0            236     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             17     253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            235     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     238
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            266     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             97     363
6 months    ki1000108-IRC              INDIA                          0            256     387
6 months    ki1000108-IRC              INDIA                          1            131     387
6 months    ki1000109-EE               PAKISTAN                       0            294     326
6 months    ki1000109-EE               PAKISTAN                       1             32     326
6 months    ki1000109-ResPak           PAKISTAN                       0            183     226
6 months    ki1000109-ResPak           PAKISTAN                       1             43     226
6 months    ki1000304b-SAS-CompFeed    INDIA                          0           1074    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            139    1213
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0            311     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             69     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0            368     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     1            146     514
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            457     576
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            119     576
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            516     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            178     694
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1901    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            119    2020
6 months    ki1101329-Keneba           GAMBIA                         0           2000    2078
6 months    ki1101329-Keneba           GAMBIA                         1             78    2078
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0            293     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              6     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0            470     561
6 months    ki1113344-GMS-Nepal        NEPAL                          1             91     561
6 months    ki1114097-CMIN             BANGLADESH                     0            218     232
6 months    ki1114097-CMIN             BANGLADESH                     1             14     232
6 months    ki1114097-CMIN             BRAZIL                         0             98     105
6 months    ki1114097-CMIN             BRAZIL                         1              7     105
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0            822     844
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1             22     844
6 months    ki1114097-CMIN             PERU                           0            605     637
6 months    ki1114097-CMIN             PERU                           1             32     637
6 months    ki1114097-CONTENT          PERU                           0            214     215
6 months    ki1114097-CONTENT          PERU                           1              1     215
6 months    ki1119695-PROBIT           BELARUS                        0          12721   15754
6 months    ki1119695-PROBIT           BELARUS                        1           3033   15754
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           6622    7845
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           1223    7845
6 months    ki1135781-COHORTS          GUATEMALA                      0            725     901
6 months    ki1135781-COHORTS          GUATEMALA                      1            176     901
6 months    ki1135781-COHORTS          INDIA                          0           5364    6508
6 months    ki1135781-COHORTS          INDIA                          1           1144    6508
6 months    ki1135781-COHORTS          PHILIPPINES                    0           2191    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    1            402    2593
6 months    ki1148112-LCNI-5           MALAWI                         0            825     839
6 months    ki1148112-LCNI-5           MALAWI                         1             14     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0          12711   14236
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           1525   14236
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           4010    4410
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            400    4410
24 months   ki0047075b-MAL-ED          BANGLADESH                     0            164     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1             37     201
24 months   ki0047075b-MAL-ED          BRAZIL                         0            157     163
24 months   ki0047075b-MAL-ED          BRAZIL                         1              6     163
24 months   ki0047075b-MAL-ED          INDIA                          0            184     224
24 months   ki0047075b-MAL-ED          INDIA                          1             40     224
24 months   ki0047075b-MAL-ED          NEPAL                          0            199     225
24 months   ki0047075b-MAL-ED          NEPAL                          1             26     225
24 months   ki0047075b-MAL-ED          PERU                           0            193     197
24 months   ki0047075b-MAL-ED          PERU                           1              4     197
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            221     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             16     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            202     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     205
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            267     365
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             98     365
24 months   ki1000108-IRC              INDIA                          0            256     388
24 months   ki1000108-IRC              INDIA                          1            132     388
24 months   ki1017093-NIH-Birth        BANGLADESH                     0            293     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1            116     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            451     569
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            118     569
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            363     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            137     500
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   ki1101329-Keneba           GAMBIA                         0           1636    1716
24 months   ki1101329-Keneba           GAMBIA                         1             80    1716
24 months   ki1113344-GMS-Nepal        NEPAL                          0            421     497
24 months   ki1113344-GMS-Nepal        NEPAL                          1             76     497
24 months   ki1114097-CMIN             BANGLADESH                     0            217     232
24 months   ki1114097-CMIN             BANGLADESH                     1             15     232
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0            527     548
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1             21     548
24 months   ki1114097-CMIN             PERU                           0            414     429
24 months   ki1114097-CMIN             PERU                           1             15     429
24 months   ki1114097-CONTENT          PERU                           0            163     164
24 months   ki1114097-CONTENT          PERU                           1              1     164
24 months   ki1119695-PROBIT           BELARUS                        0           3121    4032
24 months   ki1119695-PROBIT           BELARUS                        1            911    4032
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            347     399
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             52     399
24 months   ki1135781-COHORTS          GUATEMALA                      0            876    1029
24 months   ki1135781-COHORTS          GUATEMALA                      1            153    1029
24 months   ki1135781-COHORTS          INDIA                          0           4252    5071
24 months   ki1135781-COHORTS          INDIA                          1            819    5071
24 months   ki1135781-COHORTS          PHILIPPINES                    0           1989    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    1            358    2347
24 months   ki1148112-LCNI-5           MALAWI                         0            569     579
24 months   ki1148112-LCNI-5           MALAWI                         1             10     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0           6413    7237
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            824    7237
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0           3943    4315
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            372    4315


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
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/08b62875-3476-4c02-b457-51a4d94ec8af/93d09038-2ced-4766-bd7d-dfbc79897729/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/08b62875-3476-4c02-b457-51a4d94ec8af/93d09038-2ced-4766-bd7d-dfbc79897729/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/08b62875-3476-4c02-b457-51a4d94ec8af/93d09038-2ced-4766-bd7d-dfbc79897729/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.9815531   -1.1016186   -0.8614877
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.7308517   -1.0545706   -0.4071328
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.6676836   -0.8118231   -0.5235442
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.2666667   -0.8014912    0.2681579
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.9633637   -1.1074608   -0.8192667
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -1.0009310   -1.3424456   -0.6594165
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.6190159   -0.7726574   -0.4653743
Birth       ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.7499538   -1.1986428   -0.3012648
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.8557509   -0.9580036   -0.7534983
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -0.9100000   -1.9335967    0.1135967
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.7251890   -0.8409703   -0.6094076
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.2929963   -1.0421157    0.4561231
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.8211038   -0.9993860   -0.6428216
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.8544816   -1.3658135   -0.3431497
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.5865716   -0.7100250   -0.4631182
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.9982592    0.6988754    1.2976431
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -1.1550156   -1.2586151   -1.0514161
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.1348051   -1.4437892   -0.8258211
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.6704762   -1.0619720   -0.2789804
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1057143   -0.7959107    0.5844821
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.0310166   -0.0306791    0.0927123
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 0.5536290   -0.2357154    1.3429735
Birth       ki1114097-CMIN             BRAZIL                         0                    NA                 0.1498058   -0.0291164    0.3287280
Birth       ki1114097-CMIN             BRAZIL                         1                    NA                 0.5275000   -0.1719603    1.2269603
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 1.0851016    0.9784305    1.1917727
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 2.2060254    2.0266970    2.3853538
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.4605655   -0.4781670   -0.4429640
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2382961    0.1817980    0.2947941
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0432734   -0.0459119    0.1324587
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.7154871    0.5670403    0.8639338
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.5531788   -0.5796424   -0.5267151
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.3077476   -0.3732330   -0.2422623
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.2216899   -0.2579777   -0.1854022
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2418024    0.1375512    0.3460536
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.1782843   -1.1934851   -1.1630834
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.0702272   -1.1233837   -1.0170706
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.1825379   -1.2520794   -1.1129964
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.9442985   -1.4832510   -0.4053461
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.1348181   -1.2637495   -1.0058867
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.3755967   -1.6531966   -1.0979968
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0720256   -0.0776366    0.2216879
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.2583333   -0.4304450    0.9471116
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -1.1989233   -1.3265544   -1.0712922
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.2555825   -1.5727851   -0.9383799
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.4925285   -0.6093016   -0.3757555
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.7332459   -1.0729053   -0.3935865
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -1.3105428   -1.4212692   -1.1998163
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.9260000   -1.4693377   -0.3826623
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.0569791   -1.1868331   -0.9271251
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.0436554   -1.5174605   -0.5698504
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.3753740   -1.5388340   -1.2119140
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.5218729   -1.8269464   -1.2167994
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.1473394   -1.3046181   -0.9900607
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.2690739   -1.5120315   -1.0261163
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -1.9950175   -2.1224513   -1.8675838
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -1.9980240   -2.3690901   -1.6269578
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -1.3711293   -1.5994368   -1.1428217
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -1.5320352   -2.0873269   -0.9767434
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -1.2484940   -1.3405162   -1.1564718
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.5306914   -1.7706511   -1.2907317
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -1.8323276   -1.9546716   -1.7099837
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -2.1867333   -2.4713306   -1.9021361
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -1.3406588   -1.4409815   -1.2403361
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -1.3677031   -1.5564560   -1.1789502
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.0392539   -1.1230329   -0.9554749
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.1777518   -1.3539754   -1.0015281
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.1405158   -1.2204193   -1.0606122
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.2140176   -1.3595938   -1.0684414
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5462834   -0.5967939   -0.4957728
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.5093903   -0.7084203   -0.3103604
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.8754816   -0.9224529   -0.8285103
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -1.4302623   -1.7566226   -1.1039020
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.5321274   -1.6425348   -1.4217201
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -3.0158333   -3.4993139   -2.5323527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.3266041   -1.4090681   -1.2441401
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.2225916   -1.4400144   -1.0051687
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -1.6950739   -1.8321986   -1.5579493
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -1.4925811   -2.1954161   -0.7897460
6 months    ki1114097-CMIN             BRAZIL                         0                    NA                -0.6903061   -0.8942340   -0.4863782
6 months    ki1114097-CMIN             BRAZIL                         1                    NA                -0.0557143   -0.8995574    0.7881288
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.5882759   -0.6644638   -0.5120880
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.9239296   -1.4325210   -0.4153382
6 months    ki1114097-CMIN             PERU                           0                    NA                -0.5032712   -0.5818259   -0.4247166
6 months    ki1114097-CMIN             PERU                           1                    NA                -0.6679386   -1.2131524   -0.1227248
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1018620    0.0002568    0.2034673
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.1507886    0.0151272    0.2864499
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.7722664   -0.8002981   -0.7442347
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.2200405   -1.2900169   -1.1500640
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.8356484   -1.9138455   -1.7574513
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -1.6362161   -1.7799818   -1.4924505
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.9211460   -0.9505422   -0.8917498
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.9419394   -1.0141504   -0.8697284
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -1.0997395   -1.1445686   -1.0549105
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -1.0615605   -1.1747682   -0.9483528
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -1.6507314   -1.7197851   -1.5816777
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -2.6263775   -3.3453521   -1.9074029
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.1262060   -1.1492467   -1.1031653
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.1086528   -1.1726860   -1.0446195
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.2408105   -1.2790198   -1.2026011
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.2816735   -1.4081711   -1.1551759
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.9061104   -2.0498163   -1.7624045
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.8569116   -2.1432427   -1.5705805
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0911146   -0.0817940    0.2640233
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.4933333   -1.2298879    0.2432212
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -1.8589043   -1.9945446   -1.7232639
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.7377544   -2.0905394   -1.3849694
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -1.2572112   -1.3815148   -1.1329075
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.1536782   -1.6083323   -0.6990240
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.6437678   -1.7809935   -1.5065421
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.3149580   -2.2082591   -0.4216569
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.5640378   -2.6786764   -2.4493991
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.5443274   -2.7554852   -2.3331696
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.6887188   -1.8091709   -1.5682666
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.9033057   -2.0688777   -1.7377338
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -2.1522397   -2.2728424   -2.0316369
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -2.0370004   -2.2386337   -1.8353671
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.5632658   -1.6586741   -1.4678576
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.6142183   -1.7797368   -1.4486999
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.3963556   -1.4929779   -1.2997333
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.4256802   -1.5926699   -1.2586905
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -1.5447277   -1.5953893   -1.4940661
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.8255547   -2.0879523   -1.5631571
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.8973207   -1.9843597   -1.8102817
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.7547254   -2.0251797   -1.4842710
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -2.4789150   -2.6116178   -2.3462122
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -2.2880260   -2.9164910   -1.6595610
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -1.5552290   -1.6565667   -1.4538913
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -1.7425640   -2.2794733   -1.2056548
24 months   ki1114097-CMIN             PERU                           0                    NA                -1.5651862   -1.6603471   -1.4700253
24 months   ki1114097-CMIN             PERU                           1                    NA                -1.8172747   -2.7844331   -0.8501163
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0773157   -0.4174581    0.2628267
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.3068051   -0.6779960    0.0643859
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -2.2579397   -2.3889940   -2.1268854
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -2.5798165   -2.9493789   -2.2102540
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -2.8921007   -2.9633533   -2.8208481
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.6570162   -2.8129437   -2.5010886
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -1.8604661   -1.8957053   -1.8252269
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -1.8551274   -1.9419287   -1.7683261
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -2.3813366   -2.4300657   -2.3326075
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -2.2492271   -2.3708526   -2.1276016
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -1.8634658   -1.9442702   -1.7826614
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -2.8004055   -3.5882512   -2.0125598
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.8774766   -1.9081050   -1.8468482
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.8522548   -1.9258664   -1.7786433
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.6913717   -1.7291428   -1.6536006
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.7528410   -1.8623473   -1.6433347


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9434025   -1.0553995   -0.8314055
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.6545355   -0.7954300   -0.5136410
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9670443   -1.0993703   -0.8347184
Birth       ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.6373964   -0.7808443   -0.4939486
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.8569176   -0.9598499   -0.7539853
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.6936923   -0.8141845   -0.5732001
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.8205882   -0.9953903   -0.6457861
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.1140921   -0.2561277    0.0279434
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.1589157   -1.2666273   -1.0512040
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.5292857   -0.8821252   -0.1764462
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0442941   -0.0185771    0.1071652
Birth       ki1114097-CMIN             BRAZIL                         NA                   NA                 0.1770270    0.0025580    0.3514960
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3278057    1.1691020    1.4865095
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.3412145   -0.3591726   -0.3232564
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.2220341    0.1435838    0.3004845
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.5071369   -0.5319444   -0.4823294
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.1490962   -0.1843045   -0.1138879
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1673153   -1.1822647   -1.1523660
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.1775403   -1.2476425   -1.1074380
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1553785   -1.2731711   -1.0375858
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0784818   -0.0680282    0.2249919
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2047496   -1.3231151   -1.0863842
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5342241   -0.6451165   -0.4233318
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3033145   -1.4123055   -1.1943235
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0492984   -1.1745095   -0.9240873
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4223508   -1.5654032   -1.2792984
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.1884152   -1.3196342   -1.0571962
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.0046626   -2.1248969   -1.8844282
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -1.4026180   -1.6123162   -1.1929198
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.2781121   -1.3694457   -1.1867786
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3447001   -1.4316348   -1.2577653
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0675376   -1.1432331   -0.9918422
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1560014   -1.2261266   -1.0858763
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5424220   -0.5912180   -0.4936261
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8963775   -0.9433248   -0.8494302
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3262953   -1.4042959   -1.2482948
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.7090230   -1.8439050   -1.5741410
6 months    ki1114097-CMIN             BRAZIL                         NA                   NA                -0.6480000   -0.8487905   -0.4472095
6 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.5979325   -0.6732517   -0.5226132
6 months    ki1114097-CMIN             PERU                           NA                   NA                -0.5132548   -0.5926717   -0.4338380
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1076416    0.0130507    0.2022324
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8394653   -0.8656101   -0.8133205
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.7950277   -1.8646284   -1.7254271
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9241887   -0.9514678   -0.8969095
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.0928731   -1.1347142   -1.0510321
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1247577   -1.1475519   -1.1019635
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2460635   -1.2827993   -1.2093277
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.8962687   -2.0241450   -1.7683923
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0696012   -0.0999839    0.2391864
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8363616   -1.9636359   -1.7090873
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2619556   -1.3827787   -1.1411324
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6216878   -1.7575225   -1.4858530
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5564429   -2.6570768   -2.4558090
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7623926   -1.8591106   -1.6656746
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.1194886   -2.2222242   -2.0167530
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5715641   -1.6543870   -1.4887413
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4004800   -1.4835266   -1.3174334
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5586932   -1.6085568   -1.5088295
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8761201   -1.9601745   -1.7920656
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -2.4877155   -2.6168325   -2.3585986
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -1.5673266   -1.6667006   -1.4679527
24 months   ki1114097-CMIN             PERU                           NA                   NA                -1.5807226   -1.6772768   -1.4841684
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1311901   -0.4268581    0.1644779
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -2.2965664   -2.4199830   -2.1731498
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.8596404   -2.9251693   -2.7941116
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -1.8596470   -1.8926187   -1.8266754
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.3603707   -2.4055731   -2.3151683
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8754404   -1.9564117   -1.7944692
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.8752232   -1.9042428   -1.8462036
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.6962457   -1.7323673   -1.6601241


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.2507014   -0.0964696    0.5978725
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.4010169   -0.1528905    0.9549244
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0375673   -0.4079143    0.3327797
Birth       ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.1309379   -0.6064888    0.3446130
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                 -0.0542491   -1.0829404    0.9744422
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.4321927   -0.3256778    1.1900632
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0333778   -0.5757233    0.5089676
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  1.5848308    1.2603630    1.9092987
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.0202105   -0.2521559    0.2925768
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.5647619   -0.2287367    1.3582605
Birth       ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                  0.5226125   -0.2691308    1.3143557
Birth       ki1114097-CMIN             BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BRAZIL                         1                    0                  0.3776942   -0.3442877    1.0996761
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                  1.1209237    0.9334933    1.3083542
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.6988616    0.6397227    0.7580004
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                  0.6722137    0.4990753    0.8453520
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                  0.2454311    0.1748797    0.3159825
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.4634923    0.3532967    0.5736880
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.1080571    0.0534949    0.1626193
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.2382394   -0.3059076    0.7823864
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.2407786   -0.5491023    0.0675452
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.1863077   -0.5185429    0.8911583
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 -0.0566592   -0.3995498    0.2862315
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.2407174   -0.6001982    0.1187634
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.3845428   -0.1699626    0.9390482
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0133237   -0.4773430    0.5039904
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1464989   -0.4931661    0.2001682
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.1217345   -0.4116802    0.1682113
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.0030064   -0.3948108    0.3887980
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.1609059   -0.7621500    0.4403383
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.2821974   -0.5069783   -0.0574165
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.3544057   -0.6636043   -0.0452071
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0270443   -0.2407847    0.1866961
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1384979   -0.3339069    0.0569111
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0735018   -0.2391298    0.0921261
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0368931   -0.1685741    0.2423602
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.5547807   -0.8842721   -0.2252893
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -1.4837059   -1.9796326   -0.9877792
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.1040125   -0.1288815    0.3369065
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                  0.2024929   -0.5146307    0.9196165
6 months    ki1114097-CMIN             BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BRAZIL                         1                    0                  0.6345918   -0.2335428    1.5027265
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 -0.3356537   -0.8495218    0.1782144
6 months    ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             PERU                           1                    0                 -0.1646674   -0.7152708    0.3859361
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0489266   -0.0817978    0.1796509
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.4477741   -0.5230483   -0.3724998
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.1994323    0.0370501    0.3618144
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0207934   -0.0985521    0.0569653
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0381790   -0.0831912    0.1595493
6 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         1                    0                 -0.9756461   -1.6982688   -0.2530235
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0175532   -0.0464600    0.0815664
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0408631   -0.1720716    0.0903455
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.0491988   -0.2677477    0.3661454
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.5844480   -1.3410258    0.1721298
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.1211499   -0.2565984    0.4988981
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.1035330   -0.3690159    0.5760819
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.3288098   -0.5750648    1.2326844
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0197103   -0.2204162    0.2598368
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.2145870   -0.4194837   -0.0096903
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.1152393   -0.1199427    0.3504212
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0509525   -0.2424156    0.1405106
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0293246   -0.2222498    0.1636006
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.2808270   -0.5478675   -0.0137866
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.1425953   -0.1411855    0.4263761
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.1908890   -0.4507152    0.8324932
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 -0.1873350   -0.7340381    0.3593681
24 months   ki1114097-CMIN             PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             PERU                           1                    0                 -0.2520885   -1.2233442    0.7191672
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.2294894   -0.6737894    0.2148106
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.3218768   -0.7126867    0.0689331
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.2350846    0.0648858    0.4052833
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  0.0053387   -0.0874966    0.0981740
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.1321095    0.0011021    0.2631169
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.9369397   -1.7295041   -0.1443753
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0252218   -0.0524479    0.1028914
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0614693   -0.1753798    0.0524412


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0381506   -0.0181835    0.0944847
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0131481   -0.0077674    0.0340636
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0036806   -0.0630757    0.0557145
Birth       ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0183806   -0.0772651    0.0405039
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0011666   -0.0269006    0.0245673
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0314967   -0.0236453    0.0866387
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0005155   -0.0925844    0.0936155
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.4724794    0.3516282    0.5933307
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0039001   -0.0190672    0.0112671
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.1411905   -0.0775816    0.3599626
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.0132775   -0.0052087    0.0317637
Birth       ki1114097-CMIN             BRAZIL                         0                    NA                 0.0272212   -0.0279221    0.0823645
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 0.2427041    0.1448048    0.3406034
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1193510    0.1084775    0.1302245
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1787607    0.1293549    0.2281666
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0460419    0.0330609    0.0590228
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0725937    0.0541690    0.0910185
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0109689    0.0056670    0.0162709
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0049977   -0.0204643    0.0304597
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0205604   -0.0780423    0.0369216
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0064562   -0.0184194    0.0313318
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0058263   -0.0640003    0.0523477
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0416956   -0.0855781    0.0021869
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0072282   -0.0079937    0.0224502
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0076807   -0.0255678    0.0409292
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0469768   -0.1380531    0.0440995
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0410757   -0.1390859    0.0569344
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0096450   -0.0482370    0.0289469
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0314887   -0.1387935    0.0758161
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0296181   -0.0626660    0.0034298
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0663566   -0.1237605   -0.0089526
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0040413   -0.0633197    0.0552371
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0282837   -0.0691218    0.0125543
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0154857   -0.0582691    0.0272978
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0038614   -0.0078226    0.0155453
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0208959   -0.0334747   -0.0083171
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0297734   -0.0564518   -0.0030950
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0003088   -0.0384469    0.0390645
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0139490   -0.0557572    0.0278591
6 months    ki1114097-CMIN             BRAZIL                         0                    NA                 0.0423061   -0.0230784    0.1076906
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.0096566   -0.0237180    0.0044048
6 months    ki1114097-CMIN             PERU                           0                    NA                -0.0099836   -0.0374022    0.0174350
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0057795   -0.0201150    0.0316741
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0671988   -0.0791674   -0.0552303
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0406206    0.0080709    0.0731703
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0030427   -0.0165851    0.0104996
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0068664   -0.0118371    0.0255700
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0094593   -0.0270510    0.0081324
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0014483   -0.0052674    0.0081641
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0052530   -0.0164624    0.0059564
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0098418   -0.0469957    0.0666793
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0215134   -0.0541136    0.0110867
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0225427   -0.0435574    0.0886427
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0047444   -0.0572708    0.0477820
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0220800   -0.0250469    0.0692070
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0075948   -0.0562448    0.0714345
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0736738   -0.1440911   -0.0032565
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0327511   -0.0328028    0.0983049
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0082983   -0.0484233    0.0318267
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0041244   -0.0570512    0.0488024
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0139655   -0.0265046   -0.0014264
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0212007   -0.0214477    0.0638490
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0088005   -0.0463455    0.0287445
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                -0.0120976   -0.0322372    0.0080419
24 months   ki1114097-CMIN             PERU                           0                    NA                -0.0155364   -0.0466978    0.0156251
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0538744   -0.1508091    0.0430604
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0386267   -0.0872421    0.0099886
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0324603    0.0061507    0.0587699
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0008191   -0.0141110    0.0157491
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0209659    0.0009609    0.0409710
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0119746   -0.0311066    0.0071574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0022534   -0.0065014    0.0110083
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0048740   -0.0144734    0.0047255
