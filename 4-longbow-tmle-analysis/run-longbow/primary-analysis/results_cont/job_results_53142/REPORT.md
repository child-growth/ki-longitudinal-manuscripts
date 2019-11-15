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
Birth       ki1101329-Keneba           GAMBIA                         0           1102    1488
Birth       ki1101329-Keneba           GAMBIA                         1            386    1488
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0          16041   18062
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1           2021   18062
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0          12724   14244
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1           1520   14244
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0           6422    7242
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            820    7242
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
![](/tmp/aed7133d-cf74-4c3f-8d12-7e506841b7da/c9ad79a5-b085-4de5-ab74-f77097cfd774/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/aed7133d-cf74-4c3f-8d12-7e506841b7da/c9ad79a5-b085-4de5-ab74-f77097cfd774/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/aed7133d-cf74-4c3f-8d12-7e506841b7da/c9ad79a5-b085-4de5-ab74-f77097cfd774/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.0024695   -1.1303846   -0.8745544
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.8446263   -1.1696023   -0.5196504
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -1.0995000   -1.3601155   -0.8388845
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -0.9800000   -1.9772048    0.0172048
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.8421525   -0.9539315   -0.7303735
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -0.5260000   -1.5481689    0.4961689
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.6582135   -0.8245828   -0.4918443
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0832434   -0.6898941    0.5234073
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.7822522   -0.9730459   -0.5914584
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.8898465   -1.5083881   -0.2713049
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.5921495   -0.7130519   -0.4712471
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.9834321    0.6873056    1.2795586
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -1.3376778   -1.4787505   -1.1966050
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -0.9871659   -1.7241322   -0.2501996
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -1.1592754   -1.2085888   -1.1099620
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.2023935   -1.3506267   -1.0541603
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.8865691   -0.9722323   -0.8009060
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.6604646   -0.8438805   -0.4770487
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8611239   -0.9403614   -0.7818864
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.9022861   -1.0937958   -0.7107763
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.8986769   -0.9741519   -0.8232019
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.7750728   -0.9193610   -0.6307846
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                -0.0589031   -0.1166421   -0.0011641
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 0.6981187    0.5701668    0.8260706
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.9536947   -1.0302678   -0.8771216
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.7535879   -0.9199684   -0.5872074
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 1.0892048    0.9816695    1.1967402
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 2.2122435    2.0337527    2.3907343
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.4608166   -0.4784238   -0.4432095
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2381495    0.1818799    0.2944192
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0442324   -0.0448732    0.1333379
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.7254630    0.5803132    0.8706129
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.5532404   -0.5796952   -0.5267855
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.3064276   -0.3721124   -0.2407429
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.2222431   -0.2585462   -0.1859399
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2471300    0.1431207    0.3511394
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.1891464   -1.2039159   -1.1743769
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.0947723   -1.1431197   -1.0464248
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.2287258   -1.2702258   -1.1872258
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.1414115   -1.3023002   -0.9805228
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.1311372   -1.2601753   -1.0020991
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.1814713   -1.4820064   -0.8809361
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0897049   -0.0622819    0.2416917
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.1292857   -0.4801482    0.2215768
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -1.1876395   -1.3151040   -1.0601749
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.1630954   -1.4688041   -0.8573867
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.4985279   -0.6174150   -0.3796409
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.7395922   -1.0560292   -0.4231553
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -1.3082471   -1.4186449   -1.1978493
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.8746667   -1.3965179   -0.3528155
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.0531032   -1.1830614   -0.9231450
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.9665890   -1.5634498   -0.3697282
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.3879559   -1.5481670   -1.2277448
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.5388048   -1.8631920   -1.2144175
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.1336841   -1.2838469   -0.9835214
6 months    ki1000108-IRC              INDIA                          1                    NA                -1.2635966   -1.5305213   -0.9966719
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -1.7841224   -1.9083004   -1.6599443
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -1.7496263   -2.0552836   -1.4439691
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -1.3969467   -1.6261392   -1.1677543
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -1.5488431   -2.1008415   -0.9968447
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -1.2484940   -1.3405162   -1.1564718
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -1.5306914   -1.7706511   -1.2907317
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -1.8311488   -1.9557939   -1.7065037
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -2.1621585   -2.4574923   -1.8668247
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -1.3422265   -1.4421193   -1.2423336
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -1.3920289   -1.5824386   -1.2016193
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.0455520   -1.1277719   -0.9633321
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.1972083   -1.3789305   -1.0154860
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.1437004   -1.2233173   -1.0640835
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.2312730   -1.3790536   -1.0834924
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5464152   -0.5969160   -0.4959144
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.4973930   -0.6959648   -0.2988212
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.8824016   -0.9342226   -0.8305806
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.9266209   -1.0438046   -0.8094371
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.5321274   -1.6425348   -1.4217201
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -3.0158333   -3.4993139   -2.5323527
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.2737119   -1.3586958   -1.1887280
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.2863351   -1.4648528   -1.1078174
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -1.6974955   -1.8345267   -1.5604643
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -1.8811245   -2.6637392   -1.0985098
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1005582   -0.0018801    0.2029965
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.1505303    0.0195400    0.2815207
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.7453993   -0.7730147   -0.7177839
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.2177535   -1.2855170   -1.1499900
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.8345034   -1.9129362   -1.7560706
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -1.6351814   -1.7834934   -1.4868695
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.9199649   -0.9493581   -0.8905718
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.9436819   -1.0161887   -0.8711752
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -1.1001868   -1.1450560   -1.0553175
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -1.0617072   -1.1746969   -0.9487176
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -1.6504660   -1.7195234   -1.5814086
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -2.6484828   -3.3793587   -1.9176070
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.1276510   -1.1507127   -1.1045894
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.1047588   -1.1693168   -1.0402007
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.2409476   -1.2791845   -1.2027107
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.3008050   -1.4270090   -1.1746010
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.9319924   -2.0754400   -1.7885449
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.8087449   -2.1076682   -1.5098216
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0348377   -0.1411854    0.2108607
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.5908333   -1.2594074    0.0777407
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -1.9004047   -2.0352954   -1.7655139
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.7843424   -2.1130323   -1.4556525
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -1.3031639   -1.4305083   -1.1758194
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.0422474   -1.4287285   -0.6557663
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.6629077   -1.7998935   -1.5259220
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.3738114   -2.3149250   -0.4326977
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.5628709   -2.6738270   -2.4519148
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.5239888   -2.7405073   -2.3074704
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.7169135   -1.8317221   -1.6021048
24 months   ki1000108-IRC              INDIA                          1                    NA                -1.8883921   -2.0658478   -1.7109364
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -2.5919607   -2.7556076   -2.4283139
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -2.7316408   -3.1081787   -2.3551029
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -2.1857639   -2.3065459   -2.0649818
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -2.0943982   -2.2892990   -1.8994973
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.5779468   -1.6736761   -1.4822174
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.6400242   -1.8127704   -1.4672780
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.4050941   -1.5019526   -1.3082355
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.4418126   -1.6085018   -1.2751235
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -1.5492279   -1.6054115   -1.4930444
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.6707371   -1.7814855   -1.5599886
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.8429149   -1.9388561   -1.7469737
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.8246301   -2.0302265   -1.6190336
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -2.4826987   -2.6153035   -2.3500939
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -2.7260177   -3.3422685   -2.1097669
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0642849   -0.3936161    0.2650462
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.3101474   -0.6771876    0.0568927
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.5241967   -1.5851143   -1.4632790
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.7189558   -1.9057065   -1.5322050
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -3.0299189   -3.1010896   -2.9587482
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.7904938   -2.9527145   -2.6282731
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -2.0758174   -2.1110765   -2.0405584
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -2.0654043   -2.1516375   -1.9791711
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -2.4044290   -2.4534053   -2.3554528
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -2.2791293   -2.3995035   -2.1587552
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -1.8751810   -1.9560548   -1.7943072
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -2.7564231   -3.6125200   -1.9003261
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.8798671   -1.9105136   -1.8492206
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.8582453   -1.9323079   -1.7841828
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.7119098   -1.7497653   -1.6740543
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.7705511   -1.8801122   -1.6609901


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
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.1338508    0.0777935    0.1899081
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.9117209   -0.9811840   -0.8422578
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3292725    1.1705582    1.4879867
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.3412145   -0.3591726   -0.3232564
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.2220341    0.1435838    0.3004845
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.5071369   -0.5319444   -0.4823294
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.1490962   -0.1843045   -0.1138879
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1782283   -1.1929469   -1.1635098
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2196123   -1.2608853   -1.1783394
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1545706   -1.2720635   -1.0370777
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0820017   -0.0652646    0.2292679
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1907471   -1.3084496   -1.0730447
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5356897   -0.6466309   -0.4247484
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3000971   -1.4087542   -1.1914400
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0492424   -1.1743146   -0.9241702
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1254416   -1.1482406   -1.1026426
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2464966   -1.2832103   -1.2097829
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9287562   -2.0568859   -1.8006265
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0113750   -0.1608859    0.1836359
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8697758   -1.9956076   -1.7439440
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2990889   -1.4193577   -1.1788201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6435830   -1.7787856   -1.5083803
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.8772038   -1.9062064   -1.8482013
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7182341   -1.7544244   -1.6820437


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.1578432   -0.1921190    0.5078054
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                  0.1195000   -0.9111978    1.1501978
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                  0.3161525   -0.7121101    1.3444150
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.5749701   -0.0570727    1.2070129
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1075943   -0.7563812    0.5411925
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  1.5755816    1.2550659    1.8960973
Birth       ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                  0.3505118   -0.4019482    1.1029719
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.0431181   -0.1834540    0.0972179
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.2261045    0.0235646    0.4286444
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0411622   -0.2485392    0.1662149
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.1236041   -0.0394439    0.2866521
Birth       ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                  0.7570218    0.6165641    0.8974796
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.2001068    0.0172015    0.3830122
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                  1.1230387    0.9357099    1.3103675
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.6989662    0.6400314    0.7579010
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                  0.6812307    0.5110381    0.8514232
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                  0.2468127    0.1760631    0.3175623
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.4693731    0.3594125    0.5793336
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0943741    0.0453989    0.1433494
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  0.0873143   -0.0769478    0.2515764
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0503341   -0.3790991    0.2784310
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.2189906   -0.6013575    0.1633763
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                  0.0245440   -0.3069650    0.3560531
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.2410643   -0.5788496    0.0967209
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                  0.4335805   -0.0998203    0.9669812
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0865142   -0.5241658    0.6971942
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1508488   -0.5139074    0.2122097
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.1299125   -0.4358941    0.1760691
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                  0.0344960   -0.2953565    0.3643485
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.1518964   -0.7502316    0.4464388
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.2821974   -0.5069783   -0.0574165
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.3310097   -0.6519391   -0.0100803
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0498025   -0.2656425    0.1660376
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.1516562   -0.3529081    0.0495956
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0875726   -0.2554498    0.0803045
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0490222   -0.1559623    0.2540066
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0442193   -0.1721112    0.0836726
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -1.4837059   -1.9796326   -0.9877792
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0126232   -0.2103133    0.1850669
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.1836290   -0.9787206    0.6114626
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0499721   -0.0789040    0.1788483
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.4723542   -0.5454176   -0.3992909
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  0.1993220    0.0314515    0.3671925
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.0237170   -0.1017589    0.0543250
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.0384795   -0.0827766    0.1597357
6 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         1                    0                 -0.9980168   -1.7322935   -0.2637402
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0228923   -0.0416712    0.0874557
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0598574   -0.1904796    0.0707647
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.1232475   -0.2051219    0.4516169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.6256710   -1.3170286    0.0656866
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  0.1160623   -0.2381012    0.4702257
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                  0.2609165   -0.1456027    0.6674357
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.2890963   -0.6619988    1.2401914
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.0388820   -0.2042420    0.2820060
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.1714786   -0.3830521    0.0400950
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.1396801   -0.5524213    0.2730611
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  0.0913657   -0.1378454    0.3205768
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.0620775   -0.2607207    0.1365658
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.0367186   -0.2293427    0.1559056
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.1215091   -0.2454045    0.0023863
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0182849   -0.2077834    0.2443531
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.2433190   -0.8737255    0.3870876
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.2458625   -0.6625271    0.1708021
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.1947591   -0.3912999    0.0017817
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  0.2394251    0.0628424    0.4160077
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  0.0104131   -0.0818862    0.1027124
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.1252997   -0.0046064    0.2552058
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.8812421   -1.7417681   -0.0207160
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0216218   -0.0563863    0.0996299
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0586414   -0.1730115    0.0557287


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0399114   -0.0193946    0.0992174
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0132778   -0.1017806    0.1283361
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                 0.0069332   -0.0194696    0.0333360
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0987920    0.0186563    0.1789278
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0371731   -0.1481338    0.0737875
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.4790451    0.3567452    0.6013450
Birth       ki1000109-EE               PAKISTAN                       0                    NA                 0.0993445   -0.0047023    0.2033912
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0048422   -0.0161445    0.0064600
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0709657    0.0095148    0.1324165
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0031352   -0.0390829    0.0453532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0499392    0.0072539    0.0926245
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.1927539    0.1533304    0.2321774
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0419738    0.0040882    0.0798595
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 0.2400676    0.1425713    0.3375640
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1196021    0.1087142    0.1304901
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1778017    0.1286003    0.2270032
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0461035    0.0331169    0.0590901
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0731468    0.0547072    0.0915865
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0109181    0.0054468    0.0163893
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0091134   -0.0072792    0.0255061
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0234334   -0.0808846    0.0340178
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0077032   -0.0222800    0.0068736
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0031077   -0.0643347    0.0581194
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0371617   -0.0835380    0.0092145
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0081500   -0.0069525    0.0232525
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0038608   -0.0312157    0.0389372
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0343949   -0.1240337    0.0552439
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0370532   -0.1274358    0.0533294
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0032407   -0.0443403    0.0378590
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0304729   -0.1383927    0.0774470
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0296181   -0.0626660    0.0034298
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0675354   -0.1276948   -0.0073761
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0024736   -0.0620439    0.0570967
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0273151   -0.0683305    0.0137003
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0123010   -0.0554858    0.0308837
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0039931   -0.0077410    0.0157273
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0094001   -0.0334949    0.0146947
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0297734   -0.0564518   -0.0030950
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0015974   -0.0412825    0.0380876
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0115275   -0.0530426    0.0299877
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0070834   -0.0184701    0.0326368
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0703366   -0.0820686   -0.0586046
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0394757    0.0061012    0.0728502
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0042237   -0.0177699    0.0093224
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0073136   -0.0114679    0.0260952
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0097247   -0.0273421    0.0078926
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0022095   -0.0045096    0.0089285
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0055490   -0.0167487    0.0056506
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0032362   -0.0535161    0.0599886
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0234627   -0.0552985    0.0083732
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0306289   -0.0366481    0.0979058
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0040750   -0.0502397    0.0583897
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0193247   -0.0273942    0.0660437
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0069459   -0.0546999    0.0685918
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0470465   -0.1099402    0.0158473
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0022120   -0.0722667    0.0678427
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0276812   -0.0371943    0.0925566
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0097638   -0.0504547    0.0309272
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0070259   -0.0597122    0.0456603
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0238607   -0.0479182    0.0001967
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0006089   -0.0448397    0.0436219
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0050168   -0.0417397    0.0317062
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0669051   -0.1459580    0.0121478
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0218166   -0.0427608   -0.0008725
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0352353    0.0085667    0.0619040
24 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0016695   -0.0131773    0.0165163
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0202535    0.0002605    0.0402465
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0109675   -0.0301983    0.0082633
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0026633   -0.0060840    0.0114106
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0063243   -0.0159335    0.0032849
