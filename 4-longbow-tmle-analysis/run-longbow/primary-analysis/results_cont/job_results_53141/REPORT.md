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
Birth       ki0047075b-MAL-ED          BANGLADESH                     0             187     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     1              44     231
Birth       ki0047075b-MAL-ED          BRAZIL                         0              56      65
Birth       ki0047075b-MAL-ED          BRAZIL                         1               9      65
Birth       ki0047075b-MAL-ED          INDIA                          0              37      47
Birth       ki0047075b-MAL-ED          INDIA                          1              10      47
Birth       ki0047075b-MAL-ED          NEPAL                          0              25      27
Birth       ki0047075b-MAL-ED          NEPAL                          1               2      27
Birth       ki0047075b-MAL-ED          PERU                           0             207     233
Birth       ki0047075b-MAL-ED          PERU                           1              26     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0             113     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1              10     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0             102     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1              23     125
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0              75      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1              17      92
Birth       ki1000108-IRC              INDIA                          0             343     388
Birth       ki1000108-IRC              INDIA                          1              45     388
Birth       ki1000109-EE               PAKISTAN                       0             140     240
Birth       ki1000109-EE               PAKISTAN                       1             100     240
Birth       ki1000109-ResPak           PAKISTAN                       0              28      42
Birth       ki1000109-ResPak           PAKISTAN                       1              14      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          0             903    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          1             349    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     0             511     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     1              97     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     0             491     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     1              48     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0             631     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1             101     732
Birth       ki1101329-Keneba           GAMBIA                         0            1460    1543
Birth       ki1101329-Keneba           GAMBIA                         1              83    1543
Birth       ki1113344-GMS-Nepal        NEPAL                          0             574     696
Birth       ki1113344-GMS-Nepal        NEPAL                          1             122     696
Birth       ki1114097-CMIN             BANGLADESH                     0              17      26
Birth       ki1114097-CMIN             BANGLADESH                     1               9      26
Birth       ki1114097-CONTENT          PERU                           0               2       2
Birth       ki1114097-CONTENT          PERU                           1               0       2
Birth       ki1119695-PROBIT           BELARUS                        0           13857   13890
Birth       ki1119695-PROBIT           BELARUS                        1              33   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0           12441   13875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1            1434   13875
Birth       ki1135781-COHORTS          GUATEMALA                      0             802     852
Birth       ki1135781-COHORTS          GUATEMALA                      1              50     852
Birth       ki1135781-COHORTS          INDIA                          0            5848    6640
Birth       ki1135781-COHORTS          INDIA                          1             792    6640
Birth       ki1135781-COHORTS          PHILIPPINES                    0            2863    3050
Birth       ki1135781-COHORTS          PHILIPPINES                    1             187    3050
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0           15068   22455
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            7387   22455
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0            1966    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1             857    2823
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0             294     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1              75     369
6 months    ki1000108-IRC              INDIA                          0             358     407
6 months    ki1000108-IRC              INDIA                          1              49     407
6 months    ki1000109-EE               PAKISTAN                       0             209     373
6 months    ki1000109-EE               PAKISTAN                       1             164     373
6 months    ki1000109-ResPak           PAKISTAN                       0             173     239
6 months    ki1000109-ResPak           PAKISTAN                       1              66     239
6 months    ki1000304b-SAS-CompFeed    INDIA                          0             972    1336
6 months    ki1000304b-SAS-CompFeed    INDIA                          1             364    1336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0             232     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1             148     380
6 months    ki1017093-NIH-Birth        BANGLADESH                     0             452     537
6 months    ki1017093-NIH-Birth        BANGLADESH                     1              85     537
6 months    ki1017093b-PROVIDE         BANGLADESH                     0             543     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     1              61     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0             613     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1             102     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0            1890    2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1             139    2029
6 months    ki1101329-Keneba           GAMBIA                         0            1892    2089
6 months    ki1101329-Keneba           GAMBIA                         1             197    2089
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0             228     299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1              71     299
6 months    ki1113344-GMS-Nepal        NEPAL                          0             473     564
6 months    ki1113344-GMS-Nepal        NEPAL                          1              91     564
6 months    ki1114097-CMIN             BANGLADESH                     0             151     243
6 months    ki1114097-CMIN             BANGLADESH                     1              92     243
6 months    ki1114097-CONTENT          PERU                           0             197     215
6 months    ki1114097-CONTENT          PERU                           1              18     215
6 months    ki1119695-PROBIT           BELARUS                        0           15632   15761
6 months    ki1119695-PROBIT           BELARUS                        1             129   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0            7795    8669
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1             874    8669
6 months    ki1135781-COHORTS          GUATEMALA                      0             809     961
6 months    ki1135781-COHORTS          GUATEMALA                      1             152     961
6 months    ki1135781-COHORTS          INDIA                          0            6048    6860
6 months    ki1135781-COHORTS          INDIA                          1             812    6860
6 months    ki1135781-COHORTS          PHILIPPINES                    0            2552    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    1             156    2708
6 months    ki1148112-LCNI-5           MALAWI                         0             530     839
6 months    ki1148112-LCNI-5           MALAWI                         1             309     839
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0           11707   16811
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            5104   16811
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0            3475    4831
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1            1356    4831
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
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0             294     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1              77     371
24 months   ki1000108-IRC              INDIA                          0             358     409
24 months   ki1000108-IRC              INDIA                          1              51     409
24 months   ki1000109-EE               PAKISTAN                       0             100     167
24 months   ki1000109-EE               PAKISTAN                       1              67     167
24 months   ki1017093-NIH-Birth        BANGLADESH                     0             355     429
24 months   ki1017093-NIH-Birth        BANGLADESH                     1              74     429
24 months   ki1017093b-PROVIDE         BANGLADESH                     0             518     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1              60     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0             444     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1              70     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0               6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0       6
24 months   ki1101329-Keneba           GAMBIA                         0            1549    1725
24 months   ki1101329-Keneba           GAMBIA                         1             176    1725
24 months   ki1113344-GMS-Nepal        NEPAL                          0             406     488
24 months   ki1113344-GMS-Nepal        NEPAL                          1              82     488
24 months   ki1114097-CMIN             BANGLADESH                     0             153     242
24 months   ki1114097-CMIN             BANGLADESH                     1              89     242
24 months   ki1114097-CONTENT          PERU                           0             147     164
24 months   ki1114097-CONTENT          PERU                           1              17     164
24 months   ki1119695-PROBIT           BELARUS                        0            4024    4035
24 months   ki1119695-PROBIT           BELARUS                        1              11    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0            1406    1640
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1             234    1640
24 months   ki1135781-COHORTS          GUATEMALA                      0             740    1070
24 months   ki1135781-COHORTS          GUATEMALA                      1             330    1070
24 months   ki1135781-COHORTS          INDIA                          0            4696    5337
24 months   ki1135781-COHORTS          INDIA                          1             641    5337
24 months   ki1135781-COHORTS          PHILIPPINES                    0            2310    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    1             135    2445
24 months   ki1148112-LCNI-5           MALAWI                         0             377     579
24 months   ki1148112-LCNI-5           MALAWI                         1             202     579
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0            5942    8632
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            2690    8632
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0            3396    4752
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1            1356    4752


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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/343df78e-68f9-4790-bd1f-57dc4e8d9738/0a72719a-ab90-4a72-b857-db2d43db8bc6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/343df78e-68f9-4790-bd1f-57dc4e8d9738/0a72719a-ab90-4a72-b857-db2d43db8bc6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/343df78e-68f9-4790-bd1f-57dc4e8d9738/0a72719a-ab90-4a72-b857-db2d43db8bc6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.7506925   -0.8574258   -0.6439592
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -2.6996882   -2.8651920   -2.5341844
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.3512500   -0.5701451   -0.1323549
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                -2.6966667   -2.9574559   -2.4358775
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.7839392   -0.9923794   -0.5754990
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -2.7024511   -3.1265992   -2.2783030
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.6842721   -0.7848810   -0.5836632
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -2.4961588   -2.6701972   -2.3221204
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.4268848   -0.5840989   -0.2696707
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -2.6031665   -3.1966122   -2.0097208
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.7196790   -0.8584563   -0.5809018
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.0543369   -3.4439961   -2.6646776
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.5866126   -0.7494499   -0.4237753
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.5398514   -2.8795096   -2.2001933
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.0469228   -0.0913925    0.1852380
Birth       ki1000108-IRC              INDIA                          1                    NA                -3.0683405   -3.3943346   -2.7423464
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.9088017   -1.0754600   -0.7421433
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -3.2037997   -3.3823906   -3.0252088
Birth       ki1000109-ResPak           PAKISTAN                       0                    NA                -0.1361745   -0.5063401    0.2339911
Birth       ki1000109-ResPak           PAKISTAN                       1                    NA                -2.5552171   -2.7546446   -2.3557896
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.9050161   -0.9416896   -0.8683425
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -2.7908378   -2.9259486   -2.6557271
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.6085992   -0.6854284   -0.5317699
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -2.5855526   -2.6968267   -2.4742785
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.7362915   -0.8051018   -0.6674811
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -2.4360778   -2.5392114   -2.3329441
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.6576422   -0.7194394   -0.5958450
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -2.4909171   -2.5905763   -2.3912579
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                 0.2042746    0.1507427    0.2578065
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                -3.0165700   -3.2549149   -2.7782252
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.7486605   -0.8152039   -0.6821171
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.6351290   -2.7558200   -2.5144380
Birth       ki1114097-CMIN             BANGLADESH                     0                    NA                -0.9811765   -1.4828326   -0.4795203
Birth       ki1114097-CMIN             BANGLADESH                     1                    NA                -3.5811111   -4.2641379   -2.8980843
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 1.3359308    1.1755439    1.4963177
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -2.4439253   -2.4634641   -2.4243865
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.2349821   -0.2520758   -0.2178885
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -2.8027318   -2.8441178   -2.7613459
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.3065057    0.2348258    0.3781856
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.6907228   -2.9059983   -2.4754472
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.3927283   -0.4163384   -0.3691183
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -2.7158950   -2.7630833   -2.6687067
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0877153   -0.1211233   -0.0543072
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -2.7133104   -2.8142000   -2.6124209
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.9632999   -0.9765721   -0.9500276
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.8659367   -2.8847244   -2.8471490
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.9830221   -1.0217342   -0.9443101
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -2.7626749   -2.8147486   -2.7106011
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.0118492   -1.1198018   -0.9038966
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -2.2278139   -2.5471182   -1.9085095
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1076361   -0.0426175    0.2578897
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.3539985   -0.8101103    0.1021133
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -1.0397833   -1.1546346   -0.9249321
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -2.0541098   -2.3561271   -1.7520924
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.4249042   -0.5315395   -0.3182689
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.5563419   -1.8983820   -1.2143019
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -1.1660308   -1.2685887   -1.0634729
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -2.4264859   -2.7168131   -2.1361586
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.9781137   -1.1074575   -0.8487698
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.7926983   -2.2241508   -1.3612459
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.1860270   -1.3062289   -1.0658251
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.3081180   -2.6335038   -1.9827321
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.2218675   -1.3727296   -1.0710055
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.2092965   -2.5335891   -1.8850040
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.1167770   -1.2518353   -0.9817187
6 months    ki1000108-IRC              INDIA                          1                    NA                -2.0853226   -2.4828473   -1.6877979
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -1.5165883   -1.6402093   -1.3929674
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -2.7918044   -2.9577508   -2.6258580
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -1.1925857   -1.4320459   -0.9531254
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -2.0581213   -2.4202094   -1.6960331
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -1.0565865   -1.1332183   -0.9799547
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -2.3127978   -2.3895982   -2.2359973
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -1.2583612   -1.3509328   -1.1657897
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -2.9249294   -3.0659607   -2.7838980
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -1.2244288   -1.3134716   -1.1353861
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -2.3509176   -2.5494674   -2.1523679
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.9951221   -1.0699032   -0.9203411
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.9222169   -2.1501264   -1.6943073
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.0447209   -1.1167305   -0.9727114
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -2.1009242   -2.2645334   -1.9373149
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4626664   -0.5114953   -0.4138375
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.6646075   -1.8460766   -1.4831383
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.8050855   -0.8522059   -0.7579650
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -1.8579517   -2.0294311   -1.6864722
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.1781537   -1.2694503   -1.0868570
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -2.7994268   -2.9541168   -2.6447368
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1978935   -1.2759734   -1.1198137
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.1753826   -2.3620373   -1.9887279
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -1.3134560   -1.4543176   -1.1725944
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -2.5401143   -2.7417110   -2.3385175
6 months    ki1114097-CONTENT          PERU                           0                    NA                -0.1909061   -0.3627407   -0.0190715
6 months    ki1114097-CONTENT          PERU                           1                    NA                -1.6857202   -2.1770911   -1.1943494
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1205372    0.0223234    0.2187511
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -1.5424535   -1.6500134   -1.4348935
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.7790491   -0.8052444   -0.7528537
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.6621873   -1.7438630   -1.5805116
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.5942482   -1.6602594   -1.5282371
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -3.0025884   -3.1472613   -2.8579155
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.8312144   -0.8582096   -0.8042192
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -2.2283003   -2.3085471   -2.1480535
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -1.0658425   -1.1076409   -1.0240442
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -2.3910756   -2.5385128   -2.2436384
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -1.0564267   -1.1134269   -0.9994266
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -2.6944203   -2.7648365   -2.6240041
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.9576047   -0.9811410   -0.9340685
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.1248606   -2.1541498   -2.0955714
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.0077236   -1.0446245   -0.9708227
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -2.2077558   -2.2686850   -2.1468266
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.8482593   -1.9805224   -1.7159962
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -2.7070440   -3.0102726   -2.4038154
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0650022   -0.1127004    0.2427048
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.5346682   -1.0618250   -0.0075115
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -1.7729480   -1.9008718   -1.6450242
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -2.4882077   -2.8183495   -2.1580658
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -1.2007151   -1.3193876   -1.0820426
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -2.0366709   -2.4129934   -1.6603484
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -1.6505834   -1.7707914   -1.5303754
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -2.3964518   -2.7802778   -2.0126259
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.6155771   -1.7563554   -1.4747987
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.9401465   -2.4273277   -1.4529653
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.5508756   -2.6980785   -2.4036727
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.1839469   -3.4865239   -2.8813699
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.4831280   -2.5952891   -2.3709668
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.8028947   -3.0197429   -2.5860466
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.7268444   -1.8269880   -1.6267008
24 months   ki1000108-IRC              INDIA                          1                    NA                -2.2748236   -2.4974075   -2.0522398
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -2.4099493   -2.5735264   -2.2463723
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -3.0157893   -3.2536111   -2.7779675
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -2.0494062   -2.1545021   -1.9443104
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -3.0154501   -3.2675819   -2.7633184
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.5238970   -1.6088505   -1.4389434
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -2.1685167   -2.4805789   -1.8564546
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.3362988   -1.4220080   -1.2505896
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -2.0940855   -2.3270350   -1.8611359
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -1.4954641   -1.5462136   -1.4447147
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -2.3190054   -2.4886274   -2.1493834
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.7916258   -1.8817463   -1.7015052
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.3870396   -2.6066442   -2.1674351
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -2.2871793   -2.4304020   -2.1439567
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -2.9703415   -3.1803141   -2.7603689
24 months   ki1114097-CONTENT          PERU                           0                    NA                -0.5983986   -0.7733646   -0.4234326
24 months   ki1114097-CONTENT          PERU                           1                    NA                -1.6324436   -2.1412442   -1.1236430
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.1287352   -0.4305106    0.1730402
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -1.0742541   -1.3609613   -0.7875469
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.5195115   -1.5790749   -1.4599480
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -2.1152151   -2.2785576   -1.9518725
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -2.7522882   -2.8275787   -2.6769976
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -3.5283978   -3.6290139   -3.4277817
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -2.0033960   -2.0369470   -1.9698450
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -2.9899796   -3.0800831   -2.8998760
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -2.3636808   -2.4094086   -2.3179531
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -3.2799809   -3.4504615   -3.1095002
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -1.4967203   -1.5816180   -1.4118227
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -2.5970296   -2.7153825   -2.4786766
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.7600134   -1.7899472   -1.7300796
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.5773974   -2.6190076   -2.5357872
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.5496149   -1.5866432   -1.5125867
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -2.3587138   -2.4173061   -2.3001216


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.6760000   -0.9521457   -0.3998543
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3080412   -0.4687931   -0.1472894
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.9800000   -1.4086438   -0.5513562
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0308036   -0.0328378    0.0944451
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.8811538   -2.5124807   -1.2498270
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5002724   -0.5208163   -0.4797285
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6698961   -0.6980556   -0.6417365
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5894148   -1.6086362   -1.5701935
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5232908   -1.5723277   -1.4742539
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2049931   -1.3222136   -1.0877726
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2115254   -1.3298727   -1.0931782
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5615819   -0.6741832   -0.4489807
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3236661   -1.4316775   -1.2156546
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0633202   -1.1909180   -0.9357224
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3687449   -1.4907629   -1.2467270
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2344062   -1.3658524   -1.1029600
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.0835567   -2.2027557   -1.9643578
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -1.4314086   -1.6374838   -1.2253335
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4018563   -1.4810585   -1.3226541
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -1.8986842   -2.0118892   -1.7854792
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4073821   -1.4960598   -1.3187043
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5434389   -0.5924056   -0.4944722
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9041369   -0.9513363   -0.8569376
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -1.5619008   -1.6727702   -1.4510313
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3508392   -1.4290633   -1.2726152
6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.7844376   -1.9222926   -1.6465825
6 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.3139217   -0.4868486   -0.1409948
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.1069986    0.0122286    0.2017686
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8679450   -0.8935071   -0.8423828
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.8157336   -1.8837688   -1.7476985
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9968455   -1.0246180   -0.9690730
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1405724   -1.1824954   -1.0986493
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.6601907   -1.7297701   -1.5906113
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3130932   -1.3362359   -1.2899505
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9783962   -2.1050210   -1.8517715
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8861894   -2.0110006   -1.7613783
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3075877   -1.4270718   -1.1881037
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7524710   -1.8736426   -1.6312994
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6450595   -1.7797240   -1.5103950
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6455607   -2.7807256   -2.5103959
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7987775   -1.8923914   -1.7051636
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -2.6699900   -2.8138051   -2.5261749
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2190579   -2.3217459   -2.1163699
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5774356   -1.6272400   -1.5276311
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8874180   -1.9728588   -1.8019773
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -2.5109504   -2.6361514   -2.3857494
24 months   ki1114097-CONTENT          PERU                           NA                   NA                -0.6962195   -0.8674103   -0.5250287
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.1314048   -0.4282725    0.1654630
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6055701   -1.6625562   -1.5485840
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9923738   -3.0565851   -2.9281626
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.1198201   -2.1524299   -2.0872104
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4141145   -2.4590818   -2.3691473
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -1.8861485   -1.9671802   -1.8051169
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0136481   -2.0413552   -1.9859409
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7807218   -1.8162478   -1.7451958


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -1.9489957   -2.1468069   -1.7511844
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0                 -2.3454167   -2.6858959   -2.0049374
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                 -1.9185119   -2.3938049   -1.4432189
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                 -1.8118867   -2.0140647   -1.6097086
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -2.1762817   -2.7947957   -1.5577678
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -2.3346578   -2.7497707   -1.9195449
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -1.9532389   -2.3315159   -1.5749618
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                 -3.1152633   -3.4694465   -2.7610802
Birth       ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                 -2.2949981   -2.5413766   -2.0486195
Birth       ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-ResPak           PAKISTAN                       1                    0                 -2.4190426   -2.8488192   -1.9892660
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -1.8858218   -2.0251193   -1.7465243
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -1.9769534   -2.1125700   -1.8413369
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -1.6997863   -1.8232861   -1.5762865
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -1.8332749   -1.9507426   -1.7158072
Birth       ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                 -3.2208447   -3.4651868   -2.9765025
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                 -1.8864685   -2.0253059   -1.7476311
Birth       ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BANGLADESH                     1                    0                 -2.5999346   -3.4473923   -1.7524770
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 -3.7798561   -3.9494577   -3.6102544
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -2.5677497   -2.6125498   -2.5229496
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                 -2.9972285   -3.2242457   -2.7702112
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 -2.3231667   -2.3759375   -2.2703958
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 -2.6255952   -2.7318980   -2.5192923
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -1.9026368   -1.9260878   -1.8791858
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -1.7796527   -1.8452901   -1.7140153
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -1.2159646   -1.5534077   -0.8785216
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.4616346   -0.9417810    0.0185117
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 -1.0143264   -1.3382883   -0.6903645
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -1.1314378   -1.4901524   -0.7727232
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 -1.2604551   -1.5689015   -0.9520086
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.8145847   -1.2653018   -0.3638675
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -1.1220910   -1.4689973   -0.7751847
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.9874290   -1.3458318   -0.6290262
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.9685456   -1.3882241   -0.5488671
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -1.2752160   -1.4824942   -1.0679379
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.8655356   -1.3000801   -0.4309911
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -1.2562112   -1.3364171   -1.1760054
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -1.6665681   -1.8354203   -1.4977159
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -1.1264888   -1.3440715   -0.9089062
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.9270947   -1.1669995   -0.6871899
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -1.0562032   -1.2350984   -0.8773080
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -1.2019410   -1.3896320   -1.0142500
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -1.0528662   -1.2307805   -0.8749519
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -1.6212731   -1.8011322   -1.4414141
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.9774891   -1.1796978   -0.7752804
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -1.2266583   -1.4729267   -0.9803899
6 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           1                    0                 -1.4948142   -2.0137399   -0.9758884
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -1.6629907   -1.7981343   -1.5278471
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.8831382   -0.9688734   -0.7974031
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -1.4083402   -1.5675096   -1.2491708
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -1.3970859   -1.4817334   -1.3124384
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -1.3252331   -1.4782921   -1.1721740
6 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         1                    0                 -1.6379936   -1.7288152   -1.5471720
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -1.1672558   -1.2014010   -1.1331107
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -1.2000322   -1.2704684   -1.1295961
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.8587847   -1.1891230   -0.5284464
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.5996705   -1.1543424   -0.0449985
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.7152596   -1.0661216   -0.3643977
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.8359558   -1.2314326   -0.4404790
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.7458684   -1.1482807   -0.3434561
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.3245694   -0.8309756    0.1818368
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.6330713   -0.9702877   -0.2958550
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.3197668   -0.5628315   -0.0767020
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.5479792   -0.7921826   -0.3037759
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.6058400   -0.8950518   -0.3166282
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -0.9660439   -1.2390698   -0.6930180
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.6446198   -0.9677496   -0.3214900
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.7577867   -1.0062498   -0.5093236
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.8235413   -1.0001829   -0.6468996
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.5954139   -0.8321802   -0.3586475
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.6831622   -0.9374834   -0.4288409
24 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           1                    0                 -1.0340450   -1.5787552   -0.4893348
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.9455189   -1.3082282   -0.5828096
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.5957036   -0.7694266   -0.4219806
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.7761097   -0.9016524   -0.6505670
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.9865836   -1.0825917   -0.8905754
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.9163000   -1.0928331   -0.7397670
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -1.1003093   -1.2462288   -0.9543897
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.8173840   -0.8638352   -0.7709328
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.8090989   -0.8758263   -0.7423714


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.3674027   -0.4728754   -0.2619300
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.3247500   -0.5287356   -0.1207644
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.4196778   -0.6691924   -0.1701633
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.1985176   -0.2763664   -0.1206687
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.2048225   -0.3418929   -0.0677522
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4359210   -0.6165042   -0.2553377
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.3745831   -0.5501917   -0.1989744
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.3549640   -0.4603874   -0.2495406
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.9520733   -1.1312848   -0.7728619
Birth       ki1000109-ResPak           PAKISTAN                       0                    NA                -0.8438255   -1.2400235   -0.4476274
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.5264057   -0.5968830   -0.4559283
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.3224206   -0.3851563   -0.2596849
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1488106   -0.1903362   -0.1072849
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.2518523   -0.3002627   -0.2034419
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                -0.1734710   -0.2120897   -0.1348522
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.3364975   -0.3984620   -0.2745331
Birth       ki1114097-CMIN             BANGLADESH                     0                    NA                -0.8999774   -1.4666696   -0.3332851
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0089862   -0.0135778   -0.0043946
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.2652903   -0.2790985   -0.2514821
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1767756   -0.2270731   -0.1264781
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.2771677   -0.2963515   -0.2579840
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.1613339   -0.1847198   -0.1379480
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.6261150   -0.6417001   -0.6105298
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.5402687   -0.5797241   -0.5008133
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.1931439   -0.2698719   -0.1164158
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0600604   -0.1196350   -0.0004858
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1717421   -0.2433000   -0.1001841
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.1366778   -0.2005322   -0.0728233
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.1576353   -0.2197557   -0.0955148
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0852065   -0.1420691   -0.0283440
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1827179   -0.2540884   -0.1113475
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.2015832   -0.2832769   -0.1198895
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1176292   -0.1767422   -0.0585163
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.5669684   -0.6791342   -0.4548026
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.2388230   -0.3677442   -0.1099018
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.3452698   -0.3867050   -0.3038345
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.6403230   -0.7446770   -0.5359689
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.1829532   -0.2326893   -0.1332172
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0965694   -0.1295602   -0.0635786
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1539574   -0.1915386   -0.1163761
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0807724   -0.0989726   -0.0625723
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0990515   -0.1197987   -0.0783043
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.3837471   -0.4727924   -0.2947018
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1529457   -0.1980012   -0.1078902
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.4709816   -0.5907479   -0.3512153
6 months    ki1114097-CONTENT          PERU                           0                    NA                -0.1230156   -0.1963646   -0.0496666
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0135386   -0.0204167   -0.0066606
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0888959   -0.0991209   -0.0786710
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.2214854   -0.2624427   -0.1805280
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.1656311   -0.1802768   -0.1509853
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0747299   -0.0892833   -0.0601764
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.6037640   -0.6672501   -0.5402778
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.3554885   -0.3690446   -0.3419324
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3370704   -0.3615392   -0.3126016
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.1301369   -0.1939754   -0.0662984
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0588878   -0.1219183    0.0041427
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1132414   -0.1770522   -0.0494306
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.1068726   -0.1674660   -0.0462792
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.1018876   -0.1664518   -0.0373233
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0294824   -0.0762381    0.0172732
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0946852   -0.1529052   -0.0364651
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0757400   -0.1290189   -0.0224611
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0719331   -0.1083340   -0.0355322
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.2600407   -0.3879846   -0.1320968
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.1696517   -0.2275420   -0.1117613
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0785252   -0.1141038   -0.0429466
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1049658   -0.1456702   -0.0642614
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0819714   -0.1025225   -0.0614203
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0957923   -0.1398065   -0.0517780
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.2237711   -0.3260756   -0.1214666
24 months   ki1114097-CONTENT          PERU                           0                    NA                -0.0978209   -0.1712330   -0.0244088
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0026696   -0.0136464    0.0083072
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0860587   -0.1125713   -0.0595460
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.2400857   -0.2844605   -0.1957108
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.1164241   -0.1307308   -0.1021174
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0504337   -0.0633106   -0.0375568
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.3894282   -0.4573471   -0.3215093
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2536347   -0.2702473   -0.2370220
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2311069   -0.2528352   -0.2093785
