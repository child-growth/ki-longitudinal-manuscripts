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

**Intervention Variable:** birthwt

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

agecat      studyid                    country                        birthwt                       n_cell       n
----------  -------------------------  -----------------------------  ---------------------------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       177     215
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   38     215
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight        60      62
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    2      62
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight        38      45
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight                    7      45
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight        24      26
Birth       ki0047075b-MAL-ED          NEPAL                          Low birthweight                    2      26
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight       218     228
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight                   10     228
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       115     120
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    5     120
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       113     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    2     115
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight        76      86
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   10      86
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight       296     343
Birth       ki1000108-IRC              INDIA                          Low birthweight                   47     343
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight       138     177
Birth       ki1000109-EE               PAKISTAN                       Low birthweight                   39     177
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        34      38
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight                    4      38
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       894    1103
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  209    1103
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       421     575
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  154     575
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       401     532
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  131     532
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       554     707
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  153     707
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1273    1465
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight                  192    1465
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       472     641
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  169     641
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight        14      19
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight                    5      19
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
Birth       ki1114097-CONTENT          PERU                           Low birthweight                    0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight     13830   13830
Birth       ki1119695-PROBIT           BELARUS                        Low birthweight                    0   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11614   12917
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                 1303   12917
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       702     756
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight                   54     756
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight      5178    6193
Birth       ki1135781-COHORTS          INDIA                          Low birthweight                 1015    6193
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2688    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight                  211    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     12587   18014
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 5427   18014
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      1758    2396
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                  638    2396
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       188     238
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   50     238
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       199     209
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight                   10     209
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       193     227
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight                   34     227
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       210     229
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight                   19     229
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight       254     270
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight                   16     270
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       238     253
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   15     253
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       177     186
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    9     186
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       325     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   43     368
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight       334     402
6 months    ki1000108-IRC              INDIA                          Low birthweight                   68     402
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight       243     374
6 months    ki1000109-EE               PAKISTAN                       Low birthweight                  131     374
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        29      34
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                    5      34
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight      1001    1324
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  323    1324
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       367     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  151     518
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       460     603
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  143     603
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       545     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  170     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1943    2010
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   67    2010
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1146    1334
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                  188    1334
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       397     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  166     563
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         9      12
6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                    3      12
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
6 months    ki1114097-CONTENT          PERU                           Low birthweight                    0       2
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight     15758   15758
6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                    0   15758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7405    8473
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                 1068    8473
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       704     774
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                   70     774
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight      5000    6252
6 months    ki1135781-COHORTS          INDIA                          Low birthweight                 1252    6252
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2416    2664
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                  248    2664
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      8338   14105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 5767   14105
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      3005    4045
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                 1040    4045
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       165     210
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   45     210
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight       161     169
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    8     169
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight       185     218
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight                   33     218
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight       203     221
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight                   18     221
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight       187     199
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight                   12     199
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       224     237
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                   13     237
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       154     162
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    8     162
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       329     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   43     372
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight       335     403
24 months   ki1000108-IRC              INDIA                          Low birthweight                   68     403
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight       101     168
24 months   ki1000109-EE               PAKISTAN                       Low birthweight                   67     168
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       286     413
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  127     413
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       440     579
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  139     579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       388     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  126     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       905    1057
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  152    1057
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       355     486
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  131     486
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         8      11
24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    3      11
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
24 months   ki1114097-CONTENT          PERU                           Low birthweight                    0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight      3972    3972
24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0    3972
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight       337     431
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                   94     431
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       595     657
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   62     657
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight      3911    4821
24 months   ki1135781-COHORTS          INDIA                          Low birthweight                  910    4821
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2195    2410
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                  215    2410
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      4225    7282
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 3057    7282
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2944    3997
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                 1053    3997


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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/75d49569-9f60-4f11-8c72-dcaa4bbefd73/c46ffd5c-250c-4add-b679-573d34b88cf7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/75d49569-9f60-4f11-8c72-dcaa4bbefd73/c46ffd5c-250c-4add-b679-573d34b88cf7/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/75d49569-9f60-4f11-8c72-dcaa4bbefd73/c46ffd5c-250c-4add-b679-573d34b88cf7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.7596195   -0.9136820   -0.6055571
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -1.7789314   -2.0568938   -1.5009689
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.8242105   -1.1093730   -0.5390481
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -1.5200000   -2.2161675   -0.8238325
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0005585   -0.1199742    0.1210911
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -1.5347771   -1.8998189   -1.1697354
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.1398261   -0.3551745    0.0755223
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -1.4060000   -2.0013052   -0.8106947
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.2627112   -0.5612430    0.0358207
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -2.2333424   -2.9791763   -1.4875085
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.7635530   -0.9565354   -0.5705707
Birth       ki1000108-IRC              INDIA                          Low birthweight              NA                -2.5705299   -2.9857820   -2.1552777
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.1121807   -0.3119151    0.0875537
Birth       ki1000109-EE               PAKISTAN                       Low birthweight              NA                -1.1004515   -1.5044322   -0.6964708
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.3922199   -0.5400545   -0.2443853
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -1.8427153   -1.9759872   -1.7094434
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.0323625   -1.1350153   -0.9297098
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.2152039   -2.3616584   -2.0687493
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -1.0630461   -1.1453544   -0.9807377
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -2.0247215   -2.1406305   -1.9088125
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.9742131   -1.0603961   -0.8880301
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -2.2138921   -2.3673392   -2.0604450
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -1.0836488   -1.1481992   -1.0190984
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -2.2411576   -2.3824759   -2.0998392
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.7799544   -0.8713224   -0.6885865
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -2.0665462   -2.1989637   -1.9341287
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.0585714   -0.9538408    0.8366979
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight              NA                -2.1460000   -2.9645242   -1.3274758
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.2967785   -0.3216690   -0.2718881
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -2.4708121   -2.5343809   -2.4072432
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.9572205   -1.0586541   -0.8557869
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -2.4529822   -2.7943483   -2.1116160
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.7518733   -0.7814538   -0.7222928
Birth       ki1135781-COHORTS          INDIA                          Low birthweight              NA                -2.1742805   -2.2367572   -2.1118037
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.6155506   -0.6610015   -0.5700996
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                -2.3812841   -2.5128072   -2.2497611
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.4385886   -0.4580397   -0.4191374
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                -1.5652812   -1.5909532   -1.5396091
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.3847963   -0.4409819   -0.3286106
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -1.5253887   -1.5977296   -1.4530477
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0569873   -0.2082588    0.0942842
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -0.3277791   -0.5184372   -0.1371210
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.9954061    0.8275217    1.1632905
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                 0.0967346   -0.7510102    0.9444794
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.6562657   -0.7966801   -0.5158513
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -1.0013048   -1.3743466   -0.6282629
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.1721569    0.0356063    0.3087075
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -0.1250722   -0.6563105    0.4061661
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 1.0880517    0.9631091    1.2129942
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight              NA                 0.9578043    0.2300151    1.6855935
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.5371616    0.3811161    0.6932072
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                 0.6977159    0.0564377    1.3389941
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.5889736    0.4286505    0.7492968
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0948148   -0.5053473    0.6949769
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.4415703   -0.6016744   -0.2814663
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.8739099   -1.3130751   -0.4347447
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.5357509   -0.6790522   -0.3924497
6 months    ki1000108-IRC              INDIA                          Low birthweight              NA                -0.8254492   -1.2316391   -0.4192592
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.7560562   -0.8934741   -0.6186383
6 months    ki1000109-EE               PAKISTAN                       Low birthweight              NA                -0.7936951   -0.9939477   -0.5934425
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                 0.2481034   -0.2104801    0.7066870
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight              NA                 0.0410000   -0.8343639    0.9163639
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.5669220   -0.7265622   -0.4072817
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -0.9804730   -1.1082440   -0.8527020
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.3520280   -0.4570942   -0.2469618
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.7158657   -0.8919631   -0.5397683
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0858132   -0.1787202    0.0070937
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -0.5716025   -0.7469180   -0.3962870
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.1172691    0.0285967    0.2059415
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -0.2492109   -0.4174596   -0.0809621
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1011461    0.0473486    0.1549436
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.3908451   -0.6750093   -0.1066809
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1638377   -0.2312544   -0.0964210
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -0.4221213   -0.5844574   -0.2597851
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.4811978   -0.5793835   -0.3830121
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -0.8930220   -1.0624725   -0.7235715
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.3408157    0.3135056    0.3681257
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.0869435    0.0129058    0.1609812
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2394974    0.1572595    0.3217353
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -0.1873530   -0.4270071    0.0523011
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.5674966   -0.5985082   -0.5364850
6 months    ki1135781-COHORTS          INDIA                          Low birthweight              NA                -1.1950648   -1.2622710   -1.1278586
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.2605457   -0.3042577   -0.2168336
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                -0.5791634   -0.7225590   -0.4357678
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.4557645   -0.4825473   -0.4289817
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                -0.8269385   -0.8582828   -0.7955941
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.2940366   -0.3441057   -0.2439675
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -0.6193138   -0.6928873   -0.5457403
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.7082238   -0.8477634   -0.5686841
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -1.1179661   -1.3730621   -0.8628701
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.4619462    0.2504494    0.6734429
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                 0.4762500   -0.4169100    1.3694100
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.8703753   -0.9899633   -0.7507874
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -1.1697695   -1.5652793   -0.7742596
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.3230538   -0.4382373   -0.2078702
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -0.7179095   -1.1974286   -0.2383904
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.1697691    0.0491618    0.2903765
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -0.5891014   -1.3962605    0.2180578
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.4290150    0.3041602    0.5538697
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                 0.2450682   -0.2373136    0.7274501
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1234416   -0.0309825    0.2778657
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.1100000   -0.6765896    0.4565896
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.4636351   -0.5696029   -0.3576672
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -1.2680660   -1.5288704   -1.0072616
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.6291664   -0.7274416   -0.5308913
24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                -1.2521812   -1.4814818   -1.0228807
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.9409911   -1.1346027   -0.7473795
24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                -1.1528622   -1.3761374   -0.9295871
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.7713633   -0.8814814   -0.6612452
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -1.2192564   -1.4231502   -1.0153626
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.7568520   -0.8513831   -0.6623209
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -1.3576139   -1.5204936   -1.1947342
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.4804018   -0.5897253   -0.3710782
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -0.9591694   -1.1319092   -0.7864295
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.7336570   -0.7983663   -0.6689477
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -1.1806993   -1.3563612   -1.0050374
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.0489485   -1.1515821   -0.9463150
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -1.3464363   -1.5105745   -1.1822980
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -1.1704264   -1.2815044   -1.0593484
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.2333539   -1.4458586   -1.0208492
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1564973   -0.2250442   -0.0879504
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -0.9104367   -1.1637042   -0.6571691
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.4986767   -0.5309730   -0.4663804
24 months   ki1135781-COHORTS          INDIA                          Low birthweight              NA                -1.0200322   -1.0851914   -0.9548730
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.5633470   -0.6017226   -0.5249715
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                -1.0680718   -1.1949280   -0.9412156
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -1.1288849   -1.1617712   -1.0959987
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                -1.5556810   -1.5920478   -1.5193141
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -1.1435498   -1.1829540   -1.1041456
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -1.5263350   -1.5950227   -1.4576474


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9418605   -1.0869834   -0.7967375
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9324444   -1.2067907   -0.6580982
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0520175   -0.1725298    0.0684947
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1925833   -0.4053570    0.0201904
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.4648256   -0.7643210   -0.1653302
Birth       ki1000108-IRC              INDIA                          NA                   NA                -1.0105831   -1.1973019   -0.8238643
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -0.3333051   -0.5209779   -0.1456323
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6700453   -0.8474950   -0.4925957
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.3499217   -1.4444634   -1.2553801
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.2984586   -1.3752758   -1.2216415
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.2441513   -1.3281130   -1.1601897
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                -1.2343618   -1.2966897   -1.1720339
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.6078947   -1.4214563    0.2056668
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5154897   -0.5413479   -0.4896314
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611470
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7778272   -0.7968313   -0.7588232
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1264286   -0.2562001    0.0033429
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9720774    0.8078144    1.1363403
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.6950184   -0.8251168   -0.5649199
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1468195    0.0154553    0.2781837
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0569321    0.9344468    1.1794174
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5447167    0.3920617    0.6973717
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.5650627    0.4090080    0.7211174
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5026766   -0.6536848   -0.3516685
6 months    ki1000108-IRC              INDIA                          NA                   NA                -0.5865133   -0.7228579   -0.4501686
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -0.7738057   -0.8881828   -0.6594286
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                 0.2176471   -0.1948962    0.6301903
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.6671261   -0.8034351   -0.5308171
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.4636760   -0.5549942   -0.3723578
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.1990907   -0.2817968   -0.1163845
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0297622   -0.0491685    0.1086930
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.0834996    0.0305909    0.1364083
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.1980632   -0.2602433   -0.1358831
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.6026850   -0.6889114   -0.5164586
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                 0.3088788    0.2831827    0.3345749
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.2009690    0.1225187    0.2794193
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.6934213   -0.7223635   -0.6644791
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2923874   -0.3342162   -0.2505585
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.6078114   -0.6285877   -0.5870351
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3785933   -0.4212191   -0.3359676
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8080238   -0.9295087   -0.6865389
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4626233    0.2567495    0.6684971
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9353899   -1.0537553   -0.8170246
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3576697   -0.4708099   -0.2445294
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1137982   -0.0103449    0.2379412
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4054395    0.2840471    0.5268320
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                 0.1119136   -0.0377314    0.2615586
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.5571505   -0.6585247   -0.4557763
24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.7385236   -0.8304949   -0.6465522
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -1.0120238   -1.1588493   -0.8651984
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9069451   -1.0069853   -0.8069049
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8928670   -0.9755153   -0.8102187
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.6103502   -0.7050157   -0.5156847
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.7959275   -0.8565476   -0.7353073
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1336900   -1.2226955   -1.0446844
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.1828306   -1.2821673   -1.0834939
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.2281431   -0.2964243   -0.1598619
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.5945219   -0.6240625   -0.5649813
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.6076846   -0.6447204   -0.5706489
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3060382   -1.3311265   -1.2809499
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2443883   -1.2783802   -1.2103964


### Parameter: ATE


agecat      studyid                    country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.0193118   -1.3380301   -0.7005935
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.6957895   -1.4480971    0.0565182
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -1.5353356   -1.9213380   -1.1493332
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -1.2661739   -1.8992325   -0.6331152
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -1.9706312   -2.7738893   -1.1673732
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -1.8069768   -2.2668737   -1.3470800
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.9882708   -1.4400365   -0.5365052
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -1.4504954   -1.5887584   -1.3122325
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1828413   -1.3617584   -1.0039242
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.9616754   -1.1044065   -0.8189443
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -1.2396789   -1.4157113   -1.0636466
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -1.1575088   -1.3128894   -1.0021282
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -1.2865918   -1.4476441   -1.1255394
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight              Normal or high birthweight    -2.0874286   -3.3004780   -0.8743791
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -2.1740335   -2.2423241   -2.1057429
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.4957617   -1.8520712   -1.1394522
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -1.4224072   -1.4915464   -1.3532680
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -1.7657336   -1.9049163   -1.6265508
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1266926   -1.1570059   -1.0963793
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1405924   -1.2304450   -1.0507398
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.2707918   -0.5138105   -0.0277732
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight    -0.8986715   -1.7633667   -0.0339762
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.3450391   -0.7440482    0.0539700
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.2972290   -0.8458802    0.2514221
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.1302474   -0.8692312    0.6087365
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.1605543   -0.4997819    0.8208905
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.4941588   -1.1153658    0.1270481
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.4323396   -0.9003468    0.0356677
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.2896983   -0.7205301    0.1411336
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0376389   -0.2798877    0.2046099
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -0.2071034   -1.1953144    0.7811075
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -0.4135510   -0.5975079   -0.2295941
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3638376   -0.5691999   -0.1584754
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4857893   -0.6842895   -0.2872890
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3664800   -0.5582683   -0.1746917
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.4919912   -0.7810867   -0.2028956
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.2582836   -0.4340354   -0.0825317
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.4118242   -0.6077975   -0.2158509
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.2538722   -0.3327771   -0.1749672
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.4268504   -0.6798274   -0.1738734
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.6275682   -0.7014972   -0.5536393
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.3186177   -0.4685090   -0.1687264
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3711740   -0.4117934   -0.3305545
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3252772   -0.4123408   -0.2382136
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4097423   -0.7012846   -0.1182000
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.0143038   -0.9035554    0.9321631
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.2993941   -0.7144210    0.1156328
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.3948557   -0.8882537    0.0985423
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.7588705   -1.5748545    0.0571135
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.1839467   -0.6831527    0.3152592
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.2334416   -0.8206984    0.3538153
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.8044309   -1.0865968   -0.5222651
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.6230148   -0.8731353   -0.3728944
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.2118711   -0.5047772    0.0810349
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4478931   -0.6797431   -0.2160431
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6007619   -0.7897339   -0.4117899
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4787676   -0.6827398   -0.2747954
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.4470423   -0.6347901   -0.2592945
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.2974877   -0.4913480   -0.1036274
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0629275   -0.3019800    0.1761250
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.7539394   -1.0164053   -0.4914735
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.5213555   -0.5937927   -0.4489184
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.5047248   -0.6371988   -0.3722508
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4267960   -0.4756591   -0.3779330
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3827853   -0.4626502   -0.3029203


### Parameter: PAR


agecat      studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.1822409   -0.2584110   -0.1060708
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.1082339   -0.2469678    0.0304999
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0525760   -0.0879611   -0.0171909
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0527572   -0.1053148   -0.0001997
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.2021144   -0.3464802   -0.0577486
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.2470300   -0.3362306   -0.1578295
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.2211244   -0.3384470   -0.1038017
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.2778254   -0.3477565   -0.2078944
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.3175592   -0.3818087   -0.2533096
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.2354126   -0.2855648   -0.1852604
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.2699382   -0.3234093   -0.2164672
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1507130   -0.1791611   -0.1222648
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.3364886   -0.3984542   -0.2745230
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.5493233   -1.0805682   -0.0180784
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.2187111   -0.2319108   -0.2055114
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1049224   -0.1416986   -0.0681461
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.2328724   -0.2502420   -0.2155028
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.1271745   -0.1467382   -0.1076108
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.3392387   -0.3513642   -0.3271132
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.3038306   -0.3382626   -0.2693986
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0694413   -0.1278667   -0.0110158
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0233287   -0.0625227    0.0158652
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0387527   -0.0967340    0.0192287
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0253374   -0.0660619    0.0153872
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0311196   -0.0696457    0.0074066
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0075551   -0.0366909    0.0518011
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0239109   -0.0576301    0.0098083
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0611063   -0.1183357   -0.0038768
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0507623   -0.1218883    0.0203636
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0177495   -0.1053479    0.0698488
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.0304564   -0.1779205    0.1170078
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.1002042   -0.1516412   -0.0487671
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1116480   -0.1731641   -0.0501318
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.1132774   -0.1630069   -0.0635479
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0875069   -0.1349661   -0.0400477
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0176465   -0.0275704   -0.0077225
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0342255   -0.0592450   -0.0092061
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.1214872   -0.1803494   -0.0626250
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0319369   -0.0420587   -0.0218150
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0385284   -0.0633860   -0.0136709
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.1259247   -0.1420250   -0.1098244
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0318417   -0.0461701   -0.0175133
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.1520469   -0.1684477   -0.1356462
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0845567   -0.1071085   -0.0620050
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0998000   -0.1651587   -0.0344414
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0006771   -0.0427743    0.0441285
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0650146   -0.1299549   -0.0000743
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0346159   -0.0771204    0.0078886
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0559710   -0.1075185   -0.0044235
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0235755   -0.0535509    0.0064000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0115280   -0.0415623    0.0185063
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0935155   -0.1342058   -0.0528251
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1093571   -0.1566461   -0.0620682
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0710327   -0.1907518    0.0486864
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1355818   -0.2091401   -0.0620234
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.1360150   -0.1853846   -0.0866455
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.1299484   -0.1833133   -0.0765836
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0622705   -0.0895185   -0.0350224
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0847415   -0.1399782   -0.0295047
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0124042   -0.0654115    0.0406031
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0716458   -0.1012714   -0.0420202
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0958452   -0.1105826   -0.0811078
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0443376   -0.0572248   -0.0314504
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.1771532   -0.1981111   -0.1561953
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.1008385   -0.1224667   -0.0792104
