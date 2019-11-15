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

**Outcome Variable:** whz

## Predictor Variables

**Intervention Variable:** enstunt

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

agecat      studyid                    country                        enstunt    n_cell       n
----------  -------------------------  -----------------------------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             187     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              28     215
Birth       ki0047075b-MAL-ED          BRAZIL                         0              56      62
Birth       ki0047075b-MAL-ED          BRAZIL                         1               6      62
Birth       ki0047075b-MAL-ED          INDIA                          0              37      45
Birth       ki0047075b-MAL-ED          INDIA                          1               8      45
Birth       ki0047075b-MAL-ED          NEPAL                          0              25      26
Birth       ki0047075b-MAL-ED          NEPAL                          1               1      26
Birth       ki0047075b-MAL-ED          PERU                           0             207     228
Birth       ki0047075b-MAL-ED          PERU                           1              21     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             112     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1               8     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             102     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              13     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              74      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              12      86
Birth       ki1000108-IRC              INDIA                          0             318     343
Birth       ki1000108-IRC              INDIA                          1              25     343
Birth       ki1000109-EE               PAKISTAN                       0             137     177
Birth       ki1000109-EE               PAKISTAN                       1              40     177
Birth       ki1000109-ResPak           PAKISTAN                       0              28      38
Birth       ki1000109-ResPak           PAKISTAN                       1              10      38
Birth       ki1000304b-SAS-CompFeed    INDIA                          0             901    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          1             202    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     0             506     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              69     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     0             491     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              41     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             625     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1              82     707
Birth       ki1101329-Keneba           GAMBIA                         0            1425    1466
Birth       ki1101329-Keneba           GAMBIA                         1              41    1466
Birth       ki1113344-GMS-Nepal        NEPAL                          0             570     641
Birth       ki1113344-GMS-Nepal        NEPAL                          1              71     641
Birth       ki1114097-CMIN             BANGLADESH                     0              17      19
Birth       ki1114097-CMIN             BANGLADESH                     1               2      19
Birth       ki1114097-CONTENT          PERU                           0               2       2
Birth       ki1114097-CONTENT          PERU                           1               0       2
Birth       ki1119695-PROBIT           BELARUS                        0           13804   13830
Birth       ki1119695-PROBIT           BELARUS                        1              26   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0           12227   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1             690   12917
Birth       ki1135781-COHORTS          GUATEMALA                      0             732     756
Birth       ki1135781-COHORTS          GUATEMALA                      1              24     756
Birth       ki1135781-COHORTS          INDIA                          0            5813    6193
Birth       ki1135781-COHORTS          INDIA                          1             380    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    0            2813    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    1              86    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0           15027   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            2987   18014
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0            1963    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             433    2396
6 months    ki0047075b-MAL-ED          BANGLADESH                     0             202     241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1              39     241
6 months    ki0047075b-MAL-ED          BRAZIL                         0             184     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1              25     209
6 months    ki0047075b-MAL-ED          INDIA                          0             198     236
6 months    ki0047075b-MAL-ED          INDIA                          1              38     236
6 months    ki0047075b-MAL-ED          NEPAL                          0             208     236
6 months    ki0047075b-MAL-ED          NEPAL                          1              28     236
6 months    ki0047075b-MAL-ED          PERU                           0             239     273
6 months    ki0047075b-MAL-ED          PERU                           1              34     273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0             227     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1              27     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             208     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              39     247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0             292     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              76     368
6 months    ki1000108-IRC              INDIA                          0             356     408
6 months    ki1000108-IRC              INDIA                          1              52     408
6 months    ki1000109-EE               PAKISTAN                       0             209     375
6 months    ki1000109-EE               PAKISTAN                       1             166     375
6 months    ki1000109-ResPak           PAKISTAN                       0             173     239
6 months    ki1000109-ResPak           PAKISTAN                       1              66     239
6 months    ki1000304b-SAS-CompFeed    INDIA                          0             969    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1             365    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             232     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             148     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0             452     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              85     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             542     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              61     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             613     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             102     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1890    2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             138    2028
6 months    ki1101329-Keneba           GAMBIA                         0            1893    2089
6 months    ki1101329-Keneba           GAMBIA                         1             196    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0             228     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              71     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0             473     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1              91     564
6 months    ki1114097-CMIN             BANGLADESH                     0             151     243
6 months    ki1114097-CMIN             BANGLADESH                     1              92     243
6 months    ki1114097-CONTENT          PERU                           0             197     215
6 months    ki1114097-CONTENT          PERU                           1              18     215
6 months    ki1119695-PROBIT           BELARUS                        0           15628   15758
6 months    ki1119695-PROBIT           BELARUS                        1             130   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0            7632    8505
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             873    8505
6 months    ki1135781-COHORTS          GUATEMALA                      0             809     963
6 months    ki1135781-COHORTS          GUATEMALA                      1             154     963
6 months    ki1135781-COHORTS          INDIA                          0            6034    6850
6 months    ki1135781-COHORTS          INDIA                          1             816    6850
6 months    ki1135781-COHORTS          PHILIPPINES                    0            2549    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    1             157    2706
6 months    ki1148112-LCNI-5           MALAWI                         0             530     839
6 months    ki1148112-LCNI-5           MALAWI                         1             309     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0           11673   16784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            5111   16784
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0            3473    4833
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            1360    4833
24 months   ki0047075b-MAL-ED          BANGLADESH                     0             179     212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1              33     212
24 months   ki0047075b-MAL-ED          BRAZIL                         0             150     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1              19     169
24 months   ki0047075b-MAL-ED          INDIA                          0             191     227
24 months   ki0047075b-MAL-ED          INDIA                          1              36     227
24 months   ki0047075b-MAL-ED          NEPAL                          0             201     228
24 months   ki0047075b-MAL-ED          NEPAL                          1              27     228
24 months   ki0047075b-MAL-ED          PERU                           0             174     201
24 months   ki0047075b-MAL-ED          PERU                           1              27     201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0             214     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1              24     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             181     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              33     214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             295     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              77     372
24 months   ki1000108-IRC              INDIA                          0             358     409
24 months   ki1000108-IRC              INDIA                          1              51     409
24 months   ki1000109-EE               PAKISTAN                       0             100     168
24 months   ki1000109-EE               PAKISTAN                       1              68     168
24 months   ki1017093-NIH-Birth        BANGLADESH                     0             354     428
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              74     428
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             519     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              60     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             444     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              70     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6
24 months   ki1101329-Keneba           GAMBIA                         0            1550    1726
24 months   ki1101329-Keneba           GAMBIA                         1             176    1726
24 months   ki1113344-GMS-Nepal        NEPAL                          0             405     487
24 months   ki1113344-GMS-Nepal        NEPAL                          1              82     487
24 months   ki1114097-CMIN             BANGLADESH                     0             153     243
24 months   ki1114097-CMIN             BANGLADESH                     1              90     243
24 months   ki1114097-CONTENT          PERU                           0             147     164
24 months   ki1114097-CONTENT          PERU                           1              17     164
24 months   ki1119695-PROBIT           BELARUS                        0            3961    3972
24 months   ki1119695-PROBIT           BELARUS                        1              11    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0             331     433
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             102     433
24 months   ki1135781-COHORTS          GUATEMALA                      0             743    1082
24 months   ki1135781-COHORTS          GUATEMALA                      1             339    1082
24 months   ki1135781-COHORTS          INDIA                          0            4654    5291
24 months   ki1135781-COHORTS          INDIA                          1             637    5291
24 months   ki1135781-COHORTS          PHILIPPINES                    0            2311    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    1             138    2449
24 months   ki1148112-LCNI-5           MALAWI                         0             365     563
24 months   ki1148112-LCNI-5           MALAWI                         1             198     563
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0            5914    8603
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            2689    8603
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0            3380    4735
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            1355    4735


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/13623b1c-d8f9-4724-9428-7844a08e4a1a/5bc546af-4fc5-4a5e-8c1b-4c973b09fcee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/13623b1c-d8f9-4724-9428-7844a08e4a1a/5bc546af-4fc5-4a5e-8c1b-4c973b09fcee/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/13623b1c-d8f9-4724-9428-7844a08e4a1a/5bc546af-4fc5-4a5e-8c1b-4c973b09fcee/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.9965607   -1.1487271   -0.8443943
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.3283655   -0.7335956    0.0768646
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.3380357    0.0083857    0.6676857
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                 1.0083333    0.1448999    1.8717667
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.9356757   -1.2327587   -0.6385926
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -0.9175000   -1.6199423   -0.2150577
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0188740   -0.1480635    0.1103156
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -0.3214249   -0.8010514    0.1582016
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.2412500   -0.4566344   -0.0258656
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.4887500   -0.4348184    1.4123184
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7316608    0.5398016    0.9235200
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.9767962   -0.4755510    2.4291434
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.5020384   -0.7887261   -0.2153506
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.1425482   -1.1091807    1.3942771
Birth       ki1000108-IRC              INDIA                          0                    NA                -1.1108954   -1.3020363   -0.9197544
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.2446413   -0.4675275    0.9568101
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.3991292   -0.6081210   -0.1901374
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -0.1045297   -0.5369064    0.3278470
Birth       ki1000109-ResPak           PAKISTAN                       0                    NA                -0.3333486   -0.8196518    0.1529546
Birth       ki1000109-ResPak           PAKISTAN                       1                    NA                -0.3515999   -0.9637425    0.2605427
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.6916348   -0.8421737   -0.5410959
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.5654183   -0.9273312   -0.2035054
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -1.3481286   -1.4480662   -1.2481909
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -1.4527994   -1.7425242   -1.1630746
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.2757826   -1.3564567   -1.1951084
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.5520513   -1.7870547   -1.3170479
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.2845849   -1.3740824   -1.1950874
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.8910698   -1.1260636   -0.6560761
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                -1.2666115   -1.3285979   -1.2046251
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                 0.1698965   -0.3377314    0.6775244
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1411236   -1.2332058   -1.0490413
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.9241679   -1.2149958   -0.6333399
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -1.1480824   -1.3621423   -0.9340226
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 0.5667975    0.5336529    0.5999420
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.5544051   -0.5805177   -0.5282924
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1647935    0.0259796    0.3036073
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.0863317   -1.1885964   -0.9840670
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.1062676   -0.7558254    0.5432902
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -1.0022666   -1.0327179   -0.9718152
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.7012863   -0.8367753   -0.5657974
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.7573642   -0.8041921   -0.7105362
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.3118221   -0.6056042   -0.0180399
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.7934790   -0.8136355   -0.7733226
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6967379   -0.7375908   -0.6558850
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.6866215   -0.7443340   -0.6289090
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.6905013   -0.8120556   -0.5689470
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.1231400   -0.2673548    0.0210748
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.2421148   -0.5101641    0.0259344
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 1.0542336    0.8802573    1.2282098
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.2587729   -0.1913472    0.7088930
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.6864416   -0.8255318   -0.5473513
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.9182965   -1.2279257   -0.6086672
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.1492760    0.0089158    0.2896362
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.1386450   -0.5007324    0.2234425
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 1.0711340    0.9436772    1.1985908
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.9973026    0.5747825    1.4198228
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.4903801    0.3340070    0.6467531
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.9937686    0.4552084    1.5323288
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5324280    0.3893361    0.6755199
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5776351    0.2231818    0.9320885
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.4623092   -0.6329534   -0.2916650
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.5359806   -0.9118790   -0.1600821
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.6342112   -0.7725286   -0.4958938
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.3301696   -0.8200834    0.1597443
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.7601918   -0.9072058   -0.6131777
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -0.8021462   -0.9814593   -0.6228331
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0224832   -0.1813125    0.2262789
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.6567082   -1.0302588   -0.2831576
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.6082811   -0.7403123   -0.4762499
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.8164872   -1.0427338   -0.5902407
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.9355813   -1.0827749   -0.7883877
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -1.0958835   -1.2817280   -0.9100390
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.4307280   -0.5272604   -0.3341955
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.5368655   -0.7832722   -0.2904588
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1686493   -0.2552380   -0.0820607
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.4365680   -0.7197290   -0.1534071
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0535749   -0.0304332    0.1375830
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1142282   -0.3431460    0.1146896
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0821686    0.0276535    0.1366837
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0406439   -0.1713461    0.2526340
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.1791145   -0.2322960   -0.1259329
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.2716133   -0.4506817   -0.0925448
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0469209   -0.1715431    0.0777013
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.2033287   -0.4382759    0.0316185
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.6089471   -0.7029508   -0.5149434
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.5641570   -0.7841945   -0.3441195
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.5655755   -0.7414421   -0.3897088
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.5954968   -0.8507994   -0.3401941
6 months    ki1114097-CONTENT          PERU                           0                    NA                 1.0685943    0.9431776    1.1940109
6 months    ki1114097-CONTENT          PERU                           1                    NA                 0.9813754    0.6734979    1.2892528
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.5789699    0.5182062    0.6397336
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.6304751    0.5597574    0.7011928
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.3167129    0.2897172    0.3437087
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2564987    0.1737714    0.3392261
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.2307523    0.1537609    0.3077437
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0128325   -0.1744200    0.2000849
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.6478351   -0.6767092   -0.6189610
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -1.0133371   -1.1002478   -0.9264264
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.2828215   -0.3250854   -0.2405577
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.4452715   -0.6384084   -0.2521346
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                 0.5243117    0.4368526    0.6117708
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.3326807    0.2088209    0.4565405
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.5488308   -0.5715110   -0.5261505
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6973869   -0.7294948   -0.6652790
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3453551   -0.3891596   -0.3015506
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.4987042   -0.5702599   -0.4271485
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.7526033   -0.8894586   -0.6157479
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.1011190   -1.3376714   -0.8645666
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.4531510    0.2360881    0.6702139
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.5379514   -0.1644417    1.2403446
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.9208452   -1.0482315   -0.7934589
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.0231604   -1.2895761   -0.7567447
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.3479842   -0.4639401   -0.2320283
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.5004230   -0.9685087   -0.0323374
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1637682    0.0411208    0.2864156
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.2497306   -0.6883489    0.1888877
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.3990700    0.2736343    0.5245057
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.4367809   -0.0379073    0.9114690
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0922077   -0.0418404    0.2262559
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0857581   -0.2638949    0.4354110
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.4391347   -0.5542469   -0.3240225
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -1.0006703   -1.2310108   -0.7703298
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.7041728   -0.8023206   -0.6060250
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.9666275   -1.2150187   -0.7182363
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.8700301   -1.0505600   -0.6895002
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -1.1682750   -1.4162568   -0.9202933
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.8710053   -0.9767951   -0.7652155
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -1.0368199   -1.2842888   -0.7893509
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8592771   -0.9468058   -0.7717484
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.1663011   -1.4092465   -0.9233557
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.5466877   -0.6461942   -0.4471811
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.9957592   -1.2714310   -0.7200874
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.7865733   -0.8360596   -0.7370869
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.0559939   -1.2105378   -0.9014499
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1286779   -1.2275526   -1.0298031
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.1633584   -1.3661083   -0.9606085
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.7607195   -0.8942516   -0.6271874
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.9951354   -1.1913327   -0.7989380
24 months   ki1114097-CONTENT          PERU                           0                    NA                 0.6116828    0.4677667    0.7555988
24 months   ki1114097-CONTENT          PERU                           1                    NA                 0.1638133   -0.1942136    0.5218402
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.6864739    0.5735320    0.7994159
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.8890174    0.6745595    1.1034754
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.1904478   -1.3028146   -1.0780810
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.1710369   -1.3854908   -0.9565830
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1902646   -0.2534137   -0.1271155
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.4890258   -0.5878594   -0.3901923
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.5542839   -0.5840780   -0.5244898
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.9987375   -1.0771171   -0.9203579
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.5908154   -0.6283364   -0.5532944
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.9674302   -1.1484063   -0.7864542
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.1075123    0.0073554    0.2076693
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.3422500   -0.4832097   -0.2012903
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.1994793   -1.2262425   -1.1727161
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.5185047   -1.5587645   -1.4782450
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.1357015   -1.1725292   -1.0988737
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.4424781   -1.5031107   -1.3818454


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4029032    0.0896793    0.7161272
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9324444   -1.2067907   -0.6580982
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.7624348    0.5710709    0.9537986
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -0.3333051   -0.5209779   -0.1456323
Birth       ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.3663158   -0.7677415    0.0351099
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                -1.2349454   -1.2972413   -1.1726496
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5154897   -0.5413479   -0.4896314
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7778272   -0.7968313   -0.7588232
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1376763   -0.2664642   -0.0088885
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7079979   -0.8344175   -0.5815783
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1104308   -0.0208643    0.2417259
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0528816    0.9313005    1.1744626
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5421785    0.3900443    0.6943126
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5362213    0.4049390    0.6675036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5989297   -0.7344491   -0.4634104
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7747022   -0.8887874   -0.6606170
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.1641841   -0.3464247    0.0180565
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6657084   -0.8024377   -0.5289791
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.0121579   -1.1280429   -0.8962729
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4474038   -0.5378167   -0.3569909
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0809332    0.0282644    0.1336020
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1846038   -0.2354782   -0.1337293
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0840134   -0.1945572    0.0265305
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6038416   -0.6899448   -0.5177384
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.5780453   -0.7226627   -0.4334279
6 months    ki1114097-CONTENT          PERU                           NA                   NA                 1.0684318    0.9515274    1.1853362
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.5792439    0.5193388    0.6391490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3105514    0.2848767    0.3362262
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1940810    0.1226351    0.2655269
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6908803   -0.7184601   -0.6633005
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2938433   -0.3352064   -0.2524802
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                 0.4499404    0.3788501    0.5210308
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5935161   -0.6130518   -0.5739805
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8192925   -0.9412667   -0.6973182
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9516520   -1.0670654   -0.8362385
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3749123   -0.4886073   -0.2612173
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1111982   -0.0118399    0.2342362
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4090301    0.2879441    0.5301161
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0547975   -0.0703378    0.1799328
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7458150   -0.8368180   -0.6548120
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -1.0120238   -1.1588493   -0.8651984
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9115790   -1.0095022   -0.8136559
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.8099290   -0.8570608   -0.7627972
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1363107   -1.2252817   -1.0473398
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.8535391   -0.9644236   -0.7426546
24 months   ki1114097-CONTENT          PERU                           NA                   NA                 0.5668293    0.4302437    0.7034148
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                 0.6874295    0.5756922    0.7991668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1825404   -1.2814625   -1.0836183
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2815804   -0.3354498   -0.2277110
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.6073238   -0.6354743   -0.5791732
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6099592   -0.6467541   -0.5731643
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0477709   -0.1296526    0.0341109
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2978031   -1.3210763   -1.2745298
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2231088   -1.2549632   -1.1912543


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.6681952    0.2349459    1.1014444
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.6702976   -0.2539244    1.5945196
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                  0.0181757   -0.7445061    0.7808575
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                 -0.3025509   -0.7992018    0.1941000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.7300000   -0.2183507    1.6783507
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.2451354   -1.2198925    1.7101633
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.6445866   -0.6409561    1.9301292
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  1.3555366    0.6181095    2.0929638
Birth       ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                  0.2945995   -0.1869678    0.7761669
Birth       ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-ResPak           PAKISTAN                       1                    0                 -0.0182513   -0.8155480    0.7790454
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.1262165   -0.1446809    0.3971139
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.1046708   -0.4107924    0.2014508
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.2762687   -0.5247803   -0.0277572
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.3935151    0.1422058    0.6448244
Birth       ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                  1.4365080    0.9247089    1.9483071
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.2169557   -0.0878702    0.5217817
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                  1.7148799    1.4926616    1.9370982
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.7191985    0.5779778    0.8604193
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                  0.9800641    0.3220251    1.6381031
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                  0.3009802    0.1621855    0.4397750
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.4455421    0.1482871    0.7427971
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0967411    0.0538193    0.1396630
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0038798   -0.1374942    0.1297346
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.1189748   -0.4215160    0.1835664
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.7954607   -1.2797526   -0.3111687
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 -0.2318549   -0.5717976    0.1080878
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.2879209   -0.6757811    0.0999392
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.0738313   -0.5156796    0.3680169
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.5033886   -0.0572340    1.0640111
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0452071   -0.3372484    0.4276627
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.0736714   -0.4866895    0.3393468
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                  0.3040417   -0.2057378    0.8138211
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.0419545   -0.2726892    0.1887803
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.6791914   -1.1042465   -0.2541363
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.2082061   -0.3824643   -0.0339479
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.1603022   -0.3978256    0.0772212
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.1061375   -0.3713486    0.1590736
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.2679187   -0.5639409    0.0281035
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.1678031   -0.4116621    0.0760559
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0415247   -0.2608660    0.1778167
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0924988   -0.2791319    0.0941343
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.1564078   -0.4226346    0.1098190
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0447901   -0.1944741    0.2840542
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0299213   -0.3404174    0.2805747
6 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           1                    0                 -0.0872189   -0.4207669    0.2463291
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0515052   -0.0202913    0.1233018
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0602142   -0.1472419    0.0268135
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.2179198   -0.4198672   -0.0159724
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.3655020   -0.4570322   -0.2739717
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.1624499   -0.3602375    0.0353376
6 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         1                    0                 -0.1916310   -0.3440811   -0.0391809
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1485561   -0.1853180   -0.1117943
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1533491   -0.2368900   -0.0698082
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.3485157   -0.6233006   -0.0737308
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.0848004   -0.6508133    0.8204141
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.1023152   -0.3978817    0.1932514
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.1524388   -0.6355619    0.3306843
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.4134989   -0.8690845    0.0420868
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0377109   -0.4530447    0.5284664
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0064497   -0.3803544    0.3674551
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.5615356   -0.8189085   -0.3041628
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.2624547   -0.5300978    0.0051885
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.2982449   -0.6078190    0.0113293
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.1658145   -0.4353104    0.1036813
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.3070240   -0.5655842   -0.0484637
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.4490715   -0.7416965   -0.1564466
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.2694206   -0.4319157   -0.1069255
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0346805   -0.2602965    0.1909355
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.2344159   -0.4725586    0.0037268
24 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           1                    0                 -0.4478695   -0.8316894   -0.0640495
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.2025435   -0.0147180    0.4198049
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0194109   -0.2230907    0.2619125
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.2987612   -0.4163379   -0.1811846
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.4444535   -0.5281762   -0.3607309
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.3766148   -0.5614602   -0.1917695
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.4497623   -0.6217434   -0.2777812
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.3190254   -0.3658723   -0.2721786
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.3067766   -0.3772450   -0.2363083


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0547002   -0.0101371    0.1195376
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0648675   -0.0374695    0.1672045
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0032312   -0.1323722    0.1388347
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0331436   -0.0790618    0.0127747
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0486667   -0.0225203    0.1198536
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0307740   -0.0707918    0.1323397
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0372128   -0.1423439    0.2167694
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.1003123    0.0396716    0.1609530
Birth       ki1000109-EE               PAKISTAN                       0                    NA                 0.0658241   -0.0436342    0.1752825
Birth       ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0329672   -0.3131385    0.2472042
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0215895   -0.0290866    0.0722655
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0017932   -0.0380450    0.0344587
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0226761   -0.0426297   -0.0027225
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0404336    0.0100219    0.0708452
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.0316661    0.0153459    0.0479862
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0246805   -0.0078258    0.0571868
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 0.0032191   -0.0018253    0.0082635
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0389154    0.0311769    0.0466539
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0241888    0.0037346    0.0446431
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0175209    0.0089379    0.0261039
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0146391    0.0052774    0.0240008
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0156518    0.0085329    0.0227707
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0020053   -0.0262164    0.0222057
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0145364   -0.0639721    0.0348994
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0821562   -0.1457146   -0.0185978
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0215563   -0.0771935    0.0340809
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0388452   -0.0875628    0.0098725
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0182524   -0.0699670    0.0334621
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0517984   -0.0106211    0.1142180
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0037933   -0.0557453    0.0633319
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0403674   -0.1200976    0.0393627
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0352815   -0.0297316    0.1002946
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0145105   -0.1167436    0.0877227
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.1866673   -0.3086806   -0.0646541
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0574273   -0.1025194   -0.0123351
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0765766   -0.1705280    0.0173748
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0166758   -0.0598274    0.0264757
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0304413   -0.0603449   -0.0005377
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0238127   -0.0583376    0.0107122
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0012354   -0.0160282    0.0135574
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0054893   -0.0227104    0.0117319
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0370925   -0.1010792    0.0268942
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0051055   -0.0331160    0.0433269
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0124698   -0.1293781    0.1044385
6 months    ki1114097-CONTENT          PERU                           0                    NA                -0.0001625   -0.0257088    0.0253838
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0002740   -0.0016701    0.0022181
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0061615   -0.0151200    0.0027970
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0366713   -0.0690156   -0.0043270
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0430452   -0.0542161   -0.0318743
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0110218   -0.0227247    0.0006812
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0743713   -0.1314120   -0.0173306
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0446854   -0.0559449   -0.0334258
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0444504   -0.0680609   -0.0208399
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0666892   -0.1142355   -0.0191429
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0094722   -0.0705923    0.0895367
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0308068   -0.0796629    0.0180493
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0269280   -0.0806668    0.0268107
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0525701   -0.1174666    0.0123264
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0099601   -0.0351504    0.0550707
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0374102   -0.0993185    0.0244981
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1180159   -0.1725484   -0.0634834
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0416422   -0.0764424   -0.0068420
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.1419937   -0.2696208   -0.0143666
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0405737   -0.0889732    0.0078258
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0335899   -0.0615288   -0.0056509
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0636625   -0.1052296   -0.0220955
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0233557   -0.0402123   -0.0064992
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0076329   -0.0455820    0.0303163
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0928196   -0.1818435   -0.0037957
24 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0448535   -0.0904606    0.0007536
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0009556   -0.0037972    0.0057084
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0079074   -0.0489235    0.0647382
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0913158   -0.1290071   -0.0536245
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.0530398   -0.0637916   -0.0422880
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0191438   -0.0295146   -0.0087730
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.1552832   -0.2182307   -0.0923357
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0983238   -0.1132627   -0.0833849
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0874073   -0.1081014   -0.0667132
