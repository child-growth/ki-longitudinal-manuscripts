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
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_vagbrth
* delta_single
* delta_W_nrooms
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
Birth       ki1101329-Keneba           GAMBIA                         0              12      13
Birth       ki1101329-Keneba           GAMBIA                         1               1      13
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0           19226   26667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1            7441   26667
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0           12323   16753
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1            4430   16753
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0            6221    8565
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1            2344    8565
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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/e11554d5-c176-4d82-8db3-b20160d53047/7e64142b-163f-4ed0-8ca1-bdb5072b88bb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/e11554d5-c176-4d82-8db3-b20160d53047/7e64142b-163f-4ed0-8ca1-bdb5072b88bb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/e11554d5-c176-4d82-8db3-b20160d53047/7e64142b-163f-4ed0-8ca1-bdb5072b88bb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.7514628   -0.8588263   -0.6440994
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -2.6769725   -2.8522879   -2.5016571
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.3512500   -0.5701451   -0.1323549
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    NA                -2.6966667   -2.9574559   -2.4358775
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.8276082   -1.0383964   -0.6168200
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                -2.9115586   -3.2912745   -2.5318428
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.6789398   -0.7799079   -0.5779718
Birth       ki0047075b-MAL-ED          PERU                           1                    NA                -2.4872735   -2.6581925   -2.3163545
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.4368624   -0.5969663   -0.2767584
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -2.4705111   -3.0782201   -1.8628021
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.7115515   -0.8493411   -0.5737619
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.1112700   -3.5647138   -2.6578262
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.5847028   -0.7483341   -0.4210716
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.5901033   -2.9438123   -2.2363944
Birth       ki1000108-IRC              INDIA                          0                    NA                 0.0533162   -0.0850336    0.1916660
Birth       ki1000108-IRC              INDIA                          1                    NA                -2.8083192   -3.1220709   -2.4945674
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.8903856   -1.0526067   -0.7281645
Birth       ki1000109-EE               PAKISTAN                       1                    NA                -3.1923141   -3.3737869   -3.0108414
Birth       ki1000109-ResPak           PAKISTAN                       0                    NA                -0.1980556   -0.5603424    0.1642311
Birth       ki1000109-ResPak           PAKISTAN                       1                    NA                -2.6044958   -2.8280786   -2.3809131
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.9050161   -0.9416896   -0.8683425
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -2.7908378   -2.9259486   -2.6557271
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.6101973   -0.6869417   -0.5334529
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -2.6144100   -2.7253611   -2.5034590
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.7357733   -0.8045813   -0.6669653
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -2.3701473   -2.4696178   -2.2706769
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.6573649   -0.7191579   -0.5955719
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -2.4718535   -2.5704080   -2.3732990
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.7525618   -0.8189618   -0.6861617
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.6766815   -2.8088221   -2.5445409
Birth       ki1114097-CMIN             BANGLADESH                     0                    NA                -0.9811765   -1.4828326   -0.4795203
Birth       ki1114097-CMIN             BANGLADESH                     1                    NA                -3.5811111   -4.2641379   -2.8980843
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                 1.3355729    1.1749358    1.4962101
Birth       ki1119695-PROBIT           BELARUS                        1                    NA                -2.3997911   -2.4218287   -2.3777535
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.2347342   -0.2518247   -0.2176438
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -2.8054750   -2.8467331   -2.7642170
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.3073887    0.2357157    0.3790618
Birth       ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.7119906   -2.9183800   -2.5056011
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.3931617   -0.4167734   -0.3695501
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -2.7135676   -2.7609145   -2.6662207
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0875753   -0.1209846   -0.0541659
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    NA                -2.7086453   -2.8101109   -2.6071797
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.5201238   -0.5461174   -0.4941301
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.8644462   -2.8832029   -2.8456896
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.9831867   -1.0218559   -0.9445175
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -2.7633791   -2.8154236   -2.7113346
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.0143487   -1.1219435   -0.9067540
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -2.1539769   -2.4505361   -1.8574176
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.1102158   -0.0409571    0.2613887
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.3774120   -0.8571179    0.1022939
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -1.0450815   -1.1606424   -0.9295207
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -2.0849963   -2.3904204   -1.7795723
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.4213853   -0.5277528   -0.3150178
6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -1.5024794   -1.8557417   -1.1492171
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -1.1695540   -1.2721909   -1.0669172
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -2.5070554   -2.7756076   -2.2385033
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.9781414   -1.1077469   -0.8485359
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -1.7662544   -2.2181348   -1.3143740
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -1.1913217   -1.3129926   -1.0696509
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -2.2605359   -2.6004810   -1.9205907
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.2230601   -1.3734014   -1.0727188
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.2736826   -2.5849891   -1.9623761
6 months    ki1000108-IRC              INDIA                          0                    NA                -1.1169035   -1.2518051   -0.9820019
6 months    ki1000108-IRC              INDIA                          1                    NA                -2.0026200   -2.4027125   -1.6025276
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -1.5245233   -1.6477851   -1.4012615
6 months    ki1000109-EE               PAKISTAN                       1                    NA                -2.8062427   -2.9729507   -2.6395347
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -1.1971434   -1.4377085   -0.9565783
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                -2.0472575   -2.4145388   -1.6799763
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -1.0565865   -1.1332183   -0.9799547
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -2.3127978   -2.3895982   -2.2359973
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -1.2570054   -1.3497444   -1.1642665
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -2.9180092   -3.0584577   -2.7775607
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -1.2236289   -1.3125964   -1.1346613
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -2.3518494   -2.5514584   -2.1522403
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.9928551   -1.0677936   -0.9179166
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -1.9912318   -2.2275933   -1.7548703
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.0451296   -1.1170511   -0.9732080
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -2.1215587   -2.2840636   -1.9590539
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4628817   -0.5117099   -0.4140536
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -1.6558741   -1.8439727   -1.4677756
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.8047547   -0.8518656   -0.7576437
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                -1.8984504   -2.0674208   -1.7294800
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -1.1763286   -1.2675830   -1.0850741
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -2.7761546   -2.9304852   -2.6218239
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.1968999   -1.2748982   -1.1189015
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.1423207   -2.3395690   -1.9450723
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -1.3206601   -1.4624150   -1.1789052
6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -2.5322516   -2.7361549   -2.3283484
6 months    ki1114097-CONTENT          PERU                           0                    NA                -0.1991681   -0.3707437   -0.0275926
6 months    ki1114097-CONTENT          PERU                           1                    NA                -1.5922551   -2.1211931   -1.0633171
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.1204538    0.0222944    0.2186133
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -1.5349771   -1.6437700   -1.4261842
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.7788628   -0.8050615   -0.7526641
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -1.6653638   -1.7467438   -1.5839837
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -1.5935733   -1.6596719   -1.5274746
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                -2.9971506   -3.1414718   -2.8528294
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.8320127   -0.8590195   -0.8050059
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -2.2245038   -2.3049904   -2.1440172
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -1.0661656   -1.1079517   -1.0243795
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                -2.3800671   -2.5307297   -2.2294044
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -1.0564828   -1.1134320   -0.9995337
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -2.6950441   -2.7656160   -2.6244721
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.0409736   -1.0641743   -1.0177729
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.1602514   -2.1916911   -2.1288116
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.0077306   -1.0445385   -0.9709226
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -2.2080576   -2.2690354   -2.1470797
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -1.8483309   -1.9786075   -1.7180543
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -2.6423041   -2.9756377   -2.3089705
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0682793   -0.1087003    0.2452588
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.4761563   -1.0140534    0.0617408
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -1.7702072   -1.8981502   -1.6422642
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -2.4725675   -2.7827694   -2.1623655
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -1.2060608   -1.3245729   -1.0875487
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -2.0791159   -2.4706541   -1.6875776
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -1.6509279   -1.7707680   -1.5310878
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -2.4222921   -2.8165165   -2.0280677
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -1.6207551   -1.7628456   -1.4786645
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -2.0475024   -2.4729025   -1.6221023
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -2.5470201   -2.6942445   -2.3997957
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -3.2010777   -3.5036225   -2.8985328
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -2.4813471   -2.5919664   -2.3707277
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -2.7816026   -2.9982205   -2.5649848
24 months   ki1000108-IRC              INDIA                          0                    NA                -1.7270435   -1.8269335   -1.6271536
24 months   ki1000108-IRC              INDIA                          1                    NA                -2.3390508   -2.5683474   -2.1097542
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -2.4111891   -2.5748166   -2.2475616
24 months   ki1000109-EE               PAKISTAN                       1                    NA                -3.0669200   -3.3056692   -2.8281708
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -2.0505879   -2.1555846   -1.9455912
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -3.0595965   -3.3085071   -2.8106860
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -1.5229284   -1.6078142   -1.4380426
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -2.2905406   -2.5927612   -1.9883201
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -1.3354364   -1.4211251   -1.2497476
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -2.1040213   -2.3372619   -1.8707808
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -1.4964894   -1.5472198   -1.4457589
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -2.3126893   -2.4857667   -2.1396120
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -1.7923848   -1.8824742   -1.7022954
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -2.3551245   -2.5734271   -2.1368219
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -2.2702069   -2.4118316   -2.1285823
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -2.9308385   -3.1453043   -2.7163727
24 months   ki1114097-CONTENT          PERU                           0                    NA                -0.5913097   -0.7655082   -0.4171112
24 months   ki1114097-CONTENT          PERU                           1                    NA                -1.6233034   -2.1156534   -1.1309534
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.1287471   -0.4305546    0.1730605
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -1.0246514   -1.3147695   -0.7345333
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -1.5202788   -1.5798164   -1.4607412
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -2.1195674   -2.2821224   -1.9570125
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -2.7529173   -2.8281662   -2.6776684
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                -3.5270676   -3.6288089   -3.4253263
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -2.0038263   -2.0373724   -1.9702803
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -2.9732447   -3.0633742   -2.8831152
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -2.3638565   -2.4095729   -2.3181402
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                -3.2814571   -3.4514304   -3.1114837
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -1.5002800   -1.5851566   -1.4154034
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -2.6050108   -2.7260552   -2.4839665
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -1.8033246   -1.8321548   -1.7744944
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -2.5947358   -2.6399590   -2.5495126
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -1.5516582   -1.5886973   -1.5146190
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -2.3549047   -2.4157243   -2.2940852


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
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.8811538   -2.5124807   -1.2498270
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                 1.3269446    1.1683850    1.4855041
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5002724   -0.5208163   -0.4797285
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1297300    0.0458017    0.2136584
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6698961   -0.6980556   -0.6417365
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2490492   -0.2880580   -0.2100404
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.1729576   -1.2009629   -1.1449523
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5232908   -1.5723277   -1.4742539
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2054910   -1.3228953   -1.0880867
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0510207   -0.0930194    0.1950608
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2113701   -1.3298485   -1.0928916
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5610593   -0.6737915   -0.4483272
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3280952   -1.4363364   -1.2198541
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0639173   -1.1916078   -0.9362269
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3355900   -1.3586765   -1.3125035
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3447940   -1.3820261   -1.3075620
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9789151   -2.1055330   -1.8522972
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0071006   -0.1615817    0.1757828
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8848458   -2.0096941   -1.7599975
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.3118640   -1.4315132   -1.1922149
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7544776   -1.8753255   -1.6336298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6491807   -1.7842885   -1.5140729
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.6451636   -2.7802323   -2.5100948
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0195844   -2.0472504   -1.9919183
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7807218   -1.8162478   -1.7451958


### Parameter: ATE


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -1.9255097   -2.1322679   -1.7187515
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BRAZIL                         1                    0                 -2.3454167   -2.6858959   -2.0049374
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                 -2.0839505   -2.5223828   -1.6455181
Birth       ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           1                    0                 -1.8083337   -2.0068596   -1.6098077
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -2.0336487   -2.6656472   -1.4016502
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -2.3997185   -2.8742074   -1.9252296
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -2.0054005   -2.3982068   -1.6125941
Birth       ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          1                    0                 -2.8616354   -3.2052984   -2.5179723
Birth       ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       1                    0                 -2.3019285   -2.5460284   -2.0578287
Birth       ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000109-ResPak           PAKISTAN                       1                    0                 -2.4064402   -2.8394186   -1.9734618
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -1.8858218   -2.0251193   -1.7465243
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -2.0042128   -2.1392417   -1.8691838
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -1.6343740   -1.7553925   -1.5133555
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -1.8144886   -1.9308629   -1.6981143
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          1                    0                 -1.9241197   -2.0733788   -1.7748607
Birth       ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BANGLADESH                     1                    0                 -2.5999346   -3.4473923   -1.7524770
Birth       ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1119695-PROBIT           BELARUS                        1                    0                 -3.7353640   -3.9056972   -3.5650308
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -2.5707408   -2.6154137   -2.5260679
Birth       ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      1                    0                 -3.0193793   -3.2377075   -2.8010511
Birth       ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          1                    0                 -2.3204059   -2.3733412   -2.2674706
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    1                    0                 -2.6210700   -2.7279517   -2.5141883
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -2.3443225   -2.3756359   -2.3130091
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -1.7801924   -1.8457588   -1.7146260
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -1.1396281   -1.4558249   -0.8234313
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.4876278   -0.9910412    0.0157856
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 -1.0399148   -1.3675440   -0.7122856
6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 -1.0810941   -1.4498679   -0.7123204
6 months    ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 -1.3375014   -1.6248671   -1.0501357
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.7881130   -1.2587406   -0.3174854
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -1.0692141   -1.4302984   -0.7081298
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -1.0506226   -1.3967993   -0.7044458
6 months    ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          1                    0                 -0.8857165   -1.3068001   -0.4646329
6 months    ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 -1.2817194   -1.4892319   -1.0742070
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 -0.8501141   -1.2899148   -0.4103135
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 -1.2562112   -1.3364171   -1.1760054
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 -1.6610037   -1.8293088   -1.4926987
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -1.1282205   -1.3467750   -0.9096660
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.9983767   -1.2454286   -0.7513247
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -1.0764292   -1.2541996   -0.8986587
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 -1.1929924   -1.3873291   -0.9986557
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 -1.0936957   -1.2690214   -0.9183701
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 -1.5998260   -1.7796457   -1.4200064
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.9454208   -1.1578155   -0.7330260
6 months    ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 -1.2115915   -1.4603062   -0.9628769
6 months    ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1114097-CONTENT          PERU                           1                    0                 -1.3930869   -1.9522616   -0.8339123
6 months    ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 -1.6554310   -1.7894473   -1.5214146
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.8865010   -0.9719538   -0.8010482
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 -1.4035774   -1.5624105   -1.2447443
6 months    ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 -1.3924911   -1.4773882   -1.3075939
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 -1.3139015   -1.4701876   -1.1576154
6 months    ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         1                    0                 -1.6385612   -1.7293743   -1.5477481
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -1.1192778   -1.1547840   -1.0837715
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -1.2003270   -1.2710607   -1.1295933
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 -0.7939732   -1.1510618   -0.4368846
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 -0.5444355   -1.1094414    0.0205703
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 -0.7023603   -1.0377252   -0.3669954
24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 -0.8730551   -1.2819942   -0.4641159
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 -0.7713642   -1.1833571   -0.3593714
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 -0.4267474   -0.8733962    0.0199015
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                 -0.6540576   -0.9918719   -0.3162432
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 -0.3002556   -0.5422228   -0.0582883
24 months   ki1000108-IRC              INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          1                    0                 -0.6120072   -0.8622653   -0.3617491
24 months   ki1000109-EE               PAKISTAN                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       1                    0                 -0.6557309   -0.9456169   -0.3658449
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                 -1.0090086   -1.2790533   -0.7389639
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 -0.7676122   -1.0800359   -0.4551886
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 -0.7685850   -1.0170878   -0.5200822
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                 -0.8162000   -0.9963508   -0.6360491
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 -0.5627397   -0.7971261   -0.3283534
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 -0.6606316   -0.9181125   -0.4031507
24 months   ki1114097-CONTENT          PERU                           0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1114097-CONTENT          PERU                           1                    0                 -1.0319937   -1.5580497   -0.5059376
24 months   ki1119695-PROBIT           BELARUS                        0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 -0.8959043   -1.2540426   -0.5377661
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 -0.5992886   -0.7722443   -0.4263329
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 -0.7741504   -0.9005604   -0.6477404
24 months   ki1135781-COHORTS          INDIA                          0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                 -0.9694184   -1.0653949   -0.8734418
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 -0.9176005   -1.0936585   -0.7415426
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  0.0000000    0.0000000    0.0000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                 -1.1047308   -1.2528664   -0.9565952
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 -0.7914112   -0.8407876   -0.7420348
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 -0.8032466   -0.8720263   -0.7344669


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.3666324   -0.4733591   -0.2599057
Birth       ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.3247500   -0.5287356   -0.1207644
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                -0.3760088   -0.6106881   -0.1413296
Birth       ki0047075b-MAL-ED          PERU                           0                    NA                -0.2038499   -0.2825923   -0.1251074
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.1948449   -0.3314652   -0.0582247
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4440485   -0.6257927   -0.2623043
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.3764928   -0.5528402   -0.2001454
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.3613574   -0.4685954   -0.2541195
Birth       ki1000109-EE               PAKISTAN                       0                    NA                -0.9704894   -1.1484983   -0.7924805
Birth       ki1000109-ResPak           PAKISTAN                       0                    NA                -0.7819444   -1.1507863   -0.4131025
Birth       ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.5264057   -0.5968830   -0.4559283
Birth       ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.3208224   -0.3832445   -0.2584004
Birth       ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.1493287   -0.1910895   -0.1075680
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.2521296   -0.3005857   -0.2036735
Birth       ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.3325963   -0.3937013   -0.2714913
Birth       ki1114097-CMIN             BANGLADESH                     0                    NA                -0.8999774   -1.4666696   -0.3332851
Birth       ki1119695-PROBIT           BELARUS                        0                    NA                -0.0086284   -0.0130685   -0.0041883
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.2655382   -0.2793477   -0.2517287
Birth       ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.1776587   -0.2279562   -0.1273612
Birth       ki1135781-COHORTS          INDIA                          0                    NA                -0.2767343   -0.2959098   -0.2575589
Birth       ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.1614739   -0.1848811   -0.1380667
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.6528338   -0.6697409   -0.6359267
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.5401042   -0.5795437   -0.5006646
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.1911423   -0.2710559   -0.1112286
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0591951   -0.1193601    0.0009699
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1662885   -0.2380457   -0.0945313
6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.1396740   -0.2039551   -0.0753930
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.1585412   -0.2197553   -0.0973271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0857759   -0.1434125   -0.0281394
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1774232   -0.2524542   -0.1023923
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.2003907   -0.2816346   -0.1191468
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1175027   -0.1752282   -0.0597772
6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.5590334   -0.6703928   -0.4476741
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.2342653   -0.3637503   -0.1047802
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.3452698   -0.3867050   -0.3038345
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                -0.6416788   -0.7461225   -0.5372350
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.1837532   -0.2335351   -0.1339713
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0988364   -0.1317467   -0.0659261
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1535487   -0.1910341   -0.1160634
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0805572   -0.0989030   -0.0622113
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.0993823   -0.1200471   -0.0787174
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                -0.3855722   -0.4749967   -0.2961477
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1539394   -0.1988466   -0.1090321
6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.4637775   -0.5833673   -0.3441876
6 months    ki1114097-CONTENT          PERU                           0                    NA                -0.1147536   -0.1886373   -0.0408698
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0134552   -0.0202834   -0.0066271
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0890822   -0.0993115   -0.0788529
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.2221604   -0.2631906   -0.1811301
6 months    ki1135781-COHORTS          INDIA                          0                    NA                -0.1648328   -0.1794959   -0.1501696
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0744068   -0.0889470   -0.0598666
6 months    ki1148112-LCNI-5           MALAWI                         0                    NA                -0.6037079   -0.6670445   -0.5403712
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2946165   -0.3071983   -0.2820346
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.3370635   -0.3615092   -0.3126178
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.1305842   -0.1947407   -0.0664277
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                -0.0611787   -0.1241097    0.0017524
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1146386   -0.1812350   -0.0480423
24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.1058032   -0.1648753   -0.0467311
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.1035497   -0.1672586   -0.0398409
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0284256   -0.0753139    0.0184627
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0981435   -0.1563292   -0.0399577
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0775209   -0.1302442   -0.0247975
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0717340   -0.1076484   -0.0358195
24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.2588009   -0.3838085   -0.1337933
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                -0.1684700   -0.2261522   -0.1107877
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0794938   -0.1148505   -0.0441370
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                -0.1058282   -0.1465561   -0.0651003
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0809462   -0.1015297   -0.0603627
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0950333   -0.1382455   -0.0518210
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.2407435   -0.3423776   -0.1391093
24 months   ki1114097-CONTENT          PERU                           0                    NA                -0.1049098   -0.1774893   -0.0323303
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0026577   -0.0136766    0.0083611
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0852913   -0.1117106   -0.0588720
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.2394566   -0.2837629   -0.1951502
24 months   ki1135781-COHORTS          INDIA                          0                    NA                -0.1159938   -0.1302730   -0.1017146
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0502580   -0.0631105   -0.0374054
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                -0.3858685   -0.4534327   -0.3183044
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                -0.2162597   -0.2318895   -0.2006300
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.2290636   -0.2508023   -0.2073250
