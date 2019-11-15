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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight       177     231
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight                   54     231
Birth       ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight        61      65
Birth       ki0047075b-MAL-ED          BRAZIL                         Low birthweight                    4      65
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight        39      47
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight                    8      47
Birth       ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight        24      27
Birth       ki0047075b-MAL-ED          NEPAL                          Low birthweight                    3      27
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight       221     233
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight                   12     233
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight       115     123
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight                    8     123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight       118     125
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight                    7     125
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight        81      92
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   11      92
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight       317     383
Birth       ki1000108-IRC              INDIA                          Low birthweight                   66     383
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight       160     240
Birth       ki1000109-EE               PAKISTAN                       Low birthweight                   80     240
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        35      42
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight                    7      42
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight       914    1252
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  338    1252
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       423     608
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  185     608
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       402     539
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  137     539
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       560     732
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  172     732
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1308    1529
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight                  221    1529
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       476     696
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  220     696
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight        14      26
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight                   12      26
Birth       ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
Birth       ki1114097-CONTENT          PERU                           Low birthweight                    0       2
Birth       ki1119695-PROBIT           BELARUS                        Normal or high birthweight     13890   13890
Birth       ki1119695-PROBIT           BELARUS                        Low birthweight                    0   13890
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight     11929   13830
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                 1901   13830
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       717     784
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight                   67     784
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight      5268    6638
Birth       ki1135781-COHORTS          INDIA                          Low birthweight                 1370    6638
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2709    3004
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight                  295    3004
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight     12858   22454
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 9596   22454
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      1799    2823
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                 1024    2823
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
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       327     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   42     369
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight       335     401
6 months    ki1000108-IRC              INDIA                          Low birthweight                   66     401
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight       242     372
6 months    ki1000109-EE               PAKISTAN                       Low birthweight                  130     372
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight        29      34
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight                    5      34
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight      1003    1326
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight                  323    1326
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       367     518
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  151     518
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       461     604
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  143     604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       545     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  170     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight      1944    2011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                   67    2011
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight      1146    1334
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight                  188    1334
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       397     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  166     563
6 months    ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         9      12
6 months    ki1114097-CMIN             BANGLADESH                     Low birthweight                    3      12
6 months    ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
6 months    ki1114097-CONTENT          PERU                           Low birthweight                    0       2
6 months    ki1119695-PROBIT           BELARUS                        Normal or high birthweight     15761   15761
6 months    ki1119695-PROBIT           BELARUS                        Low birthweight                    0   15761
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      7566    8636
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                 1070    8636
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       703     771
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight                   68     771
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight      5005    6261
6 months    ki1135781-COHORTS          INDIA                          Low birthweight                 1256    6261
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2418    2666
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight                  248    2666
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      8359   14130
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 5771   14130
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      3004    4041
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                 1037    4041
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
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight       328     371
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight                   43     371
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight       335     403
24 months   ki1000108-IRC              INDIA                          Low birthweight                   68     403
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight       100     167
24 months   ki1000109-EE               PAKISTAN                       Low birthweight                   67     167
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight       287     414
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight                  127     414
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight       439     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight                  139     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight       388     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight                  126     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight         6       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight                    0       6
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight       905    1056
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight                  151    1056
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight       355     487
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight                  132     487
24 months   ki1114097-CMIN             BANGLADESH                     Normal or high birthweight         8      11
24 months   ki1114097-CMIN             BANGLADESH                     Low birthweight                    3      11
24 months   ki1114097-CONTENT          PERU                           Normal or high birthweight         2       2
24 months   ki1114097-CONTENT          PERU                           Low birthweight                    0       2
24 months   ki1119695-PROBIT           BELARUS                        Normal or high birthweight      4035    4035
24 months   ki1119695-PROBIT           BELARUS                        Low birthweight                    0    4035
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight      1442    1635
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight                  193    1635
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight       589     650
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight                   61     650
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight      3949    4858
24 months   ki1135781-COHORTS          INDIA                          Low birthweight                  909    4858
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight      2194    2406
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight                  212    2406
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight      4241    7307
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight                 3066    7307
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight      2955    4010
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight                 1055    4010


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
![](/tmp/87f8fcd9-2af6-48b5-813f-f11154511a7b/25bbecdb-0a11-49c9-a2d9-243bae069d71/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/87f8fcd9-2af6-48b5-813f-f11154511a7b/25bbecdb-0a11-49c9-a2d9-243bae069d71/REPORT_files/figure-html/plot_ate-1.png)<!-- -->



![](/tmp/87f8fcd9-2af6-48b5-813f-f11154511a7b/25bbecdb-0a11-49c9-a2d9-243bae069d71/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.7880479   -0.9155481   -0.6605476
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -2.1940546   -2.4327474   -1.9553618
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -1.0030769   -1.2939170   -0.7122369
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -2.1812500   -2.8210203   -1.5414797
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.7962123   -0.9079580   -0.6844666
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -2.4628509   -2.8035448   -2.1221571
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.5171304   -0.6817030   -0.3525578
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -2.2787500   -3.6302840   -0.9272160
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -1.0263559   -1.2219417   -0.8307702
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -3.3342857   -3.9682864   -2.7002851
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.8124215   -1.0358569   -0.5889861
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -1.9977780   -2.4169166   -1.5786394
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1745728   -0.3425975   -0.0065482
Birth       ki1000108-IRC              INDIA                          Low birthweight              NA                -0.9693114   -1.4256022   -0.5130205
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -1.4122680   -1.6268827   -1.1976533
Birth       ki1000109-EE               PAKISTAN                       Low birthweight              NA                -2.7641664   -3.0952039   -2.4331288
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.6417143   -1.0717036   -0.2117250
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight              NA                -2.6714286   -2.9208890   -2.4219682
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -1.0306842   -1.0997171   -0.9616513
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -2.5147069   -2.6948540   -2.3345597
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.5005380   -0.5897458   -0.4113302
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -1.9169542   -2.0445412   -1.7893671
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.5851594   -0.6602330   -0.5100859
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -1.7770575   -1.8735196   -1.6805954
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.6616424   -0.7353615   -0.5879234
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -1.7137620   -1.8408052   -1.5867187
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                 0.2193221    0.1546139    0.2840303
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -1.0665653   -1.2198788   -0.9132517
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.6763830   -0.7553491   -0.5974170
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -1.9625045   -2.0843368   -1.8406721
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   NA                -0.7534309   -1.3694215   -0.1374402
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight              NA                -2.7462341   -3.5777977   -1.9146706
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.3124123   -0.3322999   -0.2925248
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.6824492   -1.7433739   -1.6215246
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                 0.2774323    0.1952660    0.3595985
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -1.4879377   -1.7771192   -1.1987562
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.3594817   -0.3862469   -0.3327165
Birth       ki1135781-COHORTS          INDIA                          Low birthweight              NA                -1.8695470   -1.9240317   -1.8150624
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0773608   -0.1132087   -0.0415129
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                -1.7595699   -1.8990804   -1.6200595
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.9547821   -0.9720094   -0.9375548
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                -2.4411082   -2.4632981   -2.4189183
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -1.0178064   -1.0658236   -0.9697892
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -2.4122374   -2.4785017   -2.3459731
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -1.0452655   -1.1711242   -0.9194068
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -1.8247814   -2.0675311   -1.5820317
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0847264   -0.0617046    0.2311573
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                -0.7070454   -1.4633514    0.0492606
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -1.1104375   -1.2379752   -0.9828999
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -1.5605919   -1.8422066   -1.2789772
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.4811748   -0.5949118   -0.3674379
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -1.1942123   -1.6212493   -0.7671753
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -1.2316997   -1.3359479   -1.1274515
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -2.8098770   -3.2260260   -2.3937280
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -1.0028179   -1.1293601   -0.8762756
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -1.9979830   -2.6365000   -1.3594661
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -1.2511205   -1.3908548   -1.1113862
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -2.4651852   -2.9676305   -1.9627399
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -1.3075705   -1.4555271   -1.1596139
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -2.3355893   -2.7222070   -1.9489716
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -1.0702564   -1.2073779   -0.9331350
6 months    ki1000108-IRC              INDIA                          Low birthweight              NA                -1.9553674   -2.3093385   -1.6013963
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -1.7415293   -1.8749708   -1.6080877
6 months    ki1000109-EE               PAKISTAN                       Low birthweight              NA                -2.7146754   -2.9108503   -2.5185005
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                -1.4433908   -2.0510560   -0.8357256
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight              NA                -3.2410000   -4.1049865   -2.3770135
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -1.1531142   -1.2543660   -1.0518624
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              NA                -2.1717005   -2.2574392   -2.0859617
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.1429411   -1.2414685   -1.0444137
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.0644564   -2.2256804   -1.9032323
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.8987490   -0.9790973   -0.8184007
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -1.7236972   -1.8610899   -1.5863045
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -1.0070181   -1.0839568   -0.9300795
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -1.8276109   -1.9626372   -1.6925845
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.5105769   -0.5600673   -0.4610864
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -1.4851201   -1.7524052   -1.2178350
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.7784827   -0.8371903   -0.7197751
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -1.6232849   -1.7750511   -1.4715188
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.1252996   -1.2111675   -1.0394318
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -1.8899567   -2.0270674   -1.7528460
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.7361921   -0.7623302   -0.7100540
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -1.7859864   -1.8562612   -1.7157117
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -1.6925559   -1.7654780   -1.6196337
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -2.7430997   -3.0219560   -2.4642433
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.7931239   -0.8231382   -0.7631097
6 months    ki1135781-COHORTS          INDIA                          Low birthweight              NA                -1.8050084   -1.8692443   -1.7407724
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -1.0406700   -1.0834037   -0.9979364
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                -2.0429918   -2.1854765   -1.9005071
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.9528531   -0.9793009   -0.9264052
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                -1.8859429   -1.9172323   -1.8546536
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -1.1363960   -1.1814894   -1.0913026
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -1.9757038   -2.0485631   -1.9028445
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -1.8405404   -1.9740500   -1.7070309
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              NA                -2.4714179   -2.7748776   -2.1679582
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                 0.0113872   -0.1631537    0.1859280
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              NA                -0.1000000   -0.6968023    0.4968023
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -1.8413462   -1.9765457   -1.7061467
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              NA                -1.9857524   -2.3129142   -1.6585905
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -1.2524015   -1.3762780   -1.1285250
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              NA                -1.6342990   -2.1100233   -1.1585747
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -1.6696848   -1.7844253   -1.5549443
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              NA                -3.0817743   -3.6776950   -2.4858537
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -1.6232859   -1.7611558   -1.4854161
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              NA                -2.0465242   -2.7984228   -1.2946256
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -2.5160714   -2.6720371   -2.3601058
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              NA                -3.2281250   -3.6659520   -2.7902980
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -2.5005368   -2.6070922   -2.3939814
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              NA                -2.9477114   -3.1796647   -2.7157580
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -1.6754385   -1.7750216   -1.5758555
24 months   ki1000108-IRC              INDIA                          Low birthweight              NA                -2.2992426   -2.5193151   -2.0791700
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -2.4475239   -2.6110653   -2.2839824
24 months   ki1000109-EE               PAKISTAN                       Low birthweight              NA                -3.0086424   -3.2543826   -2.7629023
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -1.9854576   -2.1054106   -1.8655046
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              NA                -2.7314953   -2.9109796   -2.5520111
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -1.4564451   -1.5496033   -1.3632869
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              NA                -2.0866103   -2.2523439   -1.9208767
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -1.2650757   -1.3547730   -1.1753784
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              NA                -1.9423701   -2.1149451   -1.7697951
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -1.4681662   -1.5336640   -1.4026684
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              NA                -2.0595381   -2.2362742   -1.8828020
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -1.7609927   -1.8568194   -1.6651661
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              NA                -2.2272839   -2.3976991   -2.0568687
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -1.5229525   -1.5824043   -1.4635007
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              NA                -2.2125042   -2.3855244   -2.0394840
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -2.8931053   -2.9780599   -2.8081507
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              NA                -3.5569399   -3.8010237   -3.3128560
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -1.9698895   -2.0066921   -1.9330868
24 months   ki1135781-COHORTS          INDIA                          Low birthweight              NA                -2.7368781   -2.8110567   -2.6626995
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -2.3447402   -2.3913415   -2.2981389
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              NA                -3.0847539   -3.2377694   -2.9317384
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -1.7660880   -1.8021292   -1.7300467
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              NA                -2.4200024   -2.4585667   -2.3814382
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -1.6376362   -1.6807741   -1.5944983
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              NA                -2.1561895   -2.2249910   -2.0873880


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.1180952   -1.2525408   -0.9836496
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.2036170   -1.4976814   -0.9095527
Birth       ki0047075b-MAL-ED          PERU                           NA                   NA                -0.8827897   -1.0001058   -0.7654736
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.6317073   -0.8249555   -0.4384591
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.1556000   -1.3655361   -0.9456639
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.9611957   -1.1776967   -0.7446946
Birth       ki1000108-IRC              INDIA                          NA                   NA                -0.3096345   -0.4709405   -0.1483285
Birth       ki1000109-EE               PAKISTAN                       NA                   NA                -1.8608750   -2.0482045   -1.6735455
Birth       ki1000109-ResPak           PAKISTAN                       NA                   NA                -0.9800000   -1.4086438   -0.5513562
Birth       ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4314217   -1.5099245   -1.3529189
Birth       ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.9310197   -1.0197391   -0.8423003
Birth       ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -0.8851020   -0.9601332   -0.8100709
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.9094945   -0.9809370   -0.8380521
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                 0.0272662   -0.0366578    0.0911901
Birth       ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.0851580   -1.1651811   -1.0051350
Birth       ki1114097-CMIN             BANGLADESH                     NA                   NA                -1.8811538   -2.5124807   -1.2498270
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.5009660   -0.5215391   -0.4803930
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                 0.1221939    0.0348987    0.2094890
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                -0.6698147   -0.6979800   -0.6416494
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.2435386   -0.2827491   -0.2043282
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.5893720   -1.6085904   -1.5701537
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.5232908   -1.5723277   -1.4742539
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.2094328   -1.3276892   -1.0911764
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0475758   -0.0963508    0.1915023
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.1727166   -1.2902312   -1.0552020
6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.5397525   -0.6522623   -0.4272428
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -1.3083549   -1.4159952   -1.2007147
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.0619697   -1.1900452   -0.9338942
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -1.3098656   -1.4501587   -1.1695725
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -1.4234508   -1.5645974   -1.2823042
6 months    ki1000108-IRC              INDIA                          NA                   NA                -1.2148213   -1.3469493   -1.0826933
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                -2.0800314   -2.1993502   -1.9607126
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                -1.7077451   -2.2839081   -1.1315821
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -1.4032504   -1.4822018   -1.3242989
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -1.4092745   -1.5003907   -1.3181582
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.0916915   -1.1661176   -1.0172654
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.1986783   -1.2700937   -1.1272630
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.5394360   -0.5886359   -0.4902361
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.9022065   -0.9593933   -0.8450196
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.3510539   -1.4294158   -1.2726919
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.8663392   -0.8919231   -0.8407552
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -1.7858495   -1.8598889   -1.7118102
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.9939850   -1.0230017   -0.9649683
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -1.1372543   -1.1796249   -1.0948837
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -1.3327473   -1.3568007   -1.3086940
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.3509354   -1.3927945   -1.3090764
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -1.9799762   -2.1065965   -1.8533558
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0061144   -0.1625850    0.1748138
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -1.8550459   -1.9795611   -1.7305306
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -1.2841403   -1.4044291   -1.1638514
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -1.7484757   -1.8697456   -1.6272058
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -1.6471273   -1.7822999   -1.5119547
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -2.5512346   -2.7029497   -2.3995194
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -2.5588679   -2.6583730   -2.4593629
24 months   ki1000108-IRC              INDIA                          NA                   NA                -1.7814309   -1.8749526   -1.6879093
24 months   ki1000109-EE               PAKISTAN                       NA                   NA                -2.6699900   -2.8138051   -2.5261749
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -2.2268619   -2.3322626   -2.1214612
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                -1.6024221   -1.6857420   -1.5191023
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -1.4412646   -1.5249156   -1.3576135
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -1.5547363   -1.6172161   -1.4922564
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -1.8864887   -1.9720856   -1.8008918
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -1.6024251   -1.6594303   -1.5454198
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -2.9641538   -3.0462906   -2.8820170
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -2.1129333   -2.1469655   -2.0789011
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -2.4107897   -2.4561358   -2.3654436
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -2.0396606   -2.0692906   -2.0100306
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -1.7744364   -1.8128124   -1.7360604


### Parameter: ATE


agecat      studyid                    country                        intervention_level           baseline_level                  estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.4060067   -1.6765518   -1.1354615
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -1.1781731   -1.8809490   -0.4753972
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -1.6666386   -2.0248966   -1.3083807
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -1.7616196   -3.1231364   -0.4001027
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -2.3079298   -2.9714135   -1.6444461
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -1.1853565   -1.6611387   -0.7095742
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.7947385   -1.2805350   -0.3089420
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -1.3518983   -1.7473861   -0.9564105
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000109-ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -2.0297143   -2.5268273   -1.5326013
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -1.4840227   -1.6464608   -1.3215846
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -1.4164162   -1.5719917   -1.2608406
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -1.1918980   -1.3141661   -1.0696300
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -1.0521195   -1.1990505   -0.9051885
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -1.2858873   -1.4524817   -1.1192930
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -1.2861214   -1.4322169   -1.1400259
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1114097-CMIN             BANGLADESH                     Low birthweight              Normal or high birthweight    -1.9928033   -3.0497387   -0.9358679
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -1.3700369   -1.4341076   -1.3059661
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.7653700   -2.0660039   -1.4647360
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -1.5100653   -1.5707760   -1.4493546
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -1.6822091   -1.8262801   -1.5381382
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.4863261   -1.5127874   -1.4598648
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -1.3944310   -1.4756008   -1.3132613
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.7795159   -1.0531003   -0.5059316
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight    -0.7917717   -1.5611833   -0.0223602
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.4501544   -0.7594432   -0.1408656
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.7130375   -1.1553882   -0.2706867
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -1.5781773   -2.0070177   -1.1493368
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.9951652   -1.6464195   -0.3439108
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -1.2140647   -1.7355787   -0.6925506
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -1.0280188   -1.4434189   -0.6126187
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.8851109   -1.2639563   -0.5062656
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.9731461   -1.2106824   -0.7356097
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000109-ResPak           PAKISTAN                       Low birthweight              Normal or high birthweight    -1.7976092   -2.8538902   -0.7413281
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low birthweight              Normal or high birthweight    -1.0185863   -1.1231445   -0.9140281
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.9215153   -1.1103879   -0.7326427
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8249481   -0.9842594   -0.6656369
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8205927   -0.9760758   -0.6651097
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.9745432   -1.2460447   -0.7030417
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.8448023   -1.0071177   -0.6824868
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.7646571   -0.9265950   -0.6027192
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -1.0497943   -1.1246678   -0.9749209
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -1.0505438   -1.3388511   -0.7622365
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -1.0118845   -1.0826043   -0.9411646
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -1.0023217   -1.1505696   -0.8540739
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.9330899   -0.9704349   -0.8957449
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.8393078   -0.9243348   -0.7542808
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6308775   -0.9626757   -0.2990793
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         Low birthweight              Normal or high birthweight    -0.1113872   -0.7331890    0.5104147
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          INDIA                          Low birthweight              Normal or high birthweight    -0.1444062   -0.4982413    0.2094289
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          Low birthweight              Normal or high birthweight    -0.3818975   -0.8738525    0.1100574
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          PERU                           Low birthweight              Normal or high birthweight    -1.4120895   -2.0174559   -0.8067231
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birthweight              Normal or high birthweight    -0.4232383   -1.1877313    0.3412548
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birthweight              Normal or high birthweight    -0.7120536   -1.1768306   -0.2472765
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birthweight              Normal or high birthweight    -0.4471746   -0.7001398   -0.1942093
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000108-IRC              INDIA                          Low birthweight              Normal or high birthweight    -0.6238040   -0.8653304   -0.3822776
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1000109-EE               PAKISTAN                       Low birthweight              Normal or high birthweight    -0.5611186   -0.8572501   -0.2649870
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     Low birthweight              Normal or high birthweight    -0.7460377   -0.9623660   -0.5297094
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6301652   -0.8201522   -0.4401783
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6772944   -0.8718145   -0.4827743
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1101329-Keneba           GAMBIA                         Low birthweight              Normal or high birthweight    -0.5913719   -0.7788196   -0.4039242
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Low birthweight              Normal or high birthweight    -0.4662912   -0.6616458   -0.2709366
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low birthweight              Normal or high birthweight    -0.6895517   -0.8725190   -0.5065845
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Low birthweight              Normal or high birthweight    -0.6638345   -0.9226418   -0.4050272
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          INDIA                          Low birthweight              Normal or high birthweight    -0.7669886   -0.8496503   -0.6843269
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Low birthweight              Normal or high birthweight    -0.7400137   -0.9000052   -0.5800222
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.6539144   -0.7026506   -0.6051783
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   Normal or high birthweight     0.0000000    0.0000000    0.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birthweight              Normal or high birthweight    -0.5185533   -0.5979379   -0.4391688


### Parameter: PAR


agecat      studyid                    country                        intervention_level           baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  ---------------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.3300473   -0.4301406   -0.2299541
Birth       ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.2005401   -0.3757023   -0.0253779
Birth       ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0865774   -0.1387089   -0.0344459
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.1145769   -0.2319816    0.0028279
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.1292441   -0.2297616   -0.0287265
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1487741   -0.2449929   -0.0525553
Birth       ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1350616   -0.2218354   -0.0482878
Birth       ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.4486070   -0.6070321   -0.2901819
Birth       ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.3382857   -0.5842023   -0.0923692
Birth       ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.4007375   -0.4600242   -0.3414509
Birth       ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.4304817   -0.5006672   -0.3602962
Birth       ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.2999426   -0.3541967   -0.2456885
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.2478521   -0.2951137   -0.2005905
Birth       ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1920559   -0.2261568   -0.1579549
Birth       ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.4087750   -0.4753047   -0.3422453
Birth       ki1114097-CMIN             BANGLADESH                     Normal or high birthweight   NA                -1.1277230   -1.7941961   -0.4612499
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1885537   -0.2002720   -0.1768353
Birth       ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.1552384   -0.2009260   -0.1095508
Birth       ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.3103330   -0.3296434   -0.2910226
Birth       ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.1661778   -0.1888241   -0.1435315
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.6345899   -0.6512316   -0.6179483
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.5054844   -0.5444744   -0.4664945
6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.1641673   -0.2347988   -0.0935358
6 months    ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0371506   -0.0737768   -0.0005244
6 months    ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0622791   -0.1116581   -0.0129000
6 months    ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0585777   -0.1021361   -0.0150193
6 months    ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0766552   -0.1213250   -0.0319854
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0591518   -0.1070681   -0.0112355
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0587451   -0.1039785   -0.0135116
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.1158803   -0.1716949   -0.0600657
6 months    ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1445648   -0.2139226   -0.0752071
6 months    ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.3385021   -0.4332339   -0.2437703
6 months    ki1000109-ResPak           PAKISTAN                       Normal or high birthweight   NA                -0.2643543   -0.5313970    0.0026884
6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight   NA                -0.2501362   -0.3031714   -0.1971010
6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2663333   -0.3317689   -0.2008978
6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.1929425   -0.2393012   -0.1465837
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.1916602   -0.2365719   -0.1467485
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0288591   -0.0402744   -0.0174439
6 months    ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.1237238   -0.1516659   -0.0957817
6 months    ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.2257543   -0.2817068   -0.1698017
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.1301470   -0.1419739   -0.1183202
6 months    ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0932937   -0.1267032   -0.0598842
6 months    ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.2008611   -0.2181323   -0.1835898
6 months    ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0965843   -0.1143487   -0.0788199
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.3798943   -0.3967941   -0.3629945
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.2145394   -0.2392550   -0.1898238
24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight   NA                -0.1394358   -0.2211398   -0.0577317
24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight   NA                -0.0052728   -0.0349237    0.0243782
24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight   NA                -0.0136997   -0.0656670    0.0382676
24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight   NA                -0.0317388   -0.0716288    0.0081512
24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight   NA                -0.0787909   -0.1344294   -0.0231524
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight   NA                -0.0238413   -0.0609419    0.0132592
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight   NA                -0.0351631   -0.0682494   -0.0020769
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight   NA                -0.0583311   -0.0919048   -0.0247574
24 months   ki1000108-IRC              INDIA                          Normal or high birthweight   NA                -0.1059924   -0.1528470   -0.0591378
24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight   NA                -0.2224661   -0.3476777   -0.0972546
24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal or high birthweight   NA                -0.2414043   -0.3164449   -0.1663637
24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight   NA                -0.1459771   -0.1963482   -0.0956059
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal or high birthweight   NA                -0.1761889   -0.2308861   -0.1214917
24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight   NA                -0.0865701   -0.1150291   -0.0581110
24 months   ki1113344-GMS-Nepal        NEPAL                          Normal or high birthweight   NA                -0.1254960   -0.1816785   -0.0693135
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal or high birthweight   NA                -0.0794726   -0.1030538   -0.0558914
24 months   ki1135781-COHORTS          GUATEMALA                      Normal or high birthweight   NA                -0.0710485   -0.1018811   -0.0402160
24 months   ki1135781-COHORTS          INDIA                          Normal or high birthweight   NA                -0.1430438   -0.1605965   -0.1254912
24 months   ki1135781-COHORTS          PHILIPPINES                    Normal or high birthweight   NA                -0.0660495   -0.0824981   -0.0496009
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight   NA                -0.2735726   -0.2951346   -0.2520106
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight   NA                -0.1368002   -0.1585252   -0.1150753
