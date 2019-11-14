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
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight        11      13
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight                    2      13
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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     16287   22083
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 5796   22083
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     10600   16661
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 6061   16661
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      5299    8491
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 3192    8491
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
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/c8ddd0bc-b235-4bde-a754-a40efd413437/4519d7a8-7978-449f-b6ff-59919fe5afb6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c8ddd0bc-b235-4bde-a754-a40efd413437/4519d7a8-7978-449f-b6ff-59919fe5afb6/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/c8ddd0bc-b235-4bde-a754-a40efd413437/4519d7a8-7978-449f-b6ff-59919fe5afb6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.7543848   -0.9088936   -0.5998759
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -1.8264708   -2.0969980   -1.5559436
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.8242105   -1.1093730   -0.5390481
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -1.5200000   -2.2161675   -0.8238325
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.0009328   -0.1198711    0.1217368
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -1.1394190   -1.4989684   -0.7798696
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.1398261   -0.3551745    0.0755223
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -1.4060000   -2.0013052   -0.8106947
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.2716565   -0.5707154    0.0274024
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -2.5321234   -3.1325264   -1.9317204
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.7570194   -0.9502783   -0.5637606
Birth       ki1000108-IRC              INDIA                          Low birthweight              NA                -2.6087680   -3.0044794   -2.2130566
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.1069955   -0.3052978    0.0913068
Birth       ki1000109-EE               PAKISTAN                       Low birthweight              NA                -1.1618799   -1.5780093   -0.7457505
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.3922199   -0.5400545   -0.2443853
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -1.8427153   -1.9759872   -1.7094434
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.0321736   -1.1350591   -0.9292882
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.2155574   -2.3631172   -2.0679977
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -1.0640354   -1.1458725   -0.9821984
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -2.0304905   -2.1480682   -1.9129128
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.9751945   -1.0613789   -0.8890101
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -2.2024873   -2.3552511   -2.0497234
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.7770695   -0.8687540   -0.6853850
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -2.0662505   -2.1977733   -1.9347278
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.0585714   -0.9538408    0.8366979
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight              NA                -2.1460000   -2.9645242   -1.3274758
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.2956972   -0.3205800   -0.2708144
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -2.4801299   -2.5419584   -2.4183014
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.9561870   -1.0575854   -0.8547886
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -2.4501203   -2.7833540   -2.1168865
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.7537280   -0.7833553   -0.7241006
Birth       ki1135781-COHORTS          INDIA                          Low birthweight              NA                -2.1741051   -2.2386898   -2.1095205
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.6157014   -0.6611811   -0.5702217
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                -2.3797624   -2.5139753   -2.2455495
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.4509760   -0.4688353   -0.4331166
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                -1.5948602   -1.6203390   -1.5693813
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.3852300   -0.4412414   -0.3292186
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -1.5275735   -1.5998765   -1.4552704
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0686433   -0.2213965    0.0841099
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -0.4112499   -0.6330305   -0.1894694
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.9956093    0.8275554    1.1636633
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                 0.5868138   -0.3411395    1.5147672
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.6502247   -0.7902816   -0.5101679
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -0.9210141   -1.2778568   -0.5641714
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                 0.1677145    0.0309432    0.3044859
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -0.0581586   -0.6052056    0.4888884
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 1.0893965    0.9646004    1.2141926
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight              NA                 0.7031943    0.0195987    1.3867899
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.5381526    0.3822702    0.6940349
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                 0.6277042   -0.1435311    1.3989394
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.5889736    0.4286505    0.7492968
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                 0.0948148   -0.5053473    0.6949769
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.4435092   -0.6031397   -0.2838787
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -0.9588661   -1.4288267   -0.4889055
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.5301588   -0.6733297   -0.3869879
6 months    ki1000108-IRC              INDIA                          Low birthweight              NA                -0.6372885   -1.0549557   -0.2196214
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.7610286   -0.8987955   -0.6232616
6 months    ki1000109-EE               PAKISTAN                       Low birthweight              NA                -0.7803558   -0.9835342   -0.5771775
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                 0.2481034   -0.2104801    0.7066870
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight              NA                 0.0410000   -0.8343639    0.9163639
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.5669220   -0.7265622   -0.4072817
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -0.9804730   -1.1082440   -0.8527020
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.3537912   -0.4588989   -0.2486836
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -0.7564067   -0.9302275   -0.5825860
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.0825722   -0.1746994    0.0095550
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -0.5663473   -0.7407044   -0.3919902
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                 0.1168911    0.0284534    0.2053288
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -0.2448946   -0.4135033   -0.0762860
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1010954    0.0472902    0.1549006
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.4751555   -0.7592884   -0.1910226
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1634368   -0.2308921   -0.0959815
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -0.4129185   -0.5798767   -0.2459603
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.4820919   -0.5801984   -0.3839854
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -0.8980092   -1.0671643   -0.7288541
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                 0.3411293    0.3138189    0.3684396
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                 0.0844006    0.0104177    0.1583835
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2378719    0.1557674    0.3199765
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -0.1647517   -0.4036919    0.0741884
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.5695105   -0.6005774   -0.5384436
6 months    ki1135781-COHORTS          INDIA                          Low birthweight              NA                -1.1937871   -1.2616345   -1.1259398
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.2611724   -0.3049192   -0.2174256
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                -0.5844734   -0.7265344   -0.4424124
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.4651041   -0.4887322   -0.4414759
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                -0.8213365   -0.8516865   -0.7909865
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.2944281   -0.3446759   -0.2441803
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -0.6230416   -0.6962931   -0.5497902
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.7160791   -0.8577104   -0.5744479
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -1.1407544   -1.4107751   -0.8707337
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.4583851    0.2463399    0.6704303
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                 0.4762500   -0.4169100    1.3694100
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.8714121   -0.9906727   -0.7521515
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -1.1542208   -1.5571914   -0.7512502
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.3203871   -0.4355041   -0.2052701
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -0.7350898   -1.2599469   -0.2102327
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                 0.1708203    0.0505427    0.2910978
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -0.8034344   -1.4216637   -0.1852051
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.4319115    0.3074330    0.5563900
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -0.2632654   -0.7797941    0.2532632
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                 0.1234416   -0.0309825    0.2778657
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -0.1100000   -0.6765896    0.4565896
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.4618386   -0.5677700   -0.3559071
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -1.2962642   -1.5391658   -1.0533626
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.6375850   -0.7356145   -0.5395554
24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                -1.3731331   -1.5832172   -1.1630490
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.9137719   -1.1067159   -0.7208278
24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                -1.0915958   -1.3143246   -0.8688670
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.7764984   -0.8869016   -0.6660952
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -1.2062967   -1.4118340   -1.0007594
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.7632344   -0.8565738   -0.6698949
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -1.3410255   -1.5007920   -1.1812591
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.4864178   -0.5956908   -0.3771449
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -1.0037934   -1.1754437   -0.8321431
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.7314377   -0.7964643   -0.6664111
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -1.1768215   -1.3488755   -1.0047674
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.0447246   -1.1483210   -0.9411282
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -1.3651769   -1.5378719   -1.1924819
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -1.1709535   -1.2817962   -1.0601109
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.1883838   -1.4025172   -0.9742503
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1563422   -0.2247720   -0.0879123
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -0.9439677   -1.1953111   -0.6926242
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.4998139   -0.5320950   -0.4675329
24 months   ki1135781-COHORTS          INDIA                          Low birthweight              NA                -1.0073658   -1.0718409   -0.9428908
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.5637499   -0.6020892   -0.5254106
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                -1.0683872   -1.1927667   -0.9440077
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -1.1533040   -1.1817280   -1.1248800
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                -1.5502606   -1.5863274   -1.5141938
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -1.1436977   -1.1833541   -1.1040413
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -1.5257136   -1.5940082   -1.4574190


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.9412093   -1.0864308   -0.7959878
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
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.1164431   -1.2040134   -1.0288728
Birth       ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.6078947   -1.4214563    0.2056668
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5154897   -0.5413479   -0.4896314
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.0621429   -1.1631387   -0.9611470
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.9847457   -1.0145305   -0.9549609
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.7427251   -0.7890855   -0.6963647
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.7501567   -0.7680049   -0.7323085
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.6886269   -0.7410452   -0.6362086
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.1271569   -0.2570183    0.0027046
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.9717225    0.8073791    1.1360658
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.6953010   -0.8254430   -0.5651590
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.1457933    0.0143145    0.2772721
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                 1.0592901    0.9368892    1.1816910
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.5452635    0.3926562    0.6978708
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.5931160   -0.6126840   -0.5735479
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.3785933   -0.4212191   -0.3359676
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.8089286   -0.9306543   -0.6872029
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.4592308    0.2528453    0.6656163
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.9360550   -1.0543748   -0.8177353
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.3576697   -0.4708099   -0.2445294
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                 0.1231407    0.0021315    0.2441499
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                 0.4112869    0.2901842    0.5323897
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3010611   -1.3243016   -1.2778207
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.2443883   -1.2783802   -1.2103964


### Parameter: ATE


agecat      studyid                    country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.0720860   -1.3841141   -0.7600580
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.6957895   -1.4480971    0.0565182
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -1.1403518   -1.5195811   -0.7611225
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -1.2661739   -1.8992325   -0.6331152
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -2.2604669   -2.9368514   -1.5840824
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -1.8517485   -2.2941650   -1.4093321
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -1.0548844   -1.5152537   -0.5945151
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -1.4504954   -1.5887584   -1.3122325
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1833838   -1.3634943   -1.0032733
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.9664551   -1.1105254   -0.8223847
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -1.2272928   -1.4028528   -1.0517328
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -1.2891810   -1.4497866   -1.1285754
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight              Normal or high birthweight    -2.0874286   -3.3004780   -0.8743791
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -2.1844327   -2.2510929   -2.1177725
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.4939333   -1.8423759   -1.1454907
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -1.4203772   -1.4914774   -1.3492770
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -1.7640610   -1.9057703   -1.6223517
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1438842   -1.1735125   -1.1142559
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1423435   -1.2321715   -1.0525155
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3426066   -0.6120695   -0.0731437
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight    -0.4087955   -1.3536644    0.5360734
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.2707893   -0.6549457    0.1133671
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.2258732   -0.7892701    0.3375238
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.3862022   -1.0824545    0.3100502
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight     0.0895516   -0.6981712    0.8772744
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.4941588   -1.1153658    0.1270481
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.5153569   -1.0127655   -0.0179483
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.1071297   -0.5498145    0.3355551
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.0193273   -0.2633472    0.2246927
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -0.2071034   -1.1953144    0.7811075
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -0.4135510   -0.5975079   -0.2295941
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4026155   -0.6067104   -0.1985206
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4837751   -0.6806784   -0.2868719
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3617857   -0.5523334   -0.1712380
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.5762509   -0.8654357   -0.2870661
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.2494817   -0.4294536   -0.0695098
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.4159173   -0.6114507   -0.2203839
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.2567286   -0.3355834   -0.1778739
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.4026237   -0.6548756   -0.1503717
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.6242766   -0.6987728   -0.5497805
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.3233010   -0.4719753   -0.1746266
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3562324   -0.3933288   -0.3191361
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3286135   -0.4156172   -0.2416098
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4246753   -0.7304969   -0.1188537
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight     0.0178649   -0.9001209    0.9358507
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.2828087   -0.7051008    0.1394833
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.4147027   -0.9505277    0.1211223
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -0.9742547   -1.6039492   -0.3445601
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.6951769   -1.2268990   -0.1634549
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.2334416   -0.8206984    0.3538153
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.8344256   -1.0995768   -0.5692745
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.7355481   -0.9683826   -0.5027136
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.1778239   -0.4744153    0.1187675
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.4297983   -0.6630381   -0.1965585
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.5777912   -0.7633699   -0.3922124
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.5173756   -0.7199967   -0.3147545
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.4453838   -0.6298216   -0.2609459
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.3204523   -0.5241236   -0.1167810
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.0174303   -0.2576008    0.2227402
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.7876255   -1.0481577   -0.5270933
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.5075519   -0.5792154   -0.4358884
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.5046373   -0.6347615   -0.3745131
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3969567   -0.4417471   -0.3521662
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.3820159   -0.4618597   -0.3021721


### Parameter: PAR


agecat      studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.1868245   -0.2629323   -0.1107168
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.1082339   -0.2469678    0.0304999
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0529504   -0.0888658   -0.0170349
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0527572   -0.1053148   -0.0001997
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1931691   -0.3358777   -0.0504605
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.2535637   -0.3447330   -0.1623943
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.2263096   -0.3415538   -0.1110653
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.2778254   -0.3477565   -0.2078944
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.3177481   -0.3822590   -0.2532372
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.2344232   -0.2841755   -0.1846710
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.2689569   -0.3224048   -0.2155090
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.3393735   -0.4020712   -0.2766759
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.5493233   -1.0805682   -0.0180784
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.2197925   -0.2329703   -0.2066146
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1059559   -0.1428088   -0.0691030
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.2310177   -0.2484433   -0.2135921
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.1270237   -0.1466235   -0.1074238
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.2991807   -0.3098531   -0.2885083
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.3033969   -0.3376755   -0.2691183
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0585135   -0.1182791    0.0012521
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0238868   -0.0636640    0.0158903
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0450763   -0.1031340    0.0129814
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0219212   -0.0625475    0.0187051
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0301064   -0.0680888    0.0078760
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                 0.0071109   -0.0372486    0.0514705
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0239109   -0.0576301    0.0098083
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0591674   -0.1171183   -0.0012165
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.0563544   -0.1280813    0.0153724
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0127771   -0.0985712    0.0730169
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.0304564   -0.1779205    0.1170078
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.1002042   -0.1516412   -0.0487671
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1098848   -0.1716117   -0.0481578
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.1165185   -0.1657558   -0.0672811
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.0871289   -0.1335090   -0.0407487
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0175958   -0.0275955   -0.0075962
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0346264   -0.0595985   -0.0096544
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.1205931   -0.1794621   -0.0617241
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0322505   -0.0423788   -0.0221222
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0369029   -0.0618243   -0.0119816
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.1239108   -0.1400467   -0.1077749
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0312150   -0.0455682   -0.0168617
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.1280119   -0.1415346   -0.1144892
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.0841652   -0.1067893   -0.0615412
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.0928495   -0.1585398   -0.0271591
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0008457   -0.0426131    0.0443044
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0646429   -0.1295804    0.0002945
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0372826   -0.0789420    0.0043768
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0476796   -0.0910527   -0.0043064
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0206246   -0.0501324    0.0088832
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0115280   -0.0415623    0.0185063
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0953120   -0.1360441   -0.0545799
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1009386   -0.1479261   -0.0539511
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.0982519   -0.2204632    0.0239594
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.1304467   -0.2039882   -0.0569053
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.1296326   -0.1780481   -0.0812172
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.1239324   -0.1768865   -0.0709783
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0644898   -0.0919802   -0.0369993
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.0889654   -0.1460070   -0.0319237
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0118771   -0.0639488    0.0401946
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0718009   -0.1012394   -0.0423624
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.0947080   -0.1093727   -0.0800432
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0439347   -0.0568084   -0.0310611
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.1477572   -0.1649823   -0.1305320
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.1006906   -0.1224890   -0.0788921
