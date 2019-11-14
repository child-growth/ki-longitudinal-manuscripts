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
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity
* delta_impsan

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
Birth       ki1101329-Keneba           GAMBIA                         0              13      14
Birth       ki1101329-Keneba           GAMBIA                         1               1      14
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0           19230   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            2853   22083
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0           12290   16726
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            4436   16726
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0            6193    8538
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            2345    8538
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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/1a587e1d-3146-477b-83a1-150f7fb62c96/a75aceef-d060-454e-a845-28dba47c6f23/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/1a587e1d-3146-477b-83a1-150f7fb62c96/a75aceef-d060-454e-a845-28dba47c6f23/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/1a587e1d-3146-477b-83a1-150f7fb62c96/a75aceef-d060-454e-a845-28dba47c6f23/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.0000109   -1.1524118   -0.8476101
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.5141803   -0.9620065   -0.0663541
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.3380357    0.0083857    0.6676857
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                 1.0083333    0.1448999    1.8717667
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.9356757   -1.2327587   -0.6385926
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -0.9175000   -1.6199423   -0.2150577
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0208665   -0.1458799    0.1041468
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -0.3639505   -0.8038366    0.0759356
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.2412500   -0.4566344   -0.0258656
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.4887500   -0.4348184    1.4123184
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.7419345    0.5495166    0.9343524
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.8227519   -0.6837591    2.3292629
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.5005036   -0.7882008   -0.2128065
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0404174   -1.4074635    1.3266286
Birth       ki1000108-IRC              INDIA                          0                    NA                -1.1096812   -1.3008982   -0.9184642
Birth       ki1000108-IRC              INDIA                          1                    NA                 0.2613062   -0.3860050    0.9086174
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.3939402   -0.6025402   -0.1853403
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -0.0784329   -0.5075749    0.3507091
Birth       ki1000109-ResPak           PAKISTAN                       0                    NA                -0.3457294   -0.8346675    0.1432088
Birth       ki1000109-ResPak           PAKISTAN                       1                    NA                -0.1644664   -0.8662384    0.5373056
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.6916348   -0.8421737   -0.5410959
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.5654183   -0.9273312   -0.2035054
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -1.3487127   -1.4486900   -1.2487354
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -1.4293524   -1.7067868   -1.1519179
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.2756879   -1.3563976   -1.1949783
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.5104057   -1.7403953   -1.2804161
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.2841370   -1.3734983   -1.1947758
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.8844464   -1.1158610   -0.6530318
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1400360   -1.2321383   -1.0479337
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.9400489   -1.2388295   -0.6412684
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -1.1481160   -1.3622333   -0.9339986
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                 0.5398106    0.5086641    0.5709571
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.5546464   -0.5807510   -0.5285418
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.1636917    0.0248683    0.3025151
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.0866981   -1.1889236   -0.9844726
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.3493622   -0.9589602    0.2602358
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -1.0020879   -1.0325391   -0.9716368
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.6942549   -0.8293795   -0.5591302
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.7580765   -0.8048615   -0.7112914
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.3153284   -0.6115251   -0.0191317
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.7586167   -0.7771301   -0.7401033
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.6906122   -0.7342745   -0.6469500
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.6868529   -0.7444005   -0.6293054
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.6953131   -0.8152373   -0.5753890
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.1193972   -0.2642778    0.0254833
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.2000292   -0.4745240    0.0744655
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 1.0535983    0.8796100    1.2275865
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.3652927   -0.0723045    0.8028899
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.6874891   -0.8264412   -0.5485370
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -1.0151814   -1.3224688   -0.7078939
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.1478152    0.0070020    0.2886285
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.1572249   -0.5313269    0.2168771
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                 1.0718918    0.9444243    1.1993592
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                 0.9678658    0.5528932    1.3828385
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.4903108    0.3339025    0.6467190
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.9882309    0.4773794    1.4990825
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.5323094    0.3898126    0.6748061
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.5650233    0.2062968    0.9237498
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.4561783   -0.6283219   -0.2840346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.5662509   -0.9318836   -0.2006183
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.6386664   -0.7768047   -0.5005281
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.2785759   -0.7727681    0.2156162
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.7607798   -0.9073593   -0.6142003
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -0.7996355   -0.9804671   -0.6188040
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0194254   -0.1842451    0.2230959
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -0.6291419   -1.0022729   -0.2560109
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.6082811   -0.7403123   -0.4762499
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.8164872   -1.0427338   -0.5902407
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.9478423   -1.0948719   -0.8008127
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -1.1399192   -1.3276459   -0.9521925
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.4327339   -0.5292996   -0.3361682
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.5891313   -0.8338041   -0.3444585
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1681701   -0.2544149   -0.0819253
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.4743221   -0.7591282   -0.1895160
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0537906   -0.0304226    0.1380038
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1485264   -0.3804685    0.0834156
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0816877    0.0271594    0.1362160
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0361140   -0.1793416    0.2515696
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.1773469   -0.2305556   -0.1241382
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.2531946   -0.4270806   -0.0793086
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0468356   -0.1720514    0.0783803
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.2118317   -0.4552782    0.0316149
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.6089649   -0.7029625   -0.5149673
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.5564179   -0.7741431   -0.3386928
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.5707526   -0.7463232   -0.3951821
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.5912386   -0.8428626   -0.3396145
6 months    ki1114097-CONTENT          PERU                           0                    NA                 1.0697061    0.9444506    1.1949617
6 months    ki1114097-CONTENT          PERU                           1                    NA                 1.0089017    0.7115766    1.3062267
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.5789304    0.5181992    0.6396617
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.6298250    0.5516756    0.7079744
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.3167845    0.2897904    0.3437786
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.2572133    0.1744896    0.3399369
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.2254931    0.1483471    0.3026392
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                 0.0211706   -0.1650666    0.2074078
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.6479074   -0.6767862   -0.6190287
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -1.0136592   -1.1008512   -0.9264672
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.2824863   -0.3247287   -0.2402438
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.4830887   -0.6788108   -0.2873665
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                 0.5334271    0.4459208    0.6209334
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.3433127    0.2198247    0.4668006
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.5516807   -0.5739915   -0.5293699
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.7078513   -0.7421310   -0.6735717
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3454883   -0.3892871   -0.3016894
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.4998104   -0.5716872   -0.4279336
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.7557109   -0.8924953   -0.6189265
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -1.2533366   -1.4893173   -1.0173558
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.4454953    0.2274985    0.6634920
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.6334521   -0.1170645    1.3839688
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.9257973   -1.0534027   -0.7981918
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -1.0767582   -1.3517122   -0.8018042
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.3489478   -0.4650200   -0.2328756
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.5460355   -0.9867097   -0.1053612
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                 0.1711739    0.0478649    0.2944829
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.1928556   -0.5988456    0.2131343
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.4123096    0.2865811    0.5380381
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.4368495   -0.0879163    0.9616152
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0802137   -0.0529752    0.2134026
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2351880   -0.6034516    0.1330756
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.4424412   -0.5576006   -0.3272818
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.9924841   -1.2264897   -0.7584784
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.7002480   -0.7984603   -0.6020357
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.9445122   -1.1951805   -0.6938439
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.8925890   -1.0715276   -0.7136503
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -1.1818220   -1.4242505   -0.9393935
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.8686036   -0.9743545   -0.7628526
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -1.0927728   -1.3463713   -0.8391744
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.8557614   -0.9432032   -0.7683197
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.2450256   -1.4860049   -1.0040464
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.5418620   -0.6414364   -0.4422877
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -1.0166246   -1.3052016   -0.7280475
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.7865238   -0.8360536   -0.7369940
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -1.0484000   -1.2015677   -0.8952322
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1327393   -1.2316801   -1.0337986
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -1.2020294   -1.4057700   -0.9982887
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.7607524   -0.8942658   -0.6272390
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -1.0015738   -1.1968355   -0.8063121
24 months   ki1114097-CONTENT          PERU                           0                    NA                 0.6109446    0.4672295    0.7546597
24 months   ki1114097-CONTENT          PERU                           1                    NA                 0.1620911   -0.1991245    0.5233067
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.6864907    0.5735337    0.7994478
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                 0.8823971    0.6664524    1.0983417
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.1697683   -1.2824382   -1.0570984
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.1410371   -1.3504187   -0.9316554
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1892486   -0.2524633   -0.1260339
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -0.4893412   -0.5883233   -0.3903591
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.5541854   -0.5839697   -0.5244011
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -1.0001386   -1.0785584   -0.9217189
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.5913005   -0.6287993   -0.5538017
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -0.9468985   -1.1269316   -0.7668653
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                 0.1027387    0.0022179    0.2032595
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.3396389   -0.4800319   -0.1992458
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.2181491   -1.2444898   -1.1918084
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -1.5154726   -1.5589095   -1.4720358
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.1358281   -1.1727045   -1.0989518
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -1.4417597   -1.5021726   -1.3813467


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9412093   -1.0864308   -0.7959878
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
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                -1.1448633   -1.3544229   -0.9353037
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5154897   -0.5413479   -0.4896314
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611471
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7501567   -0.7680049   -0.7323085
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1383956   -0.2672708   -0.0095204
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.7082698   -0.8347304   -0.5818092
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1110452   -0.0202712    0.2423616
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0568987    0.9352990    1.1784983
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5427231    0.3906363    0.6948099
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5930207   -0.6125866   -0.5734549
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3898055   -0.4270507   -0.3525603
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8201887   -0.9423967   -0.6979806
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9522907   -1.0676596   -0.8369219
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3764474   -0.4898516   -0.2630431
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1204478    0.0005049    0.2403906
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4148529    0.2940577    0.5356481
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0539486   -0.0712465    0.1791437
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.2994214   -1.3227674   -1.2760754
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2231088   -1.2549632   -1.1912543


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                  0.4858306    0.0125092    0.9591521
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.6702976   -0.2539244    1.5945196
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                  0.0181757   -0.7445061    0.7808575
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                 -0.3430840   -0.8000217    0.1138538
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.7300000   -0.2183507    1.6783507
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0808174   -1.4415305    1.6031653
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  0.4600862   -0.9391344    1.8593068
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                  1.3709874    0.6958264    2.0461484
Birth       ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                  0.3155073   -0.1642817    0.7952963
Birth       ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-ResPak           PAKISTAN                       1                    0                  0.1812630   -0.6925184    1.0550443
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                  0.1262165   -0.1446809    0.3971139
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.0806397   -0.3749958    0.2137164
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.2347178   -0.4785401    0.0091045
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  0.3996906    0.1516962    0.6476850
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.1999871   -0.1123360    0.5123102
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                  1.6879265    1.4683302    1.9075229
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.7183381    0.5771046    0.8595717
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                  0.7373359    0.1188333    1.3558386
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                  0.3078331    0.1693940    0.4462722
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                  0.4427481    0.1431194    0.7423767
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  0.0680045    0.0234074    0.1126016
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.0084602   -0.1402916    0.1233713
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.0806320   -0.3927576    0.2314937
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.6883056   -1.1595696   -0.2170416
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 -0.3276923   -0.6666863    0.0113018
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.3050402   -0.7034136    0.0933333
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 -0.1040259   -0.5383860    0.3303342
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.4979202   -0.0363017    1.0321421
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  0.0327139   -0.3528591    0.4182869
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.1100727   -0.5149509    0.2948056
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                  0.3600905   -0.1535613    0.8737423
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -0.0388557   -0.2708474    0.1931360
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.6485673   -1.0741750   -0.2229596
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -0.2082061   -0.3824643   -0.0339479
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -0.1920769   -0.4310819    0.0469281
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.1563974   -0.4195561    0.1067613
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.3061520   -0.6034904   -0.0088136
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.2023170   -0.4495466    0.0449127
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.0455736   -0.2680942    0.1769469
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -0.0758477   -0.2575688    0.1058733
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -0.1649961   -0.4381490    0.1081568
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                  0.0525470   -0.1851577    0.2902516
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -0.0204859   -0.3276503    0.2866784
6 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           1                    0                 -0.0608045   -0.3842701    0.2626612
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                  0.0508946   -0.0284794    0.1302686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.0595712   -0.1465825    0.0274401
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.2043226   -0.4055847   -0.0030604
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -0.3657518   -0.4575489   -0.2739546
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.2006024   -0.4008241   -0.0003807
6 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         1                    0                 -0.1901145   -0.3416060   -0.0386229
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.1561706   -0.1949032   -0.1174381
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.1543221   -0.2381220   -0.0705222
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.4976257   -0.7718350   -0.2234164
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                  0.1879569   -0.5945427    0.9704564
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.1509609   -0.4545049    0.1525831
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.1970877   -0.6537507    0.2595753
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.3640295   -0.7879967    0.0599376
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                  0.0245399   -0.5161205    0.5652003
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.3154017   -0.7073502    0.0765468
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.5500429   -0.8106127   -0.2894730
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.2442642   -0.5140834    0.0255550
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.2892331   -0.5919599    0.0134938
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.2241693   -0.4979328    0.0495942
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.3892642   -0.6463076   -0.1322209
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.4747625   -0.7797250   -0.1698001
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.2618761   -0.4229953   -0.1007570
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.0692900   -0.2960307    0.1574507
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.2408214   -0.4769677   -0.0046751
24 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           1                    0                 -0.4488535   -0.8365496   -0.0611575
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                  0.1959063   -0.0206918    0.4125045
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  0.0287313   -0.2096074    0.2670699
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.3000927   -0.4176441   -0.1825412
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.4459532   -0.5297144   -0.3621921
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.3555980   -0.5395592   -0.1716369
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -0.4423776   -0.6142177   -0.2705375
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.2973235   -0.3465430   -0.2481040
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.3059315   -0.3761636   -0.2356994


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.0588016   -0.0045437    0.1221470
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0648675   -0.0374695    0.1672045
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0032312   -0.1323722    0.1388347
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.0311510   -0.0736155    0.0113135
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0486667   -0.0225203    0.1198536
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0205003   -0.0854768    0.1264774
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0356781   -0.1416596    0.2130158
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.0990981    0.0385678    0.1596284
Birth       ki1000109-EE               PAKISTAN                       0                    NA                 0.0606352   -0.0492995    0.1705698
Birth       ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0205864   -0.3075022    0.2663294
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0215895   -0.0290866    0.0722655
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0012090   -0.0377401    0.0353220
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0227707   -0.0429811   -0.0025604
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0399857    0.0098944    0.0700770
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0235929   -0.0088748    0.0560607
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 0.0032526   -0.0018519    0.0083571
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0391567    0.0314161    0.0468974
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0245553    0.0040565    0.0450540
Birth       ki1135781-COHORTS          INDIA                          0                    NA                 0.0173423    0.0087623    0.0259222
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0153514    0.0059372    0.0247656
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0084600    0.0027822    0.0141378
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0017739   -0.0258836    0.0223357
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0189983   -0.0700831    0.0320865
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0818758   -0.1453677   -0.0183838
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0207807   -0.0760034    0.0344421
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0367700   -0.0850938    0.0115537
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0149931   -0.0670972    0.0371110
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0524123   -0.0097900    0.1146147
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0039120   -0.0546075    0.0624314
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0464984   -0.1273253    0.0343286
6 months    ki1000108-IRC              INDIA                          0                    NA                 0.0397367   -0.0256181    0.1050914
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0139224   -0.1161596    0.0883148
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.1836095   -0.3063611   -0.0608579
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0574273   -0.1025194   -0.0123351
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.0643156   -0.1570374    0.0284063
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0146699   -0.0577391    0.0283994
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0309206   -0.0608816   -0.0009595
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0240283   -0.0592757    0.0112191
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0007545   -0.0154967    0.0139877
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0072569   -0.0244848    0.0099711
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.0371778   -0.1008211    0.0264655
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0051233   -0.0334254    0.0436720
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0072927   -0.1239003    0.1093150
6 months    ki1114097-CONTENT          PERU                           0                    NA                -0.0012744   -0.0266494    0.0241007
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0003134   -0.0016238    0.0022507
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0062330   -0.0151818    0.0027157
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0314121   -0.0637054    0.0008811
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.0429728   -0.0541375   -0.0318082
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0113570   -0.0229651    0.0002510
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.0834867   -0.1406352   -0.0263382
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0413401   -0.0516649   -0.0310152
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0443172   -0.0679061   -0.0207284
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0644778   -0.1113183   -0.0176372
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0137355   -0.0666048    0.0940758
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0264935   -0.0748210    0.0218341
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0274996   -0.0808076    0.0258084
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0507262   -0.1102633    0.0088110
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0025433   -0.0424567    0.0475433
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0262651   -0.0843739    0.0318437
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1147093   -0.1689628   -0.0604559
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0455670   -0.0802096   -0.0109245
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.1194349   -0.2462451    0.0073754
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.0429755   -0.0906600    0.0047090
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0371056   -0.0653684   -0.0088428
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.0684882   -0.1106906   -0.0262858
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0234052   -0.0400712   -0.0067391
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0035714   -0.0417639    0.0346211
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0927867   -0.1812808   -0.0042926
24 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0441154   -0.0897413    0.0015106
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0009388   -0.0038370    0.0057146
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0127721   -0.0687501    0.0432060
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0923318   -0.1300043   -0.0546594
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.0531384   -0.0638964   -0.0423804
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0186587   -0.0290615   -0.0082559
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.1505096   -0.2135566   -0.0874626
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.0812723   -0.0949393   -0.0676053
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0872806   -0.1079649   -0.0665964
