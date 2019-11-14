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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0            179     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     1             36     215
Birth       ki0047075b-MAL-ED          BRAZIL                         0             60      62
Birth       ki0047075b-MAL-ED          BRAZIL                         1              2      62
Birth       ki0047075b-MAL-ED          INDIA                          0             40      45
Birth       ki0047075b-MAL-ED          INDIA                          1              5      45
Birth       ki0047075b-MAL-ED          NEPAL                          0             24      26
Birth       ki0047075b-MAL-ED          NEPAL                          1              2      26
Birth       ki0047075b-MAL-ED          PERU                           0            223     228
Birth       ki0047075b-MAL-ED          PERU                           1              5     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0            108     121
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1             13     121
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            114     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              1     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0             75      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1             12      87
Birth       ki1000108-IRC              INDIA                          0            251     364
Birth       ki1000108-IRC              INDIA                          1            113     364
Birth       ki1000109-EE               PAKISTAN                       0            155     180
Birth       ki1000109-EE               PAKISTAN                       1             25     180
Birth       ki1000109-ResPak           PAKISTAN                       0             34      38
Birth       ki1000109-ResPak           PAKISTAN                       1              4      38
Birth       ki1000304b-SAS-CompFeed    INDIA                          0            985    1105
Birth       ki1000304b-SAS-CompFeed    INDIA                          1            120    1105
Birth       ki1017093-NIH-Birth        BANGLADESH                     0            407     580
Birth       ki1017093-NIH-Birth        BANGLADESH                     1            173     580
Birth       ki1017093b-PROVIDE         BANGLADESH                     0            415     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1            117     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0            535     713
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1            178     713
Birth       ki1101329-Keneba           GAMBIA                         0             12      13
Birth       ki1101329-Keneba           GAMBIA                         1              1      13
Birth       ki1113344-GMS-Nepal        NEPAL                          0            509     645
Birth       ki1113344-GMS-Nepal        NEPAL                          1            136     645
Birth       ki1114097-CMIN             BANGLADESH                     0             15      19
Birth       ki1114097-CMIN             BANGLADESH                     1              4      19
Birth       ki1114097-CONTENT          PERU                           0              2       2
Birth       ki1114097-CONTENT          PERU                           1              0       2
Birth       ki1119695-PROBIT           BELARUS                        0          10942   13883
Birth       ki1119695-PROBIT           BELARUS                        1           2941   13883
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0          10856   13092
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1           2236   13092
Birth       ki1135781-COHORTS          GUATEMALA                      0            564     762
Birth       ki1135781-COHORTS          GUATEMALA                      1            198     762
Birth       ki1135781-COHORTS          INDIA                          0           5097    6231
Birth       ki1135781-COHORTS          INDIA                          1           1134    6231
Birth       ki1135781-COHORTS          PHILIPPINES                    0           2448    2910
Birth       ki1135781-COHORTS          PHILIPPINES                    1            462    2910
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0          19597   22085
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           2488   22085
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0           2157    2399
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1            242    2399
6 months    ki0047075b-MAL-ED          BANGLADESH                     0            188     229
6 months    ki0047075b-MAL-ED          BANGLADESH                     1             41     229
6 months    ki0047075b-MAL-ED          BRAZIL                         0            192     199
6 months    ki0047075b-MAL-ED          BRAZIL                         1              7     199
6 months    ki0047075b-MAL-ED          INDIA                          0            189     232
6 months    ki0047075b-MAL-ED          INDIA                          1             43     232
6 months    ki0047075b-MAL-ED          NEPAL                          0            201     232
6 months    ki0047075b-MAL-ED          NEPAL                          1             31     232
6 months    ki0047075b-MAL-ED          PERU                           0            261     266
6 months    ki0047075b-MAL-ED          PERU                           1              5     266
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0            235     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1             18     253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            235     238
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     238
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0            272     363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1             91     363
6 months    ki1000108-IRC              INDIA                          0            268     382
6 months    ki1000108-IRC              INDIA                          1            114     382
6 months    ki1000109-EE               PAKISTAN                       0            255     292
6 months    ki1000109-EE               PAKISTAN                       1             37     292
6 months    ki1000109-ResPak           PAKISTAN                       0            185     228
6 months    ki1000109-ResPak           PAKISTAN                       1             43     228
6 months    ki1000304b-SAS-CompFeed    INDIA                          0           1074    1213
6 months    ki1000304b-SAS-CompFeed    INDIA                          1            139    1213
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0            311     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             69     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0            368     514
6 months    ki1017093-NIH-Birth        BANGLADESH                     1            146     514
6 months    ki1017093b-PROVIDE         BANGLADESH                     0            472     597
6 months    ki1017093b-PROVIDE         BANGLADESH                     1            125     597
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0            517     694
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1            177     694
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0           1901    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1            119    2020
6 months    ki1101329-Keneba           GAMBIA                         0           1641    2029
6 months    ki1101329-Keneba           GAMBIA                         1            388    2029
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0            293     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              6     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0            421     528
6 months    ki1113344-GMS-Nepal        NEPAL                          1            107     528
6 months    ki1114097-CMIN             BANGLADESH                     0            218     232
6 months    ki1114097-CMIN             BANGLADESH                     1             14     232
6 months    ki1114097-CONTENT          PERU                           0            214     215
6 months    ki1114097-CONTENT          PERU                           1              1     215
6 months    ki1119695-PROBIT           BELARUS                        0          12721   15754
6 months    ki1119695-PROBIT           BELARUS                        1           3033   15754
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0           6904    8174
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1           1270    8174
6 months    ki1135781-COHORTS          GUATEMALA                      0            725     901
6 months    ki1135781-COHORTS          GUATEMALA                      1            176     901
6 months    ki1135781-COHORTS          INDIA                          0           5364    6508
6 months    ki1135781-COHORTS          INDIA                          1           1144    6508
6 months    ki1135781-COHORTS          PHILIPPINES                    0           2191    2593
6 months    ki1135781-COHORTS          PHILIPPINES                    1            402    2593
6 months    ki1148112-LCNI-5           MALAWI                         0            825     839
6 months    ki1148112-LCNI-5           MALAWI                         1             14     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0          12662   14183
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           1521   14183
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0           4010    4410
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            400    4410
24 months   ki0047075b-MAL-ED          BANGLADESH                     0            164     201
24 months   ki0047075b-MAL-ED          BANGLADESH                     1             37     201
24 months   ki0047075b-MAL-ED          BRAZIL                         0            154     160
24 months   ki0047075b-MAL-ED          BRAZIL                         1              6     160
24 months   ki0047075b-MAL-ED          INDIA                          0            180     223
24 months   ki0047075b-MAL-ED          INDIA                          1             43     223
24 months   ki0047075b-MAL-ED          NEPAL                          0            195     225
24 months   ki0047075b-MAL-ED          NEPAL                          1             30     225
24 months   ki0047075b-MAL-ED          PERU                           0            193     197
24 months   ki0047075b-MAL-ED          PERU                           1              4     197
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0            221     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1             16     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0            202     205
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              3     205
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0            272     364
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1             92     364
24 months   ki1000108-IRC              INDIA                          0            269     383
24 months   ki1000108-IRC              INDIA                          1            114     383
24 months   ki1000109-EE               PAKISTAN                       0            115     137
24 months   ki1000109-EE               PAKISTAN                       1             22     137
24 months   ki1017093-NIH-Birth        BANGLADESH                     0            293     409
24 months   ki1017093-NIH-Birth        BANGLADESH                     1            116     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0            452     570
24 months   ki1017093b-PROVIDE         BANGLADESH                     1            118     570
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0            364     500
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1            136     500
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0              5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1              1       6
24 months   ki1101329-Keneba           GAMBIA                         0           1354    1677
24 months   ki1101329-Keneba           GAMBIA                         1            323    1677
24 months   ki1113344-GMS-Nepal        NEPAL                          0            365     455
24 months   ki1113344-GMS-Nepal        NEPAL                          1             90     455
24 months   ki1114097-CMIN             BANGLADESH                     0            217     232
24 months   ki1114097-CMIN             BANGLADESH                     1             15     232
24 months   ki1114097-CONTENT          PERU                           0            163     164
24 months   ki1114097-CONTENT          PERU                           1              1     164
24 months   ki1119695-PROBIT           BELARUS                        0           3121    4032
24 months   ki1119695-PROBIT           BELARUS                        1            911    4032
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0           1346    1505
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1            159    1505
24 months   ki1135781-COHORTS          GUATEMALA                      0            874    1027
24 months   ki1135781-COHORTS          GUATEMALA                      1            153    1027
24 months   ki1135781-COHORTS          INDIA                          0           4252    5070
24 months   ki1135781-COHORTS          INDIA                          1            818    5070
24 months   ki1135781-COHORTS          PHILIPPINES                    0           1989    2347
24 months   ki1135781-COHORTS          PHILIPPINES                    1            358    2347
24 months   ki1148112-LCNI-5           MALAWI                         0            569     579
24 months   ki1148112-LCNI-5           MALAWI                         1             10     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0           6357    7179
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            822    7179
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: Birth, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/523382d5-861e-4077-973a-a47e77aaaca6/ffebfd51-53c1-43f9-aa69-3e2ff735b055/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/523382d5-861e-4077-973a-a47e77aaaca6/ffebfd51-53c1-43f9-aa69-3e2ff735b055/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/523382d5-861e-4077-973a-a47e77aaaca6/ffebfd51-53c1-43f9-aa69-3e2ff735b055/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.9942392   -1.1231549   -0.8653236
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.7500185   -1.0729251   -0.4271119
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -1.0995000   -1.3601155   -0.8388845
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -0.9800000   -1.9772048    0.0172048
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.8421525   -0.9539315   -0.7303735
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -0.5260000   -1.5481689    0.4961689
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.6522098   -0.8189903   -0.4854292
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.2440213   -0.3356804    0.8237231
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.7891409   -0.9759696   -0.6023122
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.5238176   -1.1456507    0.0980154
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.5956046   -0.7160470   -0.4751622
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.9508927    0.6586914    1.2430940
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -1.3293665   -1.4698348   -1.1888982
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -0.7300738   -1.4344906   -0.0256570
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -1.1592754   -1.2085888   -1.1099620
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.2023935   -1.3506267   -1.0541603
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.8857324   -0.9715509   -0.7999140
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.6582894   -0.8421088   -0.4744699
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8603779   -0.9406223   -0.7801335
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9009753   -1.0836631   -0.7182875
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.8943793   -0.9696212   -0.8191374
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.7544785   -0.9007130   -0.6082439
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.9532626   -1.0296461   -0.8768791
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.7653642   -0.9315858   -0.5991425
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 1.0833471    0.9767567    1.1899376
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 2.1393460    1.9737403    2.3049518
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.4605297   -0.4781366   -0.4429229
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2363067    0.1798697    0.2927437
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0455076   -0.0437674    0.1347825
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.7172515    0.5728765    0.8616266
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.5531938   -0.5796813   -0.5267063
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.3073341   -0.3735499   -0.2411183
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.2220030   -0.2583186   -0.1856873
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2450109    0.1413480    0.3486737
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.7418758   -0.7681529   -0.7155988
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.7405702   -0.8018929   -0.6792474
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.2282355   -1.2697178   -1.1867532
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.1122862   -1.2729118   -0.9516606
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.1314826   -1.2596288   -1.0033364
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.2871073   -1.6016513   -0.9725633
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0932812   -0.0587578    0.2453203
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.1145238   -0.4803868    0.2513392
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -1.1900694   -1.3173325   -1.0628063
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.1303478   -1.4424099   -0.8182857
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.4937009   -0.6120004   -0.3754013
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.7447635   -1.0593608   -0.4301662
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -1.3118966   -1.4225397   -1.2012534
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.9260000   -1.4693377   -0.3826623
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.0522925   -1.1821434   -0.9224416
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.9197831   -1.4139133   -0.4256530
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.3763484   -1.5361617   -1.2165351
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.5030326   -1.8158106   -1.1902546
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.1318176   -1.2819871   -0.9816481
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.2320082   -1.5048757   -0.9591408
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -1.7921477   -1.9166076   -1.6676878
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -1.8085886   -2.1141208   -1.5030564
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -1.3975595   -1.6266407   -1.1684783
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -1.5839750   -2.1269258   -1.0410242
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -1.2484940   -1.3405162   -1.1564718
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.5306914   -1.7706511   -1.2907317
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -1.8301284   -1.9522380   -1.7080187
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -2.2131598   -2.5107048   -1.9156148
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -1.3428953   -1.4424157   -1.2433749
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -1.3983313   -1.5858711   -1.2107916
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.0455284   -1.1277538   -0.9633030
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.1911216   -1.3667967   -1.0154464
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.1418042   -1.2215399   -1.0620684
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.2120753   -1.3576338   -1.0665169
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5468798   -0.5973638   -0.4963959
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4775275   -0.6751372   -0.2799177
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.8824846   -0.9343234   -0.8306458
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.9340984   -1.0512170   -0.8169797
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.5321274   -1.6425348   -1.4217201
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -3.0158333   -3.4993139   -2.5323527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.2740791   -1.3589957   -1.1891625
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.2805985   -1.4599431   -1.1012539
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -1.6959160   -1.8331285   -1.5587034
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -1.6788547   -2.4670990   -0.8906105
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1020025   -0.0003873    0.2043923
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.1457665    0.0058760    0.2856569
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.7457489   -0.7733808   -0.7181170
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.2121693   -1.2802999   -1.1440387
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.8354335   -1.9137685   -1.7570984
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -1.6293401   -1.7791370   -1.4795432
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.9200926   -0.9494225   -0.8907627
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.9442838   -1.0153486   -0.8732190
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -1.1011326   -1.1460069   -1.0562583
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -1.0585301   -1.1709225   -0.9461376
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -1.6504820   -1.7195294   -1.5814346
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -2.4916771   -3.2677379   -1.7156164
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.1486528   -1.1716158   -1.1256898
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.1338731   -1.1982310   -1.0695152
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.2409118   -1.2791563   -1.2026673
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.3087389   -1.4319300   -1.1855478
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.9368165   -2.0802352   -1.7933978
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.8030253   -2.1035724   -1.5024782
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0357792   -0.1402343    0.2117928
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.5908333   -1.2594074    0.0777407
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -1.9052704   -2.0407065   -1.7698343
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.7184461   -2.0647779   -1.3721143
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -1.3022665   -1.4276413   -1.1768917
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.2550270   -1.6923001   -0.8177538
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.6686984   -1.8059516   -1.5314452
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.3338009   -2.1194399   -0.5481619
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.5672119   -2.6780999   -2.4563239
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.5533812   -2.7739803   -2.3327821
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.7144353   -1.8295124   -1.5993581
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.8597981   -2.0367050   -1.6828912
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -2.5963599   -2.7592523   -2.4334676
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -2.7909767   -3.1657537   -2.4161998
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -2.1913163   -2.3119458   -2.0706868
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -2.0893378   -2.2889129   -1.8897627
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.5738602   -1.6694855   -1.4782348
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.6592089   -1.8284357   -1.4899821
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.4057133   -1.5022401   -1.3091864
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.4309340   -1.5966074   -1.2652605
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -1.5490889   -1.6053102   -1.4928676
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.6765324   -1.7874237   -1.5656410
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.8420384   -1.9376038   -1.7464729
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.8377587   -2.0454279   -1.6300895
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -2.4813462   -2.6140673   -2.3486251
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -2.3854315   -2.9672254   -1.8036376
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0744098   -0.4144589    0.2656392
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.3027059   -0.6572865    0.0518747
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.5259084   -1.5868739   -1.4649430
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.7026513   -1.8836903   -1.5216123
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -3.0299087   -3.1010562   -2.9587613
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.7926044   -2.9614220   -2.6237867
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -2.0764033   -2.1116612   -2.0411454
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -2.0631253   -2.1494070   -1.9768436
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -2.3989748   -2.4476807   -2.3502688
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -2.3040952   -2.4230718   -2.1851185
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -1.8749419   -1.9558209   -1.7940629
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -2.8258290   -3.5581871   -2.0934710
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.8838892   -1.9145837   -1.8531946
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.8640079   -1.9405131   -1.7875026
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.7122731   -1.7501222   -1.6744239
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.7729061   -1.8817961   -1.6640161


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9625581   -1.0817638   -0.8433525
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.0862222   -1.3432542   -0.8291902
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.8352193   -0.9473216   -0.7231170
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.5594215   -0.7261377   -0.3927053
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.8194253   -1.0062738   -0.6325768
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.1131044   -0.2551572    0.0289484
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -1.2383333   -1.3946042   -1.0820625
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.1641176   -1.2153187   -1.1129166
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.8156034   -0.8972149   -0.7339920
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8579887   -0.9311892   -0.7847883
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.8487377   -0.9161997   -0.7812758
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.9117209   -0.9811840   -0.8422578
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3292725    1.1705582    1.4879867
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.3412145   -0.3591726   -0.3232564
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.2220341    0.1435838    0.3004845
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.5071369   -0.5319444   -0.4823294
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.1490962   -0.1843045   -0.1138879
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7423283   -0.7679323   -0.7167243
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2196123   -1.2608853   -1.1783394
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1551820   -1.2728984   -1.0374655
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0859715   -0.0613794    0.2333224
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1905891   -1.3084276   -1.0727506
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5342241   -0.6451165   -0.4233318
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3046429   -1.4135547   -1.1957310
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0498419   -1.1750104   -0.9246734
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4223508   -1.5654032   -1.2792984
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.1707373   -1.3023712   -1.0391035
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -1.7873630   -1.9021295   -1.6725965
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -1.4274196   -1.6382670   -1.2165722
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.2781121   -1.3694457   -1.1867786
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3447001   -1.4316348   -1.2577653
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0728671   -1.1465641   -0.9991701
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1560014   -1.2261266   -1.0858763
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5424220   -0.5912180   -0.4936261
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8918017   -0.9392551   -0.8443483
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.2753093   -1.3514861   -1.1991326
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.7090230   -1.8439050   -1.5741410
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1076416    0.0130507    0.2022324
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8157359   -0.8414876   -0.7899842
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.7950277   -1.8646284   -1.7254271
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9241887   -0.9514678   -0.8969095
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.0928731   -1.1347142   -1.0510321
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1472030   -1.1699352   -1.1244707
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2464966   -1.2832103   -1.2097829
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9292786   -2.0574012   -1.8011560
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0122813   -0.1599736    0.1845361
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8684081   -1.9942750   -1.7425412
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2990889   -1.4193577   -1.1788201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6477215   -1.7833702   -1.5120729
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5559249   -2.6552739   -2.4565759
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7639600   -1.8601530   -1.6677669
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -2.5941727   -2.7436756   -2.4446699
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.1580827   -2.2606216   -2.0555438
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.5877105   -1.6705437   -1.5048773
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4121200   -1.4955578   -1.3286822
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5730887   -1.6234321   -1.5227452
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8435238   -1.9304004   -1.7566473
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -2.4877155   -2.6168325   -2.3585986
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1311901   -0.4268581    0.1644779
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.5460133   -1.6038691   -1.4881575
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9946835   -3.0601854   -2.9291817
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.0741479   -2.1071054   -2.0411904
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.3841755   -2.4295300   -2.3388211
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8861485   -1.9671802   -1.8051169
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.8818345   -1.9108126   -1.8528564
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7182341   -1.7544244   -1.6820437


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.2442208   -0.1059957    0.5944372
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                  0.1195000   -0.9111978    1.1501978
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                  0.3161525   -0.7121101    1.3444150
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.8962311    0.2937470    1.4987152
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.2653233   -0.3866031    0.9172497
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  1.5464973    1.2299106    1.8630839
Birth       ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                  0.5992927   -0.1200788    1.3186641
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0431181   -0.1834540    0.0972179
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.2274431    0.0243975    0.4304886
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0405974   -0.2403434    0.1591485
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.1399008   -0.0247559    0.3045576
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.1878984    0.0051266    0.3706702
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                  1.0559989    0.8805416    1.2314563
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.6968364    0.6377448    0.7559281
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                  0.6717440    0.5022453    0.8412427
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                  0.2458597    0.1746033    0.3171161
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.4670138    0.3574165    0.5766112
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0013057   -0.0602145    0.0628259
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.1159493   -0.0483377    0.2802363
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.1556247   -0.4991657    0.1879163
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.2078051   -0.6040015    0.1883913
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0597216   -0.2788205    0.3982637
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.2510626   -0.5879761    0.0858509
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.3858966   -0.1685922    0.9403853
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.1325094   -0.3778205    0.6428392
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1266842   -0.4778623    0.2244939
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.1001906   -0.4132253    0.2128440
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.0164409   -0.3464736    0.3135919
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.1864155   -0.7759245    0.4030934
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.2821974   -0.5069783   -0.0574165
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.3830315   -0.7048827   -0.0611802
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0554360   -0.2684826    0.1576105
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1455931   -0.3402351    0.0490488
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0702712   -0.2358166    0.0952742
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0693524   -0.1347266    0.2734314
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0516138   -0.1793708    0.0761432
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -1.4837059   -1.9796326   -0.9877792
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0065194   -0.2050802    0.1920413
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                  0.0170612   -0.7836369    0.8177593
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0437640   -0.0926121    0.1801401
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.4664204   -0.5398490   -0.3929918
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.2060933    0.0370142    0.3751725
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0241912   -0.1008722    0.0524898
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0426026   -0.0780512    0.1632563
6 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         1                    0                 -0.8411952   -1.6207568   -0.0616335
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0147797   -0.0494620    0.0790214
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0678271   -0.1956046    0.0599505
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.1337912   -0.1961926    0.4637751
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.6266126   -1.3179678    0.0647427
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.1868243   -0.1845843    0.5582329
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.0472395   -0.4078173    0.5022963
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.3348975   -0.4623110    1.1321061
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0138307   -0.2321584    0.2598198
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.1453628   -0.3567240    0.0659984
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.1946168   -0.6047446    0.2155110
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.1019785   -0.1314672    0.3354241
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0853488   -0.2798269    0.1091294
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0252207   -0.2161250    0.1656836
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.1274435   -0.2515483   -0.0033387
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0042797   -0.2240435    0.2326028
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  0.0959147   -0.5004382    0.6922676
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.2282960   -0.6576383    0.2010462
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.1767429   -0.3677017    0.0142159
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.2373044    0.0541513    0.4204575
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  0.0132780   -0.0791001    0.1056560
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0948796   -0.0327462    0.2225054
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.9508871   -1.6884523   -0.2133219
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0198813   -0.0607203    0.1004829
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0606331   -0.1743456    0.0530794


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0316811   -0.0293291    0.0926913
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0132778   -0.1017806    0.1283361
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                 0.0069332   -0.0194696    0.0333360
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0927883    0.0149183    0.1706582
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0302844   -0.1367061    0.0761374
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.4825002    0.3602197    0.6047806
Birth       ki1000109-EE               PAKISTAN                       0                    NA                 0.0910331   -0.0104298    0.1924961
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0048422   -0.0161445    0.0064600
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0701290    0.0085099    0.1317481
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0023892   -0.0402912    0.0450696
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0456416    0.0035542    0.0877290
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0415417    0.0035801    0.0795032
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 0.2459254    0.1439286    0.3479221
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1193152    0.1084359    0.1301945
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1765266    0.1274440    0.2256091
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0460569    0.0330198    0.0590940
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0729067    0.0545045    0.0913089
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0004524   -0.0074878    0.0065829
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0086232   -0.0077930    0.0250393
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0236993   -0.0829167    0.0355180
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0073097   -0.0222316    0.0076121
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0005197   -0.0627913    0.0617520
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0405233   -0.0873584    0.0063119
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0072537   -0.0079770    0.0224844
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0024506   -0.0320361    0.0369373
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0460024   -0.1347993    0.0427946
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0389197   -0.1311550    0.0533155
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0047847   -0.0360833    0.0456527
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0298601   -0.1374829    0.0777627
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0296181   -0.0626660    0.0034298
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0685559   -0.1271376   -0.0099741
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0018048   -0.0609151    0.0573056
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0273387   -0.0677290    0.0130516
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0141973   -0.0567781    0.0283835
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0044578   -0.0072417    0.0161574
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0093171   -0.0333258    0.0146916
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0297734   -0.0564518   -0.0030950
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0012303   -0.0407621    0.0383016
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0131070   -0.0545094    0.0282954
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0056391   -0.0199550    0.0312331
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0699870   -0.0817343   -0.0582396
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0404057    0.0071207    0.0736907
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0040961   -0.0175945    0.0094023
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0082595   -0.0104446    0.0269636
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0097087   -0.0274398    0.0080223
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0014498   -0.0052481    0.0081477
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0055848   -0.0168445    0.0056749
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0075379   -0.0490736    0.0641494
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0234980   -0.0553499    0.0083539
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0368623   -0.0313449    0.1050696
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0031776   -0.0509913    0.0573465
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0209769   -0.0257004    0.0676541
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0112869   -0.0498607    0.0724345
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0495247   -0.1127773    0.0137279
24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0021872   -0.0671548    0.0715292
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0332336   -0.0318531    0.0983202
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0138504   -0.0539757    0.0262750
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0064067   -0.0582132    0.0453997
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0239998   -0.0481359    0.0001364
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0014854   -0.0462604    0.0432896
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0063693   -0.0434464    0.0307078
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0567802   -0.1536794    0.0401190
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0201049   -0.0408253    0.0006156
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0352252    0.0081824    0.0622680
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0022554   -0.0126097    0.0171204
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0147992   -0.0045912    0.0341896
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0112066   -0.0304329    0.0080197
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0020547   -0.0068515    0.0109609
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0059610   -0.0155737    0.0036517
